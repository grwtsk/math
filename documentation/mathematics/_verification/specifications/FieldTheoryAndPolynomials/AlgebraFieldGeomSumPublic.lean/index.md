# Verification target: Algebra Field Geom Sum Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "631504010eac85fb287ddaf6f361a5e056452f64",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `631504010eac85fb287ddaf6f361a5e056452f64`.

Source path: `GRWTSK/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Commute.geom_sum₂](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/commute-geom-sum.md) | 38 | `result-track:ab9f1bac81dbe2ade9f2d295d2f6b9e0cfbf5a6776445794c07763d1fab7868c` |
| 2 | `theorem` | [geom_sum_eq](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum-eq.md) | 43 | `result-track:4d1e6d532ca5c89b91bd2bba8e5aa7a8de2150ab0c87a03028cff576a5fcbccb` |
| 3 | `theorem` | [Commute.geom_sum₂_Ico](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/commute-geom-sum-ico.md) | 47 | `result-track:c20f362a1db43459cc1ea66e716d02b21a55b57347cdc8d1010ddadcfc9feef2` |
| 4 | `lemma` | [geom_sum_Ico](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum-ico-source-edition-2.md) | 52 | `result-track:a28f58b43054eb195effdf1d572668cf34f22bc64391da57cdc6e307442f1eb6` |
| 5 | `lemma` | [geom_sum_Ico'](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum-ico-source-edition-3.md) | 56 | `result-track:e459d1155be2c0781d7cd47a3e2f2325b5ef78d6105767595d2c64cd7679b09b` |
| 6 | `lemma` | [geom_sum_inv](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum-inv.md) | 60 | `result-track:408799a6a5c8e35aaf7085ff1663dbed117488c9969cbcc50621ea60ce02a3cb` |
| 7 | `lemma` | [geom₂_sum](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum.md) | 80 | `result-track:70c7dfa2b63255416a38d178a132a4b70f7e6be78eae67863b288661baf1fb6c` |
| 8 | `lemma` | [geom_sum₂_Ico](../../../../FieldTheoryAndPolynomials/AlgebraFieldGeomSumPublic.lean/declarations/geom-sum-ico.md) | 84 | `result-track:9435465555ef0c6cad09e996feb681a0346b7c084992fb77c567a481828547ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=469419c15a778c652f41dbe288f800bb4767c741707a9f1b0f4fa52fea27243a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean","GRWTSK/_verification/specifications/Algebra/GeomSum/Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
