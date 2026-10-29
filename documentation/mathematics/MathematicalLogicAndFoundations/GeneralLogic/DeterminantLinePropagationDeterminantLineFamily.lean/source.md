# Determinant Line Propagation Determinant Line Family — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f91e7a41df93c8139808ccc67da83cc538899bf0` · SHA-256 `21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.PerfectFamilyTheoremTarget

/-!
# Folder.CanonicalPath.DeterminantLinePropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records determinant-line propagation targets.
Ontology: canonical.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/

namespace Folder
namespace CanonicalPath

structure DeterminantLineFamily
    (F : PerfectSectionComplexFamily) where
  DeterminantLine : Type
  determinantOfCohomology : Prop
  deformsCompatibly : Prop
  nonzeroAnchor : Prop
  nonzeroAnchor_certified : nonzeroAnchor
  propagatesOnConnectedComponent : Prop
  propagatesOnConnectedComponent_certified : propagatesOnConnectedComponent
  sourceLabel : String

theorem determinant_line_propagates_if_supplied
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  D.propagatesOnConnectedComponent_certified

theorem determinant_line_has_nonzero_anchor
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  D.nonzeroAnchor_certified

end CanonicalPath
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=269793e57d40b1ee68d11a69c7d9620ba4e91421295d2b436bef28f70d0adca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DeterminantLinePropagation/Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
