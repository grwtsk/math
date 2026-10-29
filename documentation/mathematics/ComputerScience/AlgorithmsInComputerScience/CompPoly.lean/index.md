# Comp Poly

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb51518125dfc0f6a1398b6de99ca21d50fbe23a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/CompPoly.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Dy](declarations/dy.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [DyPoly](declarations/dypoly.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [zero](declarations/zero.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [const](declarations/const-source-edition-2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [coeff](declarations/coeff.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evalInterval](declarations/evalinterval.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [add](declarations/add-source-edition-2.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [neg](declarations/neg-source-edition-2.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [scale](declarations/scale.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [normalize](declarations/normalize.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mulTrunc](declarations/multrunc.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [mul](declarations/mul-source-edition-2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [tail](declarations/tail.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [antiderivativeCoeffDown](declarations/antiderivativecoeffdown.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [antiderivativeCoeffUp](declarations/antiderivativecoeffup.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [definiteIntegral](declarations/definiteintegral.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [DyTM](declarations/dytm.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [shiftedDomain](declarations/shifteddomain.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [bound](declarations/bound.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [const](declarations/const.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [identity](declarations/identity.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [add](declarations/add.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [neg](declarations/neg.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [scaleDyadic](declarations/scaledyadic.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mul](declarations/mul.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [inv](declarations/inv.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [log](declarations/log.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fromInterval](declarations/frominterval.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [dyTMFromExpr](declarations/dytmfromexpr.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [integrateDyTM](declarations/integratedytm.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [integrateDyadicFallback](declarations/integratedyadicfallback.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [integrateDyPolyAux](declarations/integratedypolyaux.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [integrateDyPoly](declarations/integratedypoly.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [checkIntegralLowerBoundDyPoly](declarations/checkintegrallowerbounddypoly.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [checkIntegralUpperBoundDyPoly](declarations/checkintegralupperbounddypoly.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19320747123ccce0284e60e9d5b41b35cfddbea6042dfc14bcaa1d56b64e054e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompPoly/Variant8066fd9c23326185e083efd43fa64d721d291417f24caa6fab809eb63b940786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
