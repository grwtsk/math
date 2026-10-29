# Verification target: Slash Invariant Forms Slash Action Eqn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf452daf4807a573dd236f107bd06f86b8561f74",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/index.md) · [Full source](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf452daf4807a573dd236f107bd06f86b8561f74`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.CongruenceSubgroups` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.SlashActions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/slashinvariantform.md) | 31 | `declaration-track:699fa20b0e7d33e07dd6b3741adea98b4e2b731772e3cda14f3d047fd1c7c533` |
| 2 | `class` | [SlashInvariantFormClass](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/slashinvariantformclass.md) | 37 | `declaration-track:a381f26f4f0d12fd06626358d275213487cce12e8322cd3306afd2e05a08af8f` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-40-occurrence-2.md) | 40 | `declaration-track:524ef5d5863cddb000d98afd2397e88c249ad0ac741c23b583894ce817601f2a` |
| 4 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-45-occurrence-2.md) | 45 | `declaration-track:c5cf83ef1f66e8b2982fd7b5ed3ce2afe84f24858bf9f61ead487b21f79b9b19` |
| 5 | `theorem` | [SlashInvariantForm.toFun_eq_coe](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/tofun-eq-coe.md) | 52 | `result-track:2fe61d65c1edcb8a5d2f4139868ab095dca35e55a1d4a7e1028127db6e53827d` |
| 6 | `theorem` | [SlashInvariantForm.coe_mk](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-mk.md) | 56 | `result-track:2088b39cef703f4253e95688ef43173a75c435d0c5834007b5fa878ba1039a70` |
| 7 | `theorem` | [SlashInvariantForm.ext](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/ext.md) | 59 | `result-track:7ff865477e9bdc133903f2fe621f27fc5cd9bbcca0ebc907b72ac0cb459258f0` |
| 8 | `def` | [SlashInvariantForm.copy](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/copy.md) | 64 | `declaration-track:e13f53545293f075fbb951e26a6dc66edb45638e9a0f623e92e0a17baebe02f0` |
| 9 | `theorem` | [slash_action_eqn](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/slash-action-eqn.md) | 79 | `result-track:37156c04fd160e3bb65c080b8401cfa16a44b09f4d78642c0ee279bc4a9c8c50` |
| 10 | `theorem` | [slash_action_eqn'](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/slash-action-eqn-source-line-83-occurrence-2.md) | 83 | `result-track:66894397dce92fdaa6d36fd58cb29a34f993b24618a113311d1adbf228724b92` |
| 11 | `theorem` | [slash_action_eqn''](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/slash-action-eqn-source-line-89-occurrence-2.md) | 89 | `result-track:ed3eb2f1f90d739155689ced8a674c708192382d44bac8551d59f7ff2b239f66` |
| 12 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-94-occurrence-2.md) | 94 | `declaration-track:bda44bb7cfa5afc123e1bfcd2f7630dccf7e62ff1f0c5fe64f12c1140bc13388` |
| 13 | `instance` | [instAdd](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/instadd.md) | 97 | `declaration-track:5b6c6cfb4afca5756f6350f75b382ebce41f26d5902b2bbab602b6795fbf3ddb` |
| 14 | `theorem` | [coe_add](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-add.md) | 104 | `result-track:8ad2bc2c43fdd8f0410896f641be823a55af83a69079ccc5f8d9ac6141d4709f` |
| 15 | `theorem` | [add_apply](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/add-apply.md) | 108 | `result-track:1ad01d138c6723db6a068f166237a2553105fb75d5fda47f82c3c7b652fd5c25` |
| 16 | `instance` | [instZero](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/instzero.md) | 111 | `declaration-track:6c8c97161750e94172fa88e08f35e71d8dfd7bd20578c2c6c2d2756d68cc94a2` |
| 17 | `theorem` | [coe_zero](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-zero.md) | 116 | `result-track:da6ebeb8c8bb66b1df3b8dc9c6ba1c91a4bfb386c868b394956c22a81597b6c1` |
| 18 | `instance` | [instSMul](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/instsmul.md) | 123 | `declaration-track:5134ee04bfeeb73282fcf7ab6ddaf3f7b17a3002be10fb75b91aca3aaf6cdc79` |
| 19 | `theorem` | [coe_smul](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-smul.md) | 129 | `result-track:f5828ebdef3c5c4b3b48d41e9ad4e6814321a907d3bd8b45feba047e4fe4c2d5` |
| 20 | `theorem` | [smul_apply](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/smul-apply.md) | 133 | `result-track:926de43949053ad35a3e410b960b1951ea65406dae1dc7b01a9c871dcdbda206` |
| 21 | `instance` | [instNeg](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/instneg.md) | 138 | `declaration-track:c34278dd64e5fdcc59969310307c8803087a97a89aa47bc8fb20e812b587a740` |
| 22 | `theorem` | [coe_neg](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-neg.md) | 144 | `result-track:5de019d4f3dd278c9bd587225925bdbb1228a3e44309f89f3cfe4e6f1bb36b3f` |
| 23 | `theorem` | [neg_apply](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/neg-apply.md) | 148 | `result-track:4b8cd98a3309cd1a6a40ef0eafe3d3aa9f944debb72ef3bc731ef7eba5f93f54` |
| 24 | `instance` | [instSub](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/instsub.md) | 151 | `declaration-track:003700728dd3cea0c4ec33a1f184e20b8d8e2904d6857abe599f4f3905184b35` |
| 25 | `theorem` | [coe_sub](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-sub.md) | 155 | `result-track:7495c0d6b8c4e2d0c123e6c0d14c7d8e4429f9499f5a5e0d14d0a8b0aa79c0c1` |
| 26 | `theorem` | [sub_apply](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/sub-apply.md) | 159 | `result-track:a7610c620dbf67a32fe4aab75a1a2e0238a4cc09e641240e49a1d831c88c19f1` |
| 27 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-162-occurrence-2.md) | 162 | `declaration-track:6d6eb908367c9ad2201951b1dddbfd868b4a84c6112d7c0e36acf498cee753a2` |
| 28 | `def` | [coeHom](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coehom.md) | 166 | `declaration-track:6d84b64361dc2f4a3d107748f195cdb1f728812ba49683e986425ffb1858bb0b` |
| 29 | `theorem` | [coeHom_injective](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coehom-injective.md) | 171 | `result-track:f00612b2a7ce70ac8ad940d5ab44bb92802d54a09243ede2390bb539f6fc5502` |
| 30 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-174-occurrence-2.md) | 174 | `declaration-track:71a07d6e033f3f84a77eb29392b309026fc7182496bac64f2ac2666f15cd2762` |
| 31 | `def` | [const](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/const.md) | 179 | `declaration-track:943764a93b723fcb2bf7b0902eef807c9b5cc435ef41793459c101b7f5c6b833` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance.md) | 183 | `declaration-track:4f979a2212721c707c588c50bd32774891be9001a22ab92c1e5dd0bd0a716d7b` |
| 33 | `theorem` | [one_coe_eq_one](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/one-coe-eq-one.md) | 187 | `result-track:ec4da7d3510d8ee9d8e5d92f76a0d568131315c1ee4c8241132f1884396abaa1` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-190-occurrence-2.md) | 190 | `declaration-track:92f2164b68a609c9ef32c7b9ff7217690880e99d9cc683538523e9cfda31ab47` |
| 35 | `def` | [mul](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/mul.md) | 195 | `declaration-track:4d5f3b862974f6353fde540760b819a59e3a9cfb4e81a92f8c51b77249e00176` |
| 36 | `theorem` | [coe_mul](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-mul.md) | 202 | `result-track:4eb2cf3389ec13e2c40767baee23d5c82c92659fac0ad15ca36f6f54460fb1e9` |
| 37 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-206-occurrence-2.md) | 206 | `declaration-track:bfa1ff938011e46a0aa2c334cacbc5a2345e864efc7a9d8f3ce5b0adee70d20a` |
| 38 | `theorem` | [coe_natCast](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-natcast.md) | 210 | `result-track:6214ea57911ed7b4a8a7c64057fe7e3356e0747620bbdf69dd85d9ddcf561218` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/anonymous-instance-source-line-212-occurrence-2.md) | 212 | `declaration-track:f73743ccafb518d08c59a750b9481fbe7d9e8879a56a94b17022412dd49f411c` |
| 40 | `theorem` | [coe_intCast](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-intcast.md) | 216 | `result-track:9dda8cd47d2bde4f0c113687d9895a2ad37aea9d20e7047899aaaf5be2bb9e50` |
| 41 | `def` | [translateGL](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/translategl.md) | 220 | `declaration-track:916d021563d8074c435968d5f04cd6a58bcbe44b71ea0184c494ed8eba8bdfda` |
| 42 | `lemma` | [coe_translateGL](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-translategl.md) | 231 | `result-track:98c63e3bb2f97b365ca63809ba0de6016590eb8776a2657b1cec708dc82fc4eb` |
| 43 | `def` | [translate](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/translate.md) | 241 | `declaration-track:f313413c640f77755f8d18ebe454b146b7fdaeb0f8ca2add9341567e275e6769` |
| 44 | `lemma` | [coe_translate](../../../../NumberTheory/SlashInvariantFormsSlashActionEqn.lean/declarations/coe-translate.md) | 247 | `result-track:97e50e6e01c2ee4c5af7f467bd9b0cf1a4271243796f2c8750e72072a8c15f1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29815a8be49fd24d4103a9c41f8f69154ef4bbcdbd92fc1681a805012044a609 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant69cbb44fd0723e57e43523205403f50615d3e10a14ee6e51331e74505ec7e539.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
