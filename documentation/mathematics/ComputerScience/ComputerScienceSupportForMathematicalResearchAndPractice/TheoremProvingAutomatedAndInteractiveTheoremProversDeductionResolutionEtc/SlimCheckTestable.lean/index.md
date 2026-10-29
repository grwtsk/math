# Slim Check Testable

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**56 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ef01fc0035c3961511f754303bce04f57738070`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckTestable.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [TestResult](declarations/testresult.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Configuration](declarations/configuration.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `class` | [PrintableProp](declarations/printableprop.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `class` | [Testable](declarations/testable.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [NamedBinder](declarations/namedbinder.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [toString](declarations/tostring.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [combine](declarations/combine.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [and](declarations/and.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [or](declarations/or.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [imp](declarations/imp.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [iff](declarations/iff.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [addInfo](declarations/addinfo.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [addVarInfo](declarations/addvarinfo.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [isFailure](declarations/isfailure.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [verbose](declarations/verbose.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [runProp](declarations/runprop.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [slimTrace](declarations/slimtrace.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [andTestable](declarations/andtestable.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `instance` | [orTestable](declarations/ortestable.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [iffTestable](declarations/ifftestable.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [decGuardTestable](declarations/decguardtestable.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [forallTypesTestable](declarations/foralltypestestable.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [formatFailure](declarations/formatfailure.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [addShrinks](declarations/addshrinks.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [minimizeAux](declarations/minimizeaux.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [minimize](declarations/minimize.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [varTestable](declarations/vartestable.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [propVarTestable](declarations/propvartestable.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [Eq.printableProp](declarations/eq-printableprop.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [Ne.printableProp](declarations/ne-printableprop.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [LE.printableProp](declarations/le-printableprop.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [LT.printableProp](declarations/lt-printableprop.md) | 413 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [And.printableProp](declarations/and-printableprop.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [Or.printableProp](declarations/or-printableprop.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `instance` | [Iff.printableProp](declarations/iff-printableprop.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `instance` | [Imp.printableProp](declarations/imp-printableprop.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [Not.printableProp](declarations/not-printableprop.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [True.printableProp](declarations/true-printableprop.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [False.printableProp](declarations/false-printableprop.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `instance` | [Bool.printableProp](declarations/bool-printableprop.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [retry](declarations/retry.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [giveUp](declarations/giveup.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Testable.runSuiteAux](declarations/testable-runsuiteaux.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [Testable.runSuite](declarations/testable-runsuite.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [Testable.checkIO](declarations/testable-checkio.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [addDecorations](declarations/adddecorations.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `abbrev` | [DecorationsOf](declarations/decorationsof.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `elab` | [(anonymous)](declarations/elab.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [Testable.check](declarations/testable-check.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `macro` | [(anonymous)](declarations/macro.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=526b972fe3cb039fd5ca78d85ac9f2a5c6900822e07e5087e86efdf1fe2bdfd7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Testable/Variant6dabff0077ddf5ddee597ed374c36551c7269f9f72fa0884c1aa6983a9e23400.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
