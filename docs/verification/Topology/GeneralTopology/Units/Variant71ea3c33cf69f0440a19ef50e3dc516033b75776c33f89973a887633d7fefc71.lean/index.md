# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acdb16f8da185a0305573933881f665f4b152e18",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acdb16f8da185a0305573933881f665f4b152e18`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Ring.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [oneSub](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/onesub--367769653170026183657e23.md) | 51 | `declaration-track:367769653170026183657e23fbdbc6de3ded57d029d695f5d57f29c2ad8290da` |
| 2 | `def` | [add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/add--47d735521ca8ccbc8b6c863c.md) | 62 | `declaration-track:47d735521ca8ccbc8b6c863cdc3ee9604f8ff051f27b3c5cfe962be2a50aeabd` |
| 3 | `def` | [ofNearby](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/ofnearby--85a967817f0b0b25f8937c6f.md) | 79 | `declaration-track:85a967817f0b0b25f8937c6f1463cda79caff296119060da44bb37d79df3fc8f` |
| 4 | `theorem` | [isOpen](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/isopen--13f28e853f35880fbe51f19b.md) | 85 | `result-track:13f28e853f35880fbe51f19b04770d5ad4718e5e189368778a684f8426468188` |
| 5 | `theorem` | [nhds](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/nhds--241c2a3a24b917596eb72982.md) | 94 | `result-track:241c2a3a24b917596eb729822b2a6693fdec9b3cfd0c6165207c3c5c2f23b0c9` |
| 6 | `theorem` | [subset_compl_ball](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/subset-compl-ball--07601aa5778fa20a44e48d60.md) | 104 | `result-track:07601aa5778fa20a44e48d60051c94575c5501205b5b8d61220b9496897f26de` |
| 7 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/isclosed--811b8683c33ef8a8d3daa0e8.md) | 109 | `result-track:811b8683c33ef8a8d3daa0e8404a55c4abbf7396532ed9ef61aa2baef76acb47` |
| 8 | `theorem` | [inverse_one_sub](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-one-sub--fed73ea0305b8ed06f407a60.md) | 121 | `result-track:fed73ea0305b8ed06f407a600b905d0845fb4d0a3cb745ee920a17f7fa8c96ff` |
| 9 | `theorem` | [inverse_add](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add--51daaab98408d3ac696aeb50.md) | 127 | `result-track:51daaab98408d3ac696aeb50d1b4995b06111002ffcaa2f3e338dac08bbc0bce` |
| 10 | `theorem` | [inverse_one_sub_nth_order'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-one-sub-nth-order--eb8ac628e13e3a957e3bc8aa.md) | 137 | `result-track:eb8ac628e13e3a957e3bc8aa2c84eff914182a7fe213fbb0795ace3225d243df` |
| 11 | `theorem` | [inverse_one_sub_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-one-sub-nth-order--5e287c86516c1168f207f96b.md) | 145 | `result-track:5e287c86516c1168f207f96be16f461708fbaba7c7fc335eb08dad0a8dbffe50` |
| 12 | `theorem` | [inverse_add_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add-nth-order--0378b151347c3d008cce30d2.md) | 156 | `result-track:0378b151347c3d008cce30d2b4051b7fb86d351f4d961fb715a951d971c773a8` |
| 13 | `theorem` | [inverse_one_sub_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-one-sub-norm--47b16307d15b7c366f33693d.md) | 167 | `result-track:47b16307d15b7c366f33693d8005cd093aa4408643fbe39b81e12b17fe955957` |
| 14 | `theorem` | [inverse_add_norm](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add-norm--68b317dc12ea095abb6203dc.md) | 186 | `result-track:68b317dc12ea095abb6203dc8ff295f9470713e5ac3b888674aabfb2d579a80b` |
| 15 | `theorem` | [inverse_add_norm_diff_nth_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add-norm-diff-nth-order--b1478d0e9c886a8b1ad2ee44.md) | 197 | `result-track:b1478d0e9c886a8b1ad2ee44ff4e634c9b678d06b0577472f7a98ed47e1005b9` |
| 16 | `theorem` | [inverse_add_norm_diff_first_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add-norm-diff-first-order--b184c7604af6526147c908d2.md) | 208 | `result-track:b184c7604af6526147c908d2115370195177640b008fd0a7efad457d669def64` |
| 17 | `theorem` | [inverse_add_norm_diff_second_order](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-add-norm-diff-second-order--1e5bd0f49c2e46a7593eb62a.md) | 214 | `result-track:1e5bd0f49c2e46a7593eb62a2da64975042f4b69db4c50a1f8f123dc4e870269` |
| 18 | `theorem` | [inverse_continuousAt](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/inverse-continuousat--cedbdbfbd3be4dab92ee4a5e.md) | 222 | `result-track:cedbdbfbd3be4dab92ee4a5e8e5fddba48b2535c3b9c3e6dd53fef1928314463` |
| 19 | `theorem` | [openEmbedding_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/openembedding-val--ddfb0280c7a5c173ed181e27.md) | 240 | `result-track:ddfb0280c7a5c173ed181e27b3ec028983b3fd6d054dbd4594cbe0ae77e2c6a2` |
| 20 | `theorem` | [isOpenMap_val](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/isopenmap-val--6003681ea945d0d2b3c9e0cd.md) | 248 | `result-track:6003681ea945d0d2b3c9e0cda1805627db0f1d9eef7f13a1e154b11a674aaf45` |
| 21 | `theorem` | [eq_top_of_norm_lt_one](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/eq-top-of-norm-lt-one--08405dbda3f0cd11e261643a.md) | 257 | `result-track:08405dbda3f0cd11e261643af7684754637d00051821faadc63024023d845b68` |
| 22 | `theorem` | [closure_ne_top](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/closure-ne-top--5798d2f574715f96e29996aa.md) | 263 | `result-track:5798d2f574715f96e29996aac5269b45fd5bdb930eba27f385ff18eb306214df` |
| 23 | `theorem` | [IsMaximal.closure_eq](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/ismaximal-closure-eq--db5aadd4bdf3c73630926d1b.md) | 269 | `result-track:db5aadd4bdf3c73630926d1ba6b67e4654f2d2eb3b3d5cd440622e75e8f80821` |
| 24 | `instance` | [IsMaximal.isClosed](../../../../../mathematics/Topology/GeneralTopology/Units/Variant71ea3c33cf69f0440a19ef50e3dc516033b75776c33f89973a887633d7fefc71.lean/declarations/ismaximal-isclosed--bf10a142cfd34c39b0091ebb.md) | 274 | `declaration-track:bf10a142cfd34c39b0091ebbfe8c5f9169df7ff2abdd931cb5126e3be19ec0e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
