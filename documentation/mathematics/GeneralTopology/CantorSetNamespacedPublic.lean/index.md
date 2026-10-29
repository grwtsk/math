# Cantor Set Namespaced Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79fd5f67185e532e62fc157dbb2ade711ec62428`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/CantorSetNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [preCantorSet](declarations/precantorset.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [preCantorSet_zero](declarations/precantorset-zero.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [preCantorSet_succ](declarations/precantorset-succ.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cantorSet](declarations/cantorset.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [quarters_mem_preCantorSet](declarations/quarters-mem-precantorset.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [quarter_mem_preCantorSet](declarations/quarter-mem-precantorset.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quarter_mem_cantorSet](declarations/quarter-mem-cantorset.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [zero_mem_preCantorSet](declarations/zero-mem-precantorset.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_mem_cantorSet](declarations/zero-mem-cantorset.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [preCantorSet_antitone](declarations/precantorset-antitone.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [preCantorSet_subset_unitInterval](declarations/precantorset-subset-unitinterval.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [cantorSet_subset_unitInterval](declarations/cantorset-subset-unitinterval.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cantorSet_eq_union_halves](declarations/cantorset-eq-union-halves.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isClosed_preCantorSet](declarations/isclosed-precantorset.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isClosed_cantorSet](declarations/isclosed-cantorset.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [isCompact_cantorSet](declarations/iscompact-cantorset.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofDigits_zero_two_sequence_mem_cantorSet](declarations/ofdigits-zero-two-sequence-mem-cantorset.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofDigits_zero_two_sequence_unique](declarations/ofdigits-zero-two-sequence-unique.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [cantorStep](declarations/cantorstep.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cantorStep_mem_cantorSet](declarations/cantorstep-mem-cantorset.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [cantorSequence](declarations/cantorsequence.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cantorSequence_mem_cantorSet](declarations/cantorsequence-mem-cantorset.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cantorToBinary](declarations/cantortobinary.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cantorToTernary](declarations/cantortoternary.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofDigits_bool_to_fin_three_mem_cantorSet](declarations/ofdigits-bool-to-fin-three-mem-cantorset.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cantorToTernary_ne_one](declarations/cantortoternary-ne-one.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cantorSequence_get_succ](declarations/cantorsequence-get-succ.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cantorSequence_eq_self_sub_sum_cantorToTernary](declarations/cantorsequence-eq-self-sub-sum-cantortoternary.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ofDigits_cantorToTernary_sum_le](declarations/ofdigits-cantortoternary-sum-le.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_ofDigits_cantorToTernary_sum](declarations/le-ofdigits-cantortoternary-sum.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ofDigits_cantorToTernary](declarations/ofdigits-cantortoternary.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cantorSet_eq_zero_two_ofDigits](declarations/cantorset-eq-zero-two-ofdigits.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [cantorSetEquivNatToBool](declarations/cantorsetequivnattobool.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [cantorSetHomeomorphNatToBool](declarations/cantorsethomeomorphnattobool.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [cantorSpaceHomeomorphNatToCantorSpace](declarations/cantorspacehomeomorphnattocantorspace.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=826dbf94ba7f3af8fee18594793b1101592f8bad62e2d6eec069fc4062c0e96b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
