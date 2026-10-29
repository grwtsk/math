# Elliptic Curve Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e9701f0591679118e2e9cca08fc285cc69ef64f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EllipticCurveNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortWeierstrass](declarations/shortweierstrass.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LawfulShortWeierstrass](declarations/lawfulshortweierstrass.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LawfulShortWeierstrass.charNeTwoThree_visible](declarations/lawfulshortweierstrass-charnetwothree-visible.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LawfulShortWeierstrass.zero_ne_one](declarations/lawfulshortweierstrass-zero-ne-one.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [natScalar](declarations/natscalar.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [shortWeierstrassDiscriminantExpression](declarations/shortweierstrassdiscriminantexpression.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [DiscriminantFormulaCertificate](declarations/discriminantformulacertificate.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [DiscriminantFormulaCertificate.eq_expression](declarations/discriminantformulacertificate-eq-expression.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [DiscriminantFormulaCertificate.ne_zero](declarations/discriminantformulacertificate-ne-zero.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [DiscriminantFormulaCertificate.nonsingular_bool](declarations/discriminantformulacertificate-nonsingular-bool.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [DiscriminantFormulaCertificate.stored_nonsingular_visible](declarations/discriminantformulacertificate-stored-nonsingular-visible.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rhs](declarations/rhs.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [onCurveBool](declarations/oncurvebool.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [OnAffineCurve](declarations/onaffinecurve.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [LawfulShortWeierstrass.onAffineCurve_iff_equation](declarations/lawfulshortweierstrass-onaffinecurve-iff-equation.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [LawfulShortWeierstrass.equation_of_onAffineCurve](declarations/lawfulshortweierstrass-equation-of-onaffinecurve.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LawfulShortWeierstrass.onAffineCurve_of_equation](declarations/lawfulshortweierstrass-onaffinecurve-of-equation.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [affineWeierstrassPolynomial](declarations/affineweierstrasspolynomial.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [affineWeierstrassPartialX](declarations/affineweierstrasspartialx.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [affineWeierstrassPartialY](declarations/affineweierstrasspartialy.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [AffineSingularPoint](declarations/affinesingularpoint.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [SmoothShortWeierstrassCertificate](declarations/smoothshortweierstrasscertificate.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SmoothShortWeierstrassCertificate.discriminant_ne_zero](declarations/smoothshortweierstrasscertificate-discriminant-ne-zero.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SmoothShortWeierstrassCertificate.no_affine_singular_point](declarations/smoothshortweierstrasscertificate-no-affine-singular-point.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [Point](declarations/point.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OnCurve](declarations/oncurve.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [infinity_onCurve](declarations/infinity-oncurve.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [affine_onCurve](declarations/affine-oncurve.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [exampleCurveF2](declarations/examplecurvef2.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [exampleCurveF3](declarations/examplecurvef3.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exampleCurveF2_charNeTwoThree_false](declarations/examplecurvef2-charnetwothree-false.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exampleCurveF3_charNeTwoThree_false](declarations/examplecurvef3-charnetwothree-false.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [exampleCurveF5](declarations/examplecurvef5.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ce836c754b60cc064481047a39c6a49eae56ace26e53d47a1753812bb040747 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variant3152246b654478bf4266bb47e61fdb69a17ca0adb5711694a3b14306d294c427.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
