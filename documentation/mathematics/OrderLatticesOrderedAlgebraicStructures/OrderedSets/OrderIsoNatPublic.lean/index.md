# Order Iso Nat Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `178cdccc09f1bfd2961ed486fadfa9115e492d77`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](declarations/natlt.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_natLT](declarations/coe-natlt.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [natGT](declarations/natgt.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_natGT](declarations/coe-natgt.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [acc_iff_isEmpty_subtype_mem_range](declarations/acc-iff-isempty-subtype-mem-range.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [not_acc](declarations/not-acc.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wellFounded_iff_isEmpty](declarations/wellfounded-iff-isempty.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [not_wellFounded](declarations/not-wellfounded.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_strictAnti_of_wellFoundedLT](declarations/not-strictanti-of-wellfoundedlt.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_strictMono_of_wellFoundedGT](declarations/not-strictmono-of-wellfoundedgt.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orderEmbeddingOfSet](declarations/orderembeddingofset.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Subtype.orderIsoOfNat](declarations/subtype-orderisoofnat.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_orderEmbeddingOfSet](declarations/coe-orderembeddingofset.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [orderEmbeddingOfSet_apply](declarations/orderembeddingofset-apply.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Subtype.orderIsoOfNat_apply](declarations/subtype-orderisoofnat-apply.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderEmbeddingOfSet_range](declarations/orderembeddingofset-range.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_subseq_of_forall_mem_union](declarations/exists-subseq-of-forall-mem-union.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](declarations/exists-increasing-or-nonincreasing-subseq-source-edition-2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq](declarations/exists-increasing-or-nonincreasing-subseq.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Infinite.exists_strictMono_or_strictAnti](declarations/infinite-exists-strictmono-or-strictanti.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Finite.of_wellFoundedLT_of_wellFoundedGT](declarations/finite-of-wellfoundedlt-of-wellfoundedgt.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsChain.finite_of_wellFoundedLT_of_wellFoundedGT](declarations/ischain-finite-of-wellfoundedlt-of-wellfoundedgt.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](declarations/wellfoundedgt-iff-monotone-chain-condition.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition'](declarations/wellfoundedgt-monotone-chain-condition-source-edition-2.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](declarations/wellfoundedgt-iff-monotone-chain-condition-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [WellFoundedGT.monotone_chain_condition](declarations/wellfoundedgt-monotone-chain-condition.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [WellFoundedLT.antitone_chain_condition](declarations/wellfoundedlt-antitone-chain-condition.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [monotonicSequenceLimitIndex](declarations/monotonicsequencelimitindex.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [monotonicSequenceLimit](declarations/monotonicsequencelimit.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_monotonicSequenceLimit](declarations/le-monotonicsequencelimit.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-isup-eq-monotonicsequencelimit.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [WellFoundedGT.ciSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-cisup-eq-monotonicsequencelimit.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97ac7d14f3ea5a8391ffeb7bee497f15b2123f764b2f49724f75494a7c4bdbe0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
