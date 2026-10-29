# Types Colimits Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46fb445ebdbc4110e8117402dd9dd29626ab9c3b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesColimitsPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [coconeTypesEquiv](declarations/coconetypesequiv.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [CoconeTypes.isColimit_iff](declarations/coconetypes-iscolimit-iff.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [isColimit_iff_coconeTypesIsColimit](declarations/iscolimit-iff-coconetypesiscolimit.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [colimitCocone](declarations/colimitcocone.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasColimit_iff_small_colimitType](declarations/hascolimit-iff-small-colimittype.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [small_colimitType_of_hasColimit](declarations/small-colimittype-of-hascolimit.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [hasColimit](declarations/hascolimit.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [hasColimitsOfShape](declarations/hascolimitsofshape.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `example` | [(anonymous)](declarations/example-source-edition-5.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `example` | [(anonymous)](declarations/example-source-edition-4.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `example` | [(anonymous)](declarations/example.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `abbrev` | [colimitCocone](declarations/colimitcocone-source-edition-2.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [colimitCoconeIsColimit](declarations/colimitcoconeiscolimit-source-edition-2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [colimitEquivColimitType](declarations/colimitequivcolimittype.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [colimitEquivColimitType_symm_apply](declarations/colimitequivcolimittype-symm-apply.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [colimitEquivColimitType_apply](declarations/colimitequivcolimittype-apply.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [Colimit.w_apply](declarations/colimit-w-apply.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [Colimit.ι_desc_apply](declarations/colimit-desc-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Colimit.ι_map_apply](declarations/colimit-map-apply.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [colimit_sound](declarations/colimit-sound.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [colimit_sound'](declarations/colimit-sound-source-edition-2.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [colimit_eq](declarations/colimit-eq.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [jointly_surjective_of_isColimit](declarations/jointly-surjective-of-iscolimit.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [jointly_surjective](declarations/jointly-surjective-source-edition-2.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [jointly_surjective'](declarations/jointly-surjective.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [nonempty_of_nonempty_colimit](declarations/nonempty-of-nonempty-colimit.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4c6b7226956e5e1e0ad05f4cd60a00253b3b355112ad52714051653d197680 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant3e70c4435694f09be984389954143f9da468f02951aea5b9bb0b63e42fef4ae5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
