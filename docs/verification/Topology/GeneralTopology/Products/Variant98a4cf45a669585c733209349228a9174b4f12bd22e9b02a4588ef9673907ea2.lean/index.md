# Verification target: GRWTSK.Topology.GeneralTopology.Products.Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c64e66c24f75ba22787954cea811d87b09e00f8",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c64e66c24f75ba22787954cea811d87b09e00f8`.

Source path: `GRWTSK/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ConcreteCategory.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CategoryTheory.Elementwise` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [piπ](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/pi--94489bc24f6d2330080a653f.md) | 37 | `declaration-track:94489bc24f6d2330080a653fc1f564ee6708ff53b57193f20ced7063b188e1ed` |
| 2 | `def` | [piFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/pifan--566907a44ac8fdbc6a5d8994.md) | 42 | `declaration-track:566907a44ac8fdbc6a5d89947fb29a89feb038a1af1c74ca5add6cdedc1dbc82` |
| 3 | `def` | [piFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/pifanislimit--203d2d0a76aee8c67fe412d3.md) | 46 | `declaration-track:203d2d0a76aee8c67fe412d3bcbcc912e565f10e7426a75cdc451cf2c484b23e` |
| 4 | `def` | [piIsoPi](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/piisopi--9f5bab67a9312af89b0d676a.md) | 60 | `declaration-track:9f5bab67a9312af89b0d676af21bbd9709246c7555a60eeead842742cc3165a4` |
| 5 | `theorem` | [piIsoPi_inv_π](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/piisopi-inv--9d951353ecfe7da981a0bf3f.md) | 64 | `result-track:9d951353ecfe7da981a0bf3f210583784ed0c215b7478e7dadb3f3b3bc8729d1` |
| 6 | `theorem` | [piIsoPi_inv_π_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/piisopi-inv-apply--22b30d91d85ea66422bc6cc4.md) | 67 | `result-track:22b30d91d85ea66422bc6cc414c94d2450bc86125b344367cec34d53983acfc3` |
| 7 | `theorem` | [piIsoPi_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/piisopi-hom-apply--f9f632c79d03fc886034f822.md) | 71 | `result-track:f9f632c79d03fc886034f82276b5921368ecab0f17587ff6c734b15c835c246f` |
| 8 | `abbrev` | [sigmaι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigma--3c8be360173cf33fd4bdca3b.md) | 78 | `declaration-track:3c8be360173cf33fd4bdca3bf0f06ce4d14c1a2267534b2a3a5d8668b3a4bfed` |
| 9 | `def` | [sigmaCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmacofan--72890edb50e23e1a4a00f004.md) | 86 | `declaration-track:72890edb50e23e1a4a00f004605b28587b53a64834b4b65c2e4ada311b527639` |
| 10 | `def` | [sigmaCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmacofaniscolimit--95b7bf8666d28f36f6a9e4b9.md) | 90 | `declaration-track:95b7bf8666d28f36f6a9e4b9004cf5243896b0f484ac06bc49f00c0fcab9a49a` |
| 11 | `def` | [sigmaIsoSigma](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmaisosigma--04fb6ebc57977bc1672d4ced.md) | 105 | `declaration-track:04fb6ebc57977bc1672d4cedc188e3773a2c1ed6ad073078983041239a0c1884` |
| 12 | `theorem` | [sigmaIsoSigma_hom_ι](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmaisosigma-hom--52ba5f3e62667904f8bf9dd7.md) | 109 | `result-track:52ba5f3e62667904f8bf9dd73d839f5f6a92f03735999a68823e809551fa780d` |
| 13 | `theorem` | [sigmaIsoSigma_hom_ι_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmaisosigma-hom-apply--33fda3382d11f189e8c0d208.md) | 112 | `result-track:33fda3382d11f189e8c0d2086124e5f1791d64b2f940d55b8a638a6df5ca0655` |
| 14 | `theorem` | [sigmaIsoSigma_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/sigmaisosigma-inv-apply--d639ab9657445eefe14a75fe.md) | 116 | `result-track:d639ab9657445eefe14a75fe942404023820b5896ec057ddc3fd7ac7026f7f27` |
| 15 | `abbrev` | [prodFst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodfst--7497ba97b99344b0415fb492.md) | 124 | `declaration-track:7497ba97b99344b0415fb49210a0660f0a73fe770175112551d42d1776382a59` |
| 16 | `abbrev` | [prodSnd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodsnd--188154609217f7ab9d69dd02.md) | 128 | `declaration-track:188154609217f7ab9d69dd02f265172184aab09d1e5311eae294c7675183c351` |
| 17 | `def` | [prodBinaryFan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodbinaryfan--43af62d575fcfbf4c4c4bfe2.md) | 132 | `declaration-track:43af62d575fcfbf4c4c4bfe29d071c9b723d72d4879309cfa15f03f1fdb6bc94` |
| 18 | `def` | [prodBinaryFanIsLimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodbinaryfanislimit--3437812edbaf28ca9e073edb.md) | 136 | `declaration-track:3437812edbaf28ca9e073edbf1ecfb4e441efc932527b3715c24bdca06645e85` |
| 19 | `def` | [prodIsoProd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod--c2fc2fef8c15c7425badbaf9.md) | 157 | `declaration-track:c2fc2fef8c15c7425badbaf9bfafe236adc3e4940d9f482ac3b6bc7672a2008d` |
| 20 | `theorem` | [prodIsoProd_hom_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod-hom-fst--944cb809789505ffc34ab977.md) | 161 | `result-track:944cb809789505ffc34ab977d81890e7a717e135d013722c8e67a20a164d5f96` |
| 21 | `theorem` | [prodIsoProd_hom_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod-hom-snd--3466f3f70dfdbf11d72e9dc8.md) | 167 | `result-track:3466f3f70dfdbf11d72e9dc8c901dced41a269043176963db214af769a2866e9` |
| 22 | `theorem` | [prodIsoProd_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod-hom-apply--1bacf0a41c747c11003161d2.md) | 173 | `result-track:1bacf0a41c747c11003161d2abc7e725f481bf1c0edb2b3b33e249621ea60f75` |
| 23 | `theorem` | [prodIsoProd_inv_fst](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod-inv-fst--89fc0d6ccf6bedf1741f03ee.md) | 181 | `result-track:89fc0d6ccf6bedf1741f03ee6f639cd26a8c8073884c159a0a19cbd6dfd6693e` |
| 24 | `theorem` | [prodIsoProd_inv_snd](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prodisoprod-inv-snd--2276b201b1a7624f5fe109bd.md) | 185 | `result-track:2276b201b1a7624f5fe109bdc86ca0484d0e235390b15421a6f7b91aad74b903` |
| 25 | `theorem` | [prod_topology](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/prod-topology--2b5ebc78965e9a9815ca7908.md) | 188 | `result-track:2b5ebc78965e9a9815ca790868ced9d7b0b37c5e00371a08a5c7d7aa930cf9f5` |
| 26 | `theorem` | [range_prod_map](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/range-prod-map--af494a9ab217d7102e98f718.md) | 198 | `result-track:af494a9ab217d7102e98f71835dc2b74bef73a39e227d0df2092b0c9e947b472` |
| 27 | `theorem` | [isInducing_prodMap](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/isinducing-prodmap--5398d21a05677857931285de.md) | 221 | `result-track:5398d21a05677857931285dea70056274f6dee2746d515e63eb5bcaff4593054` |
| 28 | `theorem` | [isEmbedding_prodMap](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/isembedding-prodmap--a92dba88f14ffca2b9bda65d.md) | 230 | `result-track:a92dba88f14ffca2b9bda65d473c12ddac0f9f680b5cabc15722eb9ef7e9a14f` |
| 29 | `def` | [binaryCofan](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/binarycofan--64e2ea57cacc0d8e6f6b881c.md) | 243 | `declaration-track:64e2ea57cacc0d8e6f6b881c98dccaa66ed18e11b03c0cd6ea2af033d61b0a43` |
| 30 | `def` | [binaryCofanIsColimit](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/binarycofaniscolimit--313036ea1e3a9eeb3c7d01e0.md) | 247 | `declaration-track:313036ea1e3a9eeb3c7d01e0103d24377469333d1176a90ad4af611a1920b81d` |
| 31 | `theorem` | [binaryCofan_isColimit_iff](../../../../../mathematics/Topology/GeneralTopology/Products/Variant98a4cf45a669585c733209349228a9174b4f12bd22e9b02a4588ef9673907ea2.lean/declarations/binarycofan-iscolimit-iff--ef1b6043376c82b595c89db1.md) | 261 | `result-track:ef1b6043376c82b595c89db1aca5762e4cc8570ed5a0a8edbe4b554c547576c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
