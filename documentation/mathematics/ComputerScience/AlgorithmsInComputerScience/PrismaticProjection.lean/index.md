# Prismatic Projection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b6969c0d0883fdd987d9419dc6780be4ddf24d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/PrismaticProjection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionErrorEnvelope](declarations/projectionerrorenvelope.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MatrixTreeHashes](declarations/matrixtreehashes.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [BoundaryHashes](declarations/boundaryhashes.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ToroidalShadowState](declarations/toroidalshadowstate.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ToroidalShadowStream](declarations/toroidalshadowstream.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [PrismaticCertificate](declarations/prismaticcertificate.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ShapeUpdateWitness](declarations/shapeupdatewitness.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [stepChecked](declarations/stepchecked.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepChecked_comparison_sound](declarations/stepchecked-comparison-sound.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stepChecked_precision_sound](declarations/stepchecked-precision-sound.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stepChecked_prior_hash_consistency](declarations/stepchecked-prior-hash-consistency.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stepChecked_next_hash_consistency](declarations/stepchecked-next-hash-consistency.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ShapeUpdateWitnessOwnsFullGeometry](declarations/shapeupdatewitnessownsfullgeometry.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [shape_update_witness_does_not_own_full_geometry](declarations/shape-update-witness-does-not-own-full-geometry.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [PrismaticComputed](declarations/prismaticcomputed.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PrismaticComputed.toShapeUpdateWitness](declarations/prismaticcomputed-toshapeupdatewitness.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [computed_toShapeUpdateWitness_prior_hash](declarations/computed-toshapeupdatewitness-prior-hash.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [computed_toShapeUpdateWitness_next_hash](declarations/computed-toshapeupdatewitness-next-hash.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shadow_state_exposes_support_hashes](declarations/shadow-state-exposes-support-hashes.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shadow_state_exposes_matrix_tree_hashes](declarations/shadow-state-exposes-matrix-tree-hashes.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shadow_state_exposes_boundary_hashes](declarations/shadow-state-exposes-boundary-hashes.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [shadow_state_exposes_depths](declarations/shadow-state-exposes-depths.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [error_envelope_total_eq](declarations/error-envelope-total-eq.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [exampleZeroErrorEnvelope](declarations/examplezeroerrorenvelope.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [exampleMatrixTreeHashes](declarations/examplematrixtreehashes.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [exampleBoundaryHashes](declarations/exampleboundaryhashes.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [examplePriorShadowState](declarations/examplepriorshadowstate.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [exampleNextShadowState](declarations/examplenextshadowstate.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [examplePrismaticCertificate](declarations/exampleprismaticcertificate.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [examplePrismaticComputed](declarations/exampleprismaticcomputed.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [exampleShapeUpdateWitness](declarations/exampleshapeupdatewitness.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [example_stepChecked](declarations/example-stepchecked.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [example_stepChecked_exposes_precision](declarations/example-stepchecked-exposes-precision.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06e77b25392615aba9bb34c11eb96a8511e27bf764a03ee81061fac9abc338e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
