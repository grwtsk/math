# Declaration Public Reducibility Hints

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**75 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `52a32d4fdeae1fe12e46cd46a1635420a3b62195`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DeclarationPublicReducibilityHints.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReducibilityHints](declarations/reducibilityhints.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mkReducibilityHintsRegularEx](declarations/mkreducibilityhintsregularex.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ReducibilityHints.getHeightEx](declarations/reducibilityhints-getheightex.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [lt](declarations/lt.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [compare](declarations/compare.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [isAbbrev](declarations/isabbrev.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [isRegular](declarations/isregular.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [ConstantVal](declarations/constantval.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [AxiomVal](declarations/axiomval.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [mkAxiomValEx](declarations/mkaxiomvalex.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [AxiomVal.isUnsafeEx](declarations/axiomval-isunsafeex.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [DefinitionSafety](declarations/definitionsafety.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [DefinitionVal](declarations/definitionval.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [mkDefinitionValEx](declarations/mkdefinitionvalex.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [DefinitionVal.getSafetyEx](declarations/definitionval-getsafetyex.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [TheoremVal](declarations/theoremval.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkTheoremValEx](declarations/mktheoremvalex.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [OpaqueVal](declarations/opaqueval.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [mkOpaqueValEx](declarations/mkopaquevalex.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [OpaqueVal.isUnsafeEx](declarations/opaqueval-isunsafeex.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [Constructor](declarations/constructor.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [InductiveType](declarations/inductivetype.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `inductive` | [Declaration](declarations/declaration.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [mkInductiveDeclEs](declarations/mkinductivedecles.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [Declaration.isUnsafeInductiveDeclEx](declarations/declaration-isunsafeinductivedeclex.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [Declaration.definitionVal!](declarations/declaration-definitionval.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Declaration.getTopLevelNames](declarations/declaration-gettoplevelnames.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [Declaration.getNames](declarations/declaration-getnames.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [Declaration.foldExprM](declarations/declaration-foldexprm.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [Declaration.forExprM](declarations/declaration-forexprm.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [InductiveVal](declarations/inductiveval.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [mkInductiveValEx](declarations/mkinductivevalex.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [InductiveVal.isRecEx](declarations/inductiveval-isrecex.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [InductiveVal.isUnsafeEx](declarations/inductiveval-isunsafeex.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [InductiveVal.isReflexiveEx](declarations/inductiveval-isreflexiveex.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [InductiveVal.numCtors](declarations/inductiveval-numctors.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [InductiveVal.isNested](declarations/inductiveval-isnested.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [InductiveVal.numTypeFormers](declarations/inductiveval-numtypeformers.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [ConstructorVal](declarations/constructorval.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mkConstructorValEx](declarations/mkconstructorvalex.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [ConstructorVal.isUnsafeEx](declarations/constructorval-isunsafeex.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [RecursorRule](declarations/recursorrule.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `structure` | [RecursorVal](declarations/recursorval.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mkRecursorValEx](declarations/mkrecursorvalex.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RecursorVal.kEx](declarations/recursorval-kex.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [RecursorVal.isUnsafeEx](declarations/recursorval-isunsafeex.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [RecursorVal.getMajorIdx](declarations/recursorval-getmajoridx.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [RecursorVal.getFirstIndexIdx](declarations/recursorval-getfirstindexidx.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [RecursorVal.getFirstMinorIdx](declarations/recursorval-getfirstminoridx.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [RecursorVal.getMajorInduct](declarations/recursorval-getmajorinduct.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [QuotKind](declarations/quotkind.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `structure` | [QuotVal](declarations/quotval.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [mkQuotValEx](declarations/mkquotvalex.md) | 423 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [QuotVal.kindEx](declarations/quotval-kindex.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `inductive` | [ConstantInfo](declarations/constantinfo.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [toConstantVal](declarations/toconstantval.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [isUnsafe](declarations/isunsafe.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [isPartial](declarations/ispartial.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [name](declarations/name.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [levelParams](declarations/levelparams.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [numLevelParams](declarations/numlevelparams.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [type](declarations/type.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [value?](declarations/value-source-edition-2.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [hasValue](declarations/hasvalue.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [value!](declarations/value.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [hints](declarations/hints.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [isCtor](declarations/isctor.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [isAxiom](declarations/isaxiom.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [isInductive](declarations/isinductive.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [isDefinition](declarations/isdefinition.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [isTheorem](declarations/istheorem.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [inductiveVal!](declarations/inductiveval-source-edition-2.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [all](declarations/all.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [mkRecName](declarations/mkrecname.md) | 553 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=467bb97c979ba1223a21e33a427b02196f9140e5f439c41065cacfac8b1a42da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Declaration/Variantfcb928c1686f0655279a790f92bd61f8c0d6df3be51a5eccaa2880de058e5e24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
