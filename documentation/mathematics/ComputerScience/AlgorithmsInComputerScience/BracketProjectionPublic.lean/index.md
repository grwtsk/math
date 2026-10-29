# Bracket Projection Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f0c084b71a38f0fd3bc7ab22bec58ec1642915e6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BracketProjectionPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `theorem` | [dyckWord_toList_zero](declarations/dyckword-tolist-zero.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dyckWord_toList_add](declarations/dyckword-tolist-add.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dyckWord_toList_nest](declarations/dyckword-tolist-nest.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [BinaryLogicMatrix](declarations/binarylogicmatrix.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [binaryLogicBit](declarations/binarylogicbit.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [orderedForestBinary](declarations/orderedforestbinary.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [bracketProjectionDyck](declarations/bracketprojectiondyck.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [bracketProjection](declarations/bracketprojection.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [bracketProjection_cons](declarations/bracketprojection-cons.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [orderedForestBinary_numNodes](declarations/orderedforestbinary-numnodes.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [bracketProjectionDyck_semilength_eq_nodeCount](declarations/bracketprojectiondyck-semilength-eq-nodecount.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bracketProjection_length_eq_twice_nodeCount](declarations/bracketprojection-length-eq-twice-nodecount.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [prefixBalance](declarations/prefixbalance.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [finalBalance](declarations/finalbalance.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [BalancedBracketProjection](declarations/balancedbracketprojection.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bracketProjection_prefix_nonnegative](declarations/bracketprojection-prefix-nonnegative.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bracketProjection_final_zero](declarations/bracketprojection-final-zero.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bracketProjection_balanced](declarations/bracketprojection-balanced.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [bracketProjection_shape_roundtrip](declarations/bracketprojection-shape-roundtrip.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [bracketToNodeMap](declarations/brackettonodemap.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bracketToNodeMap_length_eq_projection_length](declarations/brackettonodemap-length-eq-projection-length.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [bracketPackedWordCount](declarations/bracketpackedwordcount.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [bracketOpenNodeIndices](declarations/bracketopennodeindices.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [bracketOpenNodeIndices_eq_preorder](declarations/bracketopennodeindices-eq-preorder.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [bracketOpenNodeIndices_length_of_canonical_preorder](declarations/bracketopennodeindices-length-of-canonical-preorder.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [SourceAnnotatedShape](declarations/sourceannotatedshape.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [SourceAnnotatedShape.binaryProjection](declarations/sourceannotatedshape-binaryprojection.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [bracketProjection_is_not_source_complete](declarations/bracketprojection-is-not-source-complete.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31c04c9f554a98c484c1ee6583ecf6efa890739b42125ad1b8958789ab78f3d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BracketProjection/Variant5f18ac744ad1b2b7754ed1797e8dd1a437aaf3cfd4efe998d0f0e02c481fb25a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
