# Rational Rounded Arithmetic

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04e70686faca9ef625b310d3abce194153c705ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [QComplex](declarations/qcomplex.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zero](declarations/zero.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [one](declarations/one.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [add](declarations/add.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mul](declarations/mul.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [smul](declarations/smul.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pow](declarations/pow.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rect](declarations/rect.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [polynomial](declarations/polynomial.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [embed](declarations/embed.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [embed_zero](declarations/embed-zero.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [embed_one](declarations/embed-one.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [embed_add](declarations/embed-add.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [embed_mul](declarations/embed-mul.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [embed_smul](declarations/embed-smul.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [embed_pow](declarations/embed-pow.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_rect](declarations/cast-rect.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [embed_polynomial](declarations/embed-polynomial.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [scaleQ](declarations/scaleq.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [downQ](declarations/downq.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [upQ](declarations/upq.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [roundoffQ](declarations/roundoffq.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [quantizeQ](declarations/quantizeq.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [State](declarations/state.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [initialState](declarations/initialstate.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [step](declarations/step.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [run](declarations/run.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cast_scaleQ](declarations/cast-scaleq.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cast_downQ](declarations/cast-downq.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cast_upQ](declarations/cast-upq.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cast_roundoffQ](declarations/cast-roundoffq.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [embed_quantizeQ](declarations/embed-quantizeq.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [run_refines](declarations/run-refines.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [run_sound](declarations/run-sound.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95fe37c8e846122251f771ae851002fcc0d6242f9627b9a78a7ca1a64e992aa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean","GRWTSK/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
