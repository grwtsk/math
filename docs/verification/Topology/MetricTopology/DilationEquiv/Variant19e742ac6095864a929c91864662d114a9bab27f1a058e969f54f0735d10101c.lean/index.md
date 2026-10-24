# Verification target: GRWTSK.Topology.MetricTopology.DilationEquiv.Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22caed0ef69cdaf34083cacbe354600513c090b3",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22caed0ef69cdaf34083cacbe354600513c090b3`.

Source path: `GRWTSK/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Dilation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DilationEquivClass](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/dilationequivclass--f18a13269e65f0d27a618485.md) | 32 | `declaration-track:f18a13269e65f0d27a6184856917af53abdcbb14b4a23de87bb4d351d72d1f3c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/instance--3b2cff757bab83c142a5c67c.md) | 35 | `declaration-track:3b2cff757bab83c142a5c67cfde3fa075cde70881a7e54fafe873cd1d780274d` |
| 3 | `structure` | [DilationEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/dilationequiv--0945841e9b9655198dd9bffa.md) | 42 | `declaration-track:0945841e9b9655198dd9bffa23111c96e20bad649ce4dae716c73b64e7ddb087` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/instance--4835b61bbc9078b3202cbc7f.md) | 53 | `declaration-track:4835b61bbc9078b3202cbc7f941eb0ef603073e633980a2ba147ae265b6b077a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/instance--11e7206b47adde20adecdeeb.md) | 61 | `declaration-track:11e7206b47adde20adecdeeb39f5b58fbc0bf200fc84795e055566b30ea888af` |
| 6 | `theorem` | [coe_toEquiv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/coe-toequiv--200038360a1fedd2ed3e5623.md) | 64 | `result-track:200038360a1fedd2ed3e56234c1773b53d21a5cfb977c118caf4d16d82431583` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ext--be55a4725459021bae0ae634.md) | 67 | `result-track:be55a4725459021bae0ae634862de2693c7333a2877fe27cb77aa5d7fcb67204` |
| 8 | `def` | [symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/symm--29eb00bf11f5bc7503d1b4e7.md) | 71 | `declaration-track:29eb00bf11f5bc7503d1b4e793b9f55e5b8743a8359983aed422012fc89f862c` |
| 9 | `theorem` | [symm_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/symm-symm--162f4fdc5df62ab507392f37.md) | 79 | `result-track:162f4fdc5df62ab507392f37f744b485df3759938353204ef2ab544fa90795da` |
| 10 | `theorem` | [apply_symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/apply-symm-apply--c82e57c502df467393c86d54.md) | 80 | `result-track:c82e57c502df467393c86d540272f6a43356b2dc8aafb235c44ca1c15e09f997` |
| 11 | `theorem` | [symm_apply_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/symm-apply-apply--d167f35526963faaa0216f5a.md) | 81 | `result-track:d167f35526963faaa0216f5a174ee234b184b02d7112b6567c594551bf8cb90f` |
| 12 | `def` | [Simps.symm_apply](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/simps-symm-apply--a24e317f10d78931bf97594d.md) | 84 | `declaration-track:a24e317f10d78931bf97594da7f8d0ebe7f77fd75114d7dadfc143a61ebab1ab` |
| 13 | `def` | [refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/refl--5ee51f1157eafb4e9354350d.md) | 90 | `declaration-track:5ee51f1157eafb4e9354350dbc54115896fc33ea9017e37efe05c53f668e716c` |
| 14 | `theorem` | [refl_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/refl-symm--69c3ada4377530c73ad97621.md) | 94 | `result-track:69c3ada4377530c73ad9762161d84a4469c56ee5ac79f3f72f7b76c61b3bd3f1` |
| 15 | `theorem` | [ratio_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-refl--1a4db495faf5580601619be8.md) | 95 | `result-track:1a4db495faf5580601619be8049747acdbf5b6f8fa3186722f279792825df43b` |
| 16 | `def` | [trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/trans--476406d9c40fb2c57d0601e6.md) | 99 | `declaration-track:476406d9c40fb2c57d0601e6a0b4b9f1b9a5aff8e6cfeaf4804e1c0d9d5bdf8e` |
| 17 | `theorem` | [refl_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/refl-trans--4a2c03c142054940af9405c1.md) | 103 | `result-track:4a2c03c142054940af9405c1c1dcce8c580f4abf5d702cdf8bc1b05dec737435` |
| 18 | `theorem` | [trans_refl](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/trans-refl--9f98a5dbeaf03a01ea610dc1.md) | 104 | `result-track:9f98a5dbeaf03a01ea610dc1b17303c804d4c86fb5c666fd445a9e9c513c0187` |
| 19 | `theorem` | [symm_trans_self](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/symm-trans-self--7ffc1b03f5fb359fa35cf4b5.md) | 106 | `result-track:7ffc1b03f5fb359fa35cf4b5377d1cefc75dad027bb8516412292168df003b55` |
| 20 | `theorem` | [self_trans_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/self-trans-symm--e7fb60371f34303c58c35198.md) | 109 | `result-track:e7fb60371f34303c58c351983bdaaee01e881a841279b294a78f5df143381aa0` |
| 21 | `theorem` | [surjective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/surjective--1f673869d554e80b1304538b.md) | 112 | `result-track:1f673869d554e80b1304538b1a4a200be9404ed3d01d34dc3e33cbcf1369cd92` |
| 22 | `theorem` | [bijective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/bijective--cb1f37734d4cb8cd1dbb5ea7.md) | 113 | `result-track:cb1f37734d4cb8cd1dbb5ea744c73443cbf1502300eda6e3b7a6d45248ebe234` |
| 23 | `theorem` | [injective](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/injective--470f3f9eba289bcfe11c34f2.md) | 114 | `result-track:470f3f9eba289bcfe11c34f2d1ae132abc683a157e8029f3ae10dd1b2e489e2f` |
| 24 | `theorem` | [ratio_trans](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-trans--879bd056156bdd47ef846afd.md) | 117 | `result-track:879bd056156bdd47ef846afd3d06ddfdaf52e88b41f00f31edd47577f2e6badb` |
| 25 | `theorem` | [ratio_symm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-symm--0db0e38142557cc67eab7b25.md) | 127 | `result-track:0db0e38142557cc67eab7b25407612bd980c497a38cda1e26f0fc230a45e6ade` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/instance--073815b434249b49141c5c4f.md) | 130 | `declaration-track:073815b434249b49141c5c4f252e5b24e767f4749f2c36247eb37af0faf9e102` |
| 27 | `theorem` | [mul_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/mul-def--87fccbaec7c4836b692c42b8.md) | 139 | `result-track:87fccbaec7c4836b692c42b84142039affe48e1598833f561f3a353fb8d742db` |
| 28 | `theorem` | [one_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/one-def--86d120b2d7efc46f0fb4c373.md) | 140 | `result-track:86d120b2d7efc46f0fb4c3739e5d95cc4298dd569ff49e4929fca4fdb54f1b5b` |
| 29 | `theorem` | [inv_def](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/inv-def--6ebc798f3287a8b5cb8981c8.md) | 141 | `result-track:6ebc798f3287a8b5cb8981c8d088bda75277da1b812bdb41433479e0034481a2` |
| 30 | `theorem` | [coe_mul](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/coe-mul--da44840b5d3c696ece4c90a9.md) | 143 | `result-track:da44840b5d3c696ece4c90a986834c87c149616382290078f2fd11e90f6efd73` |
| 31 | `theorem` | [coe_one](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/coe-one--9cf422da709065d4d6e33cb5.md) | 144 | `result-track:9cf422da709065d4d6e33cb568509f8f823d7e6c8b7740f501348d64ecbf51b5` |
| 32 | `theorem` | [coe_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/coe-inv--302a5ab3fa3b8b5f3481b9e8.md) | 145 | `result-track:302a5ab3fa3b8b5f3481b9e8c178b20737c9854004de00326a95647cee09167a` |
| 33 | `def` | [ratioHom](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratiohom--34b10249d1f954070e57d6a4.md) | 148 | `declaration-track:34b10249d1f954070e57d6a4a2089e0aa27db9e1ab013a41e3d3e9cd2db70912` |
| 34 | `theorem` | [ratio_inv](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-inv--6a50b5fc3bb1edc8e6cefaeb.md) | 154 | `result-track:6a50b5fc3bb1edc8e6cefaebd005769a95f0f20add434e423bb4da40a7a84362` |
| 35 | `theorem` | [ratio_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-pow--c2d925464140561b48e476c8.md) | 157 | `result-track:c2d925464140561b48e476c8b49075c7f905c1d201dc4445f66d8c65ac226234` |
| 36 | `theorem` | [ratio_zpow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/ratio-zpow--5a1a9f307d0ce04a75d1af56.md) | 161 | `result-track:5a1a9f307d0ce04a75d1af5600d54a11958d8ed346a3d775f61cef96daa48b0c` |
| 37 | `def` | [toPerm](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/toperm--1178c78f5f3c6ee54710abde.md) | 166 | `declaration-track:1178c78f5f3c6ee54710abde39df291779ddeafc018244511a007e2596eae418` |
| 38 | `theorem` | [coe_pow](../../../../../mathematics/Topology/MetricTopology/DilationEquiv/Variant19e742ac6095864a929c91864662d114a9bab27f1a058e969f54f0735d10101c.lean/declarations/coe-pow--2567aa8d2ee6c31ce3d761d4.md) | 172 | `result-track:2567aa8d2ee6c31ce3d761d41932d0d88859974d191805601e3ee9ee67f3595d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
