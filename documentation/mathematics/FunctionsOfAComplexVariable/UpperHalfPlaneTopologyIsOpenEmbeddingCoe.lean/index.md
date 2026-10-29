# Upper Half Plane Topology Is Open Embedding Coe

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6badf738bd45f6b402b0428d7c74102a25cd04c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/UpperHalfPlaneTopologyIsOpenEmbeddingCoe.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [isOpenEmbedding_coe](declarations/isopenembedding-coe.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [isEmbedding_coe](declarations/isembedding-coe.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [continuous_coe](declarations/continuous-coe.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [continuous_re](declarations/continuous-re.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [continuous_im](declarations/continuous-im.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instContinuousGLSMul](declarations/instcontinuousglsmul.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [verticalStrip](declarations/verticalstrip.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_verticalStrip_iff](declarations/mem-verticalstrip-iff.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [verticalStrip_mono](declarations/verticalstrip-mono.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [verticalStrip_mono_left](declarations/verticalstrip-mono-left.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [verticalStrip_anti_right](declarations/verticalstrip-anti-right.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [subset_verticalStrip_of_isCompact](declarations/subset-verticalstrip-of-iscompact.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ModularGroup_T_zpow_mem_verticalStrip](declarations/modulargroup-t-zpow-mem-verticalstrip.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ofComplex](declarations/ofcomplex.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [ofComplex_apply](declarations/ofcomplex-apply.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [ofComplex_apply_eq_ite](declarations/ofcomplex-apply-eq-ite.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [ofComplex_apply_of_im_pos](declarations/ofcomplex-apply-of-im-pos.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [ofComplex_apply_of_im_nonpos](declarations/ofcomplex-apply-of-im-nonpos.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [ofComplex_apply_eq_of_im_nonpos](declarations/ofcomplex-apply-eq-of-im-nonpos.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [comp_ofComplex](declarations/comp-ofcomplex.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [comp_ofComplex_of_im_pos](declarations/comp-ofcomplex-of-im-pos.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [comp_ofComplex_of_im_le_zero](declarations/comp-ofcomplex-of-im-le-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eventuallyEq_coe_comp_ofComplex](declarations/eventuallyeq-coe-comp-ofcomplex.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e718117599131245e8e9e4e5abd1283b0a39cab3896e441485bc228e3702536b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Varianta92be9bf592542389182e378f1910b58b1f0f5d7427ca37d975d5b2659e5c0b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
