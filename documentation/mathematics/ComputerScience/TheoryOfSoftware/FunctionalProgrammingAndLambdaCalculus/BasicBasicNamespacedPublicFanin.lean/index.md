# Basic Basic Namespaced Public Fanin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3bae1d9abbf3d69f00d2aa6297e5be306c80a487`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicNamespacedPublicFanin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Fanin](declarations/fanin.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mk](declarations/mk.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gate](declarations/gate.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [invert](declarations/invert.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [flip](declarations/flip.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gate_mk](declarations/gate-mk.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [invert_mk](declarations/invert-mk.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gate_flip](declarations/gate-flip.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invert_eq_testBit](declarations/invert-eq-testbit.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [invert_flip](declarations/invert-flip.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Decl](declarations/decl.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Cache.WF](declarations/cache-wf.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Cache](declarations/cache.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Cache.empty](declarations/cache-empty.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Cache.noUpdate](declarations/cache-noupdate.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Cache.insert](declarations/cache-insert.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CacheHit](declarations/cachehit.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Cache.get?_bounds](declarations/cache-get-bounds.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Cache.get?_property](declarations/cache-get-property.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Cache.get?](declarations/cache-get.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsDAG](declarations/isdag.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsDAG.empty](declarations/isdag-empty.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AIG](declarations/aig.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [empty](declarations/empty.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Mem](declarations/mem.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [Ref](declarations/ref.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Ref.cast](declarations/ref-cast.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Ref.flip](declarations/ref-flip.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Ref.not](declarations/ref-not.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [BinaryInput](declarations/binaryinput.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [BinaryInput.cast](declarations/binaryinput-cast.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [BinaryInput.invert](declarations/binaryinput-invert.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [TernaryInput](declarations/ternaryinput.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [TernaryInput.cast](declarations/ternaryinput-cast.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [Entrypoint](declarations/entrypoint.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toGraphviz](declarations/tographviz.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RefVec](declarations/refvec.md) | 449 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [RefVecEntry](declarations/refvecentry.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ShiftTarget](declarations/shifttarget.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [ArbitraryShiftTarget](declarations/arbitraryshifttarget.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [ExtendTarget](declarations/extendtarget.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [denote](declarations/denote.md) | 485 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `syntax` | [(anonymous)](declarations/syntax.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [unexpandDenote](declarations/unexpanddenote.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [UnsatAt](declarations/unsatat.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Entrypoint.Unsat](declarations/entrypoint-unsat.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mkGate](declarations/mkgate.md) | 538 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mkAtom](declarations/mkatom.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mkConst](declarations/mkconst.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [isConstant](declarations/isconstant.md) | 596 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [getConstant](declarations/getconstant.md) | 606 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60ed6a0a6958b3dc9ae4d1bd0c809708a63b451a20a2ebf8848711dca07bc2c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8ca1e8bbd30d89dae4c519ce0e8c7d719070b27ebab59a301570b8588573984b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
