# Group Submonoid Pointwise

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceae1dd074411a460371363b9269d889146b5b56`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GroupTheoryAndGeneralizations/GroupSubmonoidPointwise.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [coe_mul_coe](declarations/coe-mul-coe.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [coe_set_pow](declarations/coe-set-pow.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [mul_subset](declarations/mul-subset.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mul_subset_closure](declarations/mul-subset-closure.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coe_mul_self_eq](declarations/coe-mul-self-eq.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [closure_mul_le](declarations/closure-mul-le.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [closure_pow_le](declarations/closure-pow-le.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [closure_pow](declarations/closure-pow.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sup_eq_closure_mul](declarations/sup-eq-closure-mul.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pow_smul_mem_closure_smul](declarations/pow-smul-mem-closure-smul.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [inv](declarations/inv.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [coe_inv](declarations/coe-inv.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mem_inv](declarations/mem-inv.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [involutiveInv](declarations/involutiveinv.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [inv_le_inv](declarations/inv-le-inv.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [inv_le](declarations/inv-le.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [invOrderIso](declarations/invorderiso.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [closure_inv](declarations/closure-inv.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [mem_closure_inv](declarations/mem-closure-inv.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [inv_inf](declarations/inv-inf.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [inv_sup](declarations/inv-sup.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [inv_bot](declarations/inv-bot.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [inv_top](declarations/inv-top.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inv_iInf](declarations/inv-iinf.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [inv_iSup](declarations/inv-isup.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [pointwiseMulAction](declarations/pointwisemulaction.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [coe_pointwise_smul](declarations/coe-pointwise-smul.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [smul_mem_pointwise_smul](declarations/smul-mem-pointwise-smul.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mem_smul_pointwise_iff_exists](declarations/mem-smul-pointwise-iff-exists.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [smul_bot](declarations/smul-bot.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [smul_sup](declarations/smul-sup.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [smul_closure](declarations/smul-closure.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [pointwise_isCentralScalar](declarations/pointwise-iscentralscalar.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [smul_mem_pointwise_smul_iff](declarations/smul-mem-pointwise-smul-iff.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mem_inv_pointwise_smul_iff](declarations/mem-inv-pointwise-smul-iff.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](declarations/pointwise-smul-le-pointwise-smul-iff.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [pointwise_smul_subset_iff](declarations/pointwise-smul-subset-iff.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [subset_pointwise_smul_iff](declarations/subset-pointwise-smul-iff.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [submonoid_closure](declarations/submonoid-closure.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9057f5063193da30917b35dbeb2554d6187ed306d29902bacf8942698969475 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variantfd391f4f58cd2678a57dd0d3961062a4774f947a1d879ac1c69e2abfa6360210.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
