# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8820927ec8132fc992ac591ea4a05149cd121503",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8820927ec8132fc992ac591ea4a05149cd121503`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Multilinear.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/touniformonfun--7478d9eed9c1f9e7dc7e2688.md) | 32 | `declaration-track:7478d9eed9c1f9e7dc7e2688c508d3442a05a22e9948e888746f014566a70035` |
| 2 | `lemma` | [range_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/range-touniformonfun--109f6cf7959db76fcdf4d109.md) | 37 | `result-track:109f6cf7959db76fcdf4d109b7c5dcfe8a69b404d811fc19018e202e31eb6b5d` |
| 3 | `lemma` | [toUniformOnFun_toFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/touniformonfun-tofun--412ac5e3092cb28faae59b3e.md) | 53 | `result-track:412ac5e3092cb28faae59b3e56328dda624402ccc96ae08d4a19961684571837` |
| 4 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/insttopologicalspace--c4417c9e13341296f5904527.md) | 57 | `declaration-track:c4417c9e13341296f5904527766143d9bee34aa75a377f63dd2bb2b97f2b80d9` |
| 5 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instuniformspace--2f158874d685cb08b925952d.md) | 62 | `declaration-track:2f158874d685cb08b925952db9383d2df6b69c9b901fc90f7a796d36a5fbd30f` |
| 6 | `lemma` | [isUniformInducing_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isuniforminducing-touniformonfun--88c71f1e4aa7672e9082dac1.md) | 71 | `result-track:88c71f1e4aa7672e9082dac159b4baf29b265f80445aa2e52eb27b0db5dc508c` |
| 7 | `lemma` | [isUniformEmbedding_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isuniformembedding-touniformonfun--88b10224d4582adb89fdc0c0.md) | 75 | `result-track:88b10224d4582adb89fdc0c0e771d59b073489aa74da5e4ef279013dab86f46a` |
| 8 | `lemma` | [isEmbedding_toUniformOnFun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isembedding-touniformonfun--8087930012ab51ed37db9a9e.md) | 79 | `result-track:8087930012ab51ed37db9a9e83bbc76dccce73f63d83110f0b4e2ee4a76b7b72` |
| 9 | `theorem` | [uniformContinuous_coe_fun](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/uniformcontinuous-coe-fun--d7cbf507ee7dfc620e25cd75.md) | 87 | `result-track:d7cbf507ee7dfc620e25cd75d3ca525e96ec1a190d2c1432dac8caacc1b948bf` |
| 10 | `theorem` | [uniformContinuous_eval_const](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/uniformcontinuous-eval-const--66417f315330c00bec908108.md) | 92 | `result-track:66417f315330c00bec908108f46e72c4851be58c3ed0bc007582cd08104047fa` |
| 11 | `instance` | [instIsUniformAddGroup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instisuniformaddgroup--60cf9db600f28e20b96456d6.md) | 96 | `declaration-track:60cf9db600f28e20b96456d6582ddf501861873bd8722ad377591ccd7f43f5a1` |
| 12 | `instance` | [instUniformContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instuniformcontinuousconstsmul--1009847bdc53b20abf978089.md) | 101 | `declaration-track:1009847bdc53b20abf978089fe1cac42934c5f0d6c526a90f26ddb9e4a5feca0` |
| 13 | `theorem` | [isUniformInducing_postcomp](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isuniforminducing-postcomp--325d9476eb288791fdbee32e.md) | 107 | `result-track:325d9476eb288791fdbee32e89839da021d40c6df6299334ac0b95df2311dbdb` |
| 14 | `theorem` | [completeSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/completespace--9e2cb210a360e8e85d381faf.md) | 120 | `result-track:9e2cb210a360e8e85d381fafd0710a7753302d402c82610eeac1804ffc336c39` |
| 15 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instcompletespace--98fe6018733154d1103d2e42.md) | 142 | `declaration-track:98fe6018733154d1103d2e42a975a641cfc1e6eba3d206c8cf7bfbfbe108b560` |
| 16 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isuniformembedding-restrictscalars--b5492ffa8b0f0aa3f70c7e20.md) | 154 | `result-track:b5492ffa8b0f0aa3f70c7e20c1d33a649c50ae7eab883b89e3fce7b7d65e5912` |
| 17 | `theorem` | [uniformContinuous_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/uniformcontinuous-restrictscalars--55b277572071317c66482aa6.md) | 163 | `result-track:55b277572071317c66482aa606bac4b44571200b62a9f6af958217b8543a2539` |
| 18 | `instance` | [instIsTopologicalAddGroup](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instistopologicaladdgroup--dd2a88c25f9c45c15cb0f945.md) | 174 | `declaration-track:dd2a88c25f9c45c15cb0f94539da7f28661d38ad1ce62d9cbf9611fba83257dd` |
| 19 | `instance` | [instContinuousConstSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instcontinuousconstsmul--6e8a57d2302b0957425be134.md) | 179 | `declaration-track:6e8a57d2302b0957425be1342b4eca321bcb1ef4506ce548834588ea77201586` |
| 20 | `instance` | [instContinuousSMul](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instcontinuoussmul--3ba554a793ed2e81b2d1e97a.md) | 186 | `declaration-track:3ba554a793ed2e81b2d1e97aa5340e51213fdee380fde226993604b1348ccdc8` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/hasbasis-nhds-zero-of-basis--44c008498f92fb4973d5aa5b.md) | 195 | `result-track:44c008498f92fb4973d5aa5b27fd7c1fc6b3335060573d52175d69692419cbcb` |
| 22 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/hasbasis-nhds-zero--ba797ae78cdc840b67eae3aa.md) | 207 | `result-track:ba797ae78cdc840b67eae3aae7bb9c017ea98d979768ca00814e5f158dc37322` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instance--23251300f1acb0cf0d637893.md) | 215 | `declaration-track:23251300f1acb0cf0d637893fc3a34bf0cb2bedfd77088c8aa6c5e026b810ca7` |
| 24 | `instance` | [instT2Space](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instt2space--6c6b450a3280d7d573765dc3.md) | 221 | `declaration-track:6c6b450a3280d7d573765dc30c2a42e4fc691ad3acc5181aaf07cd5e1347afb3` |
| 25 | `instance` | [instT3Space](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/instt3space--6c72e27cabd6759e4f7adcea.md) | 224 | `declaration-track:6c72e27cabd6759e4f7adcea5e752436c850210a2dda29411ea3bf92909c95c6` |
| 26 | `theorem` | [isEmbedding_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/isembedding-restrictscalars--019b49eda6e4f05d85b5868b.md) | 232 | `result-track:019b49eda6e4f05d85b5868bc0641f9bf70a0c9a2c2d8f3ed99217f0d28c67c1` |
| 27 | `theorem` | [continuous_restrictScalars](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/continuous-restrictscalars--4f941ecceacdf1214f912003.md) | 243 | `result-track:4f941ecceacdf1214f91200333452cf87e984c8aa8535ea38c70e89007263d6b` |
| 28 | `def` | [restrictScalarsLinear](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/restrictscalarslinear--4f276a57309ae766ce08e42b.md) | 251 | `declaration-track:4f276a57309ae766ce08e42b22eb728dc24b51562ec585452553dee5263cb8c9` |
| 29 | `def` | [apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/apply--5db6c38809d3fb54e2bb852b.md) | 262 | `declaration-track:5db6c38809d3fb54e2bb852b1445d7f08281bc2af6066663ac1cce2b1896fd80` |
| 30 | `lemma` | [apply_apply](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/apply-apply--ac8399cca19cc28c9549b4a6.md) | 271 | `result-track:ac8399cca19cc28c9549b4a675e52969757df97192e6ed19fe850d7a1dcabe27` |
| 31 | `theorem` | [hasSum_eval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/hassum-eval--f2f4aba172cf9e7e46f0fa9b.md) | 274 | `result-track:f2f4aba172cf9e7e46f0fa9b650f633e8bfea3a4ac95fea609f6d3b65df4822c` |
| 32 | `theorem` | [tsum_eval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant08fe0193fb40c46f3fb79236f81b61546fa4f7732f88d531a045feffc562c632.lean/declarations/tsum-eval--99b81b1aab6d95930af3b21a.md) | 279 | `result-track:99b81b1aab6d95930af3b21a36b31fd259c3664e2b7bbed58ce906772c5f5033` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
