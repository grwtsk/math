# Order Iso Nat Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `319e154518f31d1ef48dc16fe1e54eea784d0478`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderIsoNatNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](declarations/natlt.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [coe_natLT](declarations/coe-natlt.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [natGT](declarations/natgt.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [coe_natGT](declarations/coe-natgt.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [acc_iff_isEmpty_subtype_mem_range](declarations/acc-iff-isempty-subtype-mem-range.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [not_acc](declarations/not-acc.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [wellFounded_iff_isEmpty](declarations/wellfounded-iff-isempty.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [not_wellFounded](declarations/not-wellfounded.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [not_strictAnti_of_wellFoundedLT](declarations/not-strictanti-of-wellfoundedlt.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [not_strictMono_of_wellFoundedGT](declarations/not-strictmono-of-wellfoundedgt.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [orderEmbeddingOfSet](declarations/orderembeddingofset.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Subtype.orderIsoOfNat](declarations/subtype-orderisoofnat.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [coe_orderEmbeddingOfSet](declarations/coe-orderembeddingofset.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [orderEmbeddingOfSet_apply](declarations/orderembeddingofset-apply.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [Subtype.orderIsoOfNat_apply](declarations/subtype-orderisoofnat-apply.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [orderEmbeddingOfSet_range](declarations/orderembeddingofset-range.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exists_subseq_of_forall_mem_union](declarations/exists-subseq-of-forall-mem-union.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](declarations/exists-increasing-or-nonincreasing-subseq-source-edition-2.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq](declarations/exists-increasing-or-nonincreasing-subseq.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [Infinite.exists_strictMono_or_strictAnti](declarations/infinite-exists-strictmono-or-strictanti.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [Finite.of_wellFoundedLT_of_wellFoundedGT](declarations/finite-of-wellfoundedlt-of-wellfoundedgt.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsChain.finite_of_wellFoundedLT_of_wellFoundedGT](declarations/ischain-finite-of-wellfoundedlt-of-wellfoundedgt.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](declarations/wellfoundedgt-iff-monotone-chain-condition-source-edition-2.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition'](declarations/wellfoundedgt-monotone-chain-condition-source-edition-2.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](declarations/wellfoundedgt-iff-monotone-chain-condition.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [WellFoundedGT.monotone_chain_condition](declarations/wellfoundedgt-monotone-chain-condition.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [WellFoundedLT.antitone_chain_condition](declarations/wellfoundedlt-antitone-chain-condition.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [monotonicSequenceLimitIndex](declarations/monotonicsequencelimitindex.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [monotonicSequenceLimit](declarations/monotonicsequencelimit.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [le_monotonicSequenceLimit](declarations/le-monotonicsequencelimit.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-isup-eq-monotonicsequencelimit.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [WellFoundedGT.ciSup_eq_monotonicSequenceLimit](declarations/wellfoundedgt-cisup-eq-monotonicsequencelimit.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4233bf6e33d02cd05d4cb5695d6233e8162bcf2b9bafa59f0c5e18cc8ded589 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variant3e72fd447a797eefd4e071473f9ff44944c01d295c922b2213f6b23171202118.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
