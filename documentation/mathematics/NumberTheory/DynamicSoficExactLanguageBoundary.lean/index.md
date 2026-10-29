# Dynamic Sofic Exact Language Boundary

[Complete source index](../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9b41af8b4b4e7e1b2caf7abfe30b741dd95ff8e9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/NumberTheory/DynamicSoficExactLanguageBoundary.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [StageCells](declarations/stagecells.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [GrowingRefinement](declarations/growingrefinement.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [GrowingRefinement.distinction_persists](declarations/growingrefinement-distinction-persists.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [RootedSoficGraph](declarations/rootedsoficgraph.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [RootedSoficGraph.asSoficGraph](declarations/rootedsoficgraph-assoficgraph.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [LabeledPath](declarations/labeledpath.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Accepts](declarations/accepts.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [«prefix»](declarations/prefix.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AdmitsStream](declarations/admitsstream.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ExactPrefixPresented](declarations/exactprefixpresented.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [EventuallyExactPrefixPresented](declarations/eventuallyexactprefixpresented.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [fullShiftGraph](declarations/fullshiftgraph.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [fullShift_path](declarations/fullshift-path.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [every_stream_admitted](declarations/every-stream-admitted.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [no_universal_prefix_rejection](declarations/no-universal-prefix-rejection.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fullShift_not_exact_for_constant_false](declarations/fullshift-not-exact-for-constant-false.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CommutingLosslessGraphCover](declarations/commutinglosslessgraphcover.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [CommutingLosslessGraphCover.lift_injective](declarations/commutinglosslessgraphcover-lift-injective.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [CommutingLosslessGraphCover.readout_factors](declarations/commutinglosslessgraphcover-readout-factors.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [CommutingLosslessGraphCover.no_recovery_after_collision](declarations/commutinglosslessgraphcover-no-recovery-after-collision.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [emittedWord](declarations/emittedword.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [CommutingLosslessGraphCover.emittedWord_is_path](declarations/commutinglosslessgraphcover-emittedword-is-path.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [GrowingSoficSpectralDiagram](declarations/growingsoficspectraldiagram.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [GrowingSoficSpectralDiagram.graph_projection_collision](declarations/growingsoficspectraldiagram-graph-projection-collision.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [GrowingSoficSpectralDiagram.no_vertex_only_decoder](declarations/growingsoficspectraldiagram-no-vertex-only-decoder.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [AnalyticDynamicSoficPipeline](declarations/analyticdynamicsoficpipeline.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [AnalyticDynamicSoficPipeline.limit_zeroFree](declarations/analyticdynamicsoficpipeline-limit-zerofree.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [AnalyticDynamicSoficPipeline.ordinate_from_spectrum](declarations/analyticdynamicsoficpipeline-ordinate-from-spectrum.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [OrdinateExactLanguageSuppliers](declarations/ordinateexactlanguagesuppliers.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [OrdinateExactLanguageSuppliers.irrational_without_grh](declarations/ordinateexactlanguagesuppliers-irrational-without-grh.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [OrdinateExactLanguageSuppliers.grh_critical_and_transcendental](declarations/ordinateexactlanguagesuppliers-grh-critical-and-transcendental.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd33da6ce74d20918afc7c93f01046a28bcfd8430af1863963ee838dcaf88066 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Farey/DynamicSoficExactLanguageBoundary.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
