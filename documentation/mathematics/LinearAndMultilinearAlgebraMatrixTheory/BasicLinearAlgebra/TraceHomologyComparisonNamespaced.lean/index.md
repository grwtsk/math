# Trace Homology Comparison Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**53 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/TraceHomologyComparisonNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TracePairEnd](declarations/tracepairend.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [TracePairEnd.boundaryManifold](declarations/tracepairend-boundarymanifold.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [TracePairEnd.incoming_boundaryManifold](declarations/tracepairend-incoming-boundarymanifold.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [TracePairEnd.outgoing_boundaryManifold](declarations/tracepairend-outgoing-boundarymanifold.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [HandleConnectingSignConvention](declarations/handleconnectingsignconvention.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [OrientedLongExactSegment](declarations/orientedlongexactsegment.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [TracePairHomologySemantics](declarations/tracepairhomologysemantics.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [connecting](declarations/connecting.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundaryInclusionAtDegree](declarations/boundaryinclusionatdegree.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [absoluteToRelativePair](declarations/absolutetorelativepair.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [boundaryInclusionIntoTrace](declarations/boundaryinclusionintotrace.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [IsLongExactConnecting](declarations/islongexactconnecting.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [connecting_from_les](declarations/connecting-from-les.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [connectingSign](declarations/connectingsign.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [connecting_sign_outward_normal_first](declarations/connecting-sign-outward-normal-first.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [exact_at_trace](declarations/exact-at-trace.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [exact_at_relative](declarations/exact-at-relative.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [exact_at_boundary](declarations/exact-at-boundary.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [HasActualTracePairMapProvenance](declarations/hasactualtracepairmapprovenance.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [maps_from_actual_trace_pair](declarations/maps-from-actual-trace-pair.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [TraceHomologyComparison](declarations/tracehomologycomparison.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `abbrev` | [IncomingHomology](declarations/incominghomology.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `abbrev` | [DualHomology](declarations/dualhomology.md) | 527 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [incomingAddCommGroup](declarations/incomingaddcommgroup.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [incomingModule](declarations/incomingmodule.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [dualAddCommGroup](declarations/dualaddcommgroup.md) | 545 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [dualModule](declarations/dualmodule.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [incomingBoundary](declarations/incomingboundary.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [dualBoundary](declarations/dualboundary.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [incomingDegreeLinearEquiv](declarations/incomingdegreelinearequiv.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [incomingDegreeEquiv](declarations/incomingdegreeequiv.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [dualDegreeLinearEquiv](declarations/dualdegreelinearequiv.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [dualDegreeEquiv](declarations/dualdegreeequiv.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [incoming_eq_zero_of_degree_ne](declarations/incoming-eq-zero-of-degree-ne.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [dual_eq_zero_of_degree_ne](declarations/dual-eq-zero-of-degree-ne.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [incomingGenerator](declarations/incominggenerator.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [dualGenerator](declarations/dualgenerator.md) | 672 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [incomingBoundary_generator](declarations/incomingboundary-generator.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dualBoundary_generator](declarations/dualboundary-generator.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [incoming_connecting_from_les](declarations/incoming-connecting-from-les.md) | 723 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [dual_connecting_from_les](declarations/dual-connecting-from-les.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [incoming_les_provenance](declarations/incoming-les-provenance.md) | 740 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [dual_les_provenance](declarations/dual-les-provenance.md) | 749 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [incomingConnectingGenerator_eq_attachingRepresentative](declarations/incomingconnectinggenerator-eq-attachingrepresentative.md) | 762 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [dualConnectingGenerator_eq_beltRepresentative](declarations/dualconnectinggenerator-eq-beltrepresentative.md) | 787 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [incoming_connecting_sign](declarations/incoming-connecting-sign.md) | 811 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [dual_connecting_sign](declarations/dual-connecting-sign.md) | 838 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [incoming_connecting_boundary_degree](declarations/incoming-connecting-boundary-degree.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [dual_connecting_boundary_degree](declarations/dual-connecting-boundary-degree.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [incomingGenerator_represents_attachingSphere](declarations/incominggenerator-represents-attachingsphere.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [dualGenerator_represents_beltSphere](declarations/dualgenerator-represents-beltsphere.md) | 894 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [incomingGenerator_normalized](declarations/incominggenerator-normalized.md) | 914 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [dualGenerator_normalized](declarations/dualgenerator-normalized.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2efd0b98715be23416cd1ccdd7b9bca39a1eb66fa673c976a651106b043c7706 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
