# Verification target: Slash Invariant Forms

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9968e1720228de8129e8a29a4b1f7719e39960c1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/SlashInvariantForms.lean/index.md) · [Full source](../../../../NumberTheory/SlashInvariantForms.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9968e1720228de8129e8a29a4b1f7719e39960c1`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.SlashActions` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](../../../../NumberTheory/SlashInvariantForms.lean/declarations/slashinvariantform.md) | 42 | `declaration-track:1f18b093965fcc4b05e5c1ad65d875a0554018878928fe39791f856998983bb4` |
| 2 | `class` | [SlashInvariantFormClass](../../../../NumberTheory/SlashInvariantForms.lean/declarations/slashinvariantformclass.md) | 49 | `declaration-track:dedcb0555547d4757b23f18355e4cd674da0ef3f0df3427f835511825be0b018` |
| 3 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-53-occurrence-2.md) | 53 | `declaration-track:3de2afcd89ced45da7e9e36a7916cdab3edb0dacbc20a5573696583c844d94b2` |
| 4 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-62-occurrence-2.md) | 62 | `declaration-track:4f68c83f50a31ae4650ab74dae1b7204049fb44dcf636257c5adabae4ca2db22` |
| 5 | `theorem` | [SlashInvariantForm.toFun_eq_coe](../../../../NumberTheory/SlashInvariantForms.lean/declarations/tofun-eq-coe.md) | 66 | `result-track:55001d39fa5fc2a4d289d47b51dcc77c17e4edeba0e81baafc1b605e975518b8` |
| 6 | `theorem` | [SlashInvariantForm.coe_mk](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-mk.md) | 71 | `result-track:92b234eec2db9cb6c5cb4ee33084fdeb84ec830e4278a05ffc4a0ef73a7fc3eb` |
| 7 | `theorem` | [SlashInvariantForm.ext](../../../../NumberTheory/SlashInvariantForms.lean/declarations/ext.md) | 74 | `result-track:855975c2b4b9fe0936169ae07a42342f8a2e776d7e974eb9a5f15cbd1f868ec1` |
| 8 | `def` | [SlashInvariantForm.copy](../../../../NumberTheory/SlashInvariantForms.lean/declarations/copy.md) | 80 | `declaration-track:720f6cfa7843174b7d79b4045eb77452c92c4a09ef866e74a6c940599b33d304` |
| 9 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-94-occurrence-2.md) | 94 | `declaration-track:246b3edbbe93772d5aa8483352b213013127f57e748c63dea6cca511e207e71c` |
| 10 | `theorem` | [slash_action_eqn](../../../../NumberTheory/SlashInvariantForms.lean/declarations/slash-action-eqn.md) | 100 | `result-track:1d8374ed39cb111d9f5c76c931c104b4ba928ce73fb67bf2b879651a7bd969f0` |
| 11 | `theorem` | [slash_action_eqn'](../../../../NumberTheory/SlashInvariantForms.lean/declarations/slash-action-eqn-source-line-104-occurrence-2.md) | 104 | `result-track:515cc95d3562d377755f4cad7b7aba42c377fa9fa9c39c774270dfe636d2f3bd` |
| 12 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-109-occurrence-2.md) | 109 | `declaration-track:8a4d290e12926d678e5d08ca7572eac8252f5bfa67284d98f3cf6b3881a3eefe` |
| 13 | `theorem` | [SlashInvariantFormClass.coe_coe](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-coe.md) | 115 | `result-track:737add1645ef0247e0aea42ded3c79c1c2a602277df9b9c71b857eaad68d8afe` |
| 14 | `instance` | [instAdd](../../../../NumberTheory/SlashInvariantForms.lean/declarations/instadd.md) | 120 | `declaration-track:90db01049c30f71247a476773dfde76b337a2d5cb5331e488f641b086ee8aff3` |
| 15 | `theorem` | [coe_add](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-add.md) | 128 | `result-track:b32e1d10cab49854034624593ad00c2160b2b7b4d6e10e31611d3e566be235cb` |
| 16 | `theorem` | [add_apply](../../../../NumberTheory/SlashInvariantForms.lean/declarations/add-apply.md) | 133 | `result-track:4df8a0a04bbbf0e31e7ab78e2a0d16530e8799b1d0051956f3f2169667cd416b` |
| 17 | `instance` | [instZero](../../../../NumberTheory/SlashInvariantForms.lean/declarations/instzero.md) | 137 | `declaration-track:372b5c9020394968e19c025df72a5413204d59a91a403ebbc30bfb27bde328b8` |
| 18 | `theorem` | [coe_zero](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-zero.md) | 143 | `result-track:fb5227175607cd1aba6ec894d09ef28cf59423f95a65fbc12ed29b6b21425d3f` |
| 19 | `instance` | [instSMul](../../../../NumberTheory/SlashInvariantForms.lean/declarations/instsmul.md) | 151 | `declaration-track:0a8d096797918e5ebf6cec44491b22aef3631ac639e7793aaded24c260b28487` |
| 20 | `theorem` | [coe_smul](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-smul.md) | 158 | `result-track:32ebe026461677d52b9563a69f2c694be5e095e2bfae2dc766e56409624b10de` |
| 21 | `theorem` | [smul_apply](../../../../NumberTheory/SlashInvariantForms.lean/declarations/smul-apply.md) | 163 | `result-track:25ddbfbe9bac109cc530e2c75166e205d94920dcf93ab32b311708420123c4bf` |
| 22 | `instance` | [instNeg](../../../../NumberTheory/SlashInvariantForms.lean/declarations/instneg.md) | 169 | `declaration-track:c31795ff992d26ce073eee5aa1f9cb14e82d8ef25cb37ce65d9d816e4af4a333` |
| 23 | `theorem` | [coe_neg](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-neg.md) | 176 | `result-track:7b6e722f8142046e223e05f1c3f308e91581d20a5dbe25084f7fa073a6eb7d91` |
| 24 | `theorem` | [neg_apply](../../../../NumberTheory/SlashInvariantForms.lean/declarations/neg-apply.md) | 181 | `result-track:e1fd20b123de61a0be54800968dd794d0ad9e62e96dd0b16430d38e97956e4ee` |
| 25 | `instance` | [instSub](../../../../NumberTheory/SlashInvariantForms.lean/declarations/instsub.md) | 185 | `declaration-track:04064bcb4c30159b94e64b62a455e18727551273b6ae8c2caa80c4251d98d793` |
| 26 | `theorem` | [coe_sub](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-sub.md) | 190 | `result-track:d50bbef84c20499a5e0e1b7077667e4e0de9182c52f80284e2329cb1ce7416fc` |
| 27 | `theorem` | [sub_apply](../../../../NumberTheory/SlashInvariantForms.lean/declarations/sub-apply.md) | 195 | `result-track:ca27e4f80866b1b66a8a4251894bbfbff5cddec8bb9b0efb4bf018a06b2cd106` |
| 28 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-199-occurrence-2.md) | 199 | `declaration-track:773d3b29afa798e46139aa2959dff930c843572e43fdbdc216eeebeada855bb4` |
| 29 | `def` | [coeHom](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coehom.md) | 203 | `declaration-track:400310c06fcf12b259b6ba2e7c4c65d37e6f0a8e003d9dece5683445b4e43efc` |
| 30 | `theorem` | [coeHom_injective](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coehom-injective.md) | 209 | `result-track:c62cce1ba48e7099a3e18d90e42cc0b283d21733fdd50b263dc95811e5d403bb` |
| 31 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-213-occurrence-2.md) | 213 | `declaration-track:f4329979f7b01166e090cd704fe7e74f811a65a0484dc0afecece16433fd665d` |
| 32 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance.md) | 216 | `declaration-track:1c12fc2f0ea7394fc12d1ed825cf6a4b9510bd179748d6d8310ebc5d52b2434d` |
| 33 | `theorem` | [one_coe_eq_one](../../../../NumberTheory/SlashInvariantForms.lean/declarations/one-coe-eq-one.md) | 221 | `result-track:b2b47f596437faceb2516a53ea5d5c45263fd14fd632885e6d1f77fa74bd5a0c` |
| 34 | `instance` | [(anonymous)](../../../../NumberTheory/SlashInvariantForms.lean/declarations/anonymous-instance-source-line-225-occurrence-2.md) | 225 | `declaration-track:7d05b840e9c72c246f9fd121d5cc0dec1f2f1d1b92774933bb274e6652b536af` |
| 35 | `def` | [mul](../../../../NumberTheory/SlashInvariantForms.lean/declarations/mul.md) | 230 | `declaration-track:b3eabaec366478a8faeaa7bc198805a5670a871ee7f0246588ba1d303df56f9c` |
| 36 | `theorem` | [coe_mul](../../../../NumberTheory/SlashInvariantForms.lean/declarations/coe-mul.md) | 237 | `result-track:9edb6641c7db2b7eebddcb988cb8196d6db92f423c85761e335a9e50531ce58b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2c4c9701be63bd9e56b774e04f425cd356eac44b766d03956c3bade970fe217 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variant187516bb32c93f4a497d79a54918577e2928ace5e196e19f1a85eb2e6f211158.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
