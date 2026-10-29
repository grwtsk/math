# Verification target: Slash Invariant Forms Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a1f1f8254bbc697028f3b348b53dcc23faa8be6",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SlashInvariantFormsPublic.lean/index.md) · [Full source](../../../../NumberTheory/SlashInvariantFormsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a1f1f8254bbc697028f3b348b53dcc23faa8be6`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slashinvariantform.md) | 34 | `declaration-track:1628592cd2d798147eeec7404f724699d039c93bdc4c16c990fe3ce43771e9f8` |
| 2 | `class` | [SlashInvariantFormClass](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slashinvariantformclass.md) | 43 | `declaration-track:72e9267573dabe0739f495850f54bc7f98a6d0b2dfc7492bf23fd5ab0f38096e` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance.md) | 47 | `declaration-track:1fa7297fb96ecd9b3d9ac4bca900a8b00db5672eed55f58e1e4fe94cc5f987ac` |
| 4 | `def` | [SlashInvariantForm.Simps.coe](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe.md) | 53 | `declaration-track:57e8ed02723e7ec1019fe5b6153db72d7c7ef96dfcdbaeebf50c642733ce62a7` |
| 5 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-57-occurrence-2.md) | 57 | `declaration-track:833ceab398a52b3d2830ac7691a7af8ec76b42593026f3f654baf895639fc3c4` |
| 6 | `theorem` | [SlashInvariantForm.toFun_eq_coe](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/tofun-eq-coe.md) | 64 | `result-track:cc270234dc4c0805b0d321d057783f3e12d293fde16a0a76e5482b85fbab5946` |
| 7 | `theorem` | [SlashInvariantForm.coe_mk](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe-mk.md) | 68 | `result-track:5a2832b6b19162cb9ed6a88566edd68b3c11c27299d6a37c614abd92ea95276d` |
| 8 | `theorem` | [SlashInvariantForm.ext](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/ext.md) | 71 | `result-track:e408d8a849acbc80c66ffce217f0b59b3ca13ebcdb91b9aae4af75c91d897fde` |
| 9 | `def` | [SlashInvariantForm.copy](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/copy.md) | 76 | `declaration-track:05100c1fd4695dfc65afed136190c4f2f614fdbd3c6d2e926a88f9ca19a4e93a` |
| 10 | `theorem` | [slash_action_eqn](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slash-action-eqn.md) | 87 | `result-track:06735912ad5282ce6e28203616b6c97f979a9cc4f5ed04857c1f5845c87876c6` |
| 11 | `theorem` | [slash_action_eqn'](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slash-action-eqn-source-line-91-occurrence-2.md) | 91 | `result-track:2d49e6e5110c008e0174b8901a02e789d4b487842d1ca3338351264590f7fb9b` |
| 12 | `theorem` | [slash_action_eqn''](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slash-action-eqn-source-line-100-occurrence-2.md) | 100 | `result-track:f0328d83d84f1226e6a56f4a74ef56e7878647c9fc2cfd1daa12508a02d3429e` |
| 13 | `theorem` | [slash_action_eqn_SL''](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/slash-action-eqn-sl.md) | 106 | `result-track:148b383085443b913a5ecaa65f2c37c282ce2fd602aa0446ec2ca21a02162d8d` |
| 14 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-112-occurrence-2.md) | 112 | `declaration-track:daa52b5c5ffae1f5c04648eb8b6d3bb6af16af01f1d6feb3576e706681c628d3` |
| 15 | `instance` | [instAdd](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instadd.md) | 115 | `declaration-track:74a53ef651a426725f504bc8552ed1769dbed6e49d00e6b4b942066520ec28c1` |
| 16 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-121-occurrence-2.md) | 121 | `declaration-track:255cdffd6d91324cf0f7667ca82a98c9e181d670d50a40c6d521f95afc72d02f` |
| 17 | `instance` | [instZero](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instzero.md) | 128 | `declaration-track:846be486af2e285e0d33d855450a6e11210d8b5bf58e3c357bd1849b098bb480` |
| 18 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-132-occurrence-2.md) | 132 | `declaration-track:3f688c74584effecab02bf261e074614a5945b0d6b46035350a868f7c6c096c6` |
| 19 | `instance` | [instSMul](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instsmul.md) | 142 | `declaration-track:5a38a978edc28bc1d57e2ed8831f8a427f4bb8fe4b2a2d6d2bfb108ed9839971` |
| 20 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-149-occurrence-2.md) | 149 | `declaration-track:50682a1b78505f89ff9413979f00ed335b1f4002699249093e9fd43a152eb9fd` |
| 21 | `instance` | [instSMulℝ](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instsmul-source-line-163-occurrence-2.md) | 163 | `declaration-track:c09e50bd8e3ccd68fab03fdf93502f14ff071524c6bf342fec506899ae23fedc` |
| 22 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-170-occurrence-2.md) | 170 | `declaration-track:3fba150763c14504c35becd6f1bce3eb2c302c310080159b14b0c1e8bb44dea2` |
| 23 | `instance` | [instNeg](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instneg.md) | 179 | `declaration-track:16edf71297394471bacf1357a5e996bc729cb58071a7988a7f662a5f521ebe4c` |
| 24 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-184-occurrence-2.md) | 184 | `declaration-track:85edd8efa0df4f44ff4a45042b481e80141947db9f267b2943f297fcf9129d27` |
| 25 | `instance` | [instSub](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instsub.md) | 191 | `declaration-track:4d01e08b9ce97c93873fb645798c6dfa440f4da35aedbfd678533841f973672d` |
| 26 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-194-occurrence-2.md) | 194 | `declaration-track:fbc086e58f186f25a6d02010eee62f2ba26215411fd6679f74ae1ce0064c5ecf` |
| 27 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-201-occurrence-2.md) | 201 | `declaration-track:37d861625715f66022d390f250163f3239a6067d5573f21205b838632db55c0d` |
| 28 | `instance` | [instModuleComplex](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instmodulecomplex.md) | 207 | `declaration-track:dde9e1a5de81bdc1c96f83e2a47f45b69f085f0ea00aca5bd552ef7be4843511` |
| 29 | `instance` | [instModuleReal](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/instmodulereal.md) | 210 | `declaration-track:59295f4835d37b157a357a7ac9f44afb765d7d39415c202ca0fa761352cb41ea` |
| 30 | `def` | [const](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/const-source-line-215-occurrence-2.md) | 215 | `declaration-track:c8a99319e051c77d1e75f4b16d1eae6a0ab571a9ba92d916e30451f2213d6ece` |
| 31 | `def` | [constℝ](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/const.md) | 221 | `declaration-track:1b6fca860a6e3281f7ec2b40d2bedc8aa3ba5c0b3c422f10de345b5a273d3d47` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-226-occurrence-2.md) | 226 | `declaration-track:b35670cacfa9e3be69167c5203b7676c77673a57e99802283ba272388931a980` |
| 33 | `theorem` | [one_coe_eq_one](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/one-coe-eq-one.md) | 230 | `result-track:ffc6a2b9ad0a7bda3e85bab784416699257a0c986408c5473b8b4b768dac1b7d` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-233-occurrence-2.md) | 233 | `declaration-track:95bb132bf3092501f286e261685ec756cafeebd00eadb59c5cd9e64f70ca2e0e` |
| 35 | `def` | [mul](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/mul.md) | 238 | `declaration-track:839d235dd67b990c28a02134899e2bb9aeb530fdd4b20b96a297d831a8f02cca` |
| 36 | `theorem` | [coe_mul](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe-mul.md) | 245 | `result-track:cad5382866c17e1cf802e41b02df5fbaa4ba19998907f1cd85fb1aa7d564b704` |
| 37 | `def` | [prod](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/prod.md) | 252 | `declaration-track:a48d30f5ae48bacb04d81e71d437a8121aae0eabe522e2f746375c355fbe9670` |
| 38 | `def` | [prodEqualWeights](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/prodequalweights.md) | 263 | `declaration-track:62bc3fc51d157af9e0f97c6d9cffb9ca135a19814593bb7a6dcacbbdce4cc3ef` |
| 39 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-268-occurrence-2.md) | 268 | `declaration-track:b1ec3b24fa5282a36226a4573ca7f2ba460f52194b1b0e03606b4339d1720d2f` |
| 40 | `theorem` | [coe_natCast](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe-natcast.md) | 272 | `result-track:6181b5bde8ec47ee33fbb5f010f3edf68dd8aa85624012255aa91910391fc46d` |
| 41 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/anonymous-instance-source-line-274-occurrence-2.md) | 274 | `declaration-track:27f2c23d91211683fff0917e52fcd04f4061cdbc73451127a8ec419631a1a378` |
| 42 | `theorem` | [coe_intCast](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe-intcast.md) | 278 | `result-track:840bcd3771b85197fe6b11a84f00b0b64fced04ec261442cb2e13aaecae63520` |
| 43 | `def` | [translate](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/translate.md) | 283 | `declaration-track:991c9a069c40d3af90d67174a8a3f727be004187bc853b5dc997b4e411da08c9` |
| 44 | `lemma` | [coe_translate](../../../../NumberTheory/SlashInvariantFormsPublic.lean/declarations/coe-translate.md) | 291 | `result-track:3bf21972b52db0b5232833540e771d9cff05c92651545643251e6c7e5dee6be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebd0a8051d0888574d93967ee2efd0120dd6eb142cd75ead52d690cb832b49ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantc8a3069bc3a9ad0d6b87383973bb59f12b3c4a986f4a2c2164aa3896f4adff60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
