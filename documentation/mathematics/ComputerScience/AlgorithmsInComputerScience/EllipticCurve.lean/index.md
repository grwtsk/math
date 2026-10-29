# Elliptic Curve

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c775c6393b8c111164a5ed0166490ef35f1ca1f6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/EllipticCurve.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ShortWeierstrass](declarations/shortweierstrass.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [LawfulShortWeierstrass](declarations/lawfulshortweierstrass.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [LawfulShortWeierstrass.charNeTwoThree_visible](declarations/lawfulshortweierstrass-charnetwothree-visible.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [LawfulShortWeierstrass.zero_ne_one](declarations/lawfulshortweierstrass-zero-ne-one.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [natScalar](declarations/natscalar.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [shortWeierstrassDiscriminantExpression](declarations/shortweierstrassdiscriminantexpression.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [DiscriminantFormulaCertificate](declarations/discriminantformulacertificate.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [DiscriminantFormulaCertificate.eq_expression](declarations/discriminantformulacertificate-eq-expression.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [DiscriminantFormulaCertificate.ne_zero](declarations/discriminantformulacertificate-ne-zero.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [DiscriminantFormulaCertificate.nonsingular_bool](declarations/discriminantformulacertificate-nonsingular-bool.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [DiscriminantFormulaCertificate.stored_nonsingular_visible](declarations/discriminantformulacertificate-stored-nonsingular-visible.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [rhs](declarations/rhs.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [onCurveBool](declarations/oncurvebool.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [OnAffineCurve](declarations/onaffinecurve.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [LawfulShortWeierstrass.onAffineCurve_iff_equation](declarations/lawfulshortweierstrass-onaffinecurve-iff-equation.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [LawfulShortWeierstrass.equation_of_onAffineCurve](declarations/lawfulshortweierstrass-equation-of-onaffinecurve.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LawfulShortWeierstrass.onAffineCurve_of_equation](declarations/lawfulshortweierstrass-onaffinecurve-of-equation.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [affineWeierstrassPolynomial](declarations/affineweierstrasspolynomial.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [affineWeierstrassPartialX](declarations/affineweierstrasspartialx.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [affineWeierstrassPartialY](declarations/affineweierstrasspartialy.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [AffineSingularPoint](declarations/affinesingularpoint.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [SmoothShortWeierstrassCertificate](declarations/smoothshortweierstrasscertificate.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [SmoothShortWeierstrassCertificate.discriminant_ne_zero](declarations/smoothshortweierstrasscertificate-discriminant-ne-zero.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [SmoothShortWeierstrassCertificate.no_affine_singular_point](declarations/smoothshortweierstrasscertificate-no-affine-singular-point.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [Point](declarations/point.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [OnCurve](declarations/oncurve.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [infinity_onCurve](declarations/infinity-oncurve.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [affine_onCurve](declarations/affine-oncurve.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [exampleCurveF2](declarations/examplecurvef2.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [exampleCurveF3](declarations/examplecurvef3.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [exampleCurveF2_charNeTwoThree_false](declarations/examplecurvef2-charnetwothree-false.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [exampleCurveF3_charNeTwoThree_false](declarations/examplecurvef3-charnetwothree-false.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [exampleCurveF5](declarations/examplecurvef5.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a8f707092896294ff94b1475d9109619451b2e838b7d0cfe52047f129c11a832 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EllipticCurve/Variantf0d980f5989083fb00a4f2fbac2aaf2580e12423fa16af8e7bece68592cf27cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
