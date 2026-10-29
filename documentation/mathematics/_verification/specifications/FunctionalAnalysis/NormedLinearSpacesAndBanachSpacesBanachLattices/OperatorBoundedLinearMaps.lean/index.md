# Verification target: Operator Bounded Linear Maps

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b60a2c186c0a2aa44ea7c16ce0f23fc691d2a15`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Units` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedlinearmap.md) | 67 | `declaration-track:2666177db649ee5d077a78d0a684582525cf2fe12af09c0b843695293e1e3a5e` |
| 2 | `lemma` | [isBoundedLinearMap_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedlinearmap-iff.md) | 72 | `result-track:23d85fae23a59ea441a2f5174a52bfcbfefcfba2886295ae4b24e39a9ed29f51` |
| 3 | `theorem` | [IsLinearMap.with_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/islinearmap-with-bound.md) | 76 | `result-track:9595776ca989ebf0e9248c15edb183e818db24bd5be7beb7f3cc82c0d9171d2e` |
| 4 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-isboundedlinearmap.md) | 86 | `result-track:abd1a73dc3dfd4aaa955f69a40743a67435d4893dc67cb8cb7a7e573855e927f` |
| 5 | `def` | [toLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/tolinearmap.md) | 92 | `declaration-track:2ce10dfc39f9a45b08753878df602793b7b40da461f3f3c0761bbc005f03cd10` |
| 6 | `def` | [toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/tocontinuouslinearmap.md) | 96 | `declaration-track:2d8662f78be476c830f10f8e1b2ca4eede2f38f61aa82d509953f3b231539375` |
| 7 | `theorem` | [zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/zero.md) | 102 | `result-track:88d0cf352d0ea698469c7fdac67ab08e7c47ad55f82650fa212e9d869eb16158` |
| 8 | `theorem` | [id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/id.md) | 105 | `result-track:9aa7907a15780a8a32704b034df67a117d1cec99019e8ac6e49cd4c7288a8542` |
| 9 | `theorem` | [fst](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/fst.md) | 108 | `result-track:a7d660fbb457e40c255587173baed9d6a4772fa6eaf56766e1f98cabec70b64e` |
| 10 | `theorem` | [snd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/snd.md) | 113 | `result-track:a1e01ef83e2609cc35beebe2e3c691801e17a9291bc5db0d746c3b1f8194f67d` |
| 11 | `theorem` | [smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/smul.md) | 120 | `result-track:0d944540d65e75a41e57c0fcb507fa503adb0efc4cb45e0a86bf75bfbad278c7` |
| 12 | `theorem` | [neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/neg.md) | 128 | `result-track:2260047a2a1d0c41d950411c03fce56fdc864a1f5a5a16b5541faf78e5b9cea5` |
| 13 | `theorem` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/add.md) | 132 | `result-track:955fdae1c5ee9c7dcaedc96f29196c0711e5f0be026352e405c6e610c2a1cf5a` |
| 14 | `theorem` | [sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/sub.md) | 141 | `result-track:a5f0ce82f0e750be7688bb190c52c9aa504555c67c98c1c227c6bf338736d845` |
| 15 | `theorem` | [comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/comp.md) | 144 | `result-track:7405b2bc5086683819d5391edba291674885ec075aac3883b6d9ad6c11ed6ca7` |
| 16 | `theorem` | [tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/tendsto.md) | 148 | `result-track:ccd68a5e41968f37bfc06f7d2772df9e67a0b1539b296d52d39531c87974d00a` |
| 17 | `theorem` | [continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuous.md) | 160 | `result-track:498c65ad7fbd676ab1d018d9dd8ed0b7b70fc179fa5ee15d98e79816f35f0ef5` |
| 18 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 164 | `result-track:39073638e4e32fa6c8980fa4c03603d9bf8c70500c31ae1ae9c177b8d1607a37` |
| 19 | `theorem` | [lim_zero_bounded_linear_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/lim-zero-bounded-linear-map.md) | 170 | `result-track:6d798df311d6cf67c9e3310c8af377d2160b9a7139e73d2015c674f1bbc1edcb` |
| 20 | `theorem` | [isBigO_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isbigo-id.md) | 177 | `result-track:d6b0ef924575e86fac85f36ec10bc5c76b6f16eaf3c5d3e3a63c6edda0fc3439` |
| 21 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isbigo-comp.md) | 181 | `result-track:942970df1c002776c0a94e8995d6e496eac61b3304ae3f55b7500b618892ea25` |
| 22 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isbigo-sub.md) | 185 | `result-track:3a64cbde3574d80c5291adc7c0bbb01f58df6fc6f6b77ac19e9f5a8cdf9649e0` |
| 23 | `theorem` | [isBoundedLinearMap_prod_multilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedlinearmap-prod-multilinear.md) | 199 | `result-track:f95cb07571cf1c7595aba704fb87f66493e132875d49afe59a649b8853ebb0bf` |
| 24 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 211 | `result-track:fd30fc72fecb978699d94e9b5a72127430ada072f34f0921c9483424c24f6f72` |
| 25 | `theorem` | [map_add₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-add.md) | 244 | `result-track:7950a9be8f1c4f4603318faad979c3c715e6df519b713e19089f2aa8aa9fa290` |
| 26 | `theorem` | [map_zero₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-zero.md) | 247 | `result-track:fc755cbc947db4dfe2093c6e7416437e3fbb1e6db5d1c37e2f20a64e6a747df4` |
| 27 | `theorem` | [map_smulₛₗ₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-smul.md) | 250 | `result-track:06aea2787278fbdbdbfd6ad5b4fb3a4f2c72fbf7ebbd9f79c80628e601a9a852` |
| 28 | `theorem` | [map_sub₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-sub.md) | 259 | `result-track:9111c5105a6d95559b14cd12b06a80930dba7afe59a4e4c16928738b38eeee6c` |
| 29 | `theorem` | [map_neg₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-neg.md) | 262 | `result-track:4fccf7eb92c550cfd3008bce8e2780d6034b900e169e700141853e5e6cbc4693` |
| 30 | `theorem` | [map_smul₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/map-smul-source-edition-2.md) | 267 | `result-track:4ecf4743bd3d0e7c540fc9076773d7b21f36898fec4f7307541fcd3b914a1569` |
| 31 | `structure` | [IsBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap.md) | 275 | `declaration-track:e5cd04fd3f2c17179fca3973aa162bbbe897557491a699ae227fffff9b53a4d5` |
| 32 | `lemma` | [IsBoundedBilinearMap.symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-symm.md) | 284 | `result-track:008a6f9ff4828800bf1ee696727a37067cb773e398888bdb67e813fd18baf3db` |
| 33 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-isboundedbilinearmap.md) | 294 | `result-track:072efd928644ed6f678a9f8ebdbb97ca13fa6a2d7f989742c1af956a6d871fc8` |
| 34 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 308 | `declaration-track:08fa02ffe860156626c67614444208c3df24971775863694ef71cf2750fb934e` |
| 35 | `theorem` | [IsBoundedBilinearMap.isBigO](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isbigo.md) | 314 | `result-track:25c8536b9c02fc434185dbfa6e485f846091fe30a7207640f7b2f606f0927b73` |
| 36 | `theorem` | [IsBoundedBilinearMap.isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isbigo-comp.md) | 320 | `result-track:f47c5eda5edc2190b29e76b5ab32f35d1ce92bf6c2b1d44d8ca99d75de024539` |
| 37 | `theorem` | [IsBoundedBilinearMap.isBigO'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isbigo-source-edition-2.md) | 324 | `result-track:ace8a6258d6685f33f0c84faaf17e97b3409675bd31632ebcb01d392cb1d34cb` |
| 38 | `theorem` | [IsBoundedBilinearMap.map_sub_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-map-sub-left.md) | 330 | `result-track:3fc6d1a21b07e271f907281b4276112ee7835b062851a2fbb9390a148c11626e` |
| 39 | `theorem` | [IsBoundedBilinearMap.map_sub_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-map-sub-right.md) | 334 | `result-track:93836b929e73ca2d1eb18baf69a060746824043f5feefbbc2a2cdc0a8aab11a4` |
| 40 | `theorem` | [IsBoundedBilinearMap.continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-continuous.md) | 340 | `result-track:d654b4fb1863ce2809bc01825119132696e32380fdcdc5a59ccc79150c08f2b2` |
| 41 | `theorem` | [IsBoundedBilinearMap.continuous_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-continuous-left.md) | 353 | `result-track:def3d54f8eca677d0a2ec33741c8cde9d8f6fe1a498cc9a7969ddca3583f05a4` |
| 42 | `theorem` | [IsBoundedBilinearMap.continuous_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-continuous-right.md) | 357 | `result-track:69f7507cb7200e5156ba83e077c0298c6e3fa777b25c33e53309c15eee0c44b9` |
| 43 | `theorem` | [ContinuousLinearMap.continuous₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-continuous.md) | 362 | `result-track:b4c0a85a96fd9293a8e667310610416e03cfbb379437e74ed7c70ee086b5fb8e` |
| 44 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isboundedlinearmap-left.md) | 366 | `result-track:b93f5c121801756e58890bff1e91f264c363f1ef0cb82dba123ce28cee2505f4` |
| 45 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isboundedlinearmap-right.md) | 370 | `result-track:4d1ebf8811e3c33d8731f2a14db79956ce01d9a3c7ee2610503a512f19ee67d1` |
| 46 | `theorem` | [isBoundedBilinearMap_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-smul.md) | 374 | `result-track:d27a9a8860521029888e886c28ef2c0693041f86914d3d7f30f000c4c8721172` |
| 47 | `theorem` | [isBoundedBilinearMap_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-mul.md) | 379 | `result-track:71e0afa9c38895d2126d6f4c68645c3ad9ad5d7497f1dacf7cdee07117e444d5` |
| 48 | `theorem` | [isBoundedBilinearMap_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-comp.md) | 383 | `result-track:e37e9b6f7873b4bcdc575bdcc9eb3878958cdeabd52088c78b3ad7ce7cdba607` |
| 49 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 387 | `result-track:b61442df9f932b1037f01085ede6c66fb7c26b0c6b6a2dd8a1c661fccedd203a` |
| 50 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 391 | `result-track:041322200509372bb2a8f1360309d98a4166f91331bbc21034b4344d092e48fc` |
| 51 | `theorem` | [isBoundedBilinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-apply.md) | 395 | `result-track:1aeeee5ceb88364834876e6da5599f4de08c945d0e2f156f73fe894e2254be1c` |
| 52 | `theorem` | [isBoundedBilinearMap_smulRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-smulright.md) | 401 | `result-track:87c15db28d3f53196da28c518c717219d154e492d105e0f78b290d66c2007082` |
| 53 | `theorem` | [isBoundedBilinearMap_compMultilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-compmultilinear.md) | 408 | `result-track:75b5da555198bd4a83ab701971d85d3c9233ab092fc84286710c6d36d218c0a7` |
| 54 | `def` | [IsBoundedBilinearMap.linearDeriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-linearderiv.md) | 419 | `declaration-track:651db793d55f9a2b46daa97b3cec9c7291662b57749d3094a4977baf8e65b98d` |
| 55 | `def` | [IsBoundedBilinearMap.deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-deriv.md) | 425 | `declaration-track:28b08e83c69cf2de188aba6df5b90ee5f32747a647171033b2bd853aa55995a2` |
| 56 | `theorem` | [IsBoundedBilinearMap.deriv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-deriv-apply.md) | 429 | `result-track:c17b500785340c06ab6a1d5a59efd694ada354fd22d37e2345cc6ae1928cd5b4` |
| 57 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 436 | `result-track:71aaca2108de5ccaea596aeceffc171143b5cfec04ecbb71dccd1675cb73270f` |
| 58 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 443 | `result-track:62446a0eb39660b9870c2db1aa807cbccf9fff1da3c3494fe0a7d57ff82b4e5a` |
| 59 | `theorem` | [Continuous.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuous-clm-comp.md) | 450 | `result-track:35e2c5183066fbf15371bd0b44cad8ba7c252da78e7efc4661fc49b29752e135` |
| 60 | `theorem` | [ContinuousOn.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouson-clm-comp.md) | 454 | `result-track:baf386949e1c740348ee9946d13fd89814970e593bec0945eeec482e17d01201` |
| 61 | `theorem` | [Continuous.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuous-clm-apply.md) | 460 | `result-track:55473a2ee7ef226dedfcc08aa3862d1e04e381290308a1171e941fa009b40208` |
| 62 | `theorem` | [ContinuousOn.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/continuouson-clm-apply.md) | 464 | `result-track:7f989f8265d656472a791a3c0fae7f79287d56e064fdba56da25d6ab77f93263` |
| 63 | `theorem` | [isOpen](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/isopen.md) | 487 | `result-track:05fef0e84a623741bd476025ae727c22c707badfc7668dba22ecc2e14e41d3cf` |
| 64 | `theorem` | [nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMaps.lean/declarations/nhds.md) | 502 | `result-track:b45bb4a1475631f41c80432518b2235d1fe3b1b2aa3317fde5ba05cf2bc6b3aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f069a90fed8de0f8e19919155bf05a06a56ab6b9e6f11109d5906bd17f28992b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant76ce6916fae329473d94469e4a1c71a4e61ed5d86cd82a825638252860e6a168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
