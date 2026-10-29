# Complete source: GRWTSK.Algebra.LinearAlgebra.ThresholdTransform.Variant506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `261150835a631db49a87978d88bafb1109d2ed72` · SHA-256 `506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Quantization.Threshold
import Folder.Carrier.BinaryMatrixStream

/-!
# Folder.Transform.ThresholdTransform

Radiation role: spectral-heat
BinaryMatrix spine: This module supports spectral fields, heat contracts, residuals, energy, or quantization downstream of BinaryMatrix carriers.
Ontology: transform.threshold_transform
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Transform

open Carrier Quantization

structure ThresholdTransform (Source : Type _) where
  quantizer : ThresholdQuantizer
  rows : Nat
  cols : Nat
  sample : Source → Nat → Fin rows → Fin cols → Real
  layerAt : Source → Nat → BinaryMatrix :=
    fun source t =>
      BinaryMatrix.ofFunction rows cols
        (fun i j => quantizer.bitOf (sample source t i j))

end Transform
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dab102eb824015948b0dd1c1cc57bf9f26b0411ee85fb702be35537a93102b71 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ThresholdTransform/Variant506b3b5165fea790ac38f3d1bff13ca7c479b49140c6ee921bdd9ffe21b47eac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
