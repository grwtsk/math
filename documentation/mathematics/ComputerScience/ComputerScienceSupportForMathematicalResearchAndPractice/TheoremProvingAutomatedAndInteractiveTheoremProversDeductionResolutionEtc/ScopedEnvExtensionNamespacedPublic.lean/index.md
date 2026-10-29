# Scoped Env Extension Namespaced Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variant37cf77f92ed092fa3f878a6e6686fcdd54714b38566c76d4cd9f6d7eb33c6a60.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7daa278ba4831843aa1fd060dfa2bd5dfb9b6b72`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ScopedEnvExtensionNamespacedPublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Entry](declarations/entry.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [State](declarations/state.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [ScopedEntries](declarations/scopedentries.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [StateStack](declarations/statestack.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Descr](declarations/descr.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mkInitial](declarations/mkinitial.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [ScopedEntries.insert](declarations/scopedentries-insert.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [addImportedFn](declarations/addimportedfn.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [addEntryFn](declarations/addentryfn.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [exportEntriesFn](declarations/exportentriesfn.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ScopedEnvExtension](declarations/scopedenvextension.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [registerScopedEnvExtensionUnsafe](declarations/registerscopedenvextensionunsafe.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `opaque` | [registerScopedEnvExtension](declarations/registerscopedenvextension.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ScopedEnvExtension.pushScope](declarations/scopedenvextension-pushscope.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ScopedEnvExtension.popScope](declarations/scopedenvextension-popscope.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ScopedEnvExtension.setDelimitsLocal](declarations/scopedenvextension-setdelimitslocal.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ScopedEnvExtension.addEntry](declarations/scopedenvextension-addentry.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ScopedEnvExtension.addScopedEntry](declarations/scopedenvextension-addscopedentry.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [stateStackModify](declarations/statestackmodify.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [ScopedEnvExtension.addLocalEntry](declarations/scopedenvextension-addlocalentry.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [ScopedEnvExtension.addCore](declarations/scopedenvextension-addcore.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [ScopedEnvExtension.add](declarations/scopedenvextension-add.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ScopedEnvExtension.getState](declarations/scopedenvextension-getstate.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ScopedEnvExtension.activateScoped](declarations/scopedenvextension-activatescoped.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [ScopedEnvExtension.modifyState](declarations/scopedenvextension-modifystate.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [pushScope](declarations/pushscope.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [popScope](declarations/popscope.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [setDelimitsLocal](declarations/setdelimitslocal.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [activateScoped](declarations/activatescoped.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `abbrev` | [SimpleScopedEnvExtension](declarations/simplescopedenvextension.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [SimpleScopedEnvExtension.Descr](declarations/simplescopedenvextension-descr.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [registerSimpleScopedEnvExtension](declarations/registersimplescopedenvextension.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1eff826e71147ece57bb0659e5bbebc0fd5ca76683a80a23259a38153724278f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ScopedEnvExtension/Variant37cf77f92ed092fa3f878a6e6686fcdd54714b38566c76d4cd9f6d7eb33c6a60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
