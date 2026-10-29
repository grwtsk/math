# Agent Rule Authority Law

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d51419bc99ccf287db36a2bc1137d744f0d3e753`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentRuleFileKind](declarations/agentrulefilekind.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AgentRuleInsertionMode](declarations/agentruleinsertionmode.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AgentRuleGeneration](declarations/agentrulegeneration.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AgentRuleSurface](declarations/agentrulesurface.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AgentRuleSurface.authorityState](declarations/agentrulesurface-authoritystate.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [agent_rule_authority_spin](declarations/agent-rule-authority-spin.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [agent_rule_authority_spin_sector](declarations/agent-rule-authority-spin-sector.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [agent_rule_authority_not_checked_or_trusted](declarations/agent-rule-authority-not-checked-or-trusted.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AgentRuleSurface.mayLoad](declarations/agentrulesurface-mayload.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AgentRuleSurface.isDefaultRule](declarations/agentrulesurface-isdefaultrule.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [AgentRuleSurface.isOnDemandRule](declarations/agentrulesurface-isondemandrule.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [AgentRuleSurface.isAutoIncludedRule](declarations/agentrulesurface-isautoincludedrule.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [AgentRuleSurface.isMigratedSkillRule](declarations/agentrulesurface-ismigratedskillrule.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [AgentRuleSurface.isMigratedAgentsMdRule](declarations/agentrulesurface-ismigratedagentsmdrule.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RuleAttachedStatement](declarations/ruleattachedstatement.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RuleAttachedStatement.authorityPreserved](declarations/ruleattachedstatement-authoritypreserved.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rule_attachment_preserves_authority](declarations/rule-attachment-preserves-authority.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [RuleAttachedStatement.mayForward](declarations/ruleattachedstatement-mayforward.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rule_attachment_forwarding_gate](declarations/rule-attachment-forwarding-gate.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rule_attached_checked_theorem_like_may_forward](declarations/rule-attached-checked-theorem-like-may-forward.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rule_attached_trusted_import_theorem_like_may_forward](declarations/rule-attached-trusted-import-theorem-like-may-forward.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rule_attached_open_residue_theorem_like_not_may_forward](declarations/rule-attached-open-residue-theorem-like-not-may-forward.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [RuleToSkillMigration](declarations/ruletoskillmigration.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rule_to_skill_migration_manual_only](declarations/rule-to-skill-migration-manual-only.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [DefaultRuleToAgentsMdMigration](declarations/defaultruletoagentsmdmigration.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [default_rule_migrates_to_agents_md](declarations/default-rule-migrates-to-agents-md.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rule_and_skill_attachment_same_forwarding_gate](declarations/rule-and-skill-attachment-same-forwarding-gate.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=89280b0196aa201265ed157e65f2e6d888264ea4542fa56c46002adfc3457785 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
