# Statement Taxonomy

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e727814ef8ebf55cc3473380d7b1f557d2e2d1ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/StatementTaxonomy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [StatementKind](declarations/statementkind.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AuthorityState](declarations/authoritystate.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [StatementKind.isTheoremLike](declarations/statementkind-istheoremlike.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [StatementKind.isBourbakiStructural](declarations/statementkind-isbourbakistructural.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [StatementKind.isHypothesisLike](declarations/statementkind-ishypothesislike.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AuthorityState.isTheoremAuthority](declarations/authoritystate-istheoremauthority.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [AuthorityState.isAssumptionLike](declarations/authoritystate-isassumptionlike.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AuthorityState.isResidueLike](declarations/authoritystate-isresiduelike.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [StatementKind.defaultAuthority](declarations/statementkind-defaultauthority.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [StatementTaxonomyEntry](declarations/statementtaxonomyentry.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [StatementKind.entry](declarations/statementkind-entry.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [FormalStatementSurface](declarations/formalstatementsurface.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [FormalStatementSurface.hasTheoremAuthority](declarations/formalstatementsurface-hastheoremauthority.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [FormalStatementSurface.isFiniteWitnessOnly](declarations/formalstatementsurface-isfinitewitnessonly.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [FormalStatementSurface.isResidueBearing](declarations/formalstatementsurface-isresiduebearing.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [theorem_like_name_does_not_imply_authority](declarations/theorem-like-name-does-not-imply-authority.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [checked_proof_gives_theorem_authority](declarations/checked-proof-gives-theorem-authority.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [trusted_import_gives_theorem_authority](declarations/trusted-import-gives-theorem-authority.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [open_residue_not_theorem_authority](declarations/open-residue-not-theorem-authority.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [finite_witness_not_theorem_authority](declarations/finite-witness-not-theorem-authority.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [statement_kind_entry_default_authority](declarations/statement-kind-entry-default-authority.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [RepoAdmissibleStatement](declarations/repoadmissiblestatement.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [checked_theorem_like_is_repo_admissible](declarations/checked-theorem-like-is-repo-admissible.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [trusted_import_theorem_like_is_repo_admissible](declarations/trusted-import-theorem-like-is-repo-admissible.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [open_residue_theorem_like_is_repo_admissible](declarations/open-residue-theorem-like-is-repo-admissible.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f7f08d263577762fca29128bf2af9b6078a1b5e9a1ce0a13ac549807a3d66df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e/Variant9216571bd9259a82faf9f148a78825a3d1981417844bf00a096b5c035fd4ad17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
