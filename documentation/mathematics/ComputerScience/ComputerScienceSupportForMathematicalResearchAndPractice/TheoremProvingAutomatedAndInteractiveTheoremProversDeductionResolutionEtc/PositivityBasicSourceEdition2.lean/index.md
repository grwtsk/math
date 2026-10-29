# Positivity Basic Source Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](declarations/ite-pos.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ite_nonneg](declarations/ite-nonneg.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](declarations/ite-nonneg-of-pos-of-nonneg.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](declarations/ite-nonneg-of-nonneg-of-pos.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ite_ne_zero](declarations/ite-ne-zero.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](declarations/ite-ne-zero-of-pos-of-ne-zero.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](declarations/ite-ne-zero-of-ne-zero-of-pos.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalIte](declarations/evalite.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [le_min_of_lt_of_le](declarations/le-min-of-lt-of-le.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [le_min_of_le_of_lt](declarations/le-min-of-le-of-lt.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [min_ne](declarations/min-ne.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](declarations/min-ne-of-ne-of-lt.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](declarations/min-ne-of-lt-of-ne.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [max_ne](declarations/max-ne.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [evalMin](declarations/evalmin.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalMax](declarations/evalmax.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evalAdd](declarations/evaladd.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](declarations/mul-nonneg-of-pos-of-nonneg.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](declarations/mul-nonneg-of-nonneg-of-pos.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](declarations/mul-ne-zero-of-ne-zero-of-pos.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](declarations/mul-ne-zero-of-pos-of-ne-zero.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [evalMul](declarations/evalmul.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [int_div_self_pos](declarations/int-div-self-pos.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](declarations/int-div-nonneg-of-pos-of-nonneg.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](declarations/int-div-nonneg-of-nonneg-of-pos.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](declarations/int-div-nonneg-of-pos-of-pos.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalIntDiv](declarations/evalintdiv.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [div_nonneg_of_pos_of_nonneg](declarations/div-nonneg-of-pos-of-nonneg.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [div_nonneg_of_nonneg_of_pos](declarations/div-nonneg-of-nonneg-of-pos.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [div_ne_zero_of_pos_of_ne_zero](declarations/div-ne-zero-of-pos-of-ne-zero.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [div_ne_zero_of_ne_zero_of_pos](declarations/div-ne-zero-of-ne-zero-of-pos.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [evalDiv](declarations/evaldiv.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [evalInv](declarations/evalinv.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_zero_pos](declarations/pow-zero-pos.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [zpow_zero_pos](declarations/zpow-zero-pos.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evalPowZeroNat](declarations/evalpowzeronat.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evalPowZeroInt](declarations/evalpowzeroint.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [evalPow](declarations/evalpow.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [abs_pos_of_ne_zero](declarations/abs-pos-of-ne-zero.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [evalAbs](declarations/evalabs.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [int_natAbs_pos](declarations/int-natabs-pos.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [evalNatAbs](declarations/evalnatabs.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [evalNatCast](declarations/evalnatcast.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [evalIntCast](declarations/evalintcast.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [evalNatSucc](declarations/evalnatsucc.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evalFactorial](declarations/evalfactorial.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b47b09c7aa6b975e35f6d438981e3d64b68ae5234a0a452b660050266a2d0077 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
