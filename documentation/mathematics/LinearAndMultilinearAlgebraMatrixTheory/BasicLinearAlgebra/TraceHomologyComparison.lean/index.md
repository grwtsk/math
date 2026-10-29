# Trace Homology Comparison

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparison.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TracePairEnd](declarations/tracepairend.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TracePairEnd.boundaryManifold](declarations/tracepairend-boundarymanifold.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [TracePairEnd.incoming_boundaryManifold](declarations/tracepairend-incoming-boundarymanifold.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [TracePairEnd.outgoing_boundaryManifold](declarations/tracepairend-outgoing-boundarymanifold.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [HandleConnectingSignConvention](declarations/handleconnectingsignconvention.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [OrientedLongExactSegment](declarations/orientedlongexactsegment.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [TracePairHomologySemantics](declarations/tracepairhomologysemantics.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [connecting](declarations/connecting.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryInclusionAtDegree](declarations/boundaryinclusionatdegree.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [absoluteToRelativePair](declarations/absolutetorelativepair.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [boundaryInclusionIntoTrace](declarations/boundaryinclusionintotrace.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsLongExactConnecting](declarations/islongexactconnecting.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [connecting_from_les](declarations/connecting-from-les.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [connectingSign](declarations/connectingsign.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [connecting_sign_outward_normal_first](declarations/connecting-sign-outward-normal-first.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exact_at_trace](declarations/exact-at-trace.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exact_at_relative](declarations/exact-at-relative.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exact_at_boundary](declarations/exact-at-boundary.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HasActualTracePairMapProvenance](declarations/hasactualtracepairmapprovenance.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maps_from_actual_trace_pair](declarations/maps-from-actual-trace-pair.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [TraceHomologyComparison](declarations/tracehomologycomparison.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [IncomingHomology](declarations/incominghomology.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [DualHomology](declarations/dualhomology.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [incomingAddCommGroup](declarations/incomingaddcommgroup.md) | 524 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [incomingModule](declarations/incomingmodule.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [dualAddCommGroup](declarations/dualaddcommgroup.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [dualModule](declarations/dualmodule.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [incomingBoundary](declarations/incomingboundary.md) | 550 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [dualBoundary](declarations/dualboundary.md) | 567 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [incomingDegreeLinearEquiv](declarations/incomingdegreelinearequiv.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [incomingDegreeEquiv](declarations/incomingdegreeequiv.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [dualDegreeLinearEquiv](declarations/dualdegreelinearequiv.md) | 603 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [dualDegreeEquiv](declarations/dualdegreeequiv.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [incoming_eq_zero_of_degree_ne](declarations/incoming-eq-zero-of-degree-ne.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dual_eq_zero_of_degree_ne](declarations/dual-eq-zero-of-degree-ne.md) | 639 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [incomingGenerator](declarations/incominggenerator.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [dualGenerator](declarations/dualgenerator.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [incomingBoundary_generator](declarations/incomingboundary-generator.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dualBoundary_generator](declarations/dualboundary-generator.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [incoming_connecting_from_les](declarations/incoming-connecting-from-les.md) | 715 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dual_connecting_from_les](declarations/dual-connecting-from-les.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [incoming_les_provenance](declarations/incoming-les-provenance.md) | 732 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dual_les_provenance](declarations/dual-les-provenance.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [incomingConnectingGenerator_eq_attachingRepresentative](declarations/incomingconnectinggenerator-eq-attachingrepresentative.md) | 754 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dualConnectingGenerator_eq_beltRepresentative](declarations/dualconnectinggenerator-eq-beltrepresentative.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [incoming_connecting_sign](declarations/incoming-connecting-sign.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dual_connecting_sign](declarations/dual-connecting-sign.md) | 830 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [incoming_connecting_boundary_degree](declarations/incoming-connecting-boundary-degree.md) | 854 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dual_connecting_boundary_degree](declarations/dual-connecting-boundary-degree.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [incomingGenerator_represents_attachingSphere](declarations/incominggenerator-represents-attachingsphere.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dualGenerator_represents_beltSphere](declarations/dualgenerator-represents-beltsphere.md) | 886 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [incomingGenerator_normalized](declarations/incominggenerator-normalized.md) | 906 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dualGenerator_normalized](declarations/dualgenerator-normalized.md) | 917 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe335bb027830965c9888042943faffad362df5a72b4a4c1c3b991ee8e246d10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
