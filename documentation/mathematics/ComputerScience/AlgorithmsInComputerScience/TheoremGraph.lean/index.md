# Theorem Graph

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 6 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0f516afa69b7859b58cb244def68a59bbbc3577e`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/TheoremGraph.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [RTHIdentifier](declarations/rthidentifier.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RepositorySnapshot](declarations/repositorysnapshot.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [LeanProofDeclarationKind](declarations/leanproofdeclarationkind.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [TheoremDeclarationIdentity](declarations/theoremdeclarationidentity.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [TheoremDeclaration](declarations/theoremdeclaration.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [TheoremOccurrence](declarations/theoremoccurrence.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [PropositionIdentity](declarations/propositionidentity.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [ProofIdentity](declarations/proofidentity.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [AssumptionOccurrence](declarations/assumptionoccurrence.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [ProofDependencySource](declarations/proofdependencysource.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [ExtractedProofDependency](declarations/extractedproofdependency.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `inductive` | [SemanticRelationshipKind](declarations/semanticrelationshipkind.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [SemanticRelationship](declarations/semanticrelationship.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [AxiomDependencyOccurrence](declarations/axiomdependencyoccurrence.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [TheoremInventory](declarations/theoreminventory.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `inductive` | [InventoryValidationStatus](declarations/inventoryvalidationstatus.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [InventoryValidationExecution](declarations/inventoryvalidationexecution.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [InventoryValidationResult](declarations/inventoryvalidationresult.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [AcceptedInventoryValidation](declarations/acceptedinventoryvalidation.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [ForwardDependencyGraph](declarations/forwarddependencygraph.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `inductive` | [DependsTransitively](declarations/dependstransitively.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rank_lt_of_dependsTransitively](declarations/rank-lt-of-dependstransitively.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rth07_forwardProofDependencyAcyclic](declarations/rth07-forwardproofdependencyacyclic.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [DependencyClosed](declarations/dependencyclosed.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [Ready](declarations/ready.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [visited_of_path_to_visited](declarations/visited-of-path-to-visited.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [readyWave_antichain](declarations/readywave-antichain.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [rth07_forwardProofDependencyAcyclic](declarations/rth07-forwardproofdependencyacyclic-source-edition-2.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [ExactTheoremIdentityInventory](declarations/exacttheoremidentityinventory.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [AssumptionClosureCertificate](declarations/assumptionclosurecertificate.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [rth14_noFilenameDerivedProofDependency](declarations/rth14-nofilenamederivedproofdependency.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e811a6a4663d17221cb77650e21c17adf87e690b9ca963991d904b602dbc05d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TheoremGraph/Variant4ed0fe5327b27ccaf61c4a19cc0939f0e14a06a134ed5eab2f6c604350e560a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
