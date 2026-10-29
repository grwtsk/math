# Verification target: Uniform Convergence Tendsto Uniformly Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98f56c79a806af72290ec5f7605a92f191e5ad3",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/index.md) · [Full source](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98f56c79a806af72290ec5f7605a92f191e5ad3`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Cauchy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter.md) | 68 | `declaration-track:90c5076995442cae38407ad8fe4a2c0006dbe09ca4c4f22155adce7600dfe87f` |
| 2 | `theorem` | [tendstoUniformlyOnFilter_iff_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-iff-tendsto.md) | 76 | `result-track:ef0b27ee1ebda4dcbe0472da183341c749e82a9f0e7471b8a548446e00146f5d` |
| 3 | `def` | [TendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon.md) | 84 | `declaration-track:357d2e7b21ed43b3b71de3ac4abddcb48c9b50158fa337f22e7f305ab5a04ae3` |
| 4 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendstouniformlyonfilter.md) | 87 | `result-track:96b3341dc8f19e47ef8e62caedb1c64ff6ecfa0006d5633bb77e96d75c75fbc9` |
| 5 | `theorem` | [tendstoUniformlyOn_iff_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendsto.md) | 101 | `result-track:f72ad66d986e34e199aac0a4ec95e8ba0f4f0c5357087f4af3e9bfabde1e6354` |
| 6 | `def` | [TendstoUniformly](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly.md) | 109 | `declaration-track:d8a341397ac06f0aa2d11b9f12133c85e2ff856c13a7bc4d2bc1a4bbc8d5b21b` |
| 7 | `theorem` | [tendstoUniformlyOn_univ](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-univ.md) | 112 | `result-track:2b4854df89c305d428ba0945c1635cf10184eac144708dcf99bdb0bace9d9498` |
| 8 | `theorem` | [tendstoUniformly_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-tendstouniformlyonfilter.md) | 115 | `result-track:d0747bec4e03ad3bc6a1a59d51997f9447c126db299fb16559a80d469f788ca6` |
| 9 | `theorem` | [TendstoUniformly.tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendstouniformlyonfilter.md) | 119 | `result-track:20ca65abc0314c437e97d6215abb9a6c2f846eec9f1f0be0e32d5c2ec50a1fb2` |
| 10 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformly_comp_coe](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-tendstouniformly-comp-coe.md) | 122 | `result-track:dfacc3a5a6edfb89716a03997f31a2b55694e99fb7765932bf7acc30f79045df` |
| 11 | `theorem` | [tendstoUniformly_iff_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-tendsto.md) | 130 | `result-track:57dbf739b41f34045c33b39ce7581556f1600943d4ede0c0e92e1d38ed7c24f4` |
| 12 | `theorem` | [TendstoUniformlyOnFilter.tendsto_at](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-tendsto-at.md) | 135 | `result-track:f8d48f4291e0891924f00ac215cb1381eeba75f95e6afac41d5ae70bcf180b03` |
| 13 | `theorem` | [TendstoUniformlyOn.tendsto_at](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-tendsto-at.md) | 143 | `result-track:9b1d3682db553258ce494109b67662613f67ec430fd0a3666a0bcc9870875803` |
| 14 | `theorem` | [TendstoUniformly.tendsto_at](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendsto-at.md) | 149 | `result-track:6071247eb0fe0ed3bc88ba43d01817d77c8698adb583cf0118c57b93c1e506e5` |
| 15 | `theorem` | [TendstoUniformlyOnFilter.mono_left](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-mono-left.md) | 153 | `result-track:4ed243f7a3d3f45eeed5d9a6a00a409ba1383e629693b1d6b18ff198e53bec68` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mono_right](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-mono-right.md) | 157 | `result-track:df364f231b340475c4b08db582f920b0ff275bb1f2caa3d2dd3fb8fccd480381` |
| 17 | `theorem` | [TendstoUniformlyOn.mono](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-mono.md) | 161 | `result-track:e7519f007b8f2cb296df1fc0681e9f56c8b02d5162d891e6832bc742fea11bc3` |
| 18 | `theorem` | [TendstoUniformlyOnFilter.congr](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-congr.md) | 166 | `result-track:32e6ea725d9cb9c23ecb5c65474d9ab3ea6354e43247216fa1030105e3ee79be` |
| 19 | `theorem` | [TendstoUniformlyOn.congr](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-congr.md) | 173 | `result-track:ad7b614f14412a833354affd136aa09281310ddd94e716e83a2f10f4cecea4b3` |
| 20 | `lemma` | [tendstoUniformly_congr](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-congr.md) | 181 | `result-track:44de6f79bd7763b9d830bcbd6813aefd3474ceddcb0ae9097ea435afe9f21bea` |
| 21 | `theorem` | [TendstoUniformlyOn.congr_right](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-congr-right.md) | 187 | `result-track:8752d589413abe96f7871cc0c5608a7eaee6d54b9ebe4a117dd0025e17740cd1` |
| 22 | `theorem` | [TendstoUniformly.tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendstouniformlyon.md) | 191 | `result-track:8a6a4a6a1114dd03548895b1fde425605cea07a8a3ea98eaca4e89d1ad3cbf86` |
| 23 | `theorem` | [TendstoUniformlyOnFilter.comp](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-comp.md) | 196 | `result-track:cc51ef73fe831612a54e5b38da3436a11c573f2065c5fe2ff96d12aa8bc74bc0` |
| 24 | `theorem` | [TendstoUniformlyOn.comp](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-comp.md) | 202 | `result-track:5303055bee5e5b667347f5f040f9639f1db7b4fbc62ac7473b47fdfd7301a543` |
| 25 | `theorem` | [TendstoUniformly.comp](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-comp.md) | 208 | `result-track:3e7a4d463406c10d7c297f0212f23b1e46c54a7300d64ff52dfb90b24b7e572e` |
| 26 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformlyonfilter.md) | 215 | `result-track:ae0f899915f440be546b215a9b5788dfba5aaa43949b7b4ff452756e493b5e03` |
| 27 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformlyon.md) | 221 | `result-track:fa2902e5a6aeb63dde7c09c4f4f538e9965cf1d944acb3fbf1076730fb6f39ad` |
| 28 | `theorem` | [UniformContinuous.comp_tendstoUniformly](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-tendstouniformly.md) | 226 | `result-track:f13fd471d4a539b84440b1b4ab1fbd9edc42f9772c45729ede80c0db3e5ab366` |
| 29 | `theorem` | [TendstoUniformlyOnFilter.prodMap](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-prodmap.md) | 230 | `result-track:4f3e93c59ed6de9a1e862cc72a9e78eeebec6b8f6c5786749de6e2a931e6c62a` |
| 30 | `theorem` | [TendstoUniformlyOn.prodMap](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-prodmap.md) | 242 | `result-track:2cd23fd276147c2c9069e456d6272f0b8b424372f5e3ca2fb91e1eaa6773c0bf` |
| 31 | `theorem` | [TendstoUniformly.prodMap](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-prodmap.md) | 253 | `result-track:95a6b6cadfdcd4aed3a7580a142c1a59fda61a09ce0798e72ca8e5e6c3f08972` |
| 32 | `theorem` | [TendstoUniformlyOnFilter.prodMk](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-prodmk.md) | 262 | `result-track:153853352430820edaed777191d7f2bf08ece6360f42de5622fd274c5124fcff` |
| 33 | `theorem` | [TendstoUniformlyOn.prodMk](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-prodmk.md) | 272 | `result-track:fcee337f3c2a0116d8a1adfaff9b56067aa1f2b64281bed40d6742e3f524865b` |
| 34 | `theorem` | [TendstoUniformly.prodMk](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-prodmk.md) | 282 | `result-track:fe4ccbeea9e907325ab05a7fea12438e1a23465426a55315535b4cb8d764ebe7` |
| 35 | `theorem` | [tendsto_prod_filter_iff](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendsto-prod-filter-iff.md) | 292 | `result-track:4303e182bdf56172fda29e8044631a77d740d9f53233428caaf5e0690e78885e` |
| 36 | `theorem` | [tendsto_prod_principal_iff](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendsto-prod-principal-iff.md) | 299 | `result-track:d9e8d93249c2a56ca0cf5646c2ee32f0f9b1110db10f5c419f69f2c9c2c5bf74` |
| 37 | `theorem` | [tendsto_prod_top_iff](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendsto-prod-top-iff.md) | 305 | `result-track:9ab09077199c7cc07babfd63040e00a8ad25c1866c94da53d62b39747e0ee401` |
| 38 | `theorem` | [tendstoUniformlyOn_empty](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-empty.md) | 311 | `result-track:b88be6e8f7fd9a0a3b8c3a9850a77660648969ad0abe9e36b812fefe6304c6bb` |
| 39 | `theorem` | [tendstoUniformlyOn_singleton_iff_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-singleton-iff-tendsto.md) | 314 | `result-track:915ac42e68f0864e8dc1fb07839276c523cf3be69596bf41ca2e48856a4a2e27` |
| 40 | `theorem` | [Filter.Tendsto.tendstoUniformlyOnFilter_const](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/filter-tendsto-tendstouniformlyonfilter-const.md) | 321 | `result-track:0fb8f3545cf237be9f1dd64663d228c5a71bb38ac67f17295de9db3abee9b86d` |
| 41 | `theorem` | [Filter.Tendsto.tendstoUniformlyOn_const](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/filter-tendsto-tendstouniformlyon-const.md) | 328 | `result-track:63bef6a77bc814e2e7bd49741d70f36e23588fea89df87d63de86a7a4ea922ad` |
| 42 | `theorem` | [UniformContinuousOn.tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuouson-tendstouniformlyon.md) | 332 | `result-track:93a0d112a24aff3536e35e1771f8107ffb3149b0e30d1ee413a1f03c8616fa0c` |
| 43 | `theorem` | [UniformContinuousOn.tendstoUniformly](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuouson-tendstouniformly.md) | 344 | `result-track:eaadf8f59e7e3300aeb8655494f4576a651825808b2f2b918578978d8efcfa2c` |
| 44 | `theorem` | [UniformContinuous₂.tendstoUniformly](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuous-tendstouniformly.md) | 350 | `result-track:d90c40e4925e44b7cea15ffca45e92adaa60fb736bebd487e92be18278b4575f` |
| 45 | `def` | [UniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter.md) | 356 | `declaration-track:fdb3088983ed413b02a56c7ebd69f3392121a6b89b7a318f8ccbe502e61ed7ba` |
| 46 | `def` | [UniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon.md) | 361 | `declaration-track:b00ec61d645d7c60efc263396e0831f19cb8cb59b6c9a7e513d613c325df398e` |
| 47 | `theorem` | [uniformCauchySeqOn_iff_uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-iff-uniformcauchyseqonfilter.md) | 364 | `result-track:9ddb45c62c3cb19b85a31b930dc63fea8dac581c0434bced6145e3496076c7ef` |
| 48 | `theorem` | [UniformCauchySeqOn.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-uniformcauchyseqonfilter.md) | 370 | `result-track:82d741778f8a374133187a9b34e072b42f001349f15d55c7d6da7244b41389e5` |
| 49 | `theorem` | [TendstoUniformlyOnFilter.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-uniformcauchyseqonfilter.md) | 374 | `result-track:6ee6e3e5d5c5ca3576ab43ec7817b620247971a8472e17adf9b30fc180b248b5` |
| 50 | `theorem` | [TendstoUniformlyOn.uniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-uniformcauchyseqon.md) | 385 | `result-track:07ab0e144a4a73fe372a8c83e497253172cf9d2c596eddeb38e1bd3954c6fad8` |
| 51 | `theorem` | [UniformCauchySeqOnFilter.tendstoUniformlyOnFilter_of_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-tendstouniformlyonfilter-of-tendsto.md) | 391 | `result-track:88e58a368562e1c7c008736c092dcf26d508ffa9c8e36fdcebdd0b23892d9f75` |
| 52 | `theorem` | [UniformCauchySeqOn.tendstoUniformlyOn_of_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-tendstouniformlyon-of-tendsto.md) | 422 | `result-track:3ae7d28db873f99862acfcd379102ae1f8ece7e4cf97e3beb32e046fe038ceb6` |
| 53 | `theorem` | [UniformCauchySeqOnFilter.mono_left](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-mono-left.md) | 427 | `result-track:0852f7274682e39b098592a1bfed7927610cf60c415c8c13ade25fe615c2f6cb` |
| 54 | `theorem` | [UniformCauchySeqOnFilter.mono_right](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-mono-right.md) | 433 | `result-track:60279a0b58b2a178230943c27f63aeffb6729f8af57da31252f5f77f8f11d3d3` |
| 55 | `theorem` | [UniformCauchySeqOn.mono](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-mono.md) | 438 | `result-track:b0facaf4bab1e8a2a5aee2833d9e77a5237eb7fbbc9d458f26afe6d359f34d52` |
| 56 | `theorem` | [UniformCauchySeqOnFilter.comp](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqonfilter-comp.md) | 444 | `result-track:b14ac8e2a7b51cbd33c0dc3743cbcb7fb6e44c02247560294dc18ae8cc4dc105` |
| 57 | `theorem` | [UniformCauchySeqOn.comp](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-comp.md) | 452 | `result-track:7f50fb79971406ce45cb6391cf18e3c5f93f269021a6eba2bc4e8967ab9b5bc9` |
| 58 | `theorem` | [UniformContinuous.comp_uniformCauchySeqOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcontinuous-comp-uniformcauchyseqon.md) | 459 | `result-track:555d42663744e7c205abbf36ddb67caf3f553c0ce8dd1899d886ca80b397736f` |
| 59 | `theorem` | [UniformCauchySeqOn.prodMap](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prodmap.md) | 463 | `result-track:fc7a43bfd28641c474379eb9f9c9251388d9c881abbd22f82fc988450f35a020` |
| 60 | `theorem` | [UniformCauchySeqOn.prod](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prod.md) | 479 | `result-track:413eba8636a61ef1e9f13cf0a6206d852fb838e3d0ec11e57269f874b39bdba2` |
| 61 | `theorem` | [UniformCauchySeqOn.prod'](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-prod-source-edition-2.md) | 484 | `result-track:e36c3238a0ab358769396673b20da315f4c337bce81b965ae8a81cf3b8d1a157` |
| 62 | `theorem` | [UniformCauchySeqOn.cauchy_map](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-cauchy-map.md) | 492 | `result-track:fda070be50ad880707e8079c3519ea9a5baf0c83259ad0f43e0bf3452316bfe5` |
| 63 | `theorem` | [UniformCauchySeqOn.cauchySeq](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/uniformcauchyseqon-cauchyseq.md) | 501 | `result-track:58f69c07f7185ea2227b970f3573d97fbf8dd56cad024a2fe5390dcaab0f0302` |
| 64 | `theorem` | [tendstoUniformlyOn_of_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-of-seq-tendstouniformlyon.md) | 508 | `result-track:653c9a00fb659bff2b7e35c55dfff4b93d394b760f8464afa7fad15963eecb56` |
| 65 | `theorem` | [TendstoUniformlyOn.seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-seq-tendstouniformlyon.md) | 518 | `result-track:c46730da6f1940ab1adc81eb45f3ebca393b05602d0d545a9b3fa696d37a9f24` |
| 66 | `theorem` | [tendstoUniformlyOn_iff_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyon-iff-seq-tendstouniformlyon.md) | 523 | `result-track:1d20b73e8a86e778de7f98d74b176d22effae8e98dc23fb0f3e593474783ce23` |
| 67 | `theorem` | [tendstoUniformly_iff_seq_tendstoUniformly](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-iff-seq-tendstouniformly.md) | 528 | `result-track:dab14e624a62cc692a6a4a3498ffd02b120de94cdb7be2b26a2df311a771626a` |
| 68 | `theorem` | [TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformlyonfilter-tendsto-of-eventually-tendsto.md) | 540 | `result-track:388d88ba404bf1ab375a6f4a8997933d8c6a9d330223863510844b37cea4ad86` |
| 69 | `theorem` | [TendstoUniformly.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformConvergenceTendstoUniformlyCongr.lean/declarations/tendstouniformly-tendsto-of-eventually-tendsto.md) | 554 | `result-track:60f6b7902d38fe5d60d7d1c29663af42f4678daef1d842d55adbb20db9ce7f52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aaeb61c48c7163cfb2dd90b45173e65310c4473edab4004e5f41b9d818c33a7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant0993d493a9d482b94496ff61dda12f628c50db256aa66100796945eb95f751d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
