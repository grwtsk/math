# Text Based Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1377f1cb945abaea478a46bb415c58b677d01fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TextBasedNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [StyleError](declarations/styleerror.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ErrorFormat](declarations/errorformat.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [StyleError.errorMessage](declarations/styleerror-errormessage.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [StyleError.errorCode](declarations/styleerror-errorcode.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ErrorContext](declarations/errorcontext.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [ComparisonResult](declarations/comparisonresult.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compare](declarations/compare.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ErrorContext.find?_comparable](declarations/errorcontext-find-comparable.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [outputMessage](declarations/outputmessage.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeQuotations](declarations/removequotations.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parse?_errorContext](declarations/parse-errorcontext.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [parseStyleExceptions](declarations/parsestyleexceptions.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [formatErrors](declarations/formaterrors.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [TextbasedLinter](declarations/textbasedlinter.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `register_option` | [linter.adaptationNote](declarations/linter-adaptationnote.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [adaptationNoteLinter](declarations/adaptationnotelinter.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `register_option` | [linter.trailingWhitespace](declarations/linter-trailingwhitespace.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [trailingWhitespaceLinter](declarations/trailingwhitespacelinter.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `register_option` | [linter.whitespaceBeforeSemicolon](declarations/linter-whitespacebeforesemicolon.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [semicolonLinter](declarations/semicolonlinter.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isImportsOnlyFile](declarations/isimportsonlyfile.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findBadUnicodeAux](declarations/findbadunicodeaux.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findBadUnicode](declarations/findbadunicode.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `register_option` | [linter.unicodeLinter](declarations/linter-unicodelinter.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [unicodeLinter](declarations/unicodelinter.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [allLinters](declarations/alllinters.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [lintFile](declarations/lintfile.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `register_option` | [linter.pythonStyle](declarations/linter-pythonstyle.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lintModules](declarations/lintmodules.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `register_option` | [linter.modulesUpperCamelCase](declarations/linter-modulesuppercamelcase.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [modulesNotUpperCamelCase](declarations/modulesnotuppercamelcase.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `register_option` | [linter.modulesForbiddenWindows](declarations/linter-modulesforbiddenwindows.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [modulesOSForbidden](declarations/modulesosforbidden.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d184b08070ba02b90988e8f9b6602fc482ba37ad131f4d6126ce9d9f95acf2b7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Varianta2bc2edba192f7fcd0908303fa7dbc1d82db9bdb34c00c576c52e3d13def07fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
