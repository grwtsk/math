# Theorem Tensor — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd4da80e702f9543ad22d8fd5df4be5ea18cad60` · SHA-256 `4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.List.Basic

namespace Noeoueue.Modular.TheoremTensor

/-- Row-major tensor half-turn, represented after shape validation by list reversal. -/
def halfTurn {alpha : Type} (slots : List alpha) : List alpha := slots.reverse

theorem halfTurn_involution {alpha : Type} (slots : List alpha) :
    halfTurn (halfTurn slots) = slots := by
  simp [halfTurn]

theorem halfTurn_preserves_length {alpha : Type} (slots : List alpha) :
    (halfTurn slots).length = slots.length := by
  simp [halfTurn]

end Noeoueue.Modular.TheoremTensor
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ca5269c8a9260af8aac2aa6f90cf31c7808efd576334e47672e9c6dac640fda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremTensor/Variant4b23a7c4a8444e5455ed51c328183298bc004142182123965b23cb3e99c064ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
