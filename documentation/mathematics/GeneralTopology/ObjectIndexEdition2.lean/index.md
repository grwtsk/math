# Object Index Edition2

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e92dfcc919c1ec03ec65281577bfe7df12c86958`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ObjectIndexEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MathematicalObjectRecord](declarations/mathematicalobjectrecord.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FormalDeclarationRecord](declarations/formaldeclarationrecord.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PropositionRecord](declarations/propositionrecord.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ProofAuthorityRecord](declarations/proofauthorityrecord.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ExampleRecord](declarations/examplerecord.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CounterexampleRecord](declarations/counterexamplerecord.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RepresentationRecord](declarations/representationrecord.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ImplementationRefinementRecord](declarations/implementationrefinementrecord.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CanonicalMathematicalIndex](declarations/canonicalmathematicalindex.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookupObject](declarations/lookupobject.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lookupDeclaration](declarations/lookupdeclaration.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lookupProposition](declarations/lookupproposition.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [listAssumptions](declarations/listassumptions.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [traceProofAuthority](declarations/traceproofauthority.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [traceDependencies](declarations/tracedependencies.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [listRepresentations](declarations/listrepresentations.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [listExamples](declarations/listexamples.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [listCounterexamples](declarations/listcounterexamples.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [listOpenObligations](declarations/listopenobligations.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [VersionComparison](declarations/versioncomparison.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [compareVersions](declarations/compareversions.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [compareVersions_self](declarations/compareversions-self.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [HasObject](declarations/hasobject.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [HasDeclaration](declarations/hasdeclaration.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [HasProposition](declarations/hasproposition.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [Valid](declarations/valid.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [object_identifiers_unique](declarations/object-identifiers-unique.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [declaration_identifiers_unique](declarations/declaration-identifiers-unique.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [declaration_refers_to_object](declarations/declaration-refers-to-object.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [proposition_refers_to_object](declarations/proposition-refers-to-object.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [proof_authority_resolves](declarations/proof-authority-resolves.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [authorityRank](declarations/authorityrank.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [AuthorityNonIncreasing](declarations/authoritynonincreasing.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [RepresentationMigration](declarations/representationmigration.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [RepresentationMigration.cannot_increase_authority](declarations/representationmigration-cannot-increase-authority.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [SemanticFork](declarations/semanticfork.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [SemanticFork.requires_new_identity_or_version](declarations/semanticfork-requires-new-identity-or-version.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [supersession_wellFounded](declarations/supersession-wellfounded.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [normalizedRoot](declarations/normalizedroot.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [deterministic_normalization_unique](declarations/deterministic-normalization-unique.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28e273f211330fc9c2d13a967ba3fa02d344b06e9798d4e2276c61224cedfc38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant88c592393ef87d9a6db64fb6d090c66866895dd230b0b421becbeb8bb0b91766.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
