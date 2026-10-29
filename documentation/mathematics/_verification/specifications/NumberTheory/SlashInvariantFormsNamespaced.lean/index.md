# Verification target: Slash Invariant Forms Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b17ad225e0038f1fc81f08cd9ca69dccfa82eba",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant9c0ad40e5073f11b1a290a90b40cdb6c872a63832a5bbc7097564bb36e065528.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b17ad225e0038f1fc81f08cd9ca69dccfa82eba`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant9c0ad40e5073f11b1a290a90b40cdb6c872a63832a5bbc7097564bb36e065528.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant9c0ad40e5073f11b1a290a90b40cdb6c872a63832a5bbc7097564bb36e065528.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.SlashActions` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/slashinvariantform.md) | 50 | `declaration-track:e322aa120d82374b552042f7789f75d0cfd78e47ce828c4757bf23f192cd3b9f` |
| 2 | `class` | [SlashInvariantFormClass](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/slashinvariantformclass.md) | 57 | `declaration-track:843db99f811116de146031afe506046743964055c643e399896e8996e799563a` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-61-occurrence-2.md) | 61 | `declaration-track:19a009034695b827439b7f04359bfa7be5eb870c49abccce6f30d9aecdc55215` |
| 4 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-70-occurrence-2.md) | 70 | `declaration-track:1032428ee62da9598f710fad5a9d5d4e4a523f14d7fc3922ff797b50fc77ca0e` |
| 5 | `theorem` | [SlashInvariantForm.toFun_eq_coe](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/tofun-eq-coe.md) | 74 | `result-track:d4d4472d19b2d2d9df084bdd4178dac2f88c774b0d65fb409d03e71ebd1b0c41` |
| 6 | `theorem` | [SlashInvariantForm.coe_mk](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-mk.md) | 79 | `result-track:06a973b8ac1da160288f71bc6f1def1b0cacd96bae0371c82f4d6e8f4aa5100a` |
| 7 | `theorem` | [SlashInvariantForm.ext](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/ext.md) | 82 | `result-track:42488c03c09ed447f5513ab25b93f6e5b54fe9c1d21dfa7fa408e7985e774a3f` |
| 8 | `def` | [SlashInvariantForm.copy](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/copy.md) | 88 | `declaration-track:61a284a502372a5cc148bf0dd578eb53b864ba6e4a56f16d57b9d524ab7e443d` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-102-occurrence-2.md) | 102 | `declaration-track:741860eda6334ab2e07c9c633b9506eed30278ebaee72271c751993a0f09b4f5` |
| 10 | `theorem` | [slash_action_eqn](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/slash-action-eqn-source-line-108-occurrence-2.md) | 108 | `result-track:dd4c4cca0115bc3def0f5e1be300e0127c61bee24db9d3b45f685e3c7812fa40` |
| 11 | `theorem` | [slash_action_eqn'](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/slash-action-eqn.md) | 112 | `result-track:1cc662a76c7831a058400b1dfd05a32a9b7d50b141c92ae910142e40f6981e31` |
| 12 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-117-occurrence-2.md) | 117 | `declaration-track:11358424eded8a661eca91efe1d917237102a0f4d3f22c447e0a42db5b29ade9` |
| 13 | `theorem` | [SlashInvariantFormClass.coe_coe](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-coe.md) | 123 | `result-track:d567dec31e2f68fe732acb9fd9786077a9d4b7af5494abdf4d3bc431d6dce237` |
| 14 | `instance` | [instAdd](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/instadd.md) | 128 | `declaration-track:794c07eab0db70d114efd142e347f45bb318b0866a3279073c2d09cc0f447919` |
| 15 | `theorem` | [coe_add](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-add.md) | 136 | `result-track:b90ee2c0ecaf1cfcc065345862003b5ecd6a6aa0532d3c81ad567745cffdea1a` |
| 16 | `theorem` | [add_apply](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/add-apply.md) | 141 | `result-track:b025d76c9fa96f8de551c4bb7d01c7fbc38e68bb8910970b5c8fb4b466146920` |
| 17 | `instance` | [instZero](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/instzero.md) | 145 | `declaration-track:9875375825d4a7f566124de09566ec1cf33fbad53f055a6d241c2f3ed04c250e` |
| 18 | `theorem` | [coe_zero](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-zero.md) | 151 | `result-track:8f1f0c71da2516aa495114a849fe67757142e26c8d36391f5a589e5223f5b513` |
| 19 | `instance` | [instSMul](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/instsmul.md) | 159 | `declaration-track:c3a3ed12411796172415dc19b274e67b3e3c52909bf2ff36350fe5beb271dcc2` |
| 20 | `theorem` | [coe_smul](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-smul.md) | 166 | `result-track:79449ff8117022d1869629e34682947ce7956493205d4457c12b74682d31da8a` |
| 21 | `theorem` | [smul_apply](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/smul-apply.md) | 171 | `result-track:e3e32cae530c0a4b9426d0c2ead01ebf6e7c46ae6ffc4222d96be7aa1d808938` |
| 22 | `instance` | [instNeg](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/instneg.md) | 177 | `declaration-track:219ba7bec1efda4d8bc802a00b50205bd8ce157dc7c18fdd911c824fde50a393` |
| 23 | `theorem` | [coe_neg](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-neg.md) | 184 | `result-track:d8baa86f9d8e655f7accc04d1b37729a898bc5e090c0bbe9e17db0594190d2fa` |
| 24 | `theorem` | [neg_apply](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/neg-apply.md) | 189 | `result-track:a07016f2c103e98d58c508d3334f6604152acb3748ed13b10fca417216439688` |
| 25 | `instance` | [instSub](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/instsub.md) | 193 | `declaration-track:6307ba2e4a7a0c3019779900a18643679ae0f6e85956747149940ddb755be25f` |
| 26 | `theorem` | [coe_sub](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-sub.md) | 198 | `result-track:62b0f05b72b60f8f75d14b2b8687c8808507642ca4b0bfc52258175329897a3b` |
| 27 | `theorem` | [sub_apply](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/sub-apply.md) | 203 | `result-track:da27a4fd528e7057b3d9390c4632354c8309326bdd1c1e790a4d08d8f4991054` |
| 28 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-207-occurrence-2.md) | 207 | `declaration-track:6333e40225d2f7fdf316f638f63aa0d6a3e476ff0b97b26103ce4a6fd972b0c7` |
| 29 | `def` | [coeHom](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coehom.md) | 211 | `declaration-track:a23895abff488e1fc602753733adfd2aad2e3816b7c60932326dd6a5b9854490` |
| 30 | `theorem` | [coeHom_injective](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coehom-injective.md) | 217 | `result-track:b60d840d3c40c29229142d77e5300502251be29e006b27fc0b5509805e839109` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance.md) | 221 | `declaration-track:06af4324a0157f417628be6fe69493d4f28d4bbaf166520df23972eaa9c2856b` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-224-occurrence-2.md) | 224 | `declaration-track:da6b31e2c48c37635e0a8741e35f033a36e5bc8ff6cb106b73205a0f5c2507ec` |
| 33 | `theorem` | [one_coe_eq_one](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/one-coe-eq-one.md) | 229 | `result-track:427a9000cf84f25484ac8ed458514f3ebd35b6986be4ac2a0ab3235480389806` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/anonymous-instance-source-line-233-occurrence-2.md) | 233 | `declaration-track:4741988c49999c4aa65767070d72661f1afab17df508db1fc2952b1eaaa5da4f` |
| 35 | `def` | [mul](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/mul.md) | 238 | `declaration-track:29b64b9f7222c30b3706c1134e499b1013f81dd26aba3cd1ec70c3974627103f` |
| 36 | `theorem` | [coe_mul](../../../../NumberTheory/SlashInvariantFormsNamespaced.lean/declarations/coe-mul.md) | 245 | `result-track:de10ab2310450fa74201deb664f2d22f8454d2d4239db64a7ceceb69c3dce6b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fd51d23cc5c0e222b98459e409ded0b16d47bfe26cb5b1c4e3b2a30e87a556f4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant9c0ad40e5073f11b1a290a90b40cdb6c872a63832a5bbc7097564bb36e065528.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant9c0ad40e5073f11b1a290a90b40cdb6c872a63832a5bbc7097564bb36e065528.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
