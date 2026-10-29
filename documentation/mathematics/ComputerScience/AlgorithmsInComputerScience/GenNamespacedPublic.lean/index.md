# Gen Namespaced Public

[Complete source index](../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cc027a111bb47906d56d49079a8b28621f0dacf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/GenNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [GenError](declarations/generror.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Gen.genericFailure](declarations/gen-genericfailure.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instPartialOrderExceptGenError](declarations/instpartialorderexceptgenerror.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instCCPOExceptGenError](declarations/instccpoexceptgenerror.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instMonoBindExceptGenError](declarations/instmonobindexceptgenerror.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `abbrev` | [Gen](declarations/gen.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `instance` | [instMonadLiftGen](declarations/instmonadliftgen.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instMonadErrorGen](declarations/instmonaderrorgen.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Gen.genFailure](declarations/gen-genfailure.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [up](declarations/up.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [down](declarations/down.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [chooseAny](declarations/chooseany.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [choose](declarations/choose.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [chooseNatLt](declarations/choosenatlt.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getSize](declarations/getsize.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [resize](declarations/resize.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [chooseNat](declarations/choosenat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [outOfFuel](declarations/outoffuel.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [pick](declarations/pick.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [inhabitedGen](declarations/inhabitedgen.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [pickDrop](declarations/pickdrop.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [sumFst](declarations/sumfst.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [backtrackFuel](declarations/backtrackfuel.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [backtrack](declarations/backtrack.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [oneOfWithDefault](declarations/oneofwithdefault.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [frequency](declarations/frequency.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [sized](declarations/sized.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [arrayOf](declarations/arrayof.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [listOf](declarations/listof.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [oneOf](declarations/oneof.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [elements](declarations/elements.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [permutationOf](declarations/permutationof.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [prodOf](declarations/prodof.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [errorOfGenError](declarations/errorofgenerror.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instMonadLiftStateIOGen](declarations/instmonadliftstateiogen.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [Gen.run](declarations/gen-run.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [Gen.printSamples](declarations/gen-printsamples.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Gen.runUntil](declarations/gen-rununtil.md) | 292 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [test](declarations/test.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d89a268387c77654e91c4d9bc8f9ddbe0d375f0c47feab8d2d255e8048f5a00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variante6a83885a1f08f9d196a3f5c060c29dc5bf5f6f8e78414c0c9647a7c41a8c103.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
