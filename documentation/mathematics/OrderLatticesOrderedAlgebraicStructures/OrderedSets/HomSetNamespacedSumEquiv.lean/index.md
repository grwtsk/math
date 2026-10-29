# Hom Set Namespaced Sum Equiv

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7988dae22ecf9c892f3b16bceeef7f9f7b93a4e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/HomSetNamespacedSumEquiv.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sumEquiv](declarations/sumequiv.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [range_eq](declarations/range-eq.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [symm_image_image](declarations/symm-image-image.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [image_symm_image](declarations/image-symm-image.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [image_eq_preimage](declarations/image-eq-preimage.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [preimage_symm_preimage](declarations/preimage-symm-preimage.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [symm_preimage_preimage](declarations/symm-preimage-preimage.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [image_preimage](declarations/image-preimage.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [preimage_image](declarations/preimage-image.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [setCongr](declarations/setcongr.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Set.univ](declarations/set-univ.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [OrderEmbedding.orderIso](declarations/orderembedding-orderiso.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [StrictMonoOn.orderIso](declarations/strictmonoon-orderiso.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [orderIso](declarations/orderiso.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [orderIsoOfSurjective](declarations/orderisoofsurjective.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [coe_orderIsoOfSurjective](declarations/coe-orderisoofsurjective.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [orderIsoOfSurjective_symm_apply_self](declarations/orderisoofsurjective-symm-apply-self.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [orderIsoOfSurjective_self_symm_apply](declarations/orderisoofsurjective-self-symm-apply.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [OrderEmbedding.range_inj](declarations/orderembedding-range-inj.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [subsingleton_of_wellFoundedLT](declarations/subsingleton-of-wellfoundedlt.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [subsingleton_of_wellFoundedLT'](declarations/subsingleton-of-wellfoundedlt-source-edition-2.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [unique_of_wellFoundedLT](declarations/unique-of-wellfoundedlt.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [subsingleton_of_wellFoundedGT](declarations/subsingleton-of-wellfoundedgt-source-edition-2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [subsingleton_of_wellFoundedGT'](declarations/subsingleton-of-wellfoundedgt.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [unique_of_wellFoundedGT](declarations/unique-of-wellfoundedgt.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Iic](declarations/iic.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Ici](declarations/ici.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Icc](declarations/icc.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [OrderIso.compl](declarations/orderiso-compl.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [compl_strictAnti](declarations/compl-strictanti.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [compl_antitone](declarations/compl-antitone.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87e9d90e009f752cb10c11e75d534e5e956845c8502f7ed606cb4dfe38aa2d24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Set/Variant479e53effe59ed41db21a09e39cdbe75f73cea2761b0a72953442b307b49ed33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
