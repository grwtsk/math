# Primes In APPublic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a47f08371abfb838979363184bcdf36841335128`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrimesInAPPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [residueClass](declarations/residueclass.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [residueClass_nonneg](declarations/residueclass-nonneg.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [residueClass_le](declarations/residueclass-le.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [residueClass_apply_zero](declarations/residueclass-apply-zero.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [abscissaOfAbsConv_residueClass_le_one](declarations/abscissaofabsconv-residueclass-le-one.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [support_residueClass_prime_div](declarations/support-residueclass-prime-div.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [F₀](declarations/f-source-edition-2.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [F'](declarations/f.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [F''](declarations/f-source-edition-3.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [F''_le](declarations/f-le.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [summable_F''](declarations/summable-f.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [summable_residueClass_non_primes_div](declarations/summable-residueclass-non-primes-div.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [residueClass_apply](declarations/residueclass-apply.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [residueClass_eq](declarations/residueclass-eq.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [LSeries_residueClass_eq](declarations/lseries-residueclass-eq.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `abbrev` | [LFunctionResidueClassAux](declarations/lfunctionresidueclassaux.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [continuousOn_LFunctionResidueClassAux'](declarations/continuouson-lfunctionresidueclassaux.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [continuousOn_LFunctionResidueClassAux](declarations/continuouson-lfunctionresidueclassaux-source-edition-2.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [eqOn_LFunctionResidueClassAux](declarations/eqon-lfunctionresidueclassaux.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [LFunctionResidueClassAux_real](declarations/lfunctionresidueclassaux-real.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [LSeries_residueClass_lower_bound](declarations/lseries-residueclass-lower-bound.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [not_summable_residueClass_prime_div](declarations/not-summable-residueclass-prime-div.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [infinite_setOfPred_prime_and_eq_mod](declarations/infinite-setofpred-prime-and-eq-mod.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [forall_exists_prime_gt_and_eq_mod](declarations/forall-exists-prime-gt-and-eq-mod.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [forall_exists_prime_gt_and_zmodEq](declarations/forall-exists-prime-gt-and-zmodeq.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [forall_exists_prime_gt_and_modEq](declarations/forall-exists-prime-gt-and-modeq.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [frequently_atTop_prime_and_modEq](declarations/frequently-attop-prime-and-modeq.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [infinite_setOfPred_prime_and_modEq](declarations/infinite-setofpred-prime-and-modeq.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c08d94088c29b6d650473e15a251b20dca6328471a5df6c97c4a574dc7822bdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/PrimesInAP/Varianta2491d48850056b27fe6ad31cf7b210a7f6455e8e0fa4fbb714671bbffb61ca4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
