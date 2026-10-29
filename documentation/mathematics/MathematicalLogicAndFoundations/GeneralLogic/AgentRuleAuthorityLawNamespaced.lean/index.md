# Agent Rule Authority Law Namespaced

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f904bb66a5e19cbdec5226624a55115bdd877092`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentRuleFileKind](declarations/agentrulefilekind.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [AgentRuleInsertionMode](declarations/agentruleinsertionmode.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [AgentRuleGeneration](declarations/agentrulegeneration.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [AgentRuleSurface](declarations/agentrulesurface.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [AgentRuleSurface.authorityState](declarations/agentrulesurface-authoritystate.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [agent_rule_authority_spin](declarations/agent-rule-authority-spin.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [agent_rule_authority_spin_sector](declarations/agent-rule-authority-spin-sector.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [agent_rule_authority_not_checked_or_trusted](declarations/agent-rule-authority-not-checked-or-trusted.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [AgentRuleSurface.mayLoad](declarations/agentrulesurface-mayload.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [AgentRuleSurface.isDefaultRule](declarations/agentrulesurface-isdefaultrule.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [AgentRuleSurface.isOnDemandRule](declarations/agentrulesurface-isondemandrule.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [AgentRuleSurface.isAutoIncludedRule](declarations/agentrulesurface-isautoincludedrule.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [AgentRuleSurface.isMigratedSkillRule](declarations/agentrulesurface-ismigratedskillrule.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [AgentRuleSurface.isMigratedAgentsMdRule](declarations/agentrulesurface-ismigratedagentsmdrule.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [RuleAttachedStatement](declarations/ruleattachedstatement.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RuleAttachedStatement.authorityPreserved](declarations/ruleattachedstatement-authoritypreserved.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [rule_attachment_preserves_authority](declarations/rule-attachment-preserves-authority.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [RuleAttachedStatement.mayForward](declarations/ruleattachedstatement-mayforward.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rule_attachment_forwarding_gate](declarations/rule-attachment-forwarding-gate.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rule_attached_checked_theorem_like_may_forward](declarations/rule-attached-checked-theorem-like-may-forward.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rule_attached_trusted_import_theorem_like_may_forward](declarations/rule-attached-trusted-import-theorem-like-may-forward.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [rule_attached_open_residue_theorem_like_not_may_forward](declarations/rule-attached-open-residue-theorem-like-not-may-forward.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [RuleToSkillMigration](declarations/ruletoskillmigration.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rule_to_skill_migration_manual_only](declarations/rule-to-skill-migration-manual-only.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `structure` | [DefaultRuleToAgentsMdMigration](declarations/defaultruletoagentsmdmigration.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [default_rule_migrates_to_agents_md](declarations/default-rule-migrates-to-agents-md.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [rule_and_skill_attachment_same_forwarding_gate](declarations/rule-and-skill-attachment-same-forwarding-gate.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3a8da5aeff9c1c0717d320f99850b6920c7ee4f7cc2a00324e2f633e39b6a34d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
