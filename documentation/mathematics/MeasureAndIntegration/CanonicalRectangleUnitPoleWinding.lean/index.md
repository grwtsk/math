# Canonical Rectangle Unit Pole Winding

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4710a505ef0a6ee812fba7fbd78b55a6c5760826`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/MeasureAndIntegration/CanonicalRectangleUnitPoleWinding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bottomDisplacement](declarations/bottomdisplacement.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [topDisplacement](declarations/topdisplacement.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [rightDisplacement](declarations/rightdisplacement.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [leftReflectedDisplacement](declarations/leftreflecteddisplacement.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [rightDisplacement_bottom](declarations/rightdisplacement-bottom.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [rightDisplacement_top](declarations/rightdisplacement-top.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [leftReflectedDisplacement_bottom](declarations/leftreflecteddisplacement-bottom.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [leftReflectedDisplacement_top](declarations/leftreflecteddisplacement-top.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [bottomDisplacement_mem_slitPlane](declarations/bottomdisplacement-mem-slitplane.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [topDisplacement_mem_slitPlane](declarations/topdisplacement-mem-slitplane.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rightDisplacement_mem_slitPlane](declarations/rightdisplacement-mem-slitplane.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [leftReflectedDisplacement_mem_slitPlane](declarations/leftreflecteddisplacement-mem-slitplane.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [hasDerivAt_bottomDisplacement](declarations/hasderivat-bottomdisplacement.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [hasDerivAt_topDisplacement](declarations/hasderivat-topdisplacement.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasDerivAt_rightDisplacement](declarations/hasderivat-rightdisplacement.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasDerivAt_leftReflectedDisplacement](declarations/hasderivat-leftreflecteddisplacement.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [hasDerivAt_log_bottom](declarations/hasderivat-log-bottom.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [hasDerivAt_log_top](declarations/hasderivat-log-top.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasDerivAt_log_right](declarations/hasderivat-log-right.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasDerivAt_log_leftReflected](declarations/hasderivat-log-leftreflected.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bottom_unitPole_integral](declarations/bottom-unitpole-integral.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [top_unitPole_integral](declarations/top-unitpole-integral.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [right_unitPole_boundaryTerm](declarations/right-unitpole-boundaryterm.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [left_unitPole_boundaryTerm](declarations/left-unitpole-boundaryterm.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [log_neg_sub_log_of_im_neg](declarations/log-neg-sub-log-of-im-neg.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [log_sub_log_neg_of_im_pos](declarations/log-sub-log-neg-of-im-pos.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rectangleBoundaryIntegral_unitPole](declarations/rectangleboundaryintegral-unitpole.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [rectangleUnitPoleWindingCertificate](declarations/rectangleunitpolewindingcertificate.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [rectanglePrincipalPartWindingCertificate](declarations/rectangleprincipalpartwindingcertificate.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9406377deb3f113edc90d4a1ead0fdee82eeade778d852189f643e5f2281fe7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleUnitPoleWinding.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
