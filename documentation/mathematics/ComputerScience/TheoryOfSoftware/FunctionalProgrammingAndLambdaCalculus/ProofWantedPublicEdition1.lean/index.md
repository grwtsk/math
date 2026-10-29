# Proof Wanted Public Edition1

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fd54ae27efd64bd5098aa0c44a09505bf051150`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedPublicEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofWanted](declarations/proofwanted.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ProofWanted.Stmt](declarations/proofwanted-stmt.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DefWanted](declarations/defwanted.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DefWanted.Val](declarations/defwanted-val.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DerivedWanted](declarations/derivedwanted.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `syntax` | [(anonymous)](declarations/syntax.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [elabWantedRef](declarations/elabwantedref.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [WantedRefKind](declarations/wantedrefkind.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WantedRefKind.accessor](declarations/wantedrefkind-accessor.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WantedRefKind.hypPrefix](declarations/wantedrefkind-hypprefix.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [WantedCmdKind](declarations/wantedcmdkind.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [WantedCmdKind.fallbackKeyword](declarations/wantedcmdkind-fallbackkeyword.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [theoremWantedCmd](declarations/theoremwantedcmd.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [proofWantedCmd](declarations/proofwantedcmd.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [defWantedCmd](declarations/defwantedcmd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [instanceWantedCmd](declarations/instancewantedcmd.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `initialize` | [(anonymous)](declarations/initialize-source-edition-2.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `initialize` | [(anonymous)](declarations/initialize.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rejectRefsIn](declarations/rejectrefsin.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [freshHypName](declarations/freshhypname.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [WantedDep](declarations/wanteddep.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [WantedRefInfo](declarations/wantedrefinfo.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [classifyWantedRef](declarations/classifywantedref.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [elabWanted](declarations/elabwanted.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [$name](declarations/name-source-edition-2.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [$name](declarations/name.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [«theorem_wanted»](declarations/theorem-wanted.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [«proof_wanted»](declarations/proof-wanted.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [«def_wanted»](declarations/def-wanted.md) | 720 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [elabTheoremWanted](declarations/elabtheoremwanted.md) | 727 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [elabProofWanted](declarations/elabproofwanted.md) | 736 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [elabDefWanted](declarations/elabdefwanted.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [«instance_wanted»](declarations/instance-wanted.md) | 779 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [autoInstanceWantedName](declarations/autoinstancewantedname.md) | 789 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [elabInstanceWanted](declarations/elabinstancewanted.md) | 819 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=840bcf46be9bc0e461ca45c6d8ae35a2b7a3a6332d2c3087fc8e9de9624588b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variantcfd89307234c074205ee323ee1e77cd9aab0c5c895e16eac032d478d93feec1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
