# Attributes Public Attribute Application Time

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../complete-source-index.md) · [Full source](source.md)

**60 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0dedc7f44f57f9d8b74d6705b30ebae22a11f0b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/AttributesPublicAttributeApplicationTime.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AttributeApplicationTime](declarations/attributeapplicationtime.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [AttrM](declarations/attrm.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AttributeImplCore](declarations/attributeimplcore.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `inductive` | [AttributeKind](declarations/attributekind.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [AttributeImpl](declarations/attributeimpl.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [registerBuiltinAttribute](declarations/registerbuiltinattribute.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [Attribute.Builtin.ensureNoArgs](declarations/attribute-builtin-ensurenoargs.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Attribute.Builtin.getIdent?](declarations/attribute-builtin-getident-source-edition-2.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Attribute.Builtin.getIdent](declarations/attribute-builtin-getident.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [Attribute.Builtin.getId?](declarations/attribute-builtin-getid-source-edition-2.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Attribute.Builtin.getId](declarations/attribute-builtin-getid.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [getAttrParamOptPrio](declarations/getattrparamoptprio.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [Attribute.Builtin.getPrio](declarations/attribute-builtin-getprio.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [throwAttrMustBeGlobal](declarations/throwattrmustbeglobal.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [throwAttrDeclInImportedModule](declarations/throwattrdeclinimportedmodule.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [throwAttrNotInAsyncCtx](declarations/throwattrnotinasyncctx.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [throwAttrDeclNotOfExpectedType](declarations/throwattrdeclnotofexpectedtype.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [ensureAttrDeclIsPublic](declarations/ensureattrdeclispublic.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ensureAttrDeclIsMeta](declarations/ensureattrdeclismeta.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [TagAttribute](declarations/tagattribute.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [registerTagAttribute](declarations/registertagattribute.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [setTag](declarations/settag.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [hasTag](declarations/hastag.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `structure` | [ParametricAttribute](declarations/parametricattribute.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [ParametricAttributeImpl](declarations/parametricattributeimpl.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [registerParametricAttribute](declarations/registerparametricattribute.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [getParam?](declarations/getparam.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [setParam](declarations/setparam.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `structure` | [EnumAttributes](declarations/enumattributes.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [registerEnumAttributes](declarations/registerenumattributes.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [getValue](declarations/getvalue.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [setValue](declarations/setvalue.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `abbrev` | [AttributeImplBuilder](declarations/attributeimplbuilder.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `abbrev` | [AttributeImplBuilderTable](declarations/attributeimplbuildertable.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-3.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [registerAttributeImplBuilder](declarations/registerattributeimplbuilder.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `structure` | [AttributeExtensionOLeanEntry](declarations/attributeextensionoleanentry.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [mkAttributeImplOfEntry](declarations/mkattributeimplofentry.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [AttributeExtensionState](declarations/attributeextensionstate.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `abbrev` | [AttributeExtension](declarations/attributeextension.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [AttributeExtension.mkInitial](declarations/attributeextension-mkinitial.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [mkAttributeImplOfConstantUnsafe](declarations/mkattributeimplofconstantunsafe.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `opaque` | [mkAttributeImplOfConstant](declarations/mkattributeimplofconstant.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [AttributeExtension.addImported](declarations/attributeextension-addimported.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [addAttrEntry](declarations/addattrentry.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 451 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [isBuiltinAttribute](declarations/isbuiltinattribute.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [getBuiltinAttributeNames](declarations/getbuiltinattributenames.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [getBuiltinAttributeImpl](declarations/getbuiltinattributeimpl.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [isAttribute](declarations/isattribute.md) | 474 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [getAttributeNames](declarations/getattributenames.md) | 477 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [getAttributeImpl](declarations/getattributeimpl.md) | 481 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [registerAttributeOfBuilder](declarations/registerattributeofbuilder.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [Attribute.add](declarations/attribute-add.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Attribute.erase](declarations/attribute-erase.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [updateEnvAttributesImpl](declarations/updateenvattributesimpl.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [getNumBuiltinAttributesImpl](declarations/getnumbuiltinattributesimpl.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ad0f91c93df4c0c9c1173cc99d522d627fb99305ca7033adfd720d5d3fb1655a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attributes/Variant009bf062dcf0b534e5d0a43b0bdf4fc42370742c5e5bc74fc67f92a1a82902c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
