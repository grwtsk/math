# Verification target: Algebra Is Bounded SMul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1668b25fcccf38fe31344d1ea1e3b60de07a122",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/index.md) · [Full source](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1668b25fcccf38fe31344d1ea1e3b60de07a122`.

Source path: `GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.MulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [LipschitzAdd](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitzadd.md) | 38 | `declaration-track:0a1e5dec1b5500daaf5989502831bf5946d1fd24492fe8c1a8ec09d0350c5c14` |
| 2 | `class` | [LipschitzMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitzmul.md) | 44 | `declaration-track:80a3535548833e00a51e756af78451c13816413f437e1eaf1c3480f19d9df50d` |
| 3 | `def` | [LipschitzAdd.C](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitzadd-c.md) | 48 | `declaration-track:906a2ef55376ea8e4ec773fa9ce0856b3816f71fba43a53c49cc26ae20902cbd` |
| 4 | `def` | [LipschitzMul.C](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitzmul-c.md) | 54 | `declaration-track:d9e8dea3d48bdc567166ce616e3ce149305c69f4c2c89e2aaae884f8eeb5de99` |
| 5 | `theorem` | [lipschitzWith_lipschitz_const_mul_edist](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitzwith-lipschitz-const-mul-edist.md) | 59 | `result-track:ec36b795bc17204398ebd57f019036f59d8051749eb3d1a421b4085b641584f4` |
| 6 | `theorem` | [lipschitz_with_lipschitz_const_mul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/lipschitz-with-lipschitz-const-mul.md) | 66 | `result-track:436f9c73a52de8dc475add5f02ab7acd96c81a9ff5a255c25e0b67fde8343ad5` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-2.md) | 73 | `declaration-track:7a28fb1bc0ae17f046f08b1cc98686559298009e96f57cb366cbe4500cedc698` |
| 8 | `instance` | [Submonoid.lipschitzMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/submonoid-lipschitzmul.md) | 77 | `declaration-track:d84a0a0b3c0ffaedfeef0df7170dfa8fd3083a36808a0afc6d13cca35181db62` |
| 9 | `instance` | [MulOpposite.lipschitzMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/mulopposite-lipschitzmul.md) | 83 | `declaration-track:5c7ff5f0e039deab7a3f0bf78acf8516b906be857209979333b5b6e5be849d97` |
| 10 | `instance` | [Real.hasLipschitzAdd](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/real-haslipschitzadd.md) | 90 | `declaration-track:c0f1a6672717ee5941e68dd563f9a871c7a6aedf96ac449fea3504686b4632a9` |
| 11 | `instance` | [NNReal.hasLipschitzAdd](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/nnreal-haslipschitzadd.md) | 99 | `declaration-track:f43529d1b1741f503655e598de5f0cf29a597c24f916146bfa835200a0080c03` |
| 12 | `class` | [IsBoundedSMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/isboundedsmul.md) | 118 | `declaration-track:efecd4623d1e67ecdcdb9fbeecc12bfa450c01943d3e95a2ddae6037b4d264f3` |
| 13 | `theorem` | [dist_smul_pair](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/dist-smul-pair.md) | 127 | `result-track:dc836782b2e32e6504c26210abbfae8b1576247cf18de9fab7680fc7c31c3ba5` |
| 14 | `theorem` | [dist_pair_smul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/dist-pair-smul.md) | 130 | `result-track:a35dd77995bae01b5332fae1d27c4e7e29905f4b1f60aa8ba4fff26dab449594` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:e52b48eb459281cbe07e6c68bba070fd50efa32ad0ef89e2de67363242c2b5f8` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-3.md) | 155 | `declaration-track:7f5c816a37567abce14249d000b8fd24d4d1be40ef3c2a4e21a2200781fb0cf5` |
| 17 | `instance` | [Real.isBoundedSMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/real-isboundedsmul.md) | 162 | `declaration-track:20c87b235438c7440439a1ce039d109807bac9c17eeaeefcc66ca4e812a767b2` |
| 18 | `instance` | [NNReal.isBoundedSMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/nnreal-isboundedsmul.md) | 166 | `declaration-track:e959ed007602929bf7135803a63372a9765096a2117cd9134ffa0519f7fdefd1` |
| 19 | `instance` | [IsBoundedSMul.op](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/isboundedsmul-op.md) | 171 | `declaration-track:d8330a500e7df0325c4d8c43ced0c3acfd4aef7fc19e084e3c9fcb1f0ba635fb` |
| 20 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-5.md) | 180 | `declaration-track:bbc6ff01dcf1bb74240b5a7e723e622eb17beea39042f3aa42a819bac68f5b77` |
| 21 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance.md) | 183 | `declaration-track:079db26336ddaa703183e3fa17982c7c801ed95734e19839b00dcd3ca0ef2207` |
| 22 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-7.md) | 187 | `declaration-track:f274f566137bdae4079b91b23812fcd16ea4c48c65ff22cbedc9a28a152db7e1` |
| 23 | `instance` | [Pi.instIsBoundedSMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/pi-instisboundedsmul.md) | 192 | `declaration-track:6b0db963297d16fc44d1930c5104d5aa75b630194a3016d0b6e6ffa20c07dea2` |
| 24 | `instance` | [Pi.instIsBoundedSMul'](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/pi-instisboundedsmul-source-edition-2.md) | 202 | `declaration-track:c141d2dff9fbd022cb0c9d156e91af175bb58ad9bbfa2c6a4df029ec3b89ce31` |
| 25 | `instance` | [Prod.instIsBoundedSMul](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/prod-instisboundedsmul.md) | 214 | `declaration-track:3c30b9e4c1c651fd4cb72128f2a31a7f252bf7fab0548f05fb8f52005e906c59` |
| 26 | `instance` | [(anonymous)](../../../../GeneralTopology/AlgebraIsBoundedSMul.lean/declarations/instance-source-edition-4.md) | 224 | `declaration-track:861c14ba00c6fc50d6f9eb318885f45c1f05c87fe97b83cf441fbf4068529587` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=191c3796e8a048a74178ab3bda3adfb7acd3677dfc8c5ae2d68c6b2508729509 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Algebra/Variant0bc13a1d5dba24a25a907d2e57c5760ec47c31e8dcb3bcf831eff063fc7e5304.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
