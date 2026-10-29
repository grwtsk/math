# Lie Prod Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f22c88dd31c18b32b71039cc4f718320dad3d20`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieProdPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [instLieRing](declarations/instliering.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [bracket_apply](declarations/bracket-apply.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instLieAlgebra](declarations/instliealgebra.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [fst](declarations/fst.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [snd](declarations/snd.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [inl](declarations/inl.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [inr](declarations/inr.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [fst_apply](declarations/fst-apply.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [snd_apply](declarations/snd-apply.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [coe_fst](declarations/coe-fst.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [coe_snd](declarations/coe-snd.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [fst_surjective](declarations/fst-surjective.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [snd_surjective](declarations/snd-surjective.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [prod](declarations/prod.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [coe_prod](declarations/coe-prod.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fst_prod](declarations/fst-prod.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [snd_prod](declarations/snd-prod.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [pair_fst_snd](declarations/pair-fst-snd.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [prod_comp](declarations/prod-comp.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inl_apply](declarations/inl-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inr_apply](declarations/inr-apply.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [coe_inl](declarations/coe-inl.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [coe_inr](declarations/coe-inr.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inl_injective](declarations/inl-injective.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inr_injective](declarations/inr-injective.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [range_inl](declarations/range-inl.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [ker_snd](declarations/ker-snd.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [range_inr](declarations/range-inr.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ker_fst](declarations/ker-fst.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fst_comp_inl](declarations/fst-comp-inl.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [snd_comp_inl](declarations/snd-comp-inl.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fst_comp_inr](declarations/fst-comp-inr.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [snd_comp_inr](declarations/snd-comp-inr.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inl_eq_prod](declarations/inl-eq-prod.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [inr_eq_prod](declarations/inr-eq-prod.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [prod_ext_iff](declarations/prod-ext-iff.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [prod_ext](declarations/prod-ext.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [prodMap](declarations/prodmap.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coe_prodMap](declarations/coe-prodmap.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [prodMap_apply](declarations/prodmap-apply.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [prodMap_id](declarations/prodmap-id.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [prodMap_one](declarations/prodmap-one.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [prodMap_comp](declarations/prodmap-comp.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [prodMap_zero](declarations/prodmap-zero.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [LieEquiv.prodComm](declarations/lieequiv-prodcomm.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a15653aae1dc68d7324b048375a59f016cc438eb11140568a13003745522e96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Prod/Variante81e1fb909869d68ea9580dd5d7ec0f5a035f10fca5a4da87dddff16caecc0cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
