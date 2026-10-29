# Embedding Basic Ext Iff

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**64 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant005d4a2375a4b68281075a7781d1f7a2d64726e5d3dcd7d812ae3b3754aa6801.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0b93374999c0f543a0d33f236413ff1d0f3e1854`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/EmbeddingBasicExtIff.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Embedding](declarations/embedding.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Equiv.toEmbedding](declarations/equiv-toembedding.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [Equiv.coe_toEmbedding](declarations/equiv-coe-toembedding.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [Equiv.toEmbedding_apply](declarations/equiv-toembedding-apply.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [Equiv.coeEmbedding](declarations/equiv-coeembedding.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [Equiv.Perm.coeEmbedding](declarations/equiv-perm-coeembedding.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coe_injective](declarations/coe-injective.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [ext](declarations/ext.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [ext_iff](declarations/ext-iff.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [toFun_eq_coe](declarations/tofun-eq-coe.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coeFn_mk](declarations/coefn-mk.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mk_coe](declarations/mk-coe.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [injective](declarations/injective.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [apply_eq_iff_eq](declarations/apply-eq-iff-eq.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [refl](declarations/refl.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [trans](declarations/trans.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [equiv_toEmbedding_trans_symm_toEmbedding](declarations/equiv-toembedding-trans-symm-toembedding.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [equiv_symm_toEmbedding_trans_toEmbedding](declarations/equiv-symm-toembedding-trans-toembedding.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [congr](declarations/congr.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofSurjective](declarations/ofsurjective.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [equivOfSurjective](declarations/equivofsurjective.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ofIsEmpty](declarations/ofisempty.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [setValue](declarations/setvalue.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [setValue_eq](declarations/setvalue-eq.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [some](declarations/some.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [optionMap](declarations/optionmap.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [subtype](declarations/subtype.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [coe_subtype](declarations/coe-subtype.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [quotientOut](declarations/quotientout.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [coe_quotientOut](declarations/coe-quotientout.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [punit](declarations/punit.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [sectl](declarations/sectl.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [sectr](declarations/sectr.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [prodMap](declarations/prodmap.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [coe_prodMap](declarations/coe-prodmap.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [pprodMap](declarations/pprodmap.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [sumMap](declarations/summap.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [coe_sumMap](declarations/coe-summap.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [inl](declarations/inl.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [inr](declarations/inr.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [sigmaMk](declarations/sigmamk.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [sigmaMap](declarations/sigmamap.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [piCongrRight](declarations/picongrright.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [arrowCongrRight](declarations/arrowcongrright.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [arrowCongrRight_apply](declarations/arrowcongrright-apply.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [arrowCongrLeft](declarations/arrowcongrleft.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [subtypeMap](declarations/subtypemap.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [swap_apply](declarations/swap-apply.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [swap_comp](declarations/swap-comp.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [asEmbedding](declarations/asembedding.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [subtypeInjectiveEquivEmbedding](declarations/subtypeinjectiveequivembedding.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [embeddingCongr](declarations/embeddingcongr.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [embeddingCongr_refl](declarations/embeddingcongr-refl.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [embeddingCongr_trans](declarations/embeddingcongr-trans.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [embeddingCongr_symm](declarations/embeddingcongr-symm.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [embeddingCongr_apply_trans](declarations/embeddingcongr-apply-trans.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [refl_toEmbedding](declarations/refl-toembedding.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [trans_toEmbedding](declarations/trans-toembedding.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [subtypeOrLeftEmbedding](declarations/subtypeorleftembedding.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [subtypeOrLeftEmbedding_apply_left](declarations/subtypeorleftembedding-apply-left.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [subtypeOrLeftEmbedding_apply_right](declarations/subtypeorleftembedding-apply-right.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [Subtype.impEmbedding](declarations/subtype-impembedding.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85e484053f7ad73e7a1b4307208160b12acc245d90f675d319a32b4473b9fd6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant005d4a2375a4b68281075a7781d1f7a2d64726e5d3dcd7d812ae3b3754aa6801.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
