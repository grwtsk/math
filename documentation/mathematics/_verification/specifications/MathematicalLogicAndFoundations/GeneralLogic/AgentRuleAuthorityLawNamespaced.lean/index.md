# Verification target: Agent Rule Authority Law Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f904bb66a5e19cbdec5226624a55115bdd877092",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f904bb66a5e19cbdec5226624a55115bdd877092`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit1.Bit0.Bit1.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentRuleFileKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulefilekind.md) | 29 | `declaration-track:0477de37b95a54f7717931821aa78d4115d7c64d5b7dc89f79805161fb91eddd` |
| 2 | `inductive` | [AgentRuleInsertionMode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentruleinsertionmode.md) | 42 | `declaration-track:3467bc0bea8e3e832a2a5f0d49d2b05d0c6fc66f5fb0b70a36f1ac9aed79b6c4` |
| 3 | `inductive` | [AgentRuleGeneration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulegeneration.md) | 51 | `declaration-track:66af644bbe9ad68e333902bccba69428da698e770b697d6c8f0e902b6053d4fc` |
| 4 | `structure` | [AgentRuleSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface.md) | 57 | `declaration-track:25f80baea29ac3cd530cdc7279d5ffa5643bcc01501d3b2e4817d323e9fe95a7` |
| 5 | `def` | [AgentRuleSurface.authorityState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-authoritystate.md) | 67 | `declaration-track:aef9ceeaf2aaa14279f7b4430574ef085d3e42374e1848e075cef6e4307bb672` |
| 6 | `theorem` | [agent_rule_authority_spin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agent-rule-authority-spin.md) | 72 | `result-track:cfeca5d9c1a918b46cbfd65a201d7edbcd3ccc9f2e1a96394445c7c23a115edd` |
| 7 | `theorem` | [agent_rule_authority_spin_sector](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agent-rule-authority-spin-sector.md) | 78 | `result-track:780fd0074ed72a3792c2bde059081f37ba66ab9b4793a2faa1f1eb585b964fbc` |
| 8 | `theorem` | [agent_rule_authority_not_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agent-rule-authority-not-checked-or-trusted.md) | 84 | `result-track:ff1963503b4d9921a8b5cb6e26ec8d4901229afc912e63c129e52710f69e2c41` |
| 9 | `def` | [AgentRuleSurface.mayLoad](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-mayload.md) | 91 | `declaration-track:129c5444876cb72bee397a88e3436631918053928398ae08a9f350ca8dce36d2` |
| 10 | `def` | [AgentRuleSurface.isDefaultRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-isdefaultrule.md) | 97 | `declaration-track:0bafb69894a248d3a5eb6d1d8b4045aa9a1a84a6ff387f677010cb9022fe5b63` |
| 11 | `def` | [AgentRuleSurface.isOnDemandRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-isondemandrule.md) | 102 | `declaration-track:94b2036897fb4e60795ff5c1c4b4f2ca0f65288610d4fd6bc01a05a97e984e22` |
| 12 | `def` | [AgentRuleSurface.isAutoIncludedRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-isautoincludedrule.md) | 107 | `declaration-track:ca41341aa7883ee26f66064eb37c17db89a51f1ac8f8fda03f6aebcf279aaeef` |
| 13 | `def` | [AgentRuleSurface.isMigratedSkillRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-ismigratedskillrule.md) | 112 | `declaration-track:33b81c7c096647151dcd664f1b6a3b2892d80cd520ba15a3368edb48d5d3b7c9` |
| 14 | `def` | [AgentRuleSurface.isMigratedAgentsMdRule](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/agentrulesurface-ismigratedagentsmdrule.md) | 117 | `declaration-track:29ce49044bb7ce52c05e52b5ec3b5e08985c7d5dfb5f31f905f34086c3fcf891` |
| 15 | `structure` | [RuleAttachedStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/ruleattachedstatement.md) | 122 | `declaration-track:a075e5728e22de4bb6dd0ba3738ea4cb04cb3e7b73c0952685d6cf92b4eeb5bc` |
| 16 | `def` | [RuleAttachedStatement.authorityPreserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/ruleattachedstatement-authoritypreserved.md) | 128 | `declaration-track:7546ccc0e4ccca8568d84e65beeb8dfeec1549c53a42596cad1385a52d935af6` |
| 17 | `theorem` | [rule_attachment_preserves_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-attachment-preserves-authority.md) | 133 | `result-track:1c9bb2f3a68a6ccd54dfc2280681c5a850bc0300dfba276266552841ab10660e` |
| 18 | `def` | [RuleAttachedStatement.mayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/ruleattachedstatement-mayforward.md) | 139 | `declaration-track:8192ddf59ca9a207ba09d6ed41338f73ded9e00fb15d61b4193f84c2bfdb949c` |
| 19 | `theorem` | [rule_attachment_forwarding_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-attachment-forwarding-gate.md) | 144 | `result-track:796983ea307d770056aa05dd052f51d88fadca22663e18095f6cc4ab992215f3` |
| 20 | `theorem` | [rule_attached_checked_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-attached-checked-theorem-like-may-forward.md) | 150 | `result-track:fccd724fb537d874f8a98bc5d2452912f7b39a46fc32ec57e270824d48874ef1` |
| 21 | `theorem` | [rule_attached_trusted_import_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-attached-trusted-import-theorem-like-may-forward.md) | 166 | `result-track:504764ddc159de6972113aea02205af9d88d24505d6c0b2bafb45541962ba315` |
| 22 | `theorem` | [rule_attached_open_residue_theorem_like_not_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-attached-open-residue-theorem-like-not-may-forward.md) | 182 | `result-track:bc38a31086db5f6792e002b59679b6601542f9d2a84d47a7e71e8fe699fa091c` |
| 23 | `structure` | [RuleToSkillMigration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/ruletoskillmigration.md) | 205 | `declaration-track:52ceee094b1d6794958a1b82bdca35473b31666567f10886e1d227be839409db` |
| 24 | `theorem` | [rule_to_skill_migration_manual_only](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-to-skill-migration-manual-only.md) | 212 | `result-track:ee731b397786ce98391d97a968ab25535e8ce0855f2bf7f1cb99d7ded6daf2ed` |
| 25 | `structure` | [DefaultRuleToAgentsMdMigration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/defaultruletoagentsmdmigration.md) | 218 | `declaration-track:805c8a4af94e4160e2c2c4595cbcc3632eb4e8698ffe091ebaa9724a592cb3a5` |
| 26 | `theorem` | [default_rule_migrates_to_agents_md](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/default-rule-migrates-to-agents-md.md) | 225 | `result-track:0a3872250f9b80b6360ff2b6e9a75acac4971bc1135306c9edc164776f491533` |
| 27 | `theorem` | [rule_and_skill_attachment_same_forwarding_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentRuleAuthorityLawNamespaced.lean/declarations/rule-and-skill-attachment-same-forwarding-gate.md) | 231 | `result-track:a59df900a6467884c54beeeda5444384a3da28f8860e2efceba44988cdc6a4f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1588c355e0f5b4dc2b1ad7c8b6d51e33328ff58d3d3e9501f4455274c020778 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e7452756c65417574686f726974794c61772e6c65616e/Varianta1c5a6e01692fcbaee78ca47fa13f9deaac52d255abd53e4f468d1c0c306d2f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
