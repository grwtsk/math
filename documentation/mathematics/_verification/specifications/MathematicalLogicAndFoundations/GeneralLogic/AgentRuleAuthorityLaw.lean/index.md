# Verification target: Agent Rule Authority Law

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d51419bc99ccf287db36a2bc1137d744f0d3e753",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d51419bc99ccf287db36a2bc1137d744f0d3e753`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentRuleFileKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulefilekind.md) | 21 | `declaration-track:48fe1f3f2008144d5ee5539c28706f46ace5b80499a31c415cd706beb0c87003` |
| 2 | `inductive` | [AgentRuleInsertionMode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentruleinsertionmode.md) | 34 | `declaration-track:f75439d86883c0ca6e26086c30461e57706efe80861dbeb399bf996b1d07ff1c` |
| 3 | `inductive` | [AgentRuleGeneration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulegeneration.md) | 43 | `declaration-track:a7f78cf0caf40f7fe9bb90d27e53936bb4086791299c56d03db6fa039102173d` |
| 4 | `structure` | [AgentRuleSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface.md) | 49 | `declaration-track:72383e5e2076d18988f1445aac7feca9518ef871804cb80d65220f68a239f697` |
| 5 | `def` | [AgentRuleSurface.authorityState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-authoritystate.md) | 59 | `declaration-track:f1d98c498780388acaa88713a7497b048818b068f2a32a7b7af464b9e2ff45a8` |
| 6 | `theorem` | [agent_rule_authority_spin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agent-rule-authority-spin.md) | 64 | `result-track:fc44ee0eeb99dc6da45bd65f9d62c1ef1a8b8af0b05af7d7c1176a45dd5d985f` |
| 7 | `theorem` | [agent_rule_authority_spin_sector](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agent-rule-authority-spin-sector.md) | 70 | `result-track:ba383e3e43c8de964b84f6362bc4f7a0bcbb5b9f154a99d3ed4254eaa7a5f476` |
| 8 | `theorem` | [agent_rule_authority_not_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agent-rule-authority-not-checked-or-trusted.md) | 76 | `result-track:26c972ef758a9691a69e689b30eb0e9350be3a9377a8a875ef76cca7597e43f8` |
| 9 | `def` | [AgentRuleSurface.mayLoad](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-mayload.md) | 83 | `declaration-track:db61b9d8fed8a7c3c04620bea5cc423dc1d7c4c80f8a9ef53e1fedd0f7fc6834` |
| 10 | `def` | [AgentRuleSurface.isDefaultRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-isdefaultrule.md) | 89 | `declaration-track:cf7976005b548338bee7216cda235f1ddecb48babd7e86af50403c4871cc0a80` |
| 11 | `def` | [AgentRuleSurface.isOnDemandRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-isondemandrule.md) | 94 | `declaration-track:737953baf199b45ef4ba53eaf0966f35d2f07f86cc3b71f6fc5191ba92baaf88` |
| 12 | `def` | [AgentRuleSurface.isAutoIncludedRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-isautoincludedrule.md) | 99 | `declaration-track:476a2a157d0263d51ac2e8f3b3fa7b655394b7d8e63a26dc8f49710910ae1d27` |
| 13 | `def` | [AgentRuleSurface.isMigratedSkillRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-ismigratedskillrule.md) | 104 | `declaration-track:172ed15602acf3e3a00c59be23c1ae3afed215f86eeb4c9701983f30fe62e831` |
| 14 | `def` | [AgentRuleSurface.isMigratedAgentsMdRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/agentrulesurface-ismigratedagentsmdrule.md) | 109 | `declaration-track:fb3dd13b3abdeb31071ec7dd69b8f7d9d4f6b6dc973f9c5a95780ac39a51b7a9` |
| 15 | `structure` | [RuleAttachedStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/ruleattachedstatement.md) | 114 | `declaration-track:f0f4a19990150e3b18d413694b01abc8109524da7ac076591784c5783e349839` |
| 16 | `def` | [RuleAttachedStatement.authorityPreserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/ruleattachedstatement-authoritypreserved.md) | 120 | `declaration-track:d922bbf9361d6c0e270dd956825f69deddffd40644c12277b3b5a0c08943c0cb` |
| 17 | `theorem` | [rule_attachment_preserves_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-attachment-preserves-authority.md) | 125 | `result-track:ecd75f44c836e8133f77cf74f717f1d76ce68a5b0f0bc971fee3a85446c81bfc` |
| 18 | `def` | [RuleAttachedStatement.mayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/ruleattachedstatement-mayforward.md) | 131 | `declaration-track:b451dfa35b9147aa730312262cba1add2738d6342ae7de66b9b1e49bf3bbcbd6` |
| 19 | `theorem` | [rule_attachment_forwarding_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-attachment-forwarding-gate.md) | 136 | `result-track:5bca9db3ea23141b7a740a6abccc132d2296c8afc390a129d63c18de82c7cebb` |
| 20 | `theorem` | [rule_attached_checked_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-attached-checked-theorem-like-may-forward.md) | 142 | `result-track:cf0560515d4cba455cabf065345ebcb6a75d07849d73b27ac86a73b89c6918dd` |
| 21 | `theorem` | [rule_attached_trusted_import_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-attached-trusted-import-theorem-like-may-forward.md) | 158 | `result-track:52ee8090e0863cdd8bb470dda9a29cdfa563eadf1cb0876f5735c5d63067e6cf` |
| 22 | `theorem` | [rule_attached_open_residue_theorem_like_not_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-attached-open-residue-theorem-like-not-may-forward.md) | 174 | `result-track:722cea66ab20ec9901dfbda77f338035522281d4e3cafc16b9ef3af9bf89b498` |
| 23 | `structure` | [RuleToSkillMigration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/ruletoskillmigration.md) | 197 | `declaration-track:83f9ccbff1633fb92569b977a1bf30565ce92f3203a97ce62497699fe55c453d` |
| 24 | `theorem` | [rule_to_skill_migration_manual_only](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-to-skill-migration-manual-only.md) | 204 | `result-track:02ee32700ba2423d7208a49ae0e68dab192e8bd7463e81d3e259db8983f0b348` |
| 25 | `structure` | [DefaultRuleToAgentsMdMigration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/defaultruletoagentsmdmigration.md) | 210 | `declaration-track:a11f6894424fcd93397804795b4f74fc960bfd27333ea19bbff303b2d92afc69` |
| 26 | `theorem` | [default_rule_migrates_to_agents_md](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/default-rule-migrates-to-agents-md.md) | 217 | `result-track:f16ab86b1a9f1d83e9819d588239d33f1382d4e6da0e2be8f385c7be0106a042` |
| 27 | `theorem` | [rule_and_skill_attachment_same_forwarding_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLaw.lean/declarations/rule-and-skill-attachment-same-forwarding-gate.md) | 223 | `result-track:28adddd7bd7a2805d60ffc7f1e935c291c4771a58001aa045b918e8f28da2d1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f13d1349e6d7935c6b20b8b4af9cbd30e61f3b412d65792352ff5fcad767545a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Variant9dea050670db3aa4531ec53b6f8bb672953199958dcbfc21554467e417281514.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
