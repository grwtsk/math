# Object Index Namespaced Edition1

[Complete source index](../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36cfd976b43911adfc903f6bcf33f8f868e71dd5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../_verification/specifications/GeneralTopology/ObjectIndexNamespacedEdition1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [MathematicalObjectRecord](declarations/mathematicalobjectrecord.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FormalDeclarationRecord](declarations/formaldeclarationrecord.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [PropositionRecord](declarations/propositionrecord.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ProofAuthorityRecord](declarations/proofauthorityrecord.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ExampleRecord](declarations/examplerecord.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CounterexampleRecord](declarations/counterexamplerecord.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RepresentationRecord](declarations/representationrecord.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ImplementationRefinementRecord](declarations/implementationrefinementrecord.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [CanonicalMathematicalIndex](declarations/canonicalmathematicalindex.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookupObject](declarations/lookupobject.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lookupDeclaration](declarations/lookupdeclaration.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [lookupProposition](declarations/lookupproposition.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [listAssumptions](declarations/listassumptions.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [traceProofAuthority](declarations/traceproofauthority.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [traceDependencies](declarations/tracedependencies.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [listRepresentations](declarations/listrepresentations.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [listExamples](declarations/listexamples.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [listCounterexamples](declarations/listcounterexamples.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [listOpenObligations](declarations/listopenobligations.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [VersionComparison](declarations/versioncomparison.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [compareVersions](declarations/compareversions.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [compareVersions_self](declarations/compareversions-self.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [HasObject](declarations/hasobject.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [HasDeclaration](declarations/hasdeclaration.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [HasProposition](declarations/hasproposition.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `structure` | [Valid](declarations/valid.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [object_identifiers_unique](declarations/object-identifiers-unique.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [declaration_identifiers_unique](declarations/declaration-identifiers-unique.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [declaration_refers_to_object](declarations/declaration-refers-to-object.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [proposition_refers_to_object](declarations/proposition-refers-to-object.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [proof_authority_resolves](declarations/proof-authority-resolves.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [authorityRank](declarations/authorityrank.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [AuthorityNonIncreasing](declarations/authoritynonincreasing.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [RepresentationMigration](declarations/representationmigration.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [RepresentationMigration.cannot_increase_authority](declarations/representationmigration-cannot-increase-authority.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [SemanticFork](declarations/semanticfork.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [SemanticFork.requires_new_identity_or_version](declarations/semanticfork-requires-new-identity-or-version.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [supersession_wellFounded](declarations/supersession-wellfounded.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [normalizedRoot](declarations/normalizedroot.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [deterministic_normalization_unique](declarations/deterministic-normalization-unique.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7757ab72a411b7d38ace861b1d104df99a7b63379932fcdc8c0045e9bcd885c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ObjectIndex/Variant9d5cf24119c64a660c1bf130f8ad9d0cb0bdecd53d68da81e32ed3a8278a2fcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
