# Complete source: GRWTSK.NumberTheory.Primes.BoundedEnumeration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `854729f8f063cfacbc0a30ae5c7312083bcf8fa9` · SHA-256 `2d1a364d7e3aa86da4187665dcf6afebd223bbd618d81d2450aa6396c94084d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.NumberTheory.PrimeCounting

/-! Bounded enumeration, an optional specialization of the unpublished prime roadmap.
This proves a finite contract, not an analytic estimate or a complexity bound.
Exact version references: reading-background/obligation-implementation-progress.json. -/
namespace GRWTSK.NumberTheory.Primes

/-- Exact strict-bound contract; the empty output at bound zero is intentional. -/
def EnumeratesBelow (output : ℕ → Finset ℕ) : Prop :=
  ∀ N p, p ∈ output N ↔ p < N ∧ Nat.Prime p

theorem primesBelow_contract : EnumeratesBelow Nat.primesBelow := by
  intro N p
  exact Nat.mem_primesBelow

/-- The contract uniquely determines the finite output at every bound. -/
theorem enumeration_unique {output : ℕ → Finset ℕ} (h : EnumeratesBelow output) :
    output = Nat.primesBelow := by
  funext N
  ext p
  exact (h N p).trans Nat.mem_primesBelow.symm

/-- Incremental construction adds exactly the new endpoint when it is prime. -/
theorem enumeration_step {output : ℕ → Finset ℕ} (h : EnumeratesBelow output)
    (N : ℕ) : output (N + 1) = if Nat.Prime N then insert N (output N) else output N := by
  ext p
  rw [h]
  split_ifs with hn
  · simp only [Finset.mem_insert, h N p]
    constructor
    · rintro ⟨hp, hprime⟩
      by_cases heq : p = N
      · exact Or.inl heq
      · exact Or.inr ⟨by omega, hprime⟩
    · rintro (rfl | ⟨hp, hprime⟩)
      · exact ⟨by omega, hn⟩
      · exact ⟨by omega, hprime⟩
  · rw [h]
    constructor
    · rintro ⟨hp, hprime⟩
      have hne : p ≠ N := by
        intro heq
        exact hn (heq ▸ hprime)
      exact ⟨by omega, hprime⟩
    · rintro ⟨hp, hprime⟩
      exact ⟨by omega, hprime⟩
end GRWTSK.NumberTheory.Primes
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc0026e1f240ebb77da5343bb1537a8ccb97a9f4337f5246e39bb06e56c9cca7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/BoundedEnumeration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
