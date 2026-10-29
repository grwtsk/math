-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimePowerPairsUpTo.Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimePowerPairsUpTo.Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/PrimePowerLogSums.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.ChebyshevFunctions
import Mathlib.Data.Nat.Log

/-!
# Folder.Rebuild.AnalyticNumberTheory.PrimePowerLogSums

Finite Chebyshev psi as a logarithmic sum over prime powers.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimePowerPairsUpTo.Variant993bb09d283838e066efa1d6216533e0780b54aed2e13ac266b80ea82d660fc8

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

def primePowerPairsUpTo
    (N : Nat) : Finset (Nat × Nat) :=
  (primesUpTo N).biUnion fun p =>
    (Finset.Icc 1 (Nat.log p N)).map
      ⟨fun k => (p, k), by
        intro a b h
        exact (Prod.ext_iff.mp h).2⟩

theorem mem_primePowerPairsUpTo_iff
    {N p k : Nat} :
    (p, k) ∈ primePowerPairsUpTo N ↔
      Nat.Prime p ∧ 1 ≤ k ∧ p ^ k ≤ N := by
  constructor
  · intro h
    unfold primePowerPairsUpTo at h
    rcases Finset.mem_biUnion.mp h with ⟨q, hq, hpq⟩
    rcases Finset.mem_map.mp hpq with ⟨j, hj, hpair⟩
    have hp_eq : p = q := (Prod.ext_iff.mp hpair).1.symm
    have hk_eq : k = j := (Prod.ext_iff.mp hpair).2.symm
    subst p
    subst k
    have hmem := Finset.mem_Icc.mp hj
    exact
      ⟨ primesUpTo_prime hq
      , hmem.1
      , Nat.pow_le_of_le_log
          (by
            have hNpos : 0 < N := lt_of_lt_of_le (primesUpTo_pos hq) (mem_primesUpTo_iff.mp hq).2
            exact hNpos.ne')
          hmem.2
      ⟩
  · intro h
    rcases h with ⟨hp, hk1, hpow⟩
    have hpN : p ≤ N := by
      have hpdvd : p ∣ p ^ k := dvd_pow_self p (by omega)
      exact (Nat.le_of_dvd (pow_pos hp.pos k) hpdvd).trans hpow
    have hpS : p ∈ primesUpTo N :=
      mem_primesUpTo_iff.mpr ⟨hp, hpN⟩
    unfold primePowerPairsUpTo
    refine Finset.mem_biUnion.mpr ⟨p, hpS, ?_⟩
    refine Finset.mem_map.mpr ⟨k, Finset.mem_Icc.mpr ⟨hk1, ?_⟩, rfl⟩
    exact Nat.le_log_of_pow_le hp.one_lt hpow

noncomputable def chebyshevPsi
    (N : Nat) : Real :=
  ∑ pk ∈ primePowerPairsUpTo N, Real.log pk.1

theorem chebyshevPsi_nonneg
    (N : Nat) :
    0 ≤ chebyshevPsi N := by
  unfold chebyshevPsi
  exact
    Finset.sum_nonneg
      (fun pk hpk =>
        Real.log_nonneg
          (by
            rcases pk with ⟨p, k⟩
            exact_mod_cast (mem_primePowerPairsUpTo_iff.mp hpk).1.one_le))

theorem chebyshevPsi_eq_sum_log_prime
    (N : Nat) :
    chebyshevPsi N =
      ∑ p ∈ primesUpTo N, (Nat.log p N : Real) * Real.log p := by
  unfold chebyshevPsi primePowerPairsUpTo
  rw [Finset.sum_biUnion]
  · refine Finset.sum_congr rfl ?_
    intro p hp
    rw [Finset.sum_map]
    simp [Finset.sum_const, nsmul_eq_mul, Nat.card_Icc]
  · intro p _hp q _hq hpq
    unfold Function.onFun
    rw [Finset.disjoint_left]
    intro x hx hy
    rcases Finset.mem_map.mp hx with ⟨kp, _hkp, hxp⟩
    rcases Finset.mem_map.mp hy with ⟨kq, _hkq, hxq⟩
    have hxp' : (p, kp) = x := by simpa using hxp
    have hxq' : (q, kq) = x := by simpa using hxq
    have hpair : (p, kp) = (q, kq) := by
      rw [hxp', hxq']
    exact hpq (Prod.ext_iff.mp hpair).1

theorem chebyshevTheta_le_chebyshevPsi
    (N : Nat) :
    chebyshevTheta N ≤ chebyshevPsi N := by
  unfold chebyshevTheta chebyshevPsi
  let f : Nat → Nat × Nat := fun p => (p, 1)
  have hinj : Function.Injective f := by
    intro a b h
    exact (Prod.ext_iff.mp h).1
  have hsubset :
      (primesUpTo N).image f ⊆ primePowerPairsUpTo N := by
    intro pk hpk
    rcases Finset.mem_image.mp hpk with ⟨p, hp, rfl⟩
    exact
      mem_primePowerPairsUpTo_iff.mpr
        ⟨primesUpTo_prime hp, by norm_num, by simpa using (mem_primesUpTo_iff.mp hp).2⟩
  calc
    (∑ p ∈ primesUpTo N, Real.log p)
        = ∑ pk ∈ (primesUpTo N).image f, Real.log pk.1 := by
          symm
          exact
            Finset.sum_image
              (s := primesUpTo N)
              (g := f)
              (f := fun pk : Nat × Nat => Real.log pk.1)
              (fun a _ha b _hb h => hinj h)
    _ ≤ ∑ pk ∈ primePowerPairsUpTo N, Real.log pk.1 := by
          exact
            Finset.sum_le_sum_of_subset_of_nonneg hsubset
              (fun pk hpk _hnot =>
                Real.log_nonneg
                  (by
                    rcases pk with ⟨p, k⟩
                    exact_mod_cast (mem_primePowerPairsUpTo_iff.mp hpk).1.one_le))

theorem chebyshevPsi_le_sum_log_all_prime_powers
    (N : Nat) :
    chebyshevPsi N ≤
      ∑ pk ∈ (Finset.Icc 2 N).product (Finset.Icc 1 N),
        if Nat.Prime pk.1 ∧ pk.1 ^ pk.2 ≤ N
        then Real.log pk.1 else 0 := by
  let S := primePowerPairsUpTo N
  let T := (Finset.Icc 2 N).product (Finset.Icc 1 N)
  let g : Nat × Nat → Real :=
    fun pk =>
      if Nat.Prime pk.1 ∧ pk.1 ^ pk.2 ≤ N
      then Real.log pk.1 else 0
  have hsub : S ⊆ T := by
    intro pk hpk
    rcases pk with ⟨p, k⟩
    rcases mem_primePowerPairsUpTo_iff.mp hpk with ⟨hp, hk, hpow⟩
    exact
      Finset.mem_product.mpr
        ⟨ Finset.mem_Icc.mpr
            ⟨ hp.two_le
            , (Nat.le_of_dvd (pow_pos hp.pos k) (dvd_pow_self p (by omega))).trans hpow
            ⟩
        , Finset.mem_Icc.mpr
            ⟨ hk
            , (le_of_lt k.lt_two_pow_self).trans
                ((Nat.pow_le_pow_left hp.two_le k).trans hpow)
            ⟩
        ⟩
  have hS_eq :
      (∑ pk ∈ S, Real.log pk.1) = ∑ pk ∈ S, g pk := by
    refine Finset.sum_congr rfl ?_
    intro pk hpk
    rcases pk with ⟨p, k⟩
    rcases mem_primePowerPairsUpTo_iff.mp hpk with ⟨hp, _hk, hpow⟩
    simp [g, hp, hpow]
  have hnonneg :
      ∀ pk ∈ T, pk ∉ S → 0 ≤ g pk := by
    intro pk _hpk _hnot
    rcases pk with ⟨p, k⟩
    by_cases h : Nat.Prime p ∧ p ^ k ≤ N
    · have hp_one : (1 : Real) ≤ (p : Real) := by
        exact_mod_cast h.1.one_le
      have hlog : 0 ≤ Real.log (p : Real) := Real.log_nonneg hp_one
      simpa [g, h] using hlog
    · simp [g, h]
  unfold chebyshevPsi
  rw [show primePowerPairsUpTo N = S from rfl]
  rw [hS_eq]
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (s := S) (t := T) (f := g) hsub hnonneg

/-- Theorem target: a finite-linear upper bound for psi. -/
def ChebyshevPsiUpperBoundTarget : Prop :=
  ∃ C : Real, 0 < C ∧ ∀ N : Nat, chebyshevPsi N ≤ C * N

end AnalyticNumberTheory
end Rebuild
end Folder
