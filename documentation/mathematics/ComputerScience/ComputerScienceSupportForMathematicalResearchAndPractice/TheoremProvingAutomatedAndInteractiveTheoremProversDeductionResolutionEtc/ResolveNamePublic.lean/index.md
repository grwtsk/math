# Resolve Name Public

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**45 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b687cc6b3cb76fc6a2f6f726d494f46ea541614b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ResolveNamePublic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [throwReservedNameNotAvailable](declarations/throwreservednamenotavailable.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [ensureReservedNameAvailable](declarations/ensurereservednameavailable.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-2.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [registerReservedNamePredicate](declarations/registerreservednamepredicate.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize-source-edition-3.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [isReservedName](declarations/isreservedname.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [AliasState](declarations/aliasstate.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [AliasEntry](declarations/aliasentry.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [addAliasEntry](declarations/addaliasentry.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `builtin_initialize` | [(anonymous)](declarations/builtin-initialize.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [addAlias](declarations/addalias.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [getAliasState](declarations/getaliasstate.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [getAliases](declarations/getaliases.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [getRevAliases](declarations/getrevaliases.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [containsDeclOrReserved](declarations/containsdeclorreserved.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [resolvePrivateName](declarations/resolveprivatename.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [resolveQualifiedName](declarations/resolvequalifiedname.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [resolveUsingNamespace](declarations/resolveusingnamespace.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [resolveExact](declarations/resolveexact.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [resolveOpenDecls](declarations/resolveopendecls.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [resolveGlobalName](declarations/resolveglobalname.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [resolveNamespaceUsingScope?](declarations/resolvenamespaceusingscope.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [resolveNamespaceUsingOpenDecls](declarations/resolvenamespaceusingopendecls.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [resolveNamespace](declarations/resolvenamespace.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `class` | [MonadResolveName](declarations/monadresolvename.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [checkPrivateInPublic](declarations/checkprivateinpublic.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isInaccessiblePrivateName](declarations/isinaccessibleprivatename.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [resolveGlobalName](declarations/resolveglobalname-source-edition-2.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [resolveNamespaceCore](declarations/resolvenamespacecore.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [resolveNamespace](declarations/resolvenamespace-source-edition-2.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [resolveUniqueNamespace](declarations/resolveuniquenamespace.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [filterFieldList](declarations/filterfieldlist.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [resolveGlobalConstCore](declarations/resolveglobalconstcore.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [ensureNoOverload](declarations/ensurenooverload.md) | 373 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [resolveGlobalConstNoOverloadCore](declarations/resolveglobalconstnooverloadcore.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [preprocessSyntaxAndResolve](declarations/preprocesssyntaxandresolve.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [resolveGlobalConst](declarations/resolveglobalconst.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [ensureNonAmbiguous](declarations/ensurenonambiguous.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [resolveGlobalConstNoOverload](declarations/resolveglobalconstnooverload.md) | 456 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [resolveLocalName](declarations/resolvelocalname.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [unresolveNameGlobal?](declarations/unresolvenameglobal-source-edition-2.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [unresolveNameGlobal](declarations/unresolvenameglobal.md) | 685 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [unresolveNameGlobalAvoidingLocals?](declarations/unresolvenameglobalavoidinglocals-source-edition-2.md) | 693 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [unresolveNameGlobalAvoidingLocals](declarations/unresolvenameglobalavoidinglocals.md) | 697 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d842ffca51887d1f2717cc4f7e78d7b9850546b3edf50d61f5fa9dcdecef611d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ResolveName/Variant29568f90bc8c5b713b7462096b94e898f30d0eca21119ae9abac695604615d13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
