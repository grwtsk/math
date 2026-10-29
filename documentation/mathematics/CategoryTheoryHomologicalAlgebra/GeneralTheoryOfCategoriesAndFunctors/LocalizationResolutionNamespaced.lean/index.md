# Localization Resolution Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dd92c0487610ac4f36088f5deb0dd277356ebef9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalizationResolutionNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [RightResolution](declarations/rightresolution.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LeftResolution](declarations/leftresolution.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [RightResolution.mk_surjective](declarations/rightresolution-mk-surjective.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [LeftResolution.mk_surjective](declarations/leftresolution-mk-surjective.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [HasRightResolutions](declarations/hasrightresolutions.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [HasLeftResolutions](declarations/hasleftresolutions.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [Hom](declarations/hom.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Hom.id](declarations/hom-id.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Hom.comp](declarations/hom-comp-source-edition-2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [id_f](declarations/id-f-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [comp_f](declarations/comp-f-source-edition-2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [hom_ext](declarations/hom-ext-source-edition-2.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Hom](declarations/hom-source-edition-2.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Hom.id](declarations/hom-id-source-edition-2.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Hom.comp](declarations/hom-comp.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [id_f](declarations/id-f.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [comp_f](declarations/comp-f.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [hom_ext](declarations/hom-ext.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [LeftResolution.op](declarations/leftresolution-op.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [LeftResolution.unop](declarations/leftresolution-unop.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [RightResolution.op](declarations/rightresolution-op.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [RightResolution.unop](declarations/rightresolution-unop.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [nonempty_leftResolution_iff_op](declarations/nonempty-leftresolution-iff-op.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [nonempty_rightResolution_iff_op](declarations/nonempty-rightresolution-iff-op.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [hasLeftResolutions_iff_op](declarations/hasleftresolutions-iff-op.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [hasRightResolutions_iff_op](declarations/hasrightresolutions-iff-op.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [LeftResolution.opFunctor](declarations/leftresolution-opfunctor.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [RightResolution.unopFunctor](declarations/rightresolution-unopfunctor.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [LeftResolution.opEquivalence](declarations/leftresolution-opequivalence.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [essSurj_of_hasRightResolutions](declarations/esssurj-of-hasrightresolutions.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [isIso_iff_of_hasRightResolutions](declarations/isiso-iff-of-hasrightresolutions.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [essSurj_of_hasLeftResolutions](declarations/esssurj-of-hasleftresolutions.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [isIso_iff_of_hasLeftResolutions](declarations/isiso-iff-of-hasleftresolutions.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bde9b77bda67568ed00c28ee7fd3a4de99efe8ba1a2c5b426459e35ff6259b39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant626059f95cfcec75644b138fd1126fbc030fc4fd651d65538acb592b62b60f53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
