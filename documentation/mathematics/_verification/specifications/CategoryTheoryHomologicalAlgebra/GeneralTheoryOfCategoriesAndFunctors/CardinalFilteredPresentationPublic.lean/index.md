# Verification target: Cardinal Filtered Presentation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f455005b150757b2827cc5f21f101bc030e06259",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f455005b150757b2827cc5f21f101bc030e06259`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean.json)

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
| 1 | `lemma` | [isCardinalPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/iscardinalpresentable.md) | 47 | `result-track:be7b9efb9cd551e1743b99973c2931c07f3517e011ca4255adc34699d949f747` |
| 2 | `lemma` | [ColimitOfShape.isCardinalPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/colimitofshape-iscardinalpresentable.md) | 67 | `result-track:31d21e3863ca6245d7024235bf8dd2ec9527e5a979582d1894081df1b0128e14` |
| 3 | `structure` | [IsCardinalFilteredGenerator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/iscardinalfilteredgenerator.md) | 84 | `declaration-track:929f4360941bce6377874774565eec8c0ed9de2b0579b05a7c4f9c4be4145782` |
| 4 | `lemma` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/mk.md) | 92 | `result-track:a5350984bbc0bd2051f89acebde211b3095b439a35038dade91ef7807b81e8d2` |
| 5 | `lemma` | [of_le_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/of-le-isoclosure.md) | 106 | `result-track:a14cf0a1a91b7fe5fa51ad04f6b1dafd6b175b4a0a3e83f49d87194886c033df` |
| 6 | `lemma` | [isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/isoclosure.md) | 116 | `result-track:202f73d0dadec1cd8662fa0d40fc6fe9169d9df39c0d1859269dca8cab5a4b06` |
| 7 | `lemma` | [isoClosure_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/isoclosure-iff.md) | 120 | `result-track:9639614ab3186db8148ff037496f1aa336cb5acf39254d30ddc7fed589c2c8c1` |
| 8 | `lemma` | [presentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/presentable.md) | 126 | `result-track:73334a092d2a9e56ea5bc01201aae77ddf37ad848ab31a17d48a4e3e6a2d5c78` |
| 9 | `lemma` | [isStrongGenerator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/isstronggenerator.md) | 140 | `result-track:48b549a45018310c62811dd8ae912a02572c824450eb9307c9f5029118639cea` |
| 10 | `lemma` | [isPresentable_eq_retractClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/ispresentable-eq-retractclosure.md) | 146 | `result-track:c7f8c12dacde1cd4af5f6e223024ac8dbd5356bee6f329637f06ceb6c8e59a90` |
| 11 | `lemma` | [essentiallySmall_isPresentable](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/essentiallysmall-ispresentable.md) | 157 | `result-track:22825e5050b2b942865fc3d96efc50cbdbe1cd0a2a2acc0d00d0b26307579b0c` |
| 12 | `class` | [HasCardinalFilteredGenerator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/hascardinalfilteredgenerator.md) | 170 | `declaration-track:a564acef91a8e145b42732cf9d6d430e4d64506afad9f258e779d38fef167094` |
| 13 | `lemma` | [ObjectProperty.IsCardinalFilteredGenerator.hasCardinalFilteredGenerator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/objectproperty-iscardinalfilteredgenerator-hascardinalfilteredgenerator.md) | 176 | `result-track:a1a7d00606abc21c0d868eaf196b070255ad55d060ce9aa5ef2e89b3cd4eb7b6` |
| 14 | `lemma` | [HasCardinalFilteredGenerator.exists_small_generator](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/hascardinalfilteredgenerator-exists-small-generator.md) | 183 | `result-track:7d651e90bfb6856b103148a9043b50991e1fa7da49f7ffe1aa963515f040e4fc` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CardinalFilteredPresentationPublic.lean/declarations/instance.md) | 191 | `declaration-track:7654dca619e113971f557c48ce53bffab72e8333f4ebdfae735cb0b41928960c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b09de21dde393b6af3d2eee080a4dbfe3bb9be783ab1bbaba1571eab0fd6f45 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CardinalFilteredPresentation/Variant94c04a3152329c892ecdfb6cc39d757a520597a0594ef0e61d69fbd3eb728a3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
