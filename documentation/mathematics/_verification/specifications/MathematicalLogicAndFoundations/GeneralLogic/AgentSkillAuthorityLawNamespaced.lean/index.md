# Verification target: Agent Skill Authority Law Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3df375d7b61db5e9f4c49699b88ecdd05b4f30cc",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3df375d7b61db5e9f4c49699b88ecdd05b4f30cc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.Bit0.M4b65726e656c2f417574686f72697479476174652e6c65616e` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.Bit0.Bit0.M4b65726e656c2f417574686f726974795370696e436172726965722e6c65616e` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AgentSkillScope](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillscope.md) | 30 | `declaration-track:edcd64ba5f92f10fd435d658d6fbbd8393a8c0772ccb2008cdea19bbd61d01df` |
| 2 | `inductive` | [AgentSkillInvocationMode](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillinvocationmode.md) | 36 | `declaration-track:8702913f6423ae01b0b6556a1c02cabd7a5d429e76881ad8d9d58945931eefb9` |
| 3 | `inductive` | [AgentSkillTrustState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskilltruststate.md) | 43 | `declaration-track:b9f386052bde93b047bc91814055a9e81c99adc15b0957cbfcf3a7651fd1d4b4` |
| 4 | `inductive` | [AgentSkillPermissionState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillpermissionstate.md) | 49 | `declaration-track:151f63fa10b6ebdc9b0160a7999780884dddb395f416a16a5c6e4071a5d7dd02` |
| 5 | `structure` | [AgentSkillSurface](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface.md) | 55 | `declaration-track:22fd08240bf6821cd06e9b4e1862f81c8ec7ae25e6150222957db98cd413db1b` |
| 6 | `def` | [AgentSkillSurface.trustAdmissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface-trustadmissible.md) | 65 | `declaration-track:aa2c2d9b6dc614e8ee16e08fbe8432aefa873e06fa20644696f25eee97e860ad` |
| 7 | `def` | [AgentSkillSurface.permissionAdmissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface-permissionadmissible.md) | 69 | `declaration-track:f6ea126d773d9a5562e4c67d5f881a987b5692aa02aee4db4002b8dc4bd7a492` |
| 8 | `def` | [AgentSkillSurface.autonomousAdmissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface-autonomousadmissible.md) | 73 | `declaration-track:3990d69b274d052c94125267f09a42f0e82ff75b8064480e6b597b8c4512f1a5` |
| 9 | `def` | [AgentSkillSurface.mayLoad](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface-mayload.md) | 77 | `declaration-track:880e3e2dc45f76ee495147ff1c6ab397fc50bfebee5f82d8b8d0fb8f46a4a0fa` |
| 10 | `def` | [AgentSkillSurface.authorityState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agentskillsurface-authoritystate.md) | 87 | `declaration-track:bd3cf23d15a3ef095cf2167d1cbd9fd7bb04c858012c2f045067d06d69201d9d` |
| 11 | `theorem` | [agent_skill_authority_spin](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agent-skill-authority-spin.md) | 92 | `result-track:eee00d6c786c480695178fbbff7dc4e25c09ed204780aa41b6210f1f20ec810f` |
| 12 | `theorem` | [agent_skill_authority_spin_sector](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agent-skill-authority-spin-sector.md) | 98 | `result-track:be157594cdbfc611eadb49c5c5b6b54faae60a07f6b7456684195cb0a76050d7` |
| 13 | `theorem` | [agent_skill_authority_not_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/agent-skill-authority-not-checked-or-trusted.md) | 104 | `result-track:fb19b8d73e9d198f0b78a563a7855c62aee2d9c1e4fc19220b415315ad82648b` |
| 14 | `theorem` | [authority_spin_sector_proof_positive_iff_checked_or_trusted](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/authority-spin-sector-proof-positive-iff-checked-or-trusted.md) | 111 | `result-track:c65c044de31ecfbd3d5948529df7399a565dfcfa2a619d79db5e51bd3a67e210` |
| 15 | `def` | [AuthorityGate.claimKindOfStatementKind](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/authoritygate-claimkindofstatementkind.md) | 119 | `declaration-track:b1e55880249ff508e654f419c1719e1a77d685b51f3ad814c0b94227755c4003` |
| 16 | `def` | [AuthorityGate.theoremAuthorityOfAuthorityState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/authoritygate-theoremauthorityofauthoritystate.md) | 129 | `declaration-track:436ba08386e6488a629ec7d7d0f87badfc0cb5fda458e78b82eae193180ee52c` |
| 17 | `theorem` | [AuthorityGate.claim_kind_of_statement_kind_theorem_like](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/authoritygate-claim-kind-of-statement-kind-theorem-like.md) | 140 | `result-track:b86cd9949f07e47b1ef9fff2c56b7878ceabfa34b9ca7955fc68e49d15a89013` |
| 18 | `def` | [SkillAuthorityMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skillauthoritymayforward.md) | 152 | `declaration-track:e0bcf4a7c72205d159ca78091e05f9a373a664a752c7635653948d52b94b0984` |
| 19 | `def` | [AuthorityRingMayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/authorityringmayforward.md) | 157 | `declaration-track:8b76d9883faf3172f1ad962a9c54fbec2369e9d3d162a8ee59fb0fd2fc91f48d` |
| 20 | `theorem` | [skill_forwarding_gate_uses_authority_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-forwarding-gate-uses-authority-gate.md) | 161 | `result-track:880b71b59694f63ef33c5d487398bbb1c2a336b60a39622339d7efcbf3c2929f` |
| 21 | `structure` | [SkillAttachedStatement](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skillattachedstatement.md) | 189 | `declaration-track:42424f864acf56566af83c572f32ff017323cae564cb8eb276162cd700c02df8` |
| 22 | `def` | [SkillAttachedStatement.authorityPreserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skillattachedstatement-authoritypreserved.md) | 196 | `declaration-track:ee367bd35773825c387be61d33703a59f04856edc04baf42eaea5f37a071c4d2` |
| 23 | `theorem` | [skill_attachment_preserves_authority](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-attachment-preserves-authority.md) | 201 | `result-track:ce8d66278cc37a0266af6a28f0cf71c5a81f252085dd3e461b385543cdd0b364` |
| 24 | `def` | [SkillAttachedStatement.mayForward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skillattachedstatement-mayforward.md) | 207 | `declaration-track:f3e0b95821bb9cae9f7a248f540a4d639683d7d4e7e0d4dd6383f3a15c5aba9f` |
| 25 | `theorem` | [skill_attachment_forwarding_gate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-attachment-forwarding-gate.md) | 212 | `result-track:08085ee69f0c7b6a5117010a50448b4657f0cef4460bcbd6a90a02345856f5e7` |
| 26 | `theorem` | [skill_attached_checked_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-attached-checked-theorem-like-may-forward.md) | 218 | `result-track:398ae0cf79eb70dad9cbb34c9fa60302f96a11ce2de14e14169059d4b776a293` |
| 27 | `theorem` | [skill_attached_trusted_import_theorem_like_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-attached-trusted-import-theorem-like-may-forward.md) | 234 | `result-track:b24fa3660135a3a63ea499934e36620e3e7659f5ca69e0ac08c41f1aa1c3bb36` |
| 28 | `theorem` | [skill_attached_open_residue_theorem_like_not_may_forward](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/skill-attached-open-residue-theorem-like-not-may-forward.md) | 250 | `result-track:10b16cd38d602c401218465bbac72dad9d5d20b4327a67a959671881dfdcf523` |
| 29 | `theorem` | [autonomous_skill_load_requires_model_invocation_enabled](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/autonomous-skill-load-requires-model-invocation-enabled.md) | 273 | `result-track:4513f6f3ff9d144e90209850d4499096bbf294daac9d64a0b95f33b43b32497b` |
| 30 | `theorem` | [slash_skill_load_does_not_require_autonomous_enabled](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/slash-skill-load-does-not-require-autonomous-enabled.md) | 280 | `result-track:0b4ed2a607c92a0773cdee36cc403bd8c4609bae932016ff40aefae25c9efb4f` |
| 31 | `theorem` | [project_local_skill_load_requires_trust](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AgentSkillAuthorityLawNamespaced.lean/declarations/project-local-skill-load-requires-trust.md) | 288 | `result-track:40e0681cdea774b96d07522ee194c3098b35a9677978ea975c4121b21ea451c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9662fe223be4e82865dd2eecbafab3e32fb6a810389847999467c7122fdc8c7c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M4b65726e656c2f4167656e74536b696c6c417574686f726974794c61772e6c65616e/Variante846ef30aca234da72ccfabed57d9f860084497163809164247b4ee182dd96db.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
