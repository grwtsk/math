# Partial Equiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**61 observed declarations and anonymous commands**, 40 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4fedf617b598a6b3213f983fd2544427d9fe6ae1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/PartialEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialEquiv](declarations/partialequiv.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instInhabited_self](declarations/instinhabited-self.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [symm](declarations/symm.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [symm_symm](declarations/symm-symm.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [symm_bijective](declarations/symm-bijective.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [symm_apply](declarations/symm-apply.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_def](declarations/le-def.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dom_le_dom](declarations/dom-le-dom.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [cod_le_cod](declarations/cod-le-cod.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [subtype_toEquiv_inclusion](declarations/subtype-toequiv-inclusion.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toEquiv_inclusion](declarations/toequiv-inclusion.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toEquiv_inclusion_apply](declarations/toequiv-inclusion-apply.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [le_iff](declarations/le-iff.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [le_trans](declarations/le-trans.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [le_refl](declarations/le-refl.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [le_antisymm](declarations/le-antisymm.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [symm_le_symm](declarations/symm-le-symm.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [monotone_symm](declarations/monotone-symm.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [symm_le_iff](declarations/symm-le-iff.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ext](declarations/ext.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [ext_iff](declarations/ext-iff.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [monotone_dom](declarations/monotone-dom.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [monotone_cod](declarations/monotone-cod.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [domRestrict](declarations/domrestrict.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [domRestrict_le](declarations/domrestrict-le.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [le_domRestrict](declarations/le-domrestrict.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [codRestrict](declarations/codrestrict.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [codRestrict_le](declarations/codrestrict-le.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [le_codRestrict](declarations/le-codrestrict.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [toEmbedding](declarations/toembedding.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [toEmbedding_apply](declarations/toembedding-apply.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toEmbeddingOfEqTop](declarations/toembeddingofeqtop.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [toEmbeddingOfEqTop_apply](declarations/toembeddingofeqtop-apply.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [toEquivOfEqTop](declarations/toequivofeqtop.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [toEquivOfEqTop_toEmbedding](declarations/toequivofeqtop-toembedding.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [dom_fg_iff_cod_fg](declarations/dom-fg-iff-cod-fg.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [toPartialEquiv](declarations/topartialequiv.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [toPartialEquiv_injective](declarations/topartialequiv-injective.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [toEmbedding_toPartialEquiv](declarations/toembedding-topartialequiv.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [toPartialEquiv_toEmbedding](declarations/topartialequiv-toembedding.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [partialEquivLimit](declarations/partialequivlimit.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [dom_partialEquivLimit](declarations/dom-partialequivlimit.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [cod_partialEquivLimit](declarations/cod-partialequivlimit.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [partialEquivLimit_comp_inclusion](declarations/partialequivlimit-comp-inclusion.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [le_partialEquivLimit](declarations/le-partialequivlimit.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `abbrev` | [FGEquiv](declarations/fgequiv.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [IsExtensionPair](declarations/isextensionpair.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [countable_self_fgequiv_of_countable](declarations/countable-self-fgequiv-of-countable.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [inhabited_self_FGEquiv](declarations/inhabited-self-fgequiv.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [inhabited_FGEquiv_of_IsEmpty_Constants_and_Relations](declarations/inhabited-fgequiv-of-isempty-constants-and-relations.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [FGEquiv.symm](declarations/fgequiv-symm.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [isExtensionPair_iff_cod](declarations/isextensionpair-iff-cod.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [isExtensionPair_iff_exists_embedding_closure_singleton_sup](declarations/isextensionpair-iff-exists-embedding-closure-singleton-sup.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [definedAtLeft](declarations/definedatleft.md) | 458 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [definedAtRight](declarations/definedatright.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [embedding_from_cg](declarations/embedding-from-cg.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [equiv_between_cg](declarations/equiv-between-cg.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=771388982abb4673a51143255e95bc3e58e1ce587e4502da6e76311d5c9184bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variant1afdaae6bc3452820929c8fc7a1281eff044490f452f115f22bb398707f3803d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
