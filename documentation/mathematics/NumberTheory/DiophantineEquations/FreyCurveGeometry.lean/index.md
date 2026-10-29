# Frey Curve Geometry

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `09a77b1e2efd641a0968839f386d3ccacf849948`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/NumberTheory/DiophantineEquations/FreyCurveGeometry.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [freyWeierstrass](declarations/freyweierstrass.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [freyWeierstrass_equation_iff](declarations/freyweierstrass-equation-iff.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [freyWeierstrass_Δ](declarations/freyweierstrass-source-edition-2.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [PrimitiveAdditiveTriple.freyCurve](declarations/primitiveadditivetriple-freycurve-source-edition-2.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ](declarations/primitiveadditivetriple-freycurve.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ_pos](declarations/primitiveadditivetriple-freycurve-pos.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_Δ_ne_zero](declarations/primitiveadditivetriple-freycurve-ne-zero.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [PrimitiveAdditiveTriple.instIsEllipticFreyCurve](declarations/primitiveadditivetriple-instisellipticfreycurve.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_T0](declarations/primitiveadditivetriple-freycurve-equation-t0.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_Ta](declarations/primitiveadditivetriple-freycurve-equation-ta.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_equation_Tb](declarations/primitiveadditivetriple-freycurve-equation-tb.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_T0](declarations/primitiveadditivetriple-freycurve-nonsingular-t0.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_Ta](declarations/primitiveadditivetriple-freycurve-nonsingular-ta.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [PrimitiveAdditiveTriple.freyCurve_nonsingular_Tb](declarations/primitiveadditivetriple-freycurve-nonsingular-tb.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [PrimitiveAdditiveTriple.freyT0](declarations/primitiveadditivetriple-freyt0.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PrimitiveAdditiveTriple.freyTa](declarations/primitiveadditivetriple-freyta.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [PrimitiveAdditiveTriple.freyTb](declarations/primitiveadditivetriple-freytb.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_zero](declarations/primitiveadditivetriple-freyt0-ne-zero.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PrimitiveAdditiveTriple.freyTa_ne_zero](declarations/primitiveadditivetriple-freyta-ne-zero.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [PrimitiveAdditiveTriple.freyTb_ne_zero](declarations/primitiveadditivetriple-freytb-ne-zero.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [PrimitiveAdditiveTriple.freyT0_add_self](declarations/primitiveadditivetriple-freyt0-add-self.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [PrimitiveAdditiveTriple.freyTa_add_self](declarations/primitiveadditivetriple-freyta-add-self.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [PrimitiveAdditiveTriple.freyTb_add_self](declarations/primitiveadditivetriple-freytb-add-self.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_freyTa](declarations/primitiveadditivetriple-freyt0-ne-freyta.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [PrimitiveAdditiveTriple.freyT0_ne_freyTb](declarations/primitiveadditivetriple-freyt0-ne-freytb.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [PrimitiveAdditiveTriple.freyTa_ne_freyTb](declarations/primitiveadditivetriple-freyta-ne-freytb.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [PrimitiveAdditiveTriple.freyTorsionPorts](declarations/primitiveadditivetriple-freytorsionports.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [PrimitiveAdditiveTriple.freyTorsionPorts_xRep](declarations/primitiveadditivetriple-freytorsionports-xrep.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b89e798c6b95fdfdee1cfb62d20c866c37ff2144cafa7ba8ab8d380773b4d184 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyCurveGeometry.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
