# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck.Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c55079aa50c33fd509ef069d4e3b72e537c2d3d7` · SHA-256 `11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Mathlib.Data.Fin.VecNotation
namespace FormalResearch.PositiveAtlas.MomentCumulant
example {E : Type} (directions : Fin 4 → E) :
    blockDirections directions ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)) =
      ![directions 0, directions 2] := by
  have h := Finset.orderEmbOfFin_unique
    (s := ({(0 : Fin 4), (2 : Fin 4)} : Finset (Fin 4)))
    (f := (![0, 2] : Fin 2 → Fin 4)) (by decide : _ = 2)
    (by decide) (by decide)
  funext j
  unfold blockDirections blockOrderIso
  rw [Finset.coe_orderIsoOfFin_apply, ← h]
  fin_cases j <;> rfl
end FormalResearch.PositiveAtlas.MomentCumulant
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5c1c86f12c677dd8dc0de7bc5477b76bb47e8e230f4b35c2965b560243fdb84 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038EmbeddingCheck/Variant11404d6bcb2176af24b0532b2166feb0ef3d50068a2946f0d1d89b76fee5e038.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
