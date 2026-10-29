# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeReciprocalSums.Variant8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `382be602612e29938d511bac3918503439df6cc3` · SHA-256 `8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.HarmonicPartialSums
import Folder.Rebuild.AnalyticNumberTheory.PrimeExhaustion

/-!
# Folder.Rebuild.AnalyticNumberTheory.PrimeReciprocalSums

Finite partial sums of reciprocal primes.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open scoped BigOperators

noncomputable def primeReciprocalPartial
    (N : Nat) : Real :=
  ∑ p ∈ primesUpTo N, (p : Real)⁻¹

theorem primeReciprocalPartial_nonneg
    (N : Nat) :
    0 ≤ primeReciprocalPartial N := by
  unfold primeReciprocalPartial
  exact
    Finset.sum_nonneg
      (fun p _hp => inv_nonneg.mpr (Nat.cast_nonneg p))

theorem primesUpTo_subset_of_le
    {M N : Nat}
    (hMN : M ≤ N) :
    primesUpTo M ⊆ primesUpTo N := by
  intro p hp
  rcases mem_primesUpTo_iff.mp hp with ⟨hprime, hpM⟩
  exact mem_primesUpTo_iff.mpr ⟨hprime, hpM.trans hMN⟩

theorem primeReciprocalPartial_mono :
    Monotone primeReciprocalPartial := by
  intro M N hMN
  unfold primeReciprocalPartial
  exact
    Finset.sum_le_sum_of_subset_of_nonneg
      (primesUpTo_subset_of_le hMN)
      (fun p _hp _hnot => inv_nonneg.mpr (Nat.cast_nonneg p))

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f669014c8ef3738dd61718ea7df19cc9bca28fe63ce21982ae12b1ee4a62a5ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeReciprocalSums/Variant8aaffa228afb6e106551ae39f2f45a3598b874d949dc74c1e7dc4b4d8a8e95fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
