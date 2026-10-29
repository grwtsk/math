# Elim Dead Branches Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4be868cbe0236016461d8cdc4b65ca875fee967e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElimDeadBranchesPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Value](declarations/value.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxValueDepth](declarations/maxvaluedepth.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [beq](declarations/beq.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toFormat](declarations/toformat.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [inductValOfCtor](declarations/inductvalofctor.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [addChoice](declarations/addchoice.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [merge](declarations/merge.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [truncate](declarations/truncate.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [widening](declarations/widening.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [containsCtor](declarations/containsctor.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [getCtorArgs](declarations/getctorargs.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ofNat](declarations/ofnat.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ofLCNFLit](declarations/oflcnflit.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [proj](declarations/proj.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isLiteral](declarations/isliteral.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [getLiteral](declarations/getliteral.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `abbrev` | [FunctionSummaries](declarations/functionsummaries.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `abbrev` | [decLt](declarations/declt.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `abbrev` | [findAtSorted?](declarations/findatsorted.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [addFunctionSummary](declarations/addfunctionsummary.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [getFunctionSummary?](declarations/getfunctionsummary.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [Assignment](declarations/assignment.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [InterpContext](declarations/interpcontext.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [InterpState](declarations/interpstate.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `abbrev` | [InterpM](declarations/interpm.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [getAssignment](declarations/getassignment.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getFunVal](declarations/getfunval.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [findFunVal?](declarations/findfunval.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [modifyAssignment](declarations/modifyassignment.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [findVarValue](declarations/findvarvalue.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [findArgValue](declarations/findargvalue.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [updateVarAssignment](declarations/updatevarassignment.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [resetVarAssignment](declarations/resetvarassignment.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [updateCurrFnSummary](declarations/updatecurrfnsummary.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [updateFunDeclParamsAssignment](declarations/updatefundeclparamsassignment.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [updateFunDeclParamsTop](declarations/updatefundeclparamstop.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [resetNestedFunDeclParams](declarations/resetnestedfundeclparams.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [interpCode](declarations/interpcode.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [inferStep](declarations/inferstep.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [inferMain](declarations/infermain.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [elimDead](declarations/elimdead.md) | 609 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [Decl.elimDeadBranches](declarations/decl-elimdeadbranches.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [elimDeadBranches](declarations/elimdeadbranches.md) | 677 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 680 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c283d9febe782fe27d8b0d71735df896cb00d63c499c7389c978cc72995b9fb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimDeadBranches/Variante32a19fc76b892f26de64f1205256287fa15dfce597632cd13732c6096883482.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
