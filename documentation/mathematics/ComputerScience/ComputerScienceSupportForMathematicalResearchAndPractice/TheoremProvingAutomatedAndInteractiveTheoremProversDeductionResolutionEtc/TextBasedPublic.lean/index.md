# Text Based Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69f5c02b190bbcf1d3275900c6a37403c0b12275`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TextBasedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [StyleError](declarations/styleerror.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [ErrorFormat](declarations/errorformat.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [StyleError.errorMessage](declarations/styleerror-errormessage.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [StyleError.errorCode](declarations/styleerror-errorcode.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ErrorContext](declarations/errorcontext.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [ComparisonResult](declarations/comparisonresult.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [compare](declarations/compare.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ErrorContext.find?_comparable](declarations/errorcontext-find-comparable.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [outputMessage](declarations/outputmessage.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [removeQuotations](declarations/removequotations.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [parse?_errorContext](declarations/parse-errorcontext.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [parseStyleExceptions](declarations/parsestyleexceptions.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [formatErrors](declarations/formaterrors.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `abbrev` | [TextbasedLinter](declarations/textbasedlinter.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `register_option` | [linter.adaptationNote](declarations/linter-adaptationnote.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [adaptationNoteLinter](declarations/adaptationnotelinter.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `register_option` | [linter.trailingWhitespace](declarations/linter-trailingwhitespace.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [trailingWhitespaceLinter](declarations/trailingwhitespacelinter.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `register_option` | [linter.whitespaceBeforeSemicolon](declarations/linter-whitespacebeforesemicolon.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [semicolonLinter](declarations/semicolonlinter.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [isImportsOnlyFile](declarations/isimportsonlyfile.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [findBadUnicodeAux](declarations/findbadunicodeaux.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [findBadUnicode](declarations/findbadunicode.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `register_option` | [linter.unicodeLinter](declarations/linter-unicodelinter.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [unicodeLinter](declarations/unicodelinter.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [allLinters](declarations/alllinters.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [lintFile](declarations/lintfile.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `register_option` | [linter.pythonStyle](declarations/linter-pythonstyle.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [lintModules](declarations/lintmodules.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `register_option` | [linter.modulesUpperCamelCase](declarations/linter-modulesuppercamelcase.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [modulesNotUpperCamelCase](declarations/modulesnotuppercamelcase.md) | 564 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `register_option` | [linter.modulesForbiddenWindows](declarations/linter-modulesforbiddenwindows.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [modulesOSForbidden](declarations/modulesosforbidden.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac82da8d0f756c62612b0e3a5d138f5a56a62a2d2000437d4f1c275500c20b85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TextBased/Variant81369e62c1ea7bca6583908ab42b0382dd8a7528a1725fc660f37ea5beb50f03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
