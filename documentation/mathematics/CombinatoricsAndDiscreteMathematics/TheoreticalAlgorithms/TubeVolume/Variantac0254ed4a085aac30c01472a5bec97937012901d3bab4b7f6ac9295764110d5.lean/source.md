# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TubeVolume.Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06cb4dd53f4849563a2caf049af267239b0d724a` · SHA-256 `ac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Tube-volume lower-bound theorem input data.

What is certificate-gated:
The lower-bound statement is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No volume lower-bound theorem is proved here.
-/

/-- Quantitative tube-volume lower-bound theorem input. -/
structure TubeVolumeLowerBound
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  lowerBoundStatement : Prop
  lowerBoundCertified : lowerBoundStatement
  boundary : List String

def TubeVolumeLowerBound.usableForMajorProof
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    Prop :=
  V.wolffAxioms.usableForMajorProof ∧ V.lowerBoundStatement

theorem TubeVolumeLowerBound.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (V : TubeVolumeLowerBound K) :
    V.usableForMajorProof :=
  ⟨V.wolffAxioms.usableForMajorProof_of_fields, V.lowerBoundCertified⟩

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c18fcbd2d367185c4fcce424af80bfbce029a35d5e2a5e4a533f355841200f01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TubeVolume/Variantac0254ed4a085aac30c01472a5bec97937012901d3bab4b7f6ac9295764110d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
