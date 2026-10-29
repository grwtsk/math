# Verification target: Topology Bases Namespaced Is Topological Basis Of Open Of Nhds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98d06395051f49536a70c1b3294eecd50089e4b5",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98d06395051f49536a70c1b3294eecd50089e4b5`.

Source path: `GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsTopologicalBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis.md) | 79 | `declaration-track:87ff4e8addb09b9e8d2d77b4bbc4fd2449d7a50b638d6ad53252bc652cd60c3c` |
| 2 | `theorem` | [IsTopologicalBasis.insert_empty](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-insert-empty.md) | 88 | `result-track:70ee65750ed8c5463011236c0a72badadd707a60a34b2da4acf770e7c9638c81` |
| 3 | `theorem` | [IsTopologicalBasis.diff_empty](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-diff-empty.md) | 104 | `result-track:2ead39c5341762ea1d2f36cfb1ee9071b3f03ba61d08a987c576b4e33608a05e` |
| 4 | `theorem` | [isTopologicalBasis_of_subbasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-of-subbasis.md) | 119 | `result-track:aba02cd6620b96dc74bda8db21a6b64c7d24c8b5bbeb5d9c6316ac139680f9fb` |
| 5 | `theorem` | [isTopologicalBasis_of_open_of_nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-of-open-of-nhds.md) | 136 | `result-track:31453289a5303cf7490245500ed97f6b418f2445d1f0ea9ad389a3138f900d0b` |
| 6 | `theorem` | [IsTopologicalBasis.mem_nhds_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-mem-nhds-iff.md) | 153 | `result-track:26cb8c8dff49cfa737edb7a0cfcf6f24612bd9c4387a5d6f52c1e0825350ee00` |
| 7 | `theorem` | [IsTopologicalBasis.isOpen_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-isopen-iff.md) | 166 | `result-track:3adc12e9884149f92e78c67b15449606f7080572cf18c01ca93fd69d31f3539c` |
| 8 | `theorem` | [IsTopologicalBasis.nhds_hasBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-nhds-hasbasis.md) | 170 | `result-track:9c5b4b4a83762f135d7cd3e94b8f8c916b91e8a0a231508ea1d076de74a3d450` |
| 9 | `theorem` | [IsTopologicalBasis.isOpen](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-isopen.md) | 175 | `result-track:000bc453a5f699f639fdd9b57bcec14160d7b528e99007f531b1362eb33fa125` |
| 10 | `theorem` | [IsTopologicalBasis.mem_nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-mem-nhds.md) | 181 | `result-track:2416ad89abf541f2184255d6ad97c634525c19441d2c18100c82205ac30a57e9` |
| 11 | `theorem` | [IsTopologicalBasis.exists_subset_of_mem_open](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-exists-subset-of-mem-open.md) | 186 | `result-track:2a95850c893c7f7f4decb5eea2ad2becbe15681e4c998db3cf70f1f0c460be80` |
| 12 | `theorem` | [IsTopologicalBasis.open_eq_sUnion'](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-open-eq-sunion.md) | 192 | `result-track:b8026348235d57e1144235a15d8e5f32979844f8e1ec5488a14ed95ee68552c3` |
| 13 | `theorem` | [IsTopologicalBasis.open_eq_sUnion](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-open-eq-sunion-source-edition-2.md) | 202 | `result-track:efa8efab83e7484fed80ca96dd7fab14ee35c56dd9497b2fd8872e1b47ba838e` |
| 14 | `theorem` | [IsTopologicalBasis.open_iff_eq_sUnion](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-open-iff-eq-sunion.md) | 208 | `result-track:dbe1143a207a08f75105bbf2cf9e310d6b2c172987db67143850b63b0ad21b33` |
| 15 | `theorem` | [IsTopologicalBasis.open_eq_iUnion](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-open-eq-iunion.md) | 213 | `result-track:690104fb1db4b5174bde8a1b4975a960c250037e27a717277c9a67de0158ab47` |
| 16 | `theorem` | [IsTopologicalBasis.mem_closure_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-mem-closure-iff.md) | 221 | `result-track:5357fc003770dfa5b8a6ac7d5bd01ceed6bc499ad5d0f90c13d393c7377539f1` |
| 17 | `theorem` | [IsTopologicalBasis.dense_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-dense-iff.md) | 227 | `result-track:3ef0ad36d3bd9f2c5795acfc8a51917aca34af867c147e6356a90eac0b160743` |
| 18 | `theorem` | [IsTopologicalBasis.isOpenMap_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-isopenmap-iff.md) | 233 | `result-track:7d85c1dad7238710b2fcaa7f099ba1d2c39eef68786dfc5702e0bff9b1607996` |
| 19 | `theorem` | [IsTopologicalBasis.exists_nonempty_subset](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-exists-nonempty-subset.md) | 240 | `result-track:eca2516377eec3a257b14eb786534eaa187fd0b3789e787ad21e12cd1dc9f69a` |
| 20 | `theorem` | [isTopologicalBasis_opens](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-opens.md) | 247 | `result-track:7d2b72eafb98e653ef6abca222a577352796afbf43aba95fde6dc13db2123c1d` |
| 21 | `theorem` | [IsTopologicalBasis.prod](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-prod.md) | 251 | `result-track:7d72731f7071a65e95baa289371a1b5faa891847650b34b432414754f4f194fd` |
| 22 | `theorem` | [IsTopologicalBasis.inducing](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-inducing.md) | 263 | `result-track:7dfb4222b516a07f7806988a057f3f9300afbb3fa044ea0d71eb6953f8bad442` |
| 23 | `theorem` | [isTopologicalBasis_of_cover](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-of-cover.md) | 277 | `result-track:7c5ec56e0b98d80855a571dca4a3d84a3620e0e394e206680e7cbe681390842d` |
| 24 | `theorem` | [IsTopologicalBasis.continuous](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-continuous.md) | 293 | `result-track:9214232c5fc43f7e536bd096ae2542c06b1c834a1ed2aec2929a2a5e4070316e` |
| 25 | `class` | [SeparableSpace](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace.md) | 313 | `declaration-track:bb33ac33044efafda5c926305bd286aa925340d77390b647c028094512fede6e` |
| 26 | `theorem` | [exists_countable_dense](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/exists-countable-dense.md) | 318 | `result-track:ae8fd0c217f0509d73ee6d4fc404d248797da962255c99d3e98e0face881b918` |
| 27 | `theorem` | [exists_dense_seq](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/exists-dense-seq.md) | 328 | `result-track:86172fa28a017496f1e289188056c9a9624b6b8e13930f4f6edf09d4f38d0773` |
| 28 | `def` | [denseSeq](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/denseseq.md) | 338 | `declaration-track:7d8417557e066df19f566903b94e2ec0214d99262700fa865f86462a89af5310` |
| 29 | `theorem` | [denseRange_denseSeq](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/denserange-denseseq.md) | 344 | `result-track:e7352ee525d8848ab3c35b9eed5ea72370bb254ebe8e0e8a8f66cfae5b71010d` |
| 30 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-3.md) | 350 | `declaration-track:3ebc65e95eed0f6fbfd15f9fad35e848f29ae2e9c55dd8e5740f8427309b6128` |
| 31 | `theorem` | [SeparableSpace.of_denseRange](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace-of-denserange.md) | 356 | `result-track:1194c66408ba58c4cd452a74baff84bb94c2af70bd0ab0dc3c32093f2ddb7ebe` |
| 32 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace-source-line-365-occurrence-2.md) | 365 | `result-track:53770bd5452d33650578d356bea68aea76093ed843e1d26f1044b551985dd3ff` |
| 33 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace-source-line-371-occurrence-2.md) | 371 | `result-track:66b255f2de57aef5690ec4ae8379a048027d7a2f39703f1eca1ccdb95bcfb126` |
| 34 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance.md) | 376 | `declaration-track:25765e758e2c0bc2b5c6eb38c8a134da7a312e136f0dcba1906da5f62ae47195` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-6.md) | 382 | `declaration-track:69fa846e24421cc02fab1df1724d7f668a3823b682e36570e06036b8c1818f93` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-10.md) | 400 | `declaration-track:c505a5b438b3c2088fae75a4ceab8344c3bfa3013a5e0fc17cf558f7f207fb0e` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-2.md) | 403 | `declaration-track:27ab8274d6e2b132f07f23a211baa5712494ce37d3bcc6e34b277305f2b920d7` |
| 38 | `theorem` | [separableSpace_iff_countable](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace-iff-countable.md) | 407 | `result-track:3efcfd9ece8708095b4dab077f83b42f28268672192ece3f53b1ab1a919b0feb` |
| 39 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countable-of-isopen.md) | 411 | `result-track:d330d5fb2d586d0a35635859c0229df71b2d677ce5bdce82f53f2dfd59c0107b` |
| 40 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countable-of-nonempty-interior.md) | 427 | `result-track:68a109729040d5ab45055dadf5c8e65abba62eb480d56fba76bec77d768691c2` |
| 41 | `def` | [IsSeparable](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable.md) | 438 | `declaration-track:0e6df8c30432abd3871e9922a362c2b427aeececa64b28a036dbc0ae7dd59f12` |
| 42 | `theorem` | [IsSeparable.mono](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-mono.md) | 442 | `result-track:d4e258275d9a407bf5531592bfc8eaca0f2ed10649fa4cfc8d46e65eab592276` |
| 43 | `theorem` | [IsSeparable.union](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-union.md) | 447 | `result-track:4b6ebc1aa96613f0662258668d965704a4cb02cdf9b71083e2a406496124d577` |
| 44 | `theorem` | [IsSeparable.closure](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-closure.md) | 457 | `result-track:e1d56086ac158fc05733df082de079f0950006b63c9020efac406b222d2e0761` |
| 45 | `theorem` | [isSeparable_iUnion](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-iunion.md) | 462 | `result-track:41376d3554ec48c0b1a7b3d795d3a5f04129fd4bd3d422ec5e92609638cbf7e9` |
| 46 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-source-line-469-occurrence-2.md) | 469 | `result-track:0be199ab434c8877fd325acc99104884252f02e25da720876ae9e052f3a7a6f4` |
| 47 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-source-line-473-occurrence-2.md) | 473 | `result-track:bab776517d9ba707e18fadf5d1828183f87a0031b5d126033672e414de13aade` |
| 48 | `theorem` | [isSeparable_univ_iff](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-univ-iff.md) | 477 | `result-track:8e706d9cb505f6a552459adf2cee7367f8558b326fd65a5f632369abc6a82403` |
| 49 | `theorem` | [isSeparable_of_separableSpace](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-of-separablespace.md) | 486 | `result-track:3871332a7b68ae52c426c6153c7fa6978add114760ad6bf4292740cd2937dfa4` |
| 50 | `theorem` | [IsSeparable.image](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-image.md) | 490 | `result-track:8eb4e97d2e9577f3287acce7e88d3e44407d16cad6021d9b728c11771559c69a` |
| 51 | `theorem` | [isSeparable_of_separableSpace_subtype](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isseparable-of-separablespace-subtype.md) | 498 | `result-track:83a640e932e8b8f7a0ea89f3322f87176a11e8ce684a5086b1d07e215e3d1805` |
| 52 | `theorem` | [isTopologicalBasis_pi](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-pi.md) | 508 | `result-track:fd2140aab8e3f9d29f7c691e6b65e79e09050b72e84f65697aaf4f882aee990b` |
| 53 | `theorem` | [isTopologicalBasis_iInf](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-iinf.md) | 527 | `result-track:852fb94a926acd3c1702c95758ec49bdac4e79964151f54a0bf72ff6fcdd20a5` |
| 54 | `theorem` | [isTopologicalBasis_singletons](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-singletons.md) | 547 | `result-track:bf5ea3aaedeef30af5c112ba9671984a87c3c146c97eb5ee9965d967ea3a796c` |
| 55 | `theorem` | [Dense.exists_countable_dense_subset](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/dense-exists-countable-dense-subset.md) | 556 | `result-track:938c56f4c9fb79d9bc4e87a2faf6dea906579278d26c7104863263eb40eb3b2f` |
| 56 | `theorem` | [Dense.exists_countable_dense_subset_bot_top](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/dense-exists-countable-dense-subset-bot-top.md) | 569 | `result-track:5b353c3ab23344576326114f684f291cbbc9166884fbef844bfa88edea8fb6dd` |
| 57 | `instance` | [separableSpace_univ](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/separablespace-univ.md) | 581 | `declaration-track:f797424724b5b95d64aca2af896e396ab2f48d6f27b8277fc705a39f5fd154af` |
| 58 | `theorem` | [exists_countable_dense_bot_top](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/exists-countable-dense-bot-top.md) | 590 | `result-track:e4ff4036d248c6e178925f8edc1d762bb9130dea062f8a969f825f4ca1bc4363` |
| 59 | `class` | [FirstCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/firstcountabletopology.md) | 604 | `declaration-track:63364820e9a70f17e47803de40a7aa551d3f9827b7c11e406acceae8262831ca` |
| 60 | `theorem` | [tendsto_subseq](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/tendsto-subseq.md) | 617 | `result-track:05a569b126da425ce76882b2ac84e85fca3395f9e5af014b94e81bff5ff2e062` |
| 61 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-12.md) | 626 | `declaration-track:e1a1d4e20d9c12a2ed3d6ceda398f92e31dd644fff146a2d2c5dbebfc738d75b` |
| 62 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-7.md) | 632 | `declaration-track:6e273b23eb3fd1701c00892684f8f6ee9cef125edd20936f390de52d6ad32557` |
| 63 | `instance` | [isCountablyGenerated_nhdsWithin](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/iscountablygenerated-nhdswithin.md) | 638 | `declaration-track:57ba7594fbf2a857eeae0337586696e3e3de870043b4e45299a33d3eaf59c9a0` |
| 64 | `class` | [SecondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology.md) | 646 | `declaration-track:c0921fd0078578e3d025ac4b43f9c16330de2d6fc688937dfb3370e96aa0dbee` |
| 65 | `theorem` | [IsTopologicalBasis.secondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-secondcountabletopology.md) | 653 | `result-track:4c7dc44627d4b069327d8a498689fa0d7a55a18da9a5fea6be74812e72e90975` |
| 66 | `lemma` | [SecondCountableTopology.mk'](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology-mk.md) | 658 | `result-track:5e9abb60dce039f862059942422d842016b43088210fd48df0b79af6076fada9` |
| 67 | `theorem` | [exists_countable_basis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/exists-countable-basis.md) | 664 | `result-track:f46de8f50993ea03e2f2ecd23fc0feb0c75258ca45df0ae38e830e6d983e2e64` |
| 68 | `def` | [countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countablebasis.md) | 672 | `declaration-track:cd4eca530be1a7167286fef8310b17c41a21e853ca3e7d991da34f54ba30a7f5` |
| 69 | `theorem` | [countable_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countable-countablebasis.md) | 676 | `result-track:d6ba8f5ac18c619cc498bac1ba63222fdcc33d37c85360073ee1be71c215d14e` |
| 70 | `instance` | [encodableCountableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/encodablecountablebasis.md) | 680 | `declaration-track:0c74c10de4e58cb1074be43accb1cea7468cc09a7edf1bea1d3b119ff741bd44` |
| 71 | `theorem` | [empty_nmem_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/empty-nmem-countablebasis.md) | 684 | `result-track:d44c424eec04c430f4db6dab7a70ec26153546ad274eaf6f19cef7dbb5b62007` |
| 72 | `theorem` | [isBasis_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isbasis-countablebasis.md) | 688 | `result-track:389a09ef899c75c502c6d8dbcf1e9b9107ad671b63cf43e8d6538093ccc26f4d` |
| 73 | `theorem` | [eq_generateFrom_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/eq-generatefrom-countablebasis.md) | 693 | `result-track:39f63fbb78132c4002e70f14f61cfe4210ed03444d1750f409d4d0c770c98038` |
| 74 | `theorem` | [isOpen_of_mem_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isopen-of-mem-countablebasis.md) | 700 | `result-track:5b2aa923e41f6199f2cf2df20bd2d5b5d67a521b48000c3c0931f5d959f58ea3` |
| 75 | `theorem` | [nonempty_of_mem_countableBasis](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/nonempty-of-mem-countablebasis.md) | 705 | `result-track:08a877295529448bf7c5a4ac63786649b7d429986c3e1d373bd7eff14b4f8126` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-8.md) | 713 | `declaration-track:95d696fb967913a4ccd65829b735ef23790ebe8f3759f207ef4702a3b4d838da` |
| 77 | `theorem` | [secondCountableTopology_induced](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology-induced.md) | 722 | `result-track:71bee0bc24328e2c9b4f703c2d7f7c6de4270365e6c7b0a9532952c3939d7163` |
| 78 | `instance` | [Subtype.secondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/subtype-secondcountabletopology.md) | 732 | `declaration-track:b83eb3977db087839c3ea59b9bdec108d0eb1163e0b52331575176584cc7fc64` |
| 79 | `lemma` | [secondCountableTopology_iInf](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology-iinf.md) | 737 | `result-track:72185b7a104fccdc5c6fcd0cfd7e3ddbb2ce677887556630aec35e75e29bfe0e` |
| 80 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-13.md) | 744 | `declaration-track:fcc4ef76be48a11ca49b2d455ae0dcca0a04697cd3d24e06776e48546f54037a` |
| 81 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-5.md) | 749 | `declaration-track:51ae4ad7adf0a725be2eb5a8adf9547ec060626279c724805d1f6592b4f67186` |
| 82 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-11.md) | 754 | `declaration-track:d97c4a65b8c0975e9d1b9c40151aef86da3018ce0ce3a99670b3b8ffcf403087` |
| 83 | `theorem` | [secondCountableTopology_of_countable_cover](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology-of-countable-cover.md) | 764 | `result-track:1e0d3dd482cee24a7ad263974b92f01c267c380d4a3256cfa68c3f9208dd047c` |
| 84 | `theorem` | [isOpen_iUnion_countable](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isopen-iunion-countable.md) | 774 | `result-track:3088712989d7bd021b0d2048a2fe36b00c467b15e00effd8009e89be781be52d` |
| 85 | `theorem` | [isOpen_sUnion_countable](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/isopen-sunion-countable.md) | 785 | `result-track:6df5e3645c8fe0296144b95c79bddbab909b604c4f165f78d0ce472e5049929a` |
| 86 | `theorem` | [countable_cover_nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countable-cover-nhds.md) | 795 | `result-track:4ff2bc9b2f8aba15bc96e3a15c0e330d967b4fec39dc332c6c8c42f777f00691` |
| 87 | `theorem` | [countable_cover_nhdsWithin](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/countable-cover-nhdswithin.md) | 806 | `result-track:196ec806539ae687669154c9ca490cc5971ee16c635439572b42c4480c3be314` |
| 88 | `theorem` | [IsTopologicalBasis.sigma](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-sigma.md) | 821 | `result-track:9506e0f1d13960acc9aff845aba48c8ed54406df7280079c9f43dc92f759f06d` |
| 89 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-4.md) | 839 | `declaration-track:4fec3e46f5b4ffb98879a3c03ec0927e8ab9cd5d78e4bcff2ab9f06eb7d0e2e5` |
| 90 | `theorem` | [IsTopologicalBasis.sum](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-sum.md) | 854 | `result-track:9b136e70f9566715ffc478d2c815d36258d7facd0f3e43de7a921dfd57222d66` |
| 91 | `instance` | [(anonymous)](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/instance-source-edition-9.md) | 873 | `declaration-track:bd838f730f9b92e3bc0eab40838608122f63217014fcd4061d07b9e93df41e23` |
| 92 | `theorem` | [IsTopologicalBasis.quotientMap](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-quotientmap.md) | 890 | `result-track:7ac4e5199bd8e786a07921268e71e16a05b137944fe505495dc80713bbf24bea` |
| 93 | `theorem` | [Topology Bases Namespaced Is Topological Basis Of Open Of Nhds](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/secondcountabletopology-source-line-906-occurrence-2.md) | 906 | `result-track:7525171ca575c3996025ae306ca0f5a2757ae9b84f2f02e4434642b0cd04e9b7` |
| 94 | `theorem` | [IsTopologicalBasis.quotient](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/istopologicalbasis-quotient.md) | 917 | `result-track:bac86adf7b0a28791b97852263eadbc7e114686428321e2a2aaa1e7d9dabaf00` |
| 95 | `theorem` | [Quotient.secondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/quotient-secondcountabletopology.md) | 924 | `result-track:2da2046b2c169d5ffded6de900bb0b88bc0f821846c83bc90bc523f0efa36e3b` |
| 96 | `theorem` | [Inducing.secondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/inducing-secondcountabletopology.md) | 937 | `result-track:194aa9ce426cbdacaf20159ae0a7ff74d4bdb320a3068eca9fc98c1f604d704d` |
| 97 | `theorem` | [Embedding.secondCountableTopology](../../../../GeneralTopology/TopologyBasesNamespacedIsTopologicalBasisOfOpenOfNhds.lean/declarations/embedding-secondcountabletopology.md) | 943 | `result-track:3a9aa6a5ed09c7ad0a5837251ecec0c46be76ba5a6f1afb7e872e409e7cc76c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb877fe88d9c154c911508404bf5300bbac3a7a2943f0ec10d10436815245ad2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bases/Variantabe1d8a66feae0383b12306cc0f7ddfc48e3b8befa006d858e331182237749cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
