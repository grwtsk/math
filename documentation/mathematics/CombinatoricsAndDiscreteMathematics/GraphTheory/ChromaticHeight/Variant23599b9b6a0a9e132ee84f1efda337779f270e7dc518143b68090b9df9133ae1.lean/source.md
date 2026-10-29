# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.ChromaticHeight.Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cba30e06eb19133f7dc89407af015c361c979922` · SHA-256 `23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CrystallineTensor.TensorSection

/-!
# Folder.CrystallineTensor.ChromaticHeight

Radiation role: research-boundary
BinaryMatrix spine: This module records chromatic-height-to-rank rules as contracts, not BinaryMatrix theorems.
Ontology: crystalline.chromatic_height
Pivot role: spectral
Zero typology: none
Contract boundary: contract
Composite stack role: crystalline-tensor
-/

namespace Folder
namespace CrystallineTensor

structure ChromaticHeight where
  height : Nat
  positive? : Option (PLift (0 < height))
  label : String

structure HeightRankRule where
  rankOfHeight : ChromaticHeight → TensorRank
  monotone : Prop
  monotone_certified : monotone
  sourceLabel : String

theorem height_rank_rule_monotone_if_supplied
    (R : HeightRankRule) :
    R.monotone :=
  R.monotone_certified

end CrystallineTensor
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2ba4ab96fb4d5ad43fb6353fb5fe2dcab254c58d09d3c0fdc578ea1daa1ac862 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/ChromaticHeight/Variant23599b9b6a0a9e132ee84f1efda337779f270e7dc518143b68090b9df9133ae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
