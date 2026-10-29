# Elementary Maps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f98d552aa27155bc912aa8ac21693f627e596eef`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/ElementaryMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ElementaryEmbedding](declarations/elementaryembedding.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFunLike](declarations/instfunlike.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [map_boundedFormula](declarations/map-boundedformula.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [map_formula](declarations/map-formula.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [map_sentence](declarations/map-sentence.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [theory_model_iff](declarations/theory-model-iff.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [elementarilyEquivalent](declarations/elementarilyequivalent.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [injective](declarations/injective.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [embeddingLike](declarations/embeddinglike.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_fun](declarations/map-fun.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [map_rel](declarations/map-rel.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [strongHomClass](declarations/stronghomclass.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [map_constants](declarations/map-constants.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [toEmbedding](declarations/toembedding.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toHom](declarations/tohom.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [toEmbedding_toHom](declarations/toembedding-tohom.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [coe_toHom](declarations/coe-tohom.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [coe_toEmbedding](declarations/coe-toembedding.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [coe_injective](declarations/coe-injective.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ext](declarations/ext.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [refl](declarations/refl.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [(anonymous)](declarations/instance.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [refl_apply](declarations/refl-apply.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [comp](declarations/comp.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_apply](declarations/comp-apply.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comp_assoc](declarations/comp-assoc.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `abbrev` | [elementaryDiagram](declarations/elementarydiagram.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [ElementaryEmbedding.ofModelsElementaryDiagram](declarations/elementaryembedding-ofmodelselementarydiagram.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isElementary_of_exists](declarations/iselementary-of-exists.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [toElementaryEmbedding](declarations/toelementaryembedding.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [toElementaryEmbedding](declarations/toelementaryembedding-source-edition-2.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [toElementaryEmbedding_toEmbedding](declarations/toelementaryembedding-toembedding.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [coe_toElementaryEmbedding](declarations/coe-toelementaryembedding.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [realize_term_substructure](declarations/realize-term-substructure.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cf2479979ad5b7ab30fb6e8882cbfa06f8b20c19a3e1dc875cb7a9fbdd7d8ae3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/ElementaryMaps/Variant67de0c36f3c3623363a2179ae53eba19c252bf974aa36e7c4ea1ca85b4e3ee33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
