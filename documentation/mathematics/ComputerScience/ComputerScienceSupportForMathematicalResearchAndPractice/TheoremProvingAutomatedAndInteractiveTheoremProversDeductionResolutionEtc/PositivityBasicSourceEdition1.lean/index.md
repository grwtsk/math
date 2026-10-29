# Positivity Basic Source Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 24 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5cf26035ad225746e6ff5b8c3e088434befee3dd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PositivityBasicSourceEdition1.lean/index.md).

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
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](declarations/mul-nonneg-of-nonneg-of-pos.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](declarations/mul-ne-zero-of-ne-zero-of-pos.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](declarations/mul-ne-zero-of-pos-of-ne-zero.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [evalMul](declarations/evalmul.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [int_div_self_pos](declarations/int-div-self-pos.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](declarations/int-div-nonneg-of-pos-of-nonneg.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](declarations/int-div-nonneg-of-nonneg-of-pos.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](declarations/int-div-nonneg-of-pos-of-pos.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalIntDiv](declarations/evalintdiv.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pow_zero_pos](declarations/pow-zero-pos.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [evalPowZeroNat](declarations/evalpowzeronat.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [evalPow](declarations/evalpow.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [abs_pos_of_ne_zero](declarations/abs-pos-of-ne-zero.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [evalAbs](declarations/evalabs.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [int_natAbs_pos](declarations/int-natabs-pos.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [evalNatAbs](declarations/evalnatabs.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [evalNatCast](declarations/evalnatcast.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evalIntCast](declarations/evalintcast.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evalNatSucc](declarations/evalnatsucc.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [evalPNatVal](declarations/evalpnatval.md) | 432 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [evalFactorial](declarations/evalfactorial.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [evalAscFactorial](declarations/evalascfactorial.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [evalNNRatNum](declarations/evalnnratnum.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [evalNNRatDen](declarations/evalnnratden.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `example` | [(anonymous)](declarations/example-source-edition-2.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `example` | [(anonymous)](declarations/example.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `example` | [(anonymous)](declarations/example-source-edition-3.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evalRatNum](declarations/evalratnum.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [evalRatDen](declarations/evalratden.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [evalPosPart](declarations/evalpospart.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [evalNegPart](declarations/evalnegpart.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6fc6f9b7e834e14dd5ff853ceb364b640041f8f8f199c4c311cd03246e5ed701 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Basic/Variantb4efe3fe67d2c362854b899e511086250c93c6d5e5b8be2d5957849c66f98123.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
