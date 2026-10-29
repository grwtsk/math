# Matrix Order Public

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 21 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3781b143919a1f3047cb42196c47cdbc39d3a386`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/FunctionalAnalysis/MatrixOrderPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [instPreOrder](declarations/instpreorder.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [le_iff](declarations/le-iff.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nonneg_iff_posSemidef](declarations/nonneg-iff-possemidef.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [le_antisymm_aux](declarations/le-antisymm-aux.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [instPartialOrder](declarations/instpartialorder.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [instIsOrderedAddMonoid](declarations/instisorderedaddmonoid.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [posSemidef_is_closed](declarations/possemidef-is-closed.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [instOrderClosedTopology](declarations/instorderclosedtopology.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [instNonnegSpectrumClass](declarations/instnonnegspectrumclass.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [instStarOrderedRing](declarations/inststarorderedring.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [inv_sqrt](declarations/inv-sqrt.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [det_sqrt](declarations/det-sqrt.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsHermitian.det_abs](declarations/ishermitian-det-abs.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [posSemidef_iff_isHermitian_and_spectrum_nonneg](declarations/possemidef-iff-ishermitian-and-spectrum-nonneg.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [PosSemidef.posDef_iff_isUnit](declarations/possemidef-posdef-iff-isunit.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [isStrictlyPositive_iff_posDef](declarations/isstrictlypositive-iff-posdef.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [PosSemidef.posDef_iff_det_ne_zero](declarations/possemidef-posdef-iff-det-ne-zero.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [PosSemidef.kronecker](declarations/possemidef-kronecker.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [PosDef.kronecker](declarations/posdef-kronecker.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [PosSemidef.hadamard](declarations/possemidef-hadamard.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [PosDef.hadamard](declarations/posdef-hadamard.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [tracePositiveLinearMap](declarations/tracepositivelinearmap.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [toLinearMap_tracePositiveLinearMap](declarations/tolinearmap-tracepositivelinearmap.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [tracePositiveLinearMap_apply](declarations/tracepositivelinearmap-apply.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [PosSemidef.matrixPreInnerProductSpace](declarations/possemidef-matrixpreinnerproductspace.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toMatrixSeminormedAddCommGroup](declarations/tomatrixseminormedaddcommgroup.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toMatrixNormedAddCommGroup](declarations/tomatrixnormedaddcommgroup.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [toMatrixInnerProductSpace](declarations/tomatrixinnerproductspace.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [instIsometricContinuousFunctionalCalculus](declarations/instisometriccontinuousfunctionalcalculus.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d5fe92450671905c33fee588b91a0d7ab7509e8e0cade377604869a6b09a5a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Order/Variant6611044e3649e02ed4dbd9a2bc323f9276da47698a925cc23c09e20d9b555c0e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
