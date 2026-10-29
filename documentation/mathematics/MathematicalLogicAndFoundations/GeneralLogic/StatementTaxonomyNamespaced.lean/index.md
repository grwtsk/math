# Statement Taxonomy Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f34360fa75dd088ce88005c6243e8b3a1e25dab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/StatementTaxonomyNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [StatementKind](declarations/statementkind.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AuthorityState](declarations/authoritystate.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [StatementKind.isTheoremLike](declarations/statementkind-istheoremlike.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [StatementKind.isBourbakiStructural](declarations/statementkind-isbourbakistructural.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [StatementKind.isHypothesisLike](declarations/statementkind-ishypothesislike.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AuthorityState.isTheoremAuthority](declarations/authoritystate-istheoremauthority.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [AuthorityState.isAssumptionLike](declarations/authoritystate-isassumptionlike.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AuthorityState.isResidueLike](declarations/authoritystate-isresiduelike.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [StatementKind.defaultAuthority](declarations/statementkind-defaultauthority.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [StatementTaxonomyEntry](declarations/statementtaxonomyentry.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [StatementKind.entry](declarations/statementkind-entry.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [FormalStatementSurface](declarations/formalstatementsurface.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [FormalStatementSurface.hasTheoremAuthority](declarations/formalstatementsurface-hastheoremauthority.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [FormalStatementSurface.isFiniteWitnessOnly](declarations/formalstatementsurface-isfinitewitnessonly.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FormalStatementSurface.isResidueBearing](declarations/formalstatementsurface-isresiduebearing.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [theorem_like_name_does_not_imply_authority](declarations/theorem-like-name-does-not-imply-authority.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [checked_proof_gives_theorem_authority](declarations/checked-proof-gives-theorem-authority.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trusted_import_gives_theorem_authority](declarations/trusted-import-gives-theorem-authority.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [open_residue_not_theorem_authority](declarations/open-residue-not-theorem-authority.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finite_witness_not_theorem_authority](declarations/finite-witness-not-theorem-authority.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [statement_kind_entry_default_authority](declarations/statement-kind-entry-default-authority.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [RepoAdmissibleStatement](declarations/repoadmissiblestatement.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [checked_theorem_like_is_repo_admissible](declarations/checked-theorem-like-is-repo-admissible.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trusted_import_theorem_like_is_repo_admissible](declarations/trusted-import-theorem-like-is-repo-admissible.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [open_residue_theorem_like_is_repo_admissible](declarations/open-residue-theorem-like-is-repo-admissible.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=616b253a15a96a61683b42c58672db8d237edd01c7f771b4bd3286c3b24d9215 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant1c76945fc84b9565bf9579e509605b1801176f00f9d26e10e588cfbdaedb4ddc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
