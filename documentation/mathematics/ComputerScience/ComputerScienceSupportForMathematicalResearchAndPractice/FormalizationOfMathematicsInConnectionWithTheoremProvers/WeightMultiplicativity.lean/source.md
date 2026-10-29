# Weight Multiplicativity — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d94c65075d9126cc68e3814916bdf86f0e8fc59e` · SHA-256 `71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Rebuild.AnalyticNumberTheory.SummabilityWeights

/-!
# Folder.Rebuild.AnalyticNumberTheory.WeightMultiplicativity

Multiplicativity of the positive-index real half-plane weight.
-/

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

theorem posWeightReal_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    posWeightReal σ n = (n : Real) ^ (-σ) := by
  simp [posWeightReal, Nat.ne_of_gt hn]

theorem posWeightComplex_of_pos
    (σ : Real)
    {n : Nat}
    (hn : 0 < n) :
    (((posWeightReal σ n : Real) : Complex)) =
      (((n : Real) ^ (-σ) : Real) : Complex) := by
  rw [posWeightReal_of_pos σ hn]

theorem posWeightReal_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    posWeightReal σ (m * n) =
      posWeightReal σ m * posWeightReal σ n := by
  have hmn : 0 < m * n := Nat.mul_pos hm hn
  simp [posWeightReal, Nat.ne_of_gt hm, Nat.ne_of_gt hn, Nat.ne_of_gt hmn,
    Nat.cast_mul, Real.mul_rpow]

theorem posWeightComplex_mul
    (σ : Real)
    {m n : Nat}
    (hm : 0 < m)
    (hn : 0 < n) :
    (((posWeightReal σ (m * n) : Real) : Complex)) =
      (((posWeightReal σ m : Real) : Complex)) *
      (((posWeightReal σ n : Real) : Complex)) := by
  rw [posWeightReal_mul σ hm hn]
  norm_num

end AnalyticNumberTheory
end Rebuild
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da230ffe6c18c55c011d681b98150e7b85afc52265ba06b282478ff593167f63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WeightMultiplicativity/Variant71976e65726a0f8ba785bb1dae1a63949100309572b78cc2632538d9ad392f5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
