# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sticky.Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `447a6768b16d52c1e219e6bae512d888839ebc9b` · SHA-256 `de661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Sticky-Kakeya theorem input data.

What is certificate-gated:
The sticky estimate is a Prop-valued theorem input and requires Wolff
conditions.

What is not claimed:
No sticky Kakeya theorem is proved here.
-/

/-- Sticky-Kakeya theorem input. -/
structure StickyKakeyaTheoremInput
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  stickyEstimate : Prop
  stickyEstimateCertified : stickyEstimate
  boundary : List String

def StickyKakeyaTheoremInput.usableForMajorProof
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    Prop :=
  S.wolffAxioms.usableForMajorProof ∧ S.stickyEstimate

theorem StickyKakeyaTheoremInput.admissibleInput_of_fields
    {K : TubeConfiguration}
    (S : StickyKakeyaTheoremInput K) :
    S.usableForMajorProof :=
  ⟨S.wolffAxioms.usableForMajorProof_of_fields, S.stickyEstimateCertified⟩

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6460e78bb6c08e6b9c813a2dbd5f4c9384e8d95f26b7d4046e12237fbeb28c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sticky/Variantde661e812dacf844d9db270f3625f486f46564f0d860a1164c4292249decff2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
