# Residue Calc On Rectangles Namespaced Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**57 observed declarations and anonymous commands**, 45 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variante730a695da7baa00e8438b9b0cde479e0ebf1e049f67fe31cf3a78fe1d773e9b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cb16197ace7bf060c2bf8b60e328f0df2eb6c1e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/ResidueCalcOnRectanglesNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HIntegral](declarations/hintegral.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [VIntegral](declarations/vintegral.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HIntegral'](declarations/hintegral-source-edition-2.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [VIntegral'](declarations/vintegral-source-edition-2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [HIntegral_symm](declarations/hintegral-symm.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [VIntegral_symm](declarations/vintegral-symm.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [RectangleIntegral](declarations/rectangleintegral-source-edition-2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [RectangleIntegral'](declarations/rectangleintegral.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [UpperUIntegral](declarations/upperuintegral.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [LowerUIntegral](declarations/loweruintegral.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [VerticalIntegral](declarations/verticalintegral.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `abbrev` | [VerticalIntegral'](declarations/verticalintegral-source-edition-2.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [verticalIntegral_split_three](declarations/verticalintegral-split-three.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [DiffVertRect_eq_UpperLowerUs](declarations/diffvertrect-eq-upperlowerus.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `abbrev` | [HolomorphicOn](declarations/holomorphicon.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [existsDifferentiableOn_of_bddAbove](declarations/existsdifferentiableon-of-bddabove.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HolomorphicOn.vanishesOnRectangle](declarations/holomorphicon-vanishesonrectangle.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [RectangleIntegral_congr](declarations/rectangleintegral-congr-source-edition-2.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [RectangleIntegral'_congr](declarations/rectangleintegral-congr.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rectangleIntegral_symm](declarations/rectangleintegral-symm.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rectangleIntegral_symm_re](declarations/rectangleintegral-symm-re.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [RectangleBorderIntegrable](declarations/rectangleborderintegrable.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [RectangleBorderIntegrable.add](declarations/rectangleborderintegrable-add.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [ContinuousOn.rectangleBorder_integrable](declarations/continuouson-rectangleborder-integrable.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [ContinuousOn.rectangleBorderIntegrable](declarations/continuouson-rectangleborderintegrable.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [ContinuousOn.rectangleBorderNoPIntegrable](declarations/continuouson-rectanglebordernopintegrable.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable'](declarations/holomorphicon-rectangleborderintegrable.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HolomorphicOn.rectangleBorderIntegrable](declarations/holomorphicon-rectangleborderintegrable-source-edition-2.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [RectangleIntegralHSplit](declarations/rectangleintegralhsplit-source-edition-2.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [RectangleIntegralHSplit'](declarations/rectangleintegralhsplit.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [RectangleIntegralVSplit](declarations/rectangleintegralvsplit-source-edition-2.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [RectangleIntegralVSplit'](declarations/rectangleintegralvsplit.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [RectanglePullToNhdOfPole'](declarations/rectanglepulltonhdofpole.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [RectanglePullToNhdOfPole](declarations/rectanglepulltonhdofpole-source-edition-2.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [RectanglePullToNhdOfPole''](declarations/rectanglepulltonhdofpole-source-edition-3.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [ResidueTheoremAtOrigin_aux1c](declarations/residuetheorematorigin-aux1c-source-edition-2.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [ResidueTheoremAtOrigin_aux1c'](declarations/residuetheorematorigin-aux1c.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [ResidueTheoremAtOrigin_aux2c](declarations/residuetheorematorigin-aux2c.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [ResidueTheoremAtOrigin_aux2c'](declarations/residuetheorematorigin-aux2c-source-edition-2.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [RectangleIntegral.const_smul](declarations/rectangleintegral-const-smul.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [RectangleIntegral.const_mul'](declarations/rectangleintegral-const-mul.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [RectangleIntegral.translate](declarations/rectangleintegral-translate-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [RectangleIntegral.translate'](declarations/rectangleintegral-translate.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Complex.inv_re_add_im](declarations/complex-inv-re-add-im.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [sq_add_sq_ne_zero](declarations/sq-add-sq-ne-zero.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [continuous_self_div_sq_add_sq](declarations/continuous-self-div-sq-add-sq.md) | 500 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [integral_self_div_sq_add_sq](declarations/integral-self-div-sq-add-sq.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [integral_const_div_sq_add_sq](declarations/integral-const-div-sq-add-sq.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [integral_const_div_self_add_im](declarations/integral-const-div-self-add-im.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [integral_const_div_re_add_self](declarations/integral-const-div-re-add-self.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [ResidueTheoremAtOrigin'](declarations/residuetheorematorigin.md) | 568 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [ResidueTheoremInRectangle](declarations/residuetheoreminrectangle.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [ResidueTheoremAtOrigin](declarations/residuetheorematorigin-source-edition-2.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `lemma` | [ResidueTheoremOnRectangleWithSimplePole](declarations/residuetheoremonrectanglewithsimplepole-source-edition-2.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [IsBigO_to_BddAbove](declarations/isbigo-to-bddabove.md) | 668 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [BddAbove_on_rectangle_of_bdd_near](declarations/bddabove-on-rectangle-of-bdd-near.md) | 687 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [ResidueTheoremOnRectangleWithSimplePole'](declarations/residuetheoremonrectanglewithsimplepole.md) | 719 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6139f5e214cd52dd146c1b2c05fad74b82012bcc62fe067a3af5e300f9704fee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ResidueCalcOnRectangles/Variante730a695da7baa00e8438b9b0cde479e0ebf1e049f67fe31cf3a78fe1d773e9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
