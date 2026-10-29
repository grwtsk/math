# Verification target: Finite Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "082df792375117dadcb67e2f16120a41a068ced0",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `082df792375117dadcb67e2f16120a41a068ced0`.

Source path: `GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Restrict` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure.md) | 39 | `declaration-track:2e29753a7288ed7e97887dad05c2b9c986d68b80512d54a7cd7db29382d8cf43` |
| 2 | `lemma` | [not_isFiniteMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/not-isfinitemeasure-iff.md) | 42 | `result-track:35159a88333d8f8159358088b05d9216457a4fc9a4e90c50b4739776e182dc58` |
| 3 | `lemma` | [isFiniteMeasure_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure-restrict.md) | 44 | `result-track:766cb9a1d56903c16b77829a1395b9ef8f4bb809edf744a37006711ddff1387b` |
| 4 | `instance` | [Restrict.isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/restrict-isfinitemeasure.md) | 47 | `declaration-track:d48157fd656f5e517b964e690fa959301848f483d3844e12898eaa7983325550` |
| 5 | `theorem` | [measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-lt-top.md) | 52 | `result-track:a3628f9e2dc4c7533ca9ff2a081f68fcb413344a5484903737b19b5fe7bc1656` |
| 6 | `instance` | [isFiniteMeasureRestrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasurerestrict.md) | 55 | `declaration-track:e394b08ca39bca12be77fc0266af632b5e166dcfd171a3c3cc4664e37df42150` |
| 7 | `theorem` | [measure_ne_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ne-top.md) | 59 | `result-track:9e4d7514ba9198f7dc4c01a2e17fcae7a98c944777be61d4b40f6b54636425b0` |
| 8 | `theorem` | [measure_compl_le_add_of_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-compl-le-add-of-le-add.md) | 62 | `result-track:c57096fdc1538e3e703eb23752e94084804b510d520b6b4f220d9d75fba05d8e` |
| 9 | `theorem` | [measure_compl_le_add_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-compl-le-add-iff.md) | 71 | `result-track:fecdc94e9d60a38bd9807400a0ef0632c47d8ec13e708c55f691117218e39716` |
| 10 | `def` | [measureUnivNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measureunivnnreal.md) | 77 | `declaration-track:2027ff22ad7354e460c47ed5c5bae9b0518187c7c4af066bdcfb8eab491908a7` |
| 11 | `theorem` | [coe_measureUnivNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/coe-measureunivnnreal.md) | 81 | `result-track:57c42be8865e2c1cd55125a6d30ecab04a7268a3ac1729344dc75d15c5dd9f87` |
| 12 | `instance` | [isFiniteMeasureZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasurezero.md) | 85 | `declaration-track:f115e0568cfc9cf3e3d965ab24e8977d02c564f272a3031f47e6461c148fd849` |
| 13 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance.md) | 88 | `declaration-track:1b7d624a6b57794f9aca1a7cd47663ce48cf573aa15c06a96bc0fb847de68d25` |
| 14 | `theorem` | [measureUnivNNReal_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measureunivnnreal-zero.md) | 93 | `result-track:3cde367bd54dd8a6cb651c270d13f759b4d10ca5b4d8a211b04ca0903538d167` |
| 15 | `instance` | [isFiniteMeasureAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasureadd.md) | 96 | `declaration-track:9ab90e679097881e64d4201d630d959f9ebfca60b4ce8241562e0473566ccba4` |
| 16 | `instance` | [isFiniteMeasureSMulNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasuresmulnnreal.md) | 101 | `declaration-track:38e83fed62579fbaa0bf648151be0cfd81eed831959926b1ba024742e20c717e` |
| 17 | `instance` | [IsFiniteMeasure.average](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure-average.md) | 104 | `declaration-track:615326632edc12b75180e3003ac015d820ecbdd562baf08334b7a27a3e22d7df` |
| 18 | `instance` | [isFiniteMeasureSMulOfNNRealTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasuresmulofnnrealtower.md) | 109 | `declaration-track:1d11d777c9966354c9e46809164e55154fc5cbfa60aa157ba3edd9924fd022ea` |
| 19 | `theorem` | [isFiniteMeasure_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure-of-le.md) | 114 | `result-track:fbbba3b2a3b332be70638541abdb0a0156d9f8feb57234154620b0fc6a542373` |
| 20 | `theorem` | [Measure.isFiniteMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-isfinitemeasure-map.md) | 118 | `result-track:07d759717fb6787f34c9d720da66ae2fa2ea35fd9d2d225178a3761ddb9fbed2` |
| 21 | `instance` | [IsFiniteMeasure_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure-comap.md) | 127 | `declaration-track:bda537023827055299a6803fc85aaf115bd255c69cfc978d03c6e496bd588c69` |
| 22 | `theorem` | [measureUnivNNReal_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measureunivnnreal-eq-zero.md) | 136 | `result-track:6f90a7e6718e4c9e1a240e3361065ce158a1bde8dbab88f9a586fdee1739a23f` |
| 23 | `theorem` | [measureUnivNNReal_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measureunivnnreal-pos.md) | 140 | `result-track:09ca483be5e5e380aee12512b4e0da09f364fb424d359779e8cdb143a3c3c734` |
| 24 | `theorem` | [Measure.le_of_add_le_add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-le-of-add-le-add-left.md) | 146 | `result-track:91dc6c49704e35f664113f17407d3057647d4b9217a78d410575ebcd30bab3ee` |
| 25 | `theorem` | [summable_measure_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/summable-measure-toreal.md) | 149 | `result-track:8956c0534dc2da5e86d4ef3ff2db32d806e45d1a5f5d3126baf69b2051e1e64c` |
| 26 | `theorem` | [ae_eq_univ_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ae-eq-univ-iff-measure-eq.md) | 156 | `result-track:f1d24293a6f11b1b0d297726515d2c4003e5569b00580d7b14b0a627664fdaf7` |
| 27 | `theorem` | [ae_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ae-iff-measure-eq.md) | 161 | `result-track:6d2014c34fa4cca7505315b677801e0b2ae0b0f3676317797a3b3fbbc1910c06` |
| 28 | `theorem` | [ae_mem_iff_measure_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ae-mem-iff-measure-eq.md) | 165 | `result-track:a69c1be9000f873baaed3e19a7917e849270f5a094927110940fc05efb913afb` |
| 29 | `lemma` | [tendsto_measure_biUnion_Ici_zero_of_pairwise_disjoint](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/tendsto-measure-biunion-ici-zero-of-pairwise-disjoint.md) | 169 | `result-track:5361a2266034a4773d9c201e1932139a122dce226f7f7f20b201747699e93192` |
| 30 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/abs-measurereal-sub-le-measurereal-symmdiff-source-edition-2.md) | 191 | `result-track:a312ab14cf11a2e96b9105757f511f54a4f963609516ff9225281f7246b1b419` |
| 31 | `theorem` | [abs_measureReal_sub_le_measureReal_symmDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/abs-measurereal-sub-le-measurereal-symmdiff.md) | 209 | `result-track:52abf72c467c62e851bb8699bdab3688314e0fe6af140f7a7bc6584befc8c908` |
| 32 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-3.md) | 217 | `declaration-track:9fae1bb8461cb3b319e15f1e072e846cc556ddc09d262f1ef7acf3bec9747ec8` |
| 33 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-6.md) | 220 | `declaration-track:c3b86926e0e4aff29532345e1fcda5d8866d425331dc3aaed55bbd39b670829e` |
| 34 | `theorem` | [ite_ae_eq_of_measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ite-ae-eq-of-measure-zero.md) | 228 | `result-track:9fa9021b9dfbacab85cde90f61bdff43b5d0b42cb6cd7ce6f8815ea5e1dd59a7` |
| 35 | `theorem` | [ite_ae_eq_of_measure_compl_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ite-ae-eq-of-measure-compl-zero.md) | 237 | `result-track:50f48f8d6cd762d92faf4d6f0fe8355d204981e88be6d5fe138b6f298a290833` |
| 36 | `def` | [FiniteAtFilter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteatfilter.md) | 250 | `declaration-track:2b8b5a1c3db47b07747c3fa4b1d38ea1a582b2c6d48979b888dd52f34a8fead4` |
| 37 | `theorem` | [finiteAtFilter_of_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteatfilter-of-finite.md) | 253 | `result-track:ea3634d4277638efc3196f2cc8a4056c813c3d8b008b9fe29e768ebceb1ff472` |
| 38 | `theorem` | [FiniteAtFilter.exists_mem_basis](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteatfilter-exists-mem-basis.md) | 257 | `result-track:6a283ce8b9a25dbc9bb21be215b8742aaefd370b3a51a42adef076972f3d3870` |
| 39 | `theorem` | [finiteAtBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteatbot.md) | 261 | `result-track:d237790f6e8a3e324588fedc61da777f5a2063790cdefdab5651e623bffa373a` |
| 40 | `structure` | [FiniteSpanningSetsIn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finitespanningsetsin.md) | 269 | `declaration-track:28f7e5d8532f9376c26a648ec09442c8fbc36919cd9adf2520f87e08813710c4` |
| 41 | `class` | [IsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/islocallyfinitemeasure.md) | 279 | `declaration-track:5c26f90277dcec39a338853d7294b8fde0a8cdb8f43c0796a7c4b5258e0c3817` |
| 42 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-2.md) | 283 | `declaration-track:782eedef936bb485166c5af08cd794049d5019bed2c342badd0aa6f9a8fcae4b` |
| 43 | `theorem` | [Measure.finiteAt_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-finiteat-nhds.md) | 287 | `result-track:4a01a1778f9e00d9e5a7101511bf9b93fad93befa3e0bb554caf96a709a838e4` |
| 44 | `theorem` | [Measure.smul_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-smul-finite.md) | 291 | `result-track:d63ee27550fb4f16044f901118784964f264d8374a3c359fc8526a5ea0236a87` |
| 45 | `theorem` | [Measure.exists_isOpen_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-exists-isopen-measure-lt-top.md) | 296 | `result-track:e62e39981d176ccd73327358cab469df5a289ec03a948cd7ee18b1e89cd5dbf2` |
| 46 | `instance` | [isLocallyFiniteMeasureSMulNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/islocallyfinitemeasuresmulnnreal.md) | 300 | `declaration-track:aeb6cae04d0505830d4e8dbddc5dad586e908d5d91b8dead1762441e671ab571` |
| 47 | `theorem` | [Measure.isTopologicalBasis_isOpen_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-istopologicalbasis-isopen-lt-top.md) | 308 | `result-track:6fab8e4f757a8044b0448e523ce0801af2626d8fa600d084654458495ba83897` |
| 48 | `class` | [IsFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasureoncompacts.md) | 318 | `declaration-track:2a06deac644a181740651f1926c14b06f813f8184da34d1b2992ee77636c44cb` |
| 49 | `theorem` | [Finite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-lt-top-source-line-322-occurrence-2.md) | 322 | `result-track:1f3d65f3c310806d7a3058079ff3df334c12ed6faad5612bdf264ac3f4c51279` |
| 50 | `theorem` | [Finite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ne-top-source-line-327-occurrence-2.md) | 327 | `result-track:4ca8b91cbed708be54d8738e9a1d6825c536310d89ec6bd382c32781db35422b` |
| 51 | `theorem` | [Finite Namespaced](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-lt-top-source-line-333-occurrence-2.md) | 333 | `result-track:bea14e827b8ec0443f8efcc365d766355b6d8767bdce62a48ce4e322a3af15f4` |
| 52 | `theorem` | [measure_closedBall_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-closedball-lt-top.md) | 340 | `result-track:19986d7cb5cb4880bd9cfc73a71a24c48c7783205d50d1aa225f1d4ac1939aac` |
| 53 | `theorem` | [measure_ball_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ball-lt-top.md) | 344 | `result-track:fc3ec0a4c199b5e471c3e4b9814f674d4437a1c46a407fc62b7b92faae4d6e6f` |
| 54 | `theorem` | [IsFiniteMeasureOnCompacts.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasureoncompacts-smul.md) | 348 | `result-track:54e1baa595e5864e40e5ad7e52f9f1431319e50198ad55412aaf234d118cc808` |
| 55 | `instance` | [IsFiniteMeasureOnCompacts.smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasureoncompacts-smul-nnreal.md) | 352 | `declaration-track:f4cb904e3c02eba9caf565a15157aa587fd3928f06589bb119893916a5e78d18` |
| 56 | `instance` | [instIsFiniteMeasureOnCompactsRestrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instisfinitemeasureoncompactsrestrict.md) | 356 | `declaration-track:c420e26ee2d965cb4998ca7a2c12dfc8726f9ac28d1bd28a5f1e31275e87403d` |
| 57 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-4.md) | 360 | `declaration-track:a4fa481f5910ca224439da05d772862001b12f66a3a0c397153ef0c4b6d983d6` |
| 58 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-5.md) | 365 | `declaration-track:b5dbbbd7196584eab7f56c2c1446a61d6100fec18704c5a85e4ddc85a8ea29c5` |
| 59 | `theorem` | [exists_pos_measure_of_cover](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-pos-measure-of-cover.md) | 371 | `result-track:4c0b7c547f8ee6473ca91de8ad7a5701c17f6d87c43420162508c3924fc76cac` |
| 60 | `theorem` | [exists_pos_preimage_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-pos-preimage-ball.md) | 377 | `result-track:ffad6553af7f7803316f939f724f0523ae0de607a997bca8ddf26091e9a2ace4` |
| 61 | `theorem` | [exists_pos_ball](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-pos-ball.md) | 381 | `result-track:89ce705480bcca4ad2bf90a1b80c5b6e228b395cfc9fadfe86f225d82745a8c9` |
| 62 | `theorem` | [exists_ne_forall_mem_nhds_pos_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-ne-forall-mem-nhds-pos-measure-preimage.md) | 387 | `result-track:e0f42063bdb0a4519acfc852db6de0ef0de3a4a96a1eb5341271a9ca46aa1af6` |
| 63 | `theorem` | [ext_on_measurableSpace_of_generate_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ext-on-measurablespace-of-generate-finite.md) | 403 | `result-track:f4e8647679ace164d17eaba7cf175b4a9a2f97562a87f12aec3e8315c2989495` |
| 64 | `theorem` | [ext_of_generate_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/ext-of-generate-finite.md) | 422 | `result-track:09d4b793e8558631a5477184b158a4789ca4dbdc9b271d2cffe0d0b33227318b` |
| 65 | `theorem` | [filter_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/filter-mono.md) | 433 | `result-track:9ce0bd6ef6fc6286076ab5b07dcd011a178597a0c106b53b124d456eed549614` |
| 66 | `theorem` | [inf_of_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/inf-of-left.md) | 436 | `result-track:2a420e134e428d4865cf7960a0cc91373e07ca8b5ffebde47e1b74e11c7e6e80` |
| 67 | `theorem` | [inf_of_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/inf-of-right.md) | 439 | `result-track:fd115d43935880062326b73163a9798fe1b85a6a904dd4b107cfb0f9eaa7f88a` |
| 68 | `theorem` | [inf_ae_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/inf-ae-iff.md) | 443 | `result-track:0a24471201f4d47d3a2afea6bad94587af4cac76995827e17c73d5a698df1ef1` |
| 69 | `theorem` | [filter_mono_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/filter-mono-ae.md) | 451 | `result-track:44143dc8853f3c98300e2b964c5270da5d03b9a94730127d9c2d24fbb925ae6d` |
| 70 | `theorem` | [measure_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-mono.md) | 454 | `result-track:68e69ef3edb213918f113ab5314f3761d3c1a8bb29bee8274435c9665de95695` |
| 71 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/mono.md) | 458 | `result-track:411a023b3555ebc6e988d0db8c2090fdbdff110d109ae1d744a0b50fa9306fd8` |
| 72 | `theorem` | [eventually](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/eventually.md) | 461 | `result-track:ce813246d1030403b18fb0f8ee2e86061441e83e5c770b76eabc222975f46ee9` |
| 73 | `theorem` | [filterSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/filtersup.md) | 464 | `result-track:f390c9321dff53c2454ac093cbeb0ca9314293c7d2a7dc7bf95ea42bcac2aad4` |
| 74 | `theorem` | [finiteAt_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteat-nhdswithin.md) | 470 | `result-track:85383a9eb845253ff62ee66b840427cc76121d9a962d6715641b8f817458e46b` |
| 75 | `theorem` | [finiteAt_principal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/finiteat-principal.md) | 475 | `result-track:9ac0e6ff81995043002b5f3267cfb848d27b5afb1e70dca721dd909f65b60521` |
| 76 | `theorem` | [isLocallyFiniteMeasure_of_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/islocallyfinitemeasure-of-le.md) | 478 | `result-track:647a534646e038b83f862da41253fff1efafc3c14b776ff0b53458f20cfe22a9` |
| 77 | `theorem` | [exists_open_superset_measure_lt_top'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-open-superset-measure-lt-top-source-edition-2.md) | 493 | `result-track:db8f153d529ac3f92c750c31a7a571f0288de6bf71648a0a35a9bad77336374f` |
| 78 | `theorem` | [exists_open_superset_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/exists-open-superset-measure-lt-top.md) | 510 | `result-track:533fbb8c4d0263fc180f1c93c02ae6f6a9f4dda99aec9568def32cbb19b2a64c` |
| 79 | `theorem` | [measure_lt_top_of_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-lt-top-of-nhdswithin.md) | 514 | `result-track:6f86586aab6042450c2acca0fdaf20286d68b0dd25dc3149d9b9519f07f36623` |
| 80 | `theorem` | [measure_zero_of_nhdsWithin](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-zero-of-nhdswithin.md) | 519 | `result-track:ea64a9f1cb77950dfb24f2878e3c70cabe4201ce2fcf8a720eb135a853c48c0b` |
| 81 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/instance-source-edition-7.md) | 526 | `declaration-track:d08019f9d882894fcfbcdde2a1140a6c8b8900618b309a25cec8b86a7b395926` |
| 82 | `theorem` | [isFiniteMeasure_iff_isFiniteMeasureOnCompacts_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/isfinitemeasure-iff-isfinitemeasureoncompacts-of-compactspace.md) | 531 | `result-track:6704bece0c795d659f9af56a02dbbc20fe183ee6ca891ec2448c9ffdafbeb9f4` |
| 83 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInCompact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measuretheory-measure-finitespanningsetsincompact.md) | 540 | `declaration-track:43daf228e7a15c502756facea89c9776c26eba1a157e424c465a2383305d947f` |
| 84 | `def` | [MeasureTheory.Measure.finiteSpanningSetsInOpen](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measuretheory-measure-finitespanningsetsinopen.md) | 550 | `declaration-track:7221e0e2b497f16f85769754f98b927354750e9c5b6c05dbdb5aeeb6f3f39300` |
| 85 | `theorem` | [measure_Icc_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-icc-lt-top.md) | 610 | `result-track:02702c0b7c030efe16e450b21c24822a59b3e538de24d28689a4666ba71c2830` |
| 86 | `theorem` | [measure_Ico_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ico-lt-top.md) | 613 | `result-track:cec051606f5353203fa8ba5705f7754dab26af2f0b92fcb67543c7d3fd680a84` |
| 87 | `theorem` | [measure_Ioc_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ioc-lt-top.md) | 616 | `result-track:82f18cd34225cb50f63039b1c56c769f2ac8489926acca40cb85f80e625c2410` |
| 88 | `theorem` | [measure_Ioo_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FiniteNamespaced.lean/declarations/measure-ioo-lt-top.md) | 619 | `result-track:4d463f745992c8e6e18702988b10c6ea81eaeb297db7ff94478fab3b94646e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48c09db0854c175905c7c61b0bdfc6c006bb44ede7e1abb6e46732d290299eb3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
