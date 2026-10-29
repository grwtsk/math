# Agent Skill Authority Law Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3df375d7b61db5e9f4c49699b88ecdd05b4f30cc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentSkillScope](declarations/agentskillscope.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AgentSkillInvocationMode](declarations/agentskillinvocationmode.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AgentSkillTrustState](declarations/agentskilltruststate.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [AgentSkillPermissionState](declarations/agentskillpermissionstate.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AgentSkillSurface](declarations/agentskillsurface.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AgentSkillSurface.trustAdmissible](declarations/agentskillsurface-trustadmissible.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [AgentSkillSurface.permissionAdmissible](declarations/agentskillsurface-permissionadmissible.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AgentSkillSurface.autonomousAdmissible](declarations/agentskillsurface-autonomousadmissible.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AgentSkillSurface.mayLoad](declarations/agentskillsurface-mayload.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AgentSkillSurface.authorityState](declarations/agentskillsurface-authoritystate.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [agent_skill_authority_spin](declarations/agent-skill-authority-spin.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [agent_skill_authority_spin_sector](declarations/agent-skill-authority-spin-sector.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [agent_skill_authority_not_checked_or_trusted](declarations/agent-skill-authority-not-checked-or-trusted.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [authority_spin_sector_proof_positive_iff_checked_or_trusted](declarations/authority-spin-sector-proof-positive-iff-checked-or-trusted.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AuthorityGate.claimKindOfStatementKind](declarations/authoritygate-claimkindofstatementkind.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [AuthorityGate.theoremAuthorityOfAuthorityState](declarations/authoritygate-theoremauthorityofauthoritystate.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AuthorityGate.claim_kind_of_statement_kind_theorem_like](declarations/authoritygate-claim-kind-of-statement-kind-theorem-like.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SkillAuthorityMayForward](declarations/skillauthoritymayforward.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [AuthorityRingMayForward](declarations/authorityringmayforward.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [skill_forwarding_gate_uses_authority_gate](declarations/skill-forwarding-gate-uses-authority-gate.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [SkillAttachedStatement](declarations/skillattachedstatement.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [SkillAttachedStatement.authorityPreserved](declarations/skillattachedstatement-authoritypreserved.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [skill_attachment_preserves_authority](declarations/skill-attachment-preserves-authority.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [SkillAttachedStatement.mayForward](declarations/skillattachedstatement-mayforward.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [skill_attachment_forwarding_gate](declarations/skill-attachment-forwarding-gate.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [skill_attached_checked_theorem_like_may_forward](declarations/skill-attached-checked-theorem-like-may-forward.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [skill_attached_trusted_import_theorem_like_may_forward](declarations/skill-attached-trusted-import-theorem-like-may-forward.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [skill_attached_open_residue_theorem_like_not_may_forward](declarations/skill-attached-open-residue-theorem-like-not-may-forward.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [autonomous_skill_load_requires_model_invocation_enabled](declarations/autonomous-skill-load-requires-model-invocation-enabled.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [slash_skill_load_does_not_require_autonomous_enabled](declarations/slash-skill-load-does-not-require-autonomous-enabled.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [project_local_skill_load_requires_trust](declarations/project-local-skill-load-requires-trust.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9c14fa17b37a915ae3eefa8f066a725e7e61b543054630eb3a6d0147ddbcdc3f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
