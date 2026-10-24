# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsLemma.Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f22d298c5365aaf720a73578ecadd66f8acf1149",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f22d298c5365aaf720a73578ecadd66f8acf1149`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/cu--254913e12d5c2e8611a34e0e.md) | 114 | `declaration-track:254913e12d5c2e8611a34e0e5683f5d0cc46e477b208935c72c903e61fc3bb6a` |
| 2 | `def` | [left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/left--6ce361ed8db09f2e45341f80.md) | 135 | `declaration-track:6ce361ed8db09f2e45341f8069ac55512d73cfd0288e1c8a331354ee4e9341cf` |
| 3 | `def` | [right](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/right--13e14b38139d8814832e5046.md) | 147 | `declaration-track:13e14b38139d8814832e504610e5f72556164e0c7c38055f4844de5c26345b88` |
| 4 | `theorem` | [left_U_subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/left-u-subset-right-c--0d56f2d568a8d96b9f7571a6.md) | 156 | `result-track:0d56f2d568a8d96b9f7571a684c074e64d56cd8f47755322e811fb6a63c26d73` |
| 5 | `theorem` | [left_U_subset](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/left-u-subset--ad46f7642db75726c0fa7c40.md) | 159 | `result-track:ad46f7642db75726c0fa7c400ff7315298b00ba6b9e942f4faef41a8a4fe5c2d` |
| 6 | `theorem` | [subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/subset-right-c--2165f0b89ce0035096db0afe.md) | 162 | `result-track:2165f0b89ce0035096db0afe330c4ffdcb65fac443e3f9c5ca505d98e5c96d21` |
| 7 | `def` | [approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx--2bc36446ef3e8bdf9c605420.md) | 167 | `declaration-track:2bc36446ef3e8bdf9c605420d8bca18cd5604851d39bd6983dec1be89aba97e8` |
| 8 | `theorem` | [approx_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-of-mem-c--f01cfefe32fe59dae5195b6b.md) | 171 | `result-track:f01cfefe32fe59dae5195b6ba4814207a1d1510e0f0cfcb252548b2fcf0f37d9` |
| 9 | `theorem` | [approx_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-of-notmem-u--77340ad0e2b0b4a6f78e9870.md) | 179 | `result-track:77340ad0e2b0b4a6f78e9870bdf2f70a6bef5ff4638eb19b50a3f299bf72451e` |
| 10 | `theorem` | [approx_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-nonneg--d9fdc0497fe623bca505e819.md) | 189 | `result-track:d9fdc0497fe623bca505e819afe2b15893b502e76aa5c3d28a70a0c636b92251` |
| 11 | `theorem` | [approx_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-le-one--7381eb2632b124671f616bf9.md) | 196 | `result-track:7381eb2632b124671f616bf9a4f72256d00861cac02c665eb3fd867d821d3168` |
| 12 | `theorem` | [bddAbove_range_approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/bddabove-range-approx--b8f0aa3cb49b769494ef18cf.md) | 205 | `result-track:b8f0aa3cb49b769494ef18cf192d86ed1f7ef9c5575908c5b70aae8967a562d7` |
| 13 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-le-approx-of-u-sub-c--7cceb2a79a5654729f6bf2f6.md) | 208 | `result-track:7cceb2a79a5654729f6bf2f651d52c758b7f8863ed3ab4d45803fb77c77fc727` |
| 14 | `theorem` | [approx_mem_Icc_right_left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-mem-icc-right-left--0079f384da7163cc99c851e5.md) | 218 | `result-track:0079f384da7163cc99c851e5801523814a9d4fecfe872dab968609787ee1d820` |
| 15 | `theorem` | [approx_le_succ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-le-succ--1f345f33b427b6a612732907.md) | 232 | `result-track:1f345f33b427b6a61273290798613667f577264c3df4a8dc1ab89ab53d306b17` |
| 16 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-mono--26c02f92e42fd6c397675b26.md) | 241 | `result-track:26c02f92e42fd6c397675b260b57a89c8f5860cce374dd073085759a3353fc1d` |
| 17 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim--17c9b7b04d5013caaf5624c8.md) | 249 | `declaration-track:17c9b7b04d5013caaf5624c8587439bf192c43cddf06454f8f99614c5ad47a97` |
| 18 | `theorem` | [tendsto_approx_atTop](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/tendsto-approx-attop--3d1154aa1a2ac25af8d82d72.md) | 252 | `result-track:3d1154aa1a2ac25af8d82d72232fa1e80cee9cbcdfcb51ea4af04307a555c217` |
| 19 | `theorem` | [lim_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-of-mem-c--f04bbfce7589ea95317fef69.md) | 256 | `result-track:f04bbfce7589ea95317fef691e64a6c08a7505b0d5dd48290f95caed368668cb` |
| 20 | `theorem` | [disjoint_C_support_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/disjoint-c-support-lim--6a565ba0a99a3f33af74f899.md) | 259 | `result-track:6a565ba0a99a3f33af74f89911b82ee138242676091a54e741b84f0ffdce39be` |
| 21 | `theorem` | [lim_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-of-notmem-u--89f6a893678aeabf819cfb90.md) | 262 | `result-track:89f6a893678aeabf819cfb90c164b30fe05ee8874e155f4f854599b6b412fb93` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-eq-midpoint--7f9ec6739b47b94d85b08a3f.md) | 265 | `result-track:7f9ec6739b47b94d85b08a3fadb45e69a3601e32777834056e15c4582abc5359` |
| 23 | `theorem` | [approx_le_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/approx-le-lim--8af50b3184e42dc3f5a21914.md) | 271 | `result-track:8af50b3184e42dc3f5a219148adb04bb866a5efb2e9f21fe3cb36352c26ea685` |
| 24 | `theorem` | [lim_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-nonneg--8b3557e0452dee558a6ddaa3.md) | 274 | `result-track:8b3557e0452dee558a6ddaa370130b68ec24bdddc6be33339365dc116949351b` |
| 25 | `theorem` | [lim_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-le-one--3bffc169b191f77612baead9.md) | 277 | `result-track:3bffc169b191f77612baead981b1faf0c9f8f12de24dc4f41e4b4568ceb298d2` |
| 26 | `theorem` | [lim_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/lim-mem-icc--c4629cc8ed5f76c22ce1ae31.md) | 280 | `result-track:c4629cc8ed5f76c22ce1ae31fe3dbc84a4a10ea79ee2aa702d2811e06171af0f` |
| 27 | `theorem` | [continuous_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/continuous-lim--00048c702adc278b5b211221.md) | 284 | `result-track:00048c702adc278b5b211221919e9384e493208de111696335eb4cd5b45dcc5e` |
| 28 | `theorem` | [exists_continuous_zero_one_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-zero-one-of-isclosed--ecdc730097dab6a68c52a14e.md) | 331 | `result-track:ecdc730097dab6a68c52a14e61e41acc32c0104c9c903b547b848eff675b21ac` |
| 29 | `theorem` | [exists_continuous_zero_one_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-zero-one-of-iscompact--4966ded2e8524024d98f6d4a.md) | 358 | `result-track:4966ded2e8524024d98f6d4a905e8e1628d258528881c4c1197b330e75b2b6fa` |
| 30 | `theorem` | [exists_continuous_zero_one_of_isCompact'](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-zero-one-of-iscompact--b2209ccf939c55cd497e0561.md) | 389 | `result-track:b2209ccf939c55cd497e0561daedc105e2c40ae6b73866d1883f80ac4cf8bf24` |
| 31 | `theorem` | [exists_continuous_one_zero_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-one-zero-of-iscompact--de7ba3d310997a35bb5e6793.md) | 413 | `result-track:de7ba3d310997a35bb5e67930f04c4cf6c626dc45f99ecfb7c92f752dd8052b2` |
| 32 | `theorem` | [exists_continuous_one_zero_of_isCompact_of_isGδ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-one-zero-of-iscompact-of-isg--be099e6b3fa4f68cb7e053f1.md) | 442 | `result-track:be099e6b3fa4f68cb7e053f1db128b20913df3a48c8ed107eeb49bdebe9493e2` |
| 33 | `lemma` | [exists_tsupport_one_of_isOpen_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-tsupport-one-of-isopen-isclosed--e737af97380c54fb13f30853.md) | 490 | `result-track:e737af97380c54fb13f3085377dcb1dff14084bd7f94dfa5394cd34bbdaa9f57` |
| 34 | `lemma` | [exists_continuousMap_one_of_isCompact_subset_isOpen](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuousmap-one-of-iscompact-subset-isopen--2e28a4513a76605efb54f705.md) | 538 | `result-track:2e28a4513a76605efb54f705aa587bdf61b11d03db23034b39cdac36ed362979` |
| 35 | `theorem` | [exists_continuous_nonneg_pos](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/declarations/exists-continuous-nonneg-pos--ea01dcabbf9b48d2fb7069e9.md) | 549 | `result-track:ea01dcabbf9b48d2fb7069e943a7b2bcadf8698089c56fa2f4c44ff212de7d9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
