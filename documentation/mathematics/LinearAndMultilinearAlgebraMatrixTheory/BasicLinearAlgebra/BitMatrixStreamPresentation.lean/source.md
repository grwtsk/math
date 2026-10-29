# Bit Matrix Stream Presentation — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da5810ddf1f2ff4436c63a7253e17345655b06cf` · SHA-256 `143025525444aaaf4b69e79f184275674f96212df6165171a422811083ea9397`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.BitMatrixStreamPresentation

/-!
# Folder.Theorem.Presentation.BitMatrixStreamPresentation

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes BitMatrixStream presentation interface facts.
Ontology: proof.presentation.bitmatrixstream_latex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem leanLatexPresentation_respectsRanking
    (R : Folder.Presentation.LeanLatexPresentationRule) :
    R.respectsRanking :=
  Folder.Presentation.leanLatexPresentation_respectsRanking R

end Presentation
end Theorem
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03aeb68bad3b631c695b2927002bb59bcfd8dccccf7beb55c090dc0ee136ca72 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/BitMatrixStreamPresentation/Variant143025525444aaaf4b69e79f184275674f96212df6165171a422811083ea9397.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
