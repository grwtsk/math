# Positivity Basic Namespaced Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f94971ac9cc69bf8e5a6525248acaf7f52bf05c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicNamespacedSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](declarations/ite-pos.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ite_nonneg](declarations/ite-nonneg.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](declarations/ite-nonneg-of-pos-of-nonneg.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](declarations/ite-nonneg-of-nonneg-of-pos.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ite_ne_zero](declarations/ite-ne-zero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](declarations/ite-ne-zero-of-pos-of-ne-zero.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](declarations/ite-ne-zero-of-ne-zero-of-pos.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalIte](declarations/evalite.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [le_min_of_lt_of_le](declarations/le-min-of-lt-of-le.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [le_min_of_le_of_lt](declarations/le-min-of-le-of-lt.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [min_ne](declarations/min-ne.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](declarations/min-ne-of-ne-of-lt.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](declarations/min-ne-of-lt-of-ne.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [max_ne](declarations/max-ne.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [evalMin](declarations/evalmin.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalMax](declarations/evalmax.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evalAdd](declarations/evaladd.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](declarations/mul-nonneg-of-pos-of-nonneg.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](declarations/mul-nonneg-of-nonneg-of-pos.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](declarations/mul-ne-zero-of-ne-zero-of-pos.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](declarations/mul-ne-zero-of-pos-of-ne-zero.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [evalMul](declarations/evalmul.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [int_div_self_pos](declarations/int-div-self-pos.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](declarations/int-div-nonneg-of-pos-of-nonneg.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](declarations/int-div-nonneg-of-nonneg-of-pos.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](declarations/int-div-nonneg-of-pos-of-pos.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalIntDiv](declarations/evalintdiv.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [div_nonneg_of_pos_of_nonneg](declarations/div-nonneg-of-pos-of-nonneg.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [div_nonneg_of_nonneg_of_pos](declarations/div-nonneg-of-nonneg-of-pos.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [div_ne_zero_of_pos_of_ne_zero](declarations/div-ne-zero-of-pos-of-ne-zero.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [div_ne_zero_of_ne_zero_of_pos](declarations/div-ne-zero-of-ne-zero-of-pos.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [evalDiv](declarations/evaldiv.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [evalInv](declarations/evalinv.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_zero_pos](declarations/pow-zero-pos.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [zpow_zero_pos](declarations/zpow-zero-pos.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evalPowZeroNat](declarations/evalpowzeronat.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evalPowZeroInt](declarations/evalpowzeroint.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [evalPow](declarations/evalpow.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [abs_pos_of_ne_zero](declarations/abs-pos-of-ne-zero.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [evalAbs](declarations/evalabs.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [int_natAbs_pos](declarations/int-natabs-pos.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [evalNatAbs](declarations/evalnatabs.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [evalNatCast](declarations/evalnatcast.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [evalIntCast](declarations/evalintcast.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [evalNatSucc](declarations/evalnatsucc.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evalFactorial](declarations/evalfactorial.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20775011d4a65c2bc1839b40e845752509f734193ce95987a7923407852f3db8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
