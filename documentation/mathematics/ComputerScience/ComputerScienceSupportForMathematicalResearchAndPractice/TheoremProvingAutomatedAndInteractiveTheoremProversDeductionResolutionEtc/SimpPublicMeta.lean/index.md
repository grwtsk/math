# Simp Public Meta

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cffbc13f8248bf6f6ddb2b9cedae8af638ab4c0b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpPublicMeta.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Meta.Simp.ConfigWithOptions](declarations/meta-simp-configwithoptions.md) | 23 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Meta.DSimp.ConfigWithOptions](declarations/meta-dsimp-configwithoptions.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `macro` | [(anonymous)](declarations/macro.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [$fn](declarations/fn.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [SimpKind](declarations/simpkind.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [tacticToDischarge](declarations/tactictodischarge.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [Simp.DischargeWrapper](declarations/simp-dischargewrapper.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Simp.DischargeWrapper.with](declarations/simp-dischargewrapper-with.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [mkDischargeWrapper](declarations/mkdischargewrapper.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [elabSimpConfig](declarations/elabsimpconfig.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [ResolveSimpIdResult](declarations/resolvesimpidresult.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [resolveSimpIdTheorem?](declarations/resolvesimpidtheorem.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [ElabSimpArgResult](declarations/elabsimpargresult.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ElabSimpArgResult.simpTheorems](declarations/elabsimpargresult-simptheorems.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [elabDeclToUnfoldOrTheorem](declarations/elabdecltounfoldortheorem.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [elabSimpTheorem](declarations/elabsimptheorem.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [elabSimpArg](declarations/elabsimparg.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [ElabSimpArgsResult](declarations/elabsimpargsresult.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [applyStarArg](declarations/applystararg.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [elabSimpArgs](declarations/elabsimpargs.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [simpParamsPos](declarations/simpparamspos.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [simpOnlyPos](declarations/simponlypos.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [isSimpOnly](declarations/issimponly.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getSimpParams](declarations/getsimpparams.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [setSimpParams](declarations/setsimpparams.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [simpOnlyBuiltins](declarations/simponlybuiltins.md) | 512 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [MkSimpContextResult](declarations/mksimpcontextresult.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [elabSimpLocals](declarations/elabsimplocals.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [mkSimpContext](declarations/mksimpcontext.md) | 554 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [withLoopChecking](declarations/withloopchecking.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mkSimpOnly](declarations/mksimponly.md) | 618 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [traceSimpCall](declarations/tracesimpcall.md) | 671 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [UnusedSimpArgsInfo](declarations/unusedsimpargsinfo.md) | 690 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [pushUnusedSimpArgsInfo](declarations/pushunusedsimpargsinfo.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [warnUnusedSimpArgs](declarations/warnunusedsimpargs.md) | 705 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [simpLocation](declarations/simplocation.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [withSimpDiagnostics](declarations/withsimpdiagnostics.md) | 780 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [evalSimp](declarations/evalsimp.md) | 788 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [evalSimpAll](declarations/evalsimpall.md) | 802 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [dsimpLocation](declarations/dsimplocation.md) | 820 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [evalDSimp](declarations/evaldsimp.md) | 841 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getSimpArgs?](declarations/getsimpargs.md) | 855 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [getDSimpArgs?](declarations/getdsimpargs.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d52a52e53707b6b38c100a7cdf1f28a627c1755194b2d4d741fc28ccb0f8769 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Simp/Variant2511ae4a4ffce7a9e225efd32b03bea0aa0025dae37493c474daa532df023639.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
