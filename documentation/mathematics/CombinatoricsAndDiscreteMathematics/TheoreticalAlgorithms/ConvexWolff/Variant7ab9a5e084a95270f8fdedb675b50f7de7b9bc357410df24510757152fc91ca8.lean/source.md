# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ConvexWolff.Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9161319a6a4d098487ab6e0b6c502f363203d808` · SHA-256 `7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Geometry.Kakeya.WolffAxioms

namespace Surface.Geometry.Kakeya

/-!
What is formalized:
Convex Wolff factorization as a theorem-input record.

What is certificate-gated:
The factorization statement is a Prop-valued input and requires Wolff
conditions.

What is not claimed:
No convex Wolff factorization theorem is proved here.
-/

/-- Convex Wolff factorization theorem input. -/
structure ConvexWolffFactorization
    (K : TubeConfiguration) where
  wolffAxioms : WolffAxioms K
  factorization : Prop
  factorizationCertified : factorization
  boundary : List String

def ConvexWolffFactorization.usableForMajorProof
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    Prop :=
  F.wolffAxioms.usableForMajorProof ∧ F.factorization

theorem ConvexWolffFactorization.usableForMajorProof_of_fields
    {K : TubeConfiguration}
    (F : ConvexWolffFactorization K) :
    F.usableForMajorProof :=
  ⟨F.wolffAxioms.usableForMajorProof_of_fields, F.factorizationCertified⟩

end Surface.Geometry.Kakeya
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=970558a499e8e4da9df5c1feed4c689e9dbb4be30f958f0d2b22b98c4dda6ce0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConvexWolff/Variant7ab9a5e084a95270f8fdedb675b50f7de7b9bc357410df24510757152fc91ca8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
