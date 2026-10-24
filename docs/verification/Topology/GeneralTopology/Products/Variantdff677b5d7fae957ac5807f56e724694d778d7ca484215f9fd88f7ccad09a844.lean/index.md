# Verification target: GRWTSK.Topology.GeneralTopology.Products.Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eaf1991b18d2fbb4988777d1b78dd86c9c5ac88d`.

Source path: `GRWTSK/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [piπ](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/pi--8a47ee692bb197efdf82b3ea.md) | 29 | `declaration-track:8a47ee692bb197efdf82b3eab891c48c4cf26225b3c57cd2bab549786ab8d081` |
| 2 | `def` | [piFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/pifan--366efd5fda27cca5f1072560.md) | 34 | `declaration-track:366efd5fda27cca5f1072560f57dc0a008b1e5d2a63fc3d14973eaff8709d0fb` |
| 3 | `def` | [piFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/pifanislimit--380d754cafcf0f071eed6d44.md) | 38 | `declaration-track:380d754cafcf0f071eed6d44ee21e14cbed0ecc6322f245ae09935e2d5e790d9` |
| 4 | `def` | [piIsoPi](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/piisopi--3c2f8a1314d07fdc80364490.md) | 52 | `declaration-track:3c2f8a1314d07fdc803644900ee62f37cc0b49a4343d64f5bdabd9fc7f84e8bf` |
| 5 | `theorem` | [piIsoPi_inv_π](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/piisopi-inv--0a23b2a80f8f1638c757eb29.md) | 56 | `result-track:0a23b2a80f8f1638c757eb29cbea83a4d99caa52f967c7cb04a50b533a7ddab9` |
| 6 | `theorem` | [piIsoPi_inv_π_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/piisopi-inv-apply--5d356246b358ec95b03a3ce3.md) | 59 | `result-track:5d356246b358ec95b03a3ce3a0b17864c36ea40ac9f45747f44a6383742dc6f9` |
| 7 | `theorem` | [piIsoPi_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/piisopi-hom-apply--45dcb19bc3bf91d4f5bce14b.md) | 63 | `result-track:45dcb19bc3bf91d4f5bce14b0099c5189bc707f8b21b53fed2472d496c9fc041` |
| 8 | `abbrev` | [sigmaι](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigma--7dee4bf32130028024203617.md) | 70 | `declaration-track:7dee4bf3213002802420361720212348c979f7cefde77c9f4af919e28c5da78b` |
| 9 | `def` | [sigmaCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmacofan--327a6cfeb2f4f4223aa63ae9.md) | 78 | `declaration-track:327a6cfeb2f4f4223aa63ae9bccc5d9b79952e8dae81ccc45394caea5dfe7793` |
| 10 | `def` | [sigmaCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmacofaniscolimit--35111f0fe4daa3a51bcef9e2.md) | 82 | `declaration-track:35111f0fe4daa3a51bcef9e29f8df40c39720d134fd7db2bf1e74d85a7f88503` |
| 11 | `def` | [sigmaIsoSigma](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmaisosigma--deae1e7b30df709b802fae4b.md) | 97 | `declaration-track:deae1e7b30df709b802fae4b77e06dec2bcb0cc95bbd73230a52bd8713628a4c` |
| 12 | `theorem` | [sigmaIsoSigma_hom_ι](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmaisosigma-hom--39dfa982a80f2e62b6b8a2c8.md) | 101 | `result-track:39dfa982a80f2e62b6b8a2c8ef71a78d493876ff0683fe2996ae9cb42943f303` |
| 13 | `theorem` | [sigmaIsoSigma_hom_ι_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmaisosigma-hom-apply--b9cbf472a379faf04931ce83.md) | 104 | `result-track:b9cbf472a379faf04931ce8344bbde3e50bf6fee143cd50ece0b458ac228a06a` |
| 14 | `theorem` | [sigmaIsoSigma_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/sigmaisosigma-inv-apply--051d4fb4f60cf76a46312930.md) | 108 | `result-track:051d4fb4f60cf76a4631293098b5e99bcd4262fe6b0251e72faf9697125dffd6` |
| 15 | `abbrev` | [prodFst](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodfst--64f595d3260126cedf2f3e86.md) | 116 | `declaration-track:64f595d3260126cedf2f3e868cbfe0b89e120b881f7cf7310a0a2596507ab2e3` |
| 16 | `abbrev` | [prodSnd](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodsnd--39ecc54f502785650c863538.md) | 120 | `declaration-track:39ecc54f502785650c863538f00bef75f273efdfe31a07a5167ee5644bf50087` |
| 17 | `def` | [prodBinaryFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodbinaryfan--f8b3b4b5b677375c141c12eb.md) | 124 | `declaration-track:f8b3b4b5b677375c141c12ebdede0213948034e7c169a0d2db43c344c2118504` |
| 18 | `def` | [prodBinaryFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodbinaryfanislimit--0adf0980284e27d84d8d4e36.md) | 128 | `declaration-track:0adf0980284e27d84d8d4e36d119c946f5ffba95bdd719ad8442e69e7bf523ec` |
| 19 | `def` | [prodIsoProd](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod--856acf8636c7dfff2b5beb85.md) | 149 | `declaration-track:856acf8636c7dfff2b5beb8538695ead75e9f45c6e53e83e6a66070a32709c0d` |
| 20 | `theorem` | [prodIsoProd_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod-hom-fst--7fc741d2c975d282bb8f150f.md) | 153 | `result-track:7fc741d2c975d282bb8f150fa5fa7bf8e457907298a073cebdc9d2fd594b7a93` |
| 21 | `theorem` | [prodIsoProd_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod-hom-snd--02812423af4cc4a7af84045b.md) | 159 | `result-track:02812423af4cc4a7af84045bb03f001303ca7e40fb33140300b9d99979c59e4c` |
| 22 | `theorem` | [prodIsoProd_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod-hom-apply--144e802ba1e498644f4c452d.md) | 165 | `result-track:144e802ba1e498644f4c452de92a6167c94549b00a87871202783a92ebb5a4f8` |
| 23 | `theorem` | [prodIsoProd_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod-inv-fst--813f50b91e99796ac931572b.md) | 173 | `result-track:813f50b91e99796ac931572baeafc9d120e90edc85999bdfd85c40e60c099fb0` |
| 24 | `theorem` | [prodIsoProd_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prodisoprod-inv-snd--39a0850ccd16de9231d77446.md) | 177 | `result-track:39a0850ccd16de9231d77446802e24c9b186753f28a83e140ec4a0daf207ca51` |
| 25 | `theorem` | [prod_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/prod-topology--a926f37faa74823a9a56e2de.md) | 180 | `result-track:a926f37faa74823a9a56e2de540125fc3933023ddf6d12da1ccee50e6ee2ab03` |
| 26 | `theorem` | [range_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/range-prod-map--9ad477d5ba5bb82320bef5f2.md) | 190 | `result-track:9ad477d5ba5bb82320bef5f2a157955415be319883cb9acfb16dfedbfc573386` |
| 27 | `theorem` | [isInducing_prodMap](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/isinducing-prodmap--97df944cf78125d1a7dc4a4f.md) | 213 | `result-track:97df944cf78125d1a7dc4a4fdd40f7a41b2d291f8b9c199f83c57b0dc0822731` |
| 28 | `theorem` | [isEmbedding_prodMap](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/isembedding-prodmap--2f6744231a2adb7672f28111.md) | 222 | `result-track:2f6744231a2adb7672f28111fedf8905b84833bea68ab75ce997b6d6deb07e51` |
| 29 | `def` | [binaryCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/binarycofan--c14c04c51cc5e9becdf570b7.md) | 235 | `declaration-track:c14c04c51cc5e9becdf570b733f59407f1c7e023bd736b51efff4e367099302b` |
| 30 | `def` | [binaryCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/binarycofaniscolimit--c401326e6453337d63eafc12.md) | 239 | `declaration-track:c401326e6453337d63eafc12b212ff03d01f4f5f0ab120cea68c2d2127d05d8f` |
| 31 | `theorem` | [binaryCofan_isColimit_iff](../../../../../mathematics/Topology/GeneralTopology/Products/Variantdff677b5d7fae957ac5807f56e724694d778d7ca484215f9fd88f7ccad09a844.lean/declarations/binarycofan-iscolimit-iff--2399804cee880613dce95167.md) | 253 | `result-track:2399804cee880613dce951670ca81976f862861b5ee88695f658b9f3c9ef5d57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
