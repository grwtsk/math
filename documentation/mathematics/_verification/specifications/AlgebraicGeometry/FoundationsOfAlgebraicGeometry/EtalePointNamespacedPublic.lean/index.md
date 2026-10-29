# Verification target: Etale Point Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9196c196f45d333d25801cd3e6362ca9fad948b6",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9196c196f45d333d25801cd3e6362ca9fad948b6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exists_fac_of_etale_of_isSepClosed](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/exists-fac-of-etale-of-issepclosed.md) | 45 | `result-track:a5d498d1fc1a8c7a6b70e6e5383e68a805683aa9a16a1409634cccb2a401cdd6` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:a95d3354b4af2dcbb0673a3e7d3c34b736e2a67124fbac18c73eef38b52f202b` |
| 3 | `def` | [pointSmallEtale](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/pointsmalletale.md) | 72 | `declaration-track:871ee00d35d191d1874286b5f1ec5a880ea34799618172f4bd6daef19ec310d6` |
| 4 | `def` | [pointSmallEtaleFiberObjToPreimage](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/pointsmalletalefiberobjtopreimage.md) | 108 | `declaration-track:241aab0b62c5ca6b9545b0ff4d542cb0140cd34af0d35f42a5f7248af06582c2` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/instance.md) | 116 | `declaration-track:59856996ada225783fdc39e3c01a8b6235ef8a125ef52046d160f60c9e8f5a34` |
| 6 | `lemma` | [pointSmallEtaleFiberObjToPreimage_surjective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/pointsmalletalefiberobjtopreimage-surjective.md) | 121 | `result-track:a31cb2cc87138392a3d5624c0cb6e38f79ea6609f7900c864f7f744fb3e29c0b` |
| 7 | `lemma` | [isConservative_pointSmallEtale](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/isconservative-pointsmalletale.md) | 132 | `result-track:743b9752de5973c36d0451fd7cc73875eb662568bb4cab250a5909cf4f7e806c` |
| 8 | `lemma` | [isConservativeFamilyOfPoints_pointSmallEtale'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/isconservativefamilyofpoints-pointsmalletale.md) | 156 | `result-track:1f07df864d056eef919c57968da07fdc3dcb52cadeb9b4047b476eec638fcc5c` |
| 9 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EtalePointNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 166 | `declaration-track:cd27e60a1e7e1f78b410f7ae1da4a975e58e66478dedf33ab871cdfa8442f898` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a402164ece41367c298bd12b7a4dbaf12f216dce6a537a64bdd08b1215dafc7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/EtalePoint/Variantd8763316d7a0275e465944794546190c9f9d171aac3f06fa07baf39d1589d7f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
