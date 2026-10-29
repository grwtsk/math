# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteFactorizationPlumbing.Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1079e076b1ad67163c6ac9c77caa6905f38262a0` · SHA-256 `3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.FiniteEulerSmoothNumbers
import Folder.Rebuild.NumberTheory.FactorizationRebuild
import Mathlib.Data.Nat.Factorization.Basic

/-!
# Folder.Rebuild.AnalyticNumberTheory.FiniteFactorizationPlumbing

Finite prime-factorization plumbing for bounded exponent vectors.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

theorem factorization_prime_power_eval
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat)
    (p : {p : Nat // p ∈ S}) :
    Nat.factorization (p.val ^ (e p).val) q =
      if q = p.val then (e p).val else 0 := by
  rw [Nat.factorization_pow]
  rw [Nat.Prime.factorization (hSprime p.val p.property)]
  rw [Finsupp.smul_apply]
  by_cases hq : q = p.val
  · subst q
    rw [Finsupp.single_eq_same]
    simp
  · rw [Finsupp.single_eq_of_ne hq]
    simp [hq]

theorem factorization_exponentVectorNat
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    (q : Nat) :
    Nat.factorization (exponentVectorNat S K e) q =
      if hq : q ∈ S then
        (e ⟨q, hq⟩).val
      else
        0 := by
  classical
  unfold exponentVectorNat
  rw [Nat.factorization_prod]
  · have hsum_apply :
        (∑ x : {p : Nat // p ∈ S}, Nat.factorization (x.val ^ (e x).val)) q =
          ∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q := by
      simp
    rw [hsum_apply]
    by_cases hq : q ∈ S
    · simp only [hq, dite_true]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = (e ⟨q, hq⟩).val := by
                rw [Finset.sum_eq_single_of_mem
                  (a := (⟨q, hq⟩ : {p : Nat // p ∈ S}))]
                · simp
                · simp
                · intro b _hb hbne
                  have hbval_ne : q ≠ b.val := by
                    intro hval
                    apply hbne
                    ext
                    exact hval.symm
                  simp [hbval_ne]
    · simp only [hq, dite_false]
      calc
        (∑ x : {p : Nat // p ∈ S},
            Nat.factorization (x.val ^ (e x).val) q)
            = ∑ x : {p : Nat // p ∈ S},
                if q = x.val then (e x).val else 0 := by
                refine Finset.sum_congr rfl ?_
                intro x _hx
                exact factorization_prime_power_eval S K hSprime e q x
        _ = 0 := by
                refine Finset.sum_eq_zero ?_
                intro b _hb
                have hbval_ne : q ≠ b.val := by
                  intro hval
                  apply hq
                  rw [hval]
                  exact b.property
                simp [hbval_ne]
  · intro p _hp
    exact pow_ne_zero _ (hSprime p.val p.property).ne_zero

theorem factorization_exponentVectorNat_at_mem
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    {q : Nat}
    (hq : q ∈ S) :
    Nat.factorization (exponentVectorNat S K e) q =
      (e ⟨q, hq⟩).val := by
  rw [factorization_exponentVectorNat S K hSprime e q]
  simp [hq]

theorem factorization_exponentVectorNat_at_not_mem
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p)
    (e : ExponentVector S K)
    {q : Nat}
    (hq : q ∉ S) :
    Nat.factorization (exponentVectorNat S K e) q = 0 := by
  rw [factorization_exponentVectorNat S K hSprime e q]
  simp [hq]

/--
Prime-factorization injectivity for bounded exponent vectors.

For a finite set of primes `S`, the product `prod p in S, p^(e p)`
uniquely determines the exponent vector `e`. This is a finite, elementary
factorization theorem and does not use analytic number theory.
-/
theorem exponentVectorNat_injective_of_prime_set
    (S : Finset Nat)
    (K : Nat)
    (hSprime : ∀ p ∈ S, Nat.Prime p) :
    Function.Injective
      (fun e : ExponentVector S K => exponentVectorNat S K e) := by
  intro e₁ e₂ h
  funext p
  apply Fin.ext
  have hfac :
      Nat.factorization (exponentVectorNat S K e₁) p.val =
        Nat.factorization (exponentVectorNat S K e₂) p.val := by
    rw [show exponentVectorNat S K e₁ = exponentVectorNat S K e₂ from h]
  rw [factorization_exponentVectorNat S K hSprime e₁ p.val] at hfac
  rw [factorization_exponentVectorNat S K hSprime e₂ p.val] at hfac
  simp [p.property] at hfac
  exact hfac

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a03a0d594b6788c8246094a3ffdce3b24b09d47f3ef3df7f91ee0a5ce61b0710 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteFactorizationPlumbing/Variant3153719d5f5d8b1f9765626916f3a3aa290d5772742417faa3d866e517b80646.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
