# Cyclic Fiber Hop Namespaced Public Edition1

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2441aa420267a3a8f616dbb8bf00c4a78e9fdff4`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicFiberHopNamespacedPublicEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CoverPhase](declarations/coverphase.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [coverModulusNeZero](declarations/covermodulusnezero.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Fiber3](declarations/fiber3.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Section3](declarations/section3.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [successor](declarations/successor.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [predecessor](declarations/predecessor.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [antipode](declarations/antipode.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [successor_apply](declarations/successor-apply.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [predecessor_apply](declarations/predecessor-apply.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [antipode_apply](declarations/antipode-apply.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [successor_predecessor](declarations/successor-predecessor.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [predecessor_successor](declarations/predecessor-successor.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [antipode_involutive](declarations/antipode-involutive.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [successor_commutes_antipode](declarations/successor-commutes-antipode.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [predecessor_commutes_antipode](declarations/predecessor-commutes-antipode.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [StepSystem](declarations/stepsystem.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [forwardProduct](declarations/forwardproduct.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [backwardProduct](declarations/backwardproduct.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [forwardProduct_zero](declarations/forwardproduct-zero.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [forwardProduct_succ](declarations/forwardproduct-succ.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [backwardProduct_zero](declarations/backwardproduct-zero.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [backwardProduct_succ](declarations/backwardproduct-succ.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [backwardProduct_eq_forwardProduct_symm](declarations/backwardproduct-eq-forwardproduct-symm.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [backward_forward_apply](declarations/backward-forward-apply.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [forward_backward_apply](declarations/forward-backward-apply.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [forwardProduct_bijective](declarations/forwardproduct-bijective.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [forwardProduct_half_compatible](declarations/forwardproduct-half-compatible.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [hopEquiv](declarations/hopequiv.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [hopEquiv_apply_successor](declarations/hopequiv-apply-successor.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hopEquiv_symm_apply](declarations/hopequiv-symm-apply.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hopEquiv_bijective](declarations/hopequiv-bijective.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [halfShiftEquiv](declarations/halfshiftequiv.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [halfShiftEquiv_apply](declarations/halfshiftequiv-apply.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hopEquiv_commutes_halfShift](declarations/hopequiv-commutes-halfshift.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [IsAntipodal](declarations/isantipodal.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hopEquiv_preserves_antipodal](declarations/hopequiv-preserves-antipodal.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [permuteFiber](declarations/permutefiber.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [permutationRepresentation](declarations/permutationrepresentation.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [adjacentSwap01](declarations/adjacentswap01.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [adjacentSwap12](declarations/adjacentswap12.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [adjacentSwap01_sq](declarations/adjacentswap01-sq.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [adjacentSwap12_sq](declarations/adjacentswap12-sq.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [adjacentSwap_braid](declarations/adjacentswap-braid.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [adjacentPermutationHops_satisfy_s3_relations](declarations/adjacentpermutationhops-satisfy-s3-relations.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Cyclic Fiber Hop Namespaced Public Edition1](declarations/withpayload.md) | 406 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](declarations/withpayload-fst.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](declarations/withpayload-snd.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](declarations/withpayload-preserves-payload.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [Cyclic Fiber Hop Namespaced Public Edition1](declarations/withpayload-trans.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a1763f09b30fb7eb7814f20f8fa4968d91233c66e23abfbfbbe3bd0f9919e02 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicFiberHop/Variantd58cd7214fa9bb9bf54ce1d40b0182fbdf77280a1aa2f7d2503810ebfca56c1d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
