# Structure Namespaced Public Struct Parent View

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**73 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d4e9e482af56c000ec44903583603375e1941536`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/StructureNamespacedPublicStructParentView.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [StructParentView](declarations/structparentview.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [StructFieldViewDefault](declarations/structfieldviewdefault.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [StructFieldView](declarations/structfieldview.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [StructView](declarations/structview.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [StructView.ctor](declarations/structview-ctor.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [StructParentInfo](declarations/structparentinfo.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `inductive` | [StructFieldKind](declarations/structfieldkind.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [StructFieldKind.isFromSubobject](declarations/structfieldkind-isfromsubobject.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [StructFieldKind.isSubobject](declarations/structfieldkind-issubobject.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [StructFieldKind.isParent](declarations/structfieldkind-isparent.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [StructFieldKind.isInCtor](declarations/structfieldkind-isinctor.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [StructFieldDefault](declarations/structfielddefault.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [StructFieldInfo](declarations/structfieldinfo.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [defaultCtorName](declarations/defaultctorname.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [dropLeadingDeclModifiersDocstring](declarations/dropleadingdeclmodifiersdocstring.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [mkDeletePrivateFieldHint](declarations/mkdeleteprivatefieldhint.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [expandCtor](declarations/expandctor.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [expandParents](declarations/expandparents.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [checkValidFieldModifier](declarations/checkvalidfieldmodifier.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [expandFields](declarations/expandfields.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [structureSyntaxToView](declarations/structuresyntaxtoview.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [State](declarations/state.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `abbrev` | [StructElabM](declarations/structelabm.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [(anonymous)](declarations/instance.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [runStructElabM](declarations/runstructelabm.md) | 509 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [addParentInfo](declarations/addparentinfo.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [findFieldInfo?](declarations/findfieldinfo.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [hasFieldName](declarations/hasfieldname.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [findFieldInfoByFVarId?](declarations/findfieldinfobyfvarid.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [addFieldInfo](declarations/addfieldinfo.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [findParentFieldInfo?](declarations/findparentfieldinfo.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [replaceFieldInfo](declarations/replacefieldinfo.md) | 555 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [addFieldInheritedDefault](declarations/addfieldinheriteddefault.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [reduceFieldProjs](declarations/reducefieldprojs.md) | 571 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [fieldNormalizeExpr](declarations/fieldnormalizeexpr.md) | 597 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [fieldFromMsg](declarations/fieldfrommsg.md) | 601 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [getFieldDefaultValue?](declarations/getfielddefaultvalue.md) | 613 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [getFieldDefault?](declarations/getfielddefault.md) | 624 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [toModifiers](declarations/tomodifiers.md) | 636 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [withStructField](declarations/withstructfield.md) | 648 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [withStructFields](declarations/withstructfields.md) | 707 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [withStruct](declarations/withstruct.md) | 760 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [withParent](declarations/withparent.md) | 853 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mkToParentName](declarations/mktoparentname.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [StructParentView.mkToParentNames](declarations/structparentview-mktoparentnames.md) | 869 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [withParents](declarations/withparents.md) | 876 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [registerFailedToInferFieldType](declarations/registerfailedtoinferfieldtype.md) | 921 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [registerFailedToInferDefaultValue](declarations/registerfailedtoinferdefaultvalue.md) | 925 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [solveParentMVars](declarations/solveparentmvars.md) | 960 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [elabParamInfoUpdatesForField](declarations/elabparaminfoupdatesforfield.md) | 974 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [elabFieldType](declarations/elabfieldtype.md) | 985 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [throwExistingDefaultValue](declarations/throwexistingdefaultvalue.md) | 1009 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [withFields](declarations/withfields.md) | 1017 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [elabStructFieldDefaults](declarations/elabstructfielddefaults.md) | 1096 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [collectUsedFVars](declarations/collectusedfvars.md) | 1133 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [mkCtorLCtx](declarations/mkctorlctx.md) | 1150 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [mkCtor](declarations/mkctor.md) | 1181 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [mkFlatCtorExpr](declarations/mkflatctorexpr.md) | 1211 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [mkFlatCtor](declarations/mkflatctor.md) | 1237 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [collectExtraHeaderLMVars](declarations/collectextraheaderlmvars.md) | 1267 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [checkResultingUniversesForFields](declarations/checkresultinguniversesforfields.md) | 1273 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [addProjections](declarations/addprojections.md) | 1283 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [registerStructure](declarations/registerstructure.md) | 1298 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [checkDefaults](declarations/checkdefaults.md) | 1312 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [resolveFieldDefaults](declarations/resolvefielddefaults.md) | 1329 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [addDefaults](declarations/adddefaults.md) | 1362 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [setSourceInstImplicit](declarations/setsourceinstimplicit.md) | 1405 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [mkCoercionToCopiedParent](declarations/mkcoerciontocopiedparent.md) | 1417 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [mkRemainingProjections](declarations/mkremainingprojections.md) | 1455 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [checkResolutionOrder](declarations/checkresolutionorder.md) | 1500 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [addParentInstances](declarations/addparentinstances.md) | 1516 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [elabStructureCommand](declarations/elabstructurecommand.md) | 1527 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12036be526bc6b8693f5be9860f1306b76fc27e22628a5b8f144b20303ac3913 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
