# Verification target: Dilation Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434f99c221881589c6c4271181ee6041d760d4bf",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DilationEquivNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/DilationEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434f99c221881589c6c4271181ee6041d760d4bf`.

Source path: `GRWTSK/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Dilation` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DilationEquivClass](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/dilationequivclass.md) | 40 | `declaration-track:05b443320bfeb91bb6da6971305c7db4556b18c4f58b7bcd9e660c320c81d778` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/instance-source-edition-2.md) | 43 | `declaration-track:1086d9b8b075e168002b1f1dd10d24c80e1a4dfd946d2b4e877ce2cc967fe9a1` |
| 3 | `structure` | [DilationEquiv](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/dilationequiv.md) | 50 | `declaration-track:bddef0450f7c932cf81c826b7781ae54b82f2fe94fb3188aa4c9fb70e7f052ea` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/instance-source-edition-4.md) | 61 | `declaration-track:dad6a6976935c23414f94485f38805213b1d58d3295315f634d2d4d0cc6d8cc9` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:982925e06d6cb6539060be8f2f98a86e4b388e75b6e833d75d7311629d97e82f` |
| 6 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/coe-toequiv.md) | 72 | `result-track:392eea43733960cf89400f32f8f0be17fe8fe15c83463212ffc9d50410b740d7` |
| 7 | `theorem` | [ext](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ext.md) | 75 | `result-track:21caf335822a50f0e67a7d7373ee721bb0810397fb98caaf459e803d662e2a05` |
| 8 | `def` | [symm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/symm.md) | 79 | `declaration-track:ff515ff8db7e525ef42cc6d024e8b57ed23ea2e7aad0a3bc557df9e715e8bf18` |
| 9 | `theorem` | [symm_symm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/symm-symm.md) | 87 | `result-track:33f742a5b08ffcce696cd323b30b4677498607058af3bd22e1e5ec55526bd179` |
| 10 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/apply-symm-apply.md) | 88 | `result-track:a6e533ff2680ce0721b13c34de58bd38e405ec218c9efe8b605d9bc29dacb819` |
| 11 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/symm-apply-apply.md) | 89 | `result-track:e0fd05f77a6a3329c1c477149d84adf6c9e2beef1e0d051884b9e18ab64c38aa` |
| 12 | `def` | [Simps.symm_apply](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/simps-symm-apply.md) | 92 | `declaration-track:43acb79c8fdc6505b89347a0ce986130369224b7413222183a9394c86902ff4c` |
| 13 | `def` | [refl](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/refl.md) | 98 | `declaration-track:2cd872f3a8e8ac6762b736212982cacd0dbc366f0317a33d8f1bc169c0f9d8b9` |
| 14 | `theorem` | [refl_symm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/refl-symm.md) | 102 | `result-track:0a387b1adce8554a48eca01b000ca9118757ede0906c766e66b2387381b8d60a` |
| 15 | `theorem` | [ratio_refl](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-refl.md) | 103 | `result-track:9d79f79cf6a44ce7aab6a014801f61f20154bb3b6c9c8e0d443e5b62d6e5e117` |
| 16 | `def` | [trans](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/trans.md) | 107 | `declaration-track:76e2dcd3540a0385bda65c1532c481b408ce626f100e9684c431e9b075fabb35` |
| 17 | `theorem` | [refl_trans](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/refl-trans.md) | 111 | `result-track:beccf1b8606d05773151c1b378b801fc4eef56a390c3361943c61f2642f78872` |
| 18 | `theorem` | [trans_refl](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/trans-refl.md) | 112 | `result-track:019084fc42570c4a824503106acccfe8c406957a186c744cd24feb95fec1870a` |
| 19 | `theorem` | [symm_trans_self](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/symm-trans-self.md) | 114 | `result-track:51e83c1014b6f29fa31d3401adb26dc9d401060f8fbd8466eee06408db58f6df` |
| 20 | `theorem` | [self_trans_symm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/self-trans-symm.md) | 117 | `result-track:67369cbe6b07f01ff54d421d50af9a6cb2fe3c29a3908a74747f488f3d6b978b` |
| 21 | `theorem` | [surjective](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/surjective.md) | 120 | `result-track:5a16f93c3c2e0c14e690e9b130c874f26624f245e36672f236eb9bf474fae62e` |
| 22 | `theorem` | [bijective](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/bijective.md) | 121 | `result-track:317bb03e6e921be6a1391d4b2db6d85e20a6e4684e7299b0ab46d91306720e75` |
| 23 | `theorem` | [injective](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/injective.md) | 122 | `result-track:8024d430768e3965eb50725c0672e0233e68a5b8e57656f0ad1b99a0eb12a347` |
| 24 | `theorem` | [ratio_trans](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-trans.md) | 125 | `result-track:79ec59faa9dcaedd8a24a613b1656cfcdefada3ce17a881e112f6940807758f3` |
| 25 | `theorem` | [ratio_symm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-symm.md) | 135 | `result-track:f9c6b5ea8ed360935ed52795f4ac61394610861b4cdc0ab0ef1a54d21dd875dd` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/instance.md) | 138 | `declaration-track:097ec8034f4ace59e2de982009e4e5221e01b6a6d852add8c692890049b17466` |
| 27 | `theorem` | [mul_def](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/mul-def.md) | 147 | `result-track:12d34e9a3c959f9e6b9d5daca67f274f2a7e8d32fa52109427ae1b3559b205e9` |
| 28 | `theorem` | [one_def](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/one-def.md) | 148 | `result-track:40706704efb53b9a583c0bd1e19adb3b8cf7d5640d945d81fb0ef730cf036eb2` |
| 29 | `theorem` | [inv_def](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/inv-def.md) | 149 | `result-track:5f828f242a7513f2e6fe4e91fe1ae304c4bb9e440cc8afbb710b2abfb4bac93f` |
| 30 | `theorem` | [coe_mul](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/coe-mul.md) | 151 | `result-track:4fa3436f18110ca58eb9a81076c2594fa38dbedb8c03bb51209529fe30ea369a` |
| 31 | `theorem` | [coe_one](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/coe-one.md) | 152 | `result-track:d282467807d080be191d31144250fca6270fdf87f0c59edba8ab221860b71f61` |
| 32 | `theorem` | [coe_inv](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/coe-inv.md) | 153 | `result-track:16e4636a445b023241b6f6afdea1ad24c72ac0bbdfa98714261a0aa0687564b1` |
| 33 | `def` | [ratioHom](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratiohom.md) | 156 | `declaration-track:9cf78ae3079b708de3c0f87e9e37cbea30d1be59d9956aac2b2f7bb5052e8444` |
| 34 | `theorem` | [ratio_inv](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-inv.md) | 162 | `result-track:0957ae7998debc55a9e3bace6ba15ba68698d3e6acd615d7166fe65b4cc03cdd` |
| 35 | `theorem` | [ratio_pow](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-pow.md) | 165 | `result-track:9ffaa3fab1a2e06c8df6bce12eabbb750f0b21cd9c87f5ea31cc9c54ee71b1b8` |
| 36 | `theorem` | [ratio_zpow](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/ratio-zpow.md) | 169 | `result-track:9fe0a3188de15f96721ebb6d9382c59ae32ae88ad0e39da5934f9e4973107949` |
| 37 | `def` | [toPerm](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/toperm.md) | 174 | `declaration-track:272695200542189df41bc00a934585eedf87177e81ec6c8f0eb8317fd9bc704b` |
| 38 | `theorem` | [coe_pow](../../../../GeneralTopology/DilationEquivNamespaced.lean/declarations/coe-pow.md) | 180 | `result-track:cbabfc55f91d230ba2c83ab4114f910159bfe9cc37bc53d3598b1192457f7372` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46f53c26e56aa1a6dd1b5589e68fcd7c0d983393997b402dc1e5ecc0321b5e16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/DilationEquiv/Variant82d69bb00264975293412481ef8bc1214a8abf6bca600bc5c14f02fb348ff3fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
