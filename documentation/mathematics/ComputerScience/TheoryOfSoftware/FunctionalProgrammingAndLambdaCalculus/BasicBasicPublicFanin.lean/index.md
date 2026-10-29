# Basic Basic Public Fanin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**54 observed declarations and anonymous commands**, 8 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `830e377bb133d41347c1bec758bce0c87b17f243`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicPublicFanin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Fanin](declarations/fanin.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mk](declarations/mk.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [gate](declarations/gate.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [invert](declarations/invert.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [flip](declarations/flip.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [gate_mk](declarations/gate-mk.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [invert_mk](declarations/invert-mk.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [gate_flip](declarations/gate-flip.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [invert_eq_testBit](declarations/invert-eq-testbit.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [invert_flip](declarations/invert-flip.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [Decl](declarations/decl.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [Cache.WF](declarations/cache-wf.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Cache](declarations/cache.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Cache.empty](declarations/cache-empty.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [Cache.noUpdate](declarations/cache-noupdate.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Cache.insert](declarations/cache-insert.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [CacheHit](declarations/cachehit.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [Cache.get?_bounds](declarations/cache-get-bounds.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [Cache.get?_property](declarations/cache-get-property.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Cache.get?](declarations/cache-get.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsDAG](declarations/isdag.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [IsDAG.empty](declarations/isdag-empty.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [AIG](declarations/aig.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [empty](declarations/empty.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Mem](declarations/mem.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [Ref](declarations/ref.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Ref.cast](declarations/ref-cast.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Ref.flip](declarations/ref-flip.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Ref.not](declarations/ref-not.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [BinaryInput](declarations/binaryinput.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [BinaryInput.cast](declarations/binaryinput-cast.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [BinaryInput.invert](declarations/binaryinput-invert.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [TernaryInput](declarations/ternaryinput.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [TernaryInput.cast](declarations/ternaryinput-cast.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [Entrypoint](declarations/entrypoint.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toGraphviz](declarations/tographviz.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [RefVec](declarations/refvec.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `structure` | [RefVecEntry](declarations/refvecentry.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ShiftTarget](declarations/shifttarget.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `structure` | [ArbitraryShiftTarget](declarations/arbitraryshifttarget.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [ExtendTarget](declarations/extendtarget.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [denote](declarations/denote.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `syntax` | [(anonymous)](declarations/syntax.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `macro_rules` | [(anonymous)](declarations/macro-rules.md) | 503 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [unexpandDenote](declarations/unexpanddenote.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [UnsatAt](declarations/unsatat.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Entrypoint.Unsat](declarations/entrypoint-unsat.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [mkGate](declarations/mkgate.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [mkAtom](declarations/mkatom.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [mkConst](declarations/mkconst.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [isConstant](declarations/isconstant.md) | 588 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [getConstant](declarations/getconstant.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5361d714f92b7ffa318fa951f2971e9a641f3a241dc3393fd5a9e12993ba3771 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantde584b4ccd5c074f13bb4843513763191196c9fc56ad0820c636c4e0f0685123.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
