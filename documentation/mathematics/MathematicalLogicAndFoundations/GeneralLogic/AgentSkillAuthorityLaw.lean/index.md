# Agent Skill Authority Law

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42ead058af3927bdef242c5659878e40c4f7ccc0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLaw.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentSkillScope](declarations/agentskillscope.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AgentSkillInvocationMode](declarations/agentskillinvocationmode.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AgentSkillTrustState](declarations/agentskilltruststate.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `inductive` | [AgentSkillPermissionState](declarations/agentskillpermissionstate.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [AgentSkillSurface](declarations/agentskillsurface.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [AgentSkillSurface.trustAdmissible](declarations/agentskillsurface-trustadmissible.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [AgentSkillSurface.permissionAdmissible](declarations/agentskillsurface-permissionadmissible.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [AgentSkillSurface.autonomousAdmissible](declarations/agentskillsurface-autonomousadmissible.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AgentSkillSurface.mayLoad](declarations/agentskillsurface-mayload.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AgentSkillSurface.authorityState](declarations/agentskillsurface-authoritystate.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [agent_skill_authority_spin](declarations/agent-skill-authority-spin.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [agent_skill_authority_spin_sector](declarations/agent-skill-authority-spin-sector.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [agent_skill_authority_not_checked_or_trusted](declarations/agent-skill-authority-not-checked-or-trusted.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [authority_spin_sector_proof_positive_iff_checked_or_trusted](declarations/authority-spin-sector-proof-positive-iff-checked-or-trusted.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [AuthorityGate.claimKindOfStatementKind](declarations/authoritygate-claimkindofstatementkind.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [AuthorityGate.theoremAuthorityOfAuthorityState](declarations/authoritygate-theoremauthorityofauthoritystate.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [AuthorityGate.claim_kind_of_statement_kind_theorem_like](declarations/authoritygate-claim-kind-of-statement-kind-theorem-like.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [SkillAuthorityMayForward](declarations/skillauthoritymayforward.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [AuthorityRingMayForward](declarations/authorityringmayforward.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [skill_forwarding_gate_uses_authority_gate](declarations/skill-forwarding-gate-uses-authority-gate.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [SkillAttachedStatement](declarations/skillattachedstatement.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [SkillAttachedStatement.authorityPreserved](declarations/skillattachedstatement-authoritypreserved.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [skill_attachment_preserves_authority](declarations/skill-attachment-preserves-authority.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [SkillAttachedStatement.mayForward](declarations/skillattachedstatement-mayforward.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [skill_attachment_forwarding_gate](declarations/skill-attachment-forwarding-gate.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [skill_attached_checked_theorem_like_may_forward](declarations/skill-attached-checked-theorem-like-may-forward.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [skill_attached_trusted_import_theorem_like_may_forward](declarations/skill-attached-trusted-import-theorem-like-may-forward.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [skill_attached_open_residue_theorem_like_not_may_forward](declarations/skill-attached-open-residue-theorem-like-not-may-forward.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [autonomous_skill_load_requires_model_invocation_enabled](declarations/autonomous-skill-load-requires-model-invocation-enabled.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [slash_skill_load_does_not_require_autonomous_enabled](declarations/slash-skill-load-does-not-require-autonomous-enabled.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [project_local_skill_load_requires_trust](declarations/project-local-skill-load-requires-trust.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b399cdef4baba29e29dbae306b86c991d3d1a6d25c7d7828e3afe00dc095838 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variant48e96b5453be9511c12bcda4bfc465cb36552e290656c336127cf945b7824273.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
