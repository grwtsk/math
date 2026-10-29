# Cantor Set Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaf1e9662b278b4e584feeccfce2be3132dede68`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/CantorSetPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [preCantorSet](declarations/precantorset.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [preCantorSet_zero](declarations/precantorset-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [preCantorSet_succ](declarations/precantorset-succ.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [cantorSet](declarations/cantorset.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [quarters_mem_preCantorSet](declarations/quarters-mem-precantorset.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [quarter_mem_preCantorSet](declarations/quarter-mem-precantorset.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [quarter_mem_cantorSet](declarations/quarter-mem-cantorset.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [zero_mem_preCantorSet](declarations/zero-mem-precantorset.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [zero_mem_cantorSet](declarations/zero-mem-cantorset.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [preCantorSet_antitone](declarations/precantorset-antitone.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [preCantorSet_subset_unitInterval](declarations/precantorset-subset-unitinterval.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [cantorSet_subset_unitInterval](declarations/cantorset-subset-unitinterval.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [cantorSet_eq_union_halves](declarations/cantorset-eq-union-halves.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [isClosed_preCantorSet](declarations/isclosed-precantorset.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [isClosed_cantorSet](declarations/isclosed-cantorset.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [isCompact_cantorSet](declarations/iscompact-cantorset.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [ofDigits_zero_two_sequence_mem_cantorSet](declarations/ofdigits-zero-two-sequence-mem-cantorset.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [ofDigits_zero_two_sequence_unique](declarations/ofdigits-zero-two-sequence-unique.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [cantorStep](declarations/cantorstep.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cantorStep_mem_cantorSet](declarations/cantorstep-mem-cantorset.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [cantorSequence](declarations/cantorsequence.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cantorSequence_mem_cantorSet](declarations/cantorsequence-mem-cantorset.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [cantorToBinary](declarations/cantortobinary.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [cantorToTernary](declarations/cantortoternary.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ofDigits_bool_to_fin_three_mem_cantorSet](declarations/ofdigits-bool-to-fin-three-mem-cantorset.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [cantorToTernary_ne_one](declarations/cantortoternary-ne-one.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cantorSequence_get_succ](declarations/cantorsequence-get-succ.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cantorSequence_eq_self_sub_sum_cantorToTernary](declarations/cantorsequence-eq-self-sub-sum-cantortoternary.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ofDigits_cantorToTernary_sum_le](declarations/ofdigits-cantortoternary-sum-le.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_ofDigits_cantorToTernary_sum](declarations/le-ofdigits-cantortoternary-sum.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [ofDigits_cantorToTernary](declarations/ofdigits-cantortoternary.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cantorSet_eq_zero_two_ofDigits](declarations/cantorset-eq-zero-two-ofdigits.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [cantorSetEquivNatToBool](declarations/cantorsetequivnattobool.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [cantorSetHomeomorphNatToBool](declarations/cantorsethomeomorphnattobool.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [cantorSpaceHomeomorphNatToCantorSpace](declarations/cantorspacehomeomorphnattocantorspace.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07a940c0f86e38e311251f777d76fc932624952bc84e5d512fbf18f310ad7332 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/CantorSet/Variant2674d089a27078995e20aba22476a17b0d79fd64c0ce79d3061acdec35b8bc53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
