# Verification target: GRWTSK.Topology.GeneralTopology.StoneCech.Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2cfeeb535a579c0bbf4555ead31d4a08427559f5",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2cfeeb535a579c0bbf4555ead31d4a08427559f5`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DenseEmbedding` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ultrafilterBasis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilterbasis--1754fc6fd609cce48a858562.md) | 33 | `declaration-track:1754fc6fd609cce48a858562963d63f4d8fbf152e8bbd61f9d62586aaccdf78a` |
| 2 | `instance` | [Ultrafilter.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-topologicalspace--691499adb292f058142e2795.md) | 39 | `declaration-track:691499adb292f058142e2795c14ca650ca2fc1e03ef03453982b590da49325d2` |
| 3 | `theorem` | [ultrafilterBasis_is_basis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilterbasis-is-basis--212dfb99adcba015a591fb31.md) | 43 | `result-track:212dfb99adcba015a591fb31a03fb08ec2bb174f278a89eda79b23cfa2afbaea` |
| 4 | `theorem` | [ultrafilter_isOpen_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-isopen-basic--f16c2be1ac76deedd8a92cf7.md) | 53 | `result-track:f16c2be1ac76deedd8a92cf7c885f407ee5c88c43c6946613ea5f97f509822e7` |
| 5 | `theorem` | [ultrafilter_isClosed_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-isclosed-basic--723b41a5c7df622b78b78f98.md) | 58 | `result-track:723b41a5c7df622b78b78f98744d191cda97cacd4038d1c1f2ef096a7a690efb` |
| 6 | `theorem` | [ultrafilter_converges_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-converges-iff--50d4c94cfe6d295af17fd7fc.md) | 67 | `result-track:50d4c94cfe6d295af17fd7fc3010c84372ede545ed6baa266149e68acf77f039` |
| 7 | `instance` | [ultrafilter_compact](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-compact--88e6e26cebc1de95d93d3b8e.md) | 80 | `declaration-track:88e6e26cebc1de95d93d3b8e5531b59e62ee57723620c43721aff7c2a96fb0ef` |
| 8 | `instance` | [Ultrafilter.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-t2space--3b517822a2f49f97c3f467ed.md) | 85 | `declaration-track:3b517822a2f49f97c3f467edb9e5ec3289da5730dab7a3fa56c03db8b3776c3b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/instance--20b8d141e187789982efd8fc.md) | 92 | `declaration-track:20b8d141e187789982efd8fcbbdb7bbd2ae5595eb0673783a72a447e4af83a04` |
| 10 | `theorem` | [Ultrafilter.tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-tendsto-pure-self--d6f0393b217501d13f5582ed.md) | 104 | `result-track:d6f0393b217501d13f5582ed78224d6637674d55af2d46abda4c0a7bd2b072f4` |
| 11 | `theorem` | [ultrafilter_comap_pure_nhds](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-comap-pure-nhds--c6a0768d6d7320a318f938ee.md) | 110 | `result-track:c6a0768d6d7320a318f938eed7b67fede07bdf10f05e89a387e6cb72c1cbdf08` |
| 12 | `theorem` | [ultrafilter_pure_injective](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-pure-injective--e8898c73864de6e1acc0cbfd.md) | 122 | `result-track:e8898c73864de6e1acc0cbfddbe03142fd04c64f314abdef6994c2af16ebbba9` |
| 13 | `theorem` | [denseRange_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/denserange-pure--a001af9c951a1a30410abf11.md) | 132 | `result-track:a001af9c951a1a30410abf11c66f9f7e798f0ec38cb2292838012ce7870f1ee9` |
| 14 | `theorem` | [induced_topology_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/induced-topology-pure--d8a3ca8efa63dde1f92f1348.md) | 138 | `result-track:d8a3ca8efa63dde1f92f134837b49119cf4c8931f66a4506403c0929516488a0` |
| 15 | `theorem` | [denseInducing_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/denseinducing-pure--990d67e2f3de4c06aa3fab79.md) | 147 | `result-track:990d67e2f3de4c06aa3fab7931c16ab4e9f27c0cc8ddccfcd9b607f05720269c` |
| 16 | `theorem` | [denseEmbedding_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/denseembedding-pure--7501f6853a4a42393c3f35d6.md) | 154 | `result-track:7501f6853a4a42393c3f35d686d1c3002b0e2235f2d874db8b98c8dcd22bbb9c` |
| 17 | `def` | [Ultrafilter.extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-extend--977a542d29b95a93c20cea4e.md) | 172 | `declaration-track:977a542d29b95a93c20cea4e9f7a10145b72f1a6f9d878135bca405857b73789` |
| 18 | `theorem` | [ultrafilter_extend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-extend-extends--59154a9b5bf4ff3cfa261cf0.md) | 179 | `result-track:59154a9b5bf4ff3cfa261cf0b6bab428c74b2a5c70c1f3bab6f0102bbc5e8da8` |
| 19 | `theorem` | [continuous_ultrafilter_extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/continuous-ultrafilter-extend--b0650ca42cc291c189db5441.md) | 187 | `result-track:b0650ca42cc291c189db544135e16f7c08c016764f23258a7e70c4307c4c82ef` |
| 20 | `theorem` | [ultrafilter_extend_eq_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/ultrafilter-extend-eq-iff--6b60b0771edcc841dd058ffb.md) | 200 | `result-track:6b60b0771edcc841dd058ffbcecf17cf399bce5c9630a3c23f0413db4f532708` |
| 21 | `instance` | [stoneCechSetoid](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecechsetoid--1b8ddbe9793f1da5efc3bb3a.md) | 232 | `declaration-track:1b8ddbe9793f1da5efc3bb3a0d739c11fb9adea1e0d6a655389ede2b0dc77b18` |
| 22 | `def` | [StoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecech--5c7ddef451f4c169fde75226.md) | 244 | `declaration-track:5c7ddef451f4c169fde752267386842cd44a87061cc61a554c0e1f580e575b75` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/instance--efb06d4a54acc5816f0c12bb.md) | 250 | `declaration-track:efb06d4a54acc5816f0c12bb87a375ae09fdeaca6012c6481653857a16f54a2b` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/instance--f8571bca284ef4cd5cb7409b.md) | 252 | `declaration-track:f8571bca284ef4cd5cb7409b49f4713ef3a6499383a9f25d2ad7dd8da2951098` |
| 25 | `def` | [stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecechunit--b3ccf083476bd00e06ed83fc.md) | 255 | `declaration-track:b3ccf083476bd00e06ed83fc800afa81e5a14dfaa4ab49476cea26c96c81a3e4` |
| 26 | `theorem` | [denseRange_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/denserange-stonecechunit--8495f83f821015d64eac27dd.md) | 261 | `result-track:8495f83f821015d64eac27dddf63b1de0b01e992b6a229c0f4608ecef8b45870` |
| 27 | `def` | [stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecechextend--8a9520cdf4f3d01f45c70189.md) | 278 | `declaration-track:8a9520cdf4f3d01f45c70189eacc01aa8aa98c2fb68d807f3dd138cc73c06d6f` |
| 28 | `theorem` | [stoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecechextend-extends--fcb6b6fa5dc9a3bc6b592c30.md) | 282 | `result-track:fcb6b6fa5dc9a3bc6b592c30c54698c57d67b0afa70fbb7fe90ac0024005710f` |
| 29 | `theorem` | [continuous_stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/continuous-stonecechextend--d20e651abbefc97849741b02.md) | 286 | `result-track:d20e651abbefc97849741b02528910454e2b2a6d5f8442334530aa448f2d05fb` |
| 30 | `theorem` | [stoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecech-hom-ext--5a7d3e75d53deaabbd4382aa.md) | 290 | `result-track:5a7d3e75d53deaabbd4382aa739883c55e6ca365fff6c9c7dcd98e77537d4960` |
| 31 | `theorem` | [convergent_eqv_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/convergent-eqv-pure--1f5f05ce4437628df83121cc.md) | 299 | `result-track:1f5f05ce4437628df83121cc2b7c29da00fcc2416d3cc8f6fff8968ff48bc65e` |
| 32 | `theorem` | [continuous_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/continuous-stonecechunit--2bd2aed6f15a80ccc36affe9.md) | 308 | `result-track:2bd2aed6f15a80ccc36affe92391a2b266edf9983be450a7e1151824d5601615` |
| 33 | `instance` | [StoneCech.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecech-t2space--f224520ca897a6d18e401c0d.md) | 318 | `declaration-track:f224520ca897a6d18e401c0d8690a92a2300a32195577cc184381019d4ec7eb4` |
| 34 | `instance` | [StoneCech.compactSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta324ea218b3c51fdd095fd6de8f9b8b9e7fffd60e4a6d64eeba387d3d7dd6106.lean/declarations/stonecech-compactspace--31b557d80a66df377212b9d0.md) | 331 | `declaration-track:31b557d80a66df377212b9d0ab8b576f033f5fe8e8a42ab5419981c53147f1bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
