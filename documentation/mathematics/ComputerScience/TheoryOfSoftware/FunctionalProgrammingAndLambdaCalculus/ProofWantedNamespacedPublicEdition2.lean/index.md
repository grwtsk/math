# Proof Wanted Namespaced Public Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e065e6f3824217f42b7f7610f4e2562d0d6c91b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ProofWantedNamespacedPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProofWanted](declarations/proofwanted.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ProofWanted.Stmt](declarations/proofwanted-stmt.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [DefWanted](declarations/defwanted.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [DefWanted.Val](declarations/defwanted-val.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [DerivedWanted](declarations/derivedwanted.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `syntax` | [(anonymous)](declarations/syntax.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [elabWantedRef](declarations/elabwantedref.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [WantedRefKind](declarations/wantedrefkind.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [WantedRefKind.accessor](declarations/wantedrefkind-accessor.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [WantedRefKind.hypPrefix](declarations/wantedrefkind-hypprefix.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [WantedCmdKind](declarations/wantedcmdkind.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [WantedCmdKind.fallbackKeyword](declarations/wantedcmdkind-fallbackkeyword.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [theoremWantedCmd](declarations/theoremwantedcmd.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [proofWantedCmd](declarations/proofwantedcmd.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [defWantedCmd](declarations/defwantedcmd.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [instanceWantedCmd](declarations/instancewantedcmd.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `initialize` | [(anonymous)](declarations/initialize.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `initialize` | [(anonymous)](declarations/initialize-source-edition-2.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rejectRefsIn](declarations/rejectrefsin.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [freshHypName](declarations/freshhypname.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [WantedDep](declarations/wanteddep.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [WantedRefInfo](declarations/wantedrefinfo.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [classifyWantedRef](declarations/classifywantedref.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [elabWanted](declarations/elabwanted.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [$name](declarations/name.md) | 569 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [$name](declarations/name-source-edition-2.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [«theorem_wanted»](declarations/theorem-wanted.md) | 696 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [«proof_wanted»](declarations/proof-wanted.md) | 704 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [«def_wanted»](declarations/def-wanted.md) | 734 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [elabTheoremWanted](declarations/elabtheoremwanted.md) | 741 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [elabProofWanted](declarations/elabproofwanted.md) | 750 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [elabDefWanted](declarations/elabdefwanted.md) | 758 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [«instance_wanted»](declarations/instance-wanted.md) | 793 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [autoInstanceWantedName](declarations/autoinstancewantedname.md) | 803 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [elabInstanceWanted](declarations/elabinstancewanted.md) | 833 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4184b8bae5823b8fae83f8a4239f351d7841f2979c285d248a9511b9f696eaec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofWanted/Variant3fa06f983b0a4982664711cad9b9e3c65b8c0392a925c8c113e26a37c7025145.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
