# Verification target: Diffeology Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba74d8bddcc80b3393f1db17bd4bb92781dfb32e",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/index.md) · [Full source](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba74d8bddcc80b3393f1db17bd4bb92781dfb32e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [DiffeologicalSpace](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/diffeologicalspace.md) | 167 | `declaration-track:fac56194eba72fd83a95265ca86b22d7475ce763ad9f4640911668e2f38eddb4` |
| 2 | `def` | [IsPlot](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot.md) | 205 | `declaration-track:838461be4db5bdc9b7ba0729cbfe2c50b15e3f2907caea1a72f149391db13e1b` |
| 3 | `def` | [DSmooth](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth.md) | 210 | `declaration-track:9735747ed3ebf6803328d57094adc9bea4ae7673bbc5d5b829fb16e660f6fce8` |
| 4 | `theorem` | [Diffeology Basic Namespaced Public](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-diffeologicalspac.md) | 215 | `result-track:1840ec3e063ffff9be19ac14a9f5c47f462e4197a2a5c49ff597878992bc1706` |
| 5 | `lemma` | [isPlot_const](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-const.md) | 223 | `result-track:6497269bfc75d4a51c9234fe432f47fabf5f21282e66014dd5c86037c44a8524` |
| 6 | `lemma` | [isPlot_reparam](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-reparam.md) | 226 | `result-track:790542c8dba2e3c79537f1fcb2c3a270cb27373d494de59daed6a02e5d942fef` |
| 7 | `lemma` | [IsPlot.dSmooth_comp](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-dsmooth-comp-source-edition-2.md) | 230 | `result-track:fff1c805391437942c129d6b91a3d66167ea3c5aad181925813a5a4a2141fc83` |
| 8 | `lemma` | [IsPlot.dSmooth_comp'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-dsmooth-comp.md) | 235 | `result-track:ee3f0f11dc25a4aa8fa86afa835991c9f2af187e39525c127efa187f69a1e0ed` |
| 9 | `lemma` | [isOpen_iff_preimages_plots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isopen-iff-preimages-plots.md) | 239 | `result-track:e879c7ebab2cf5c792411f15a0458283660f006621653b18e380849af16e9977` |
| 10 | `lemma` | [IsPlot.continuous](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-continuous.md) | 243 | `result-track:779fe6b91a2ac5382ce07f9dfcb0ff6a7e61263863298bc4297150cf0b792d18` |
| 11 | `theorem` | [DSmooth.continuous](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-continuous.md) | 247 | `result-track:8fd4296afa2759802e695cda40e0fa9bece7d63d1c0edb4e73e2165ae95bf080` |
| 12 | `theorem` | [dSmooth_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-iff.md) | 252 | `result-track:3356b6f2202387780959012471010a805d1b3e90aae6040af30a2775c817399d` |
| 13 | `theorem` | [dSmooth_id](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-id-source-edition-2.md) | 256 | `result-track:fbb3924f273e331319e8afdc9776309ad4599a35900a11df573ae4a9cb987495` |
| 14 | `theorem` | [dSmooth_id'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-id.md) | 259 | `result-track:e38c614f233075534c68948e54e9e595c93884f6bfb4565e52ebc81e9ce5e1c7` |
| 15 | `theorem` | [DSmooth.comp](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-comp.md) | 261 | `result-track:93db67b2d5f5bdf4c374793d872ae2871710203f374b0d3741d32f6358009c33` |
| 16 | `theorem` | [DSmooth.comp'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-comp-source-edition-2.md) | 266 | `result-track:c66236a4d4bf3deb9d7dd6f51bcd4e3d5e4c553b53879ea210127fad6ea0e665` |
| 17 | `theorem` | [dSmooth_const](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-const.md) | 270 | `result-track:2275ef2e28dfbffdca65ccd7b8c83f3b9b3d1bdf66e2108edb81e6ad5d7c5c39` |
| 18 | `def` | [replaceDTopology](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/replacedtopology.md) | 280 | `declaration-track:6612a16a7fd29f734c00ef8dc21bf88ef6343517263a928c533ed7d43776c7b4` |
| 19 | `lemma` | [replaceDTopology_eq](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/replacedtopology-eq.md) | 286 | `result-track:d4b5679ee9aba93af4c082a82d8f20c4cce95f9d25c96d29664a1f3f48153672` |
| 20 | `structure` | [CorePlotsOn](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/coreplotson.md) | 292 | `declaration-track:3eba2e9dc9ee2a5fe179642c2d908d6bcf3c19285e66380567f9e0c850203ea4` |
| 21 | `def` | [ofCorePlotsOn](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/ofcoreplotson.md) | 327 | `declaration-track:2d41d8471a953d52057ce32cd7700faaace6196f2cb2276649a20b3fda30428d` |
| 22 | `class` | [IsDTopologyCompatible](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isdtopologycompatible.md) | 361 | `declaration-track:e14e7145d948e99a09b5926244f2b6e35c5f463dbef31e02497feefcecd16c29` |
| 23 | `theorem` | [DSmooth.continuous'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-continuous-source-edition-2.md) | 365 | `result-track:c58779090368c2135aa573fbf11e24b498f1a47dc4cd0fcc77e778d1740b27dd` |
| 24 | `class` | [IsContDiffCompatible](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/iscontdiffcompatible.md) | 378 | `declaration-track:1887317e42acab4ead850e0452cfb58e787df16534e5146be328678dbf7ee64b` |
| 25 | `def` | [Diffeology Basic Namespaced Public](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-diffeologicalspac-source-edition-5.md) | 386 | `declaration-track:e3f3dace92bf1a6143b224535464fed21df152e8cea23f2f1156ce009a6e71c6` |
| 26 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 406 | `declaration-track:85006c0f9950142b4ee8baaa8f9a9daab7c05b137fdbaefd1ea8014e4afc6751` |
| 27 | `lemma` | [Diffeology Basic Namespaced Public](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-diffeologicalspac-source-edition-4.md) | 410 | `result-track:b75d651c50781409ad5567dd1db37474866a40bb45ddbe9162fe4caf3ce7d4dd` |
| 28 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance.md) | 416 | `declaration-track:4d618e839612c26e7372b597152c5bde08df43ecc458d152360ba079c2a42b20` |
| 29 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 420 | `declaration-track:c9c8ae27c72ff0bc0650ede9c454fd689be458789b765e87d3ce7b9521ba13c3` |
| 30 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 422 | `declaration-track:4f08aba0f2fcea96013a4db799f72d72d35fcb591bbb6faa76d4f815c814cf5b` |
| 31 | `theorem` | [IsPlot.dSmooth](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-dsmooth.md) | 428 | `result-track:c57b2a4d2a4eccd042edf20932b1e319c0d8bf64098b306e258e66a2e1ff3ea7` |
| 32 | `theorem` | [DSmooth.isPlot](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-isplot.md) | 432 | `result-track:9d167c34ca0a408ef9ea1cf89baa46461c21ffa33132a7dd47e9773e479f67bf` |
| 33 | `theorem` | [isPlot_iff_dSmooth](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-iff-dsmooth.md) | 435 | `result-track:29e004808a53dbe578b8253404e1a22d5e301e459b67976568a8c70e1b4addf6` |
| 34 | `lemma` | [isPlot_id](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-id-source-edition-2.md) | 438 | `result-track:9818affd92465182d8589f3810eebc80e7cdf85b4dc079956b87bb33bf7ab1b2` |
| 35 | `lemma` | [isPlot_id'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-id.md) | 441 | `result-track:5b95fa6969574283773861701a1cf8a807d5523ceae13a6952c77b011716fce9` |
| 36 | `theorem` | [isPlot_iff_contDiff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-iff-contdiff.md) | 447 | `result-track:b1e7275f4f4233fc9c8538ecbd78e59271e03fcbd8c6a8e95e3c534c156c83aa` |
| 37 | `theorem` | [Diffeology Basic Namespaced Public](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-diffeologicalspac-source-edition-2.md) | 451 | `result-track:4f398a64702968168e7e2e2d7db6584952168e38e3b23824d718319d011eca70` |
| 38 | `theorem` | [IsPlot.contDiff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-contdiff.md) | 455 | `result-track:c69669f8fe2fa6f11d8e87d2e917d149e4775673e137d3f71058665de5a5c686` |
| 39 | `theorem` | [Diffeology Basic Namespaced Public](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-diffeologicalspac-source-edition-3.md) | 459 | `result-track:b0ec182987e1953f3921679eb450fc5c450d58f07c9a0fedba0a3410ea3cc965` |
| 40 | `theorem` | [DSmooth.contDiff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-contdiff.md) | 463 | `result-track:76248b5a9ff0b71faf6130b7115a693c9bb9a68c75d03210ebd5a84574f67083` |
| 41 | `theorem` | [dSmooth_iff_contDiff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/dsmooth-iff-contdiff.md) | 469 | `result-track:a2a3cbb950eec2c676a3dd11ce6f325aaaf441cabf16beb9523369c5da9ef463` |
| 42 | `def` | [toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/toplots.md) | 484 | `declaration-track:f97357ce4dba986bab583bdc5d0262580673517ea8f2c90b35a2342b200a1a36` |
| 43 | `lemma` | [injective_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/injective-toplots.md) | 487 | `result-track:d3b910e352e661ccb56b3c69b28ed2e10bf60485cb2d07c58d0a94e71e66ddb1` |
| 44 | `def` | [generateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom.md) | 492 | `declaration-track:435bf61ca41b67f806dbb467b628d837ad6fdce9b222369827f7bab181198c10` |
| 45 | `lemma` | [self_subset_toPlots_generateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/self-subset-toplots-generatefrom.md) | 500 | `result-track:376b09247b714aaa9248b7a34f61d87ca1f7ee30abd512d274a244b0d5e11323` |
| 46 | `lemma` | [isPlot_generatedFrom_of_mem](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-generatedfrom-of-mem.md) | 504 | `result-track:7b754bc90fadd9f738a877ccb789b14658a031146c4593de95f1303a42132f61` |
| 47 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 508 | `declaration-track:8e1e8fa6bbff97323c351608036000d2aaeea48af0abd010af9180a96ac99cb7` |
| 48 | `lemma` | [le_def](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/le-def.md) | 510 | `result-track:e208fdd46d14649983217eff0ed6da1c96eddad389e0974f50c4c35fc58834bd` |
| 49 | `lemma` | [le_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/le-iff.md) | 512 | `result-track:bb6d717fc3f881d65d43854167d4813b90af90a599bdfc18636a11127c1346b3` |
| 50 | `lemma` | [le_iff'](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/le-iff-source-edition-2.md) | 515 | `result-track:ee526fe6a08945a99efb4ab107e714af80a8a68e05282ef20a89027fc1354ebe` |
| 51 | `lemma` | [generateFrom_le_iff_subset_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-le-iff-subset-toplots.md) | 518 | `result-track:67da6a8d8994bdd8323fae478e47e863d7b7898d2f823ad55e201a952e090e60` |
| 52 | `lemma` | [generateFrom_le_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-le-iff.md) | 524 | `result-track:e706b214317b6338baa220fec9a16686a57820c63a29ea66a326c506a23eaa88` |
| 53 | `def` | [mkOfClosure](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/mkofclosure.md) | 531 | `declaration-track:7d9cd026f2b78d4062eb6506e0ca822b04b39c8038d2adecd961ac9f3ee596f5` |
| 54 | `lemma` | [mkOfClosure_eq_generateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/mkofclosure-eq-generatefrom.md) | 539 | `result-track:e40e2cf7c94666eac800bd00bf526d7ba307c3487fecce7e23bc6aea28d0f2b3` |
| 55 | `theorem` | [gc_generateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/gc-generatefrom.md) | 543 | `result-track:6ab679ecb64f42910bd3ad7d5daebaef55a1290cbce64e33c5459762e33daea0` |
| 56 | `def` | [giGenerateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/gigeneratefrom.md) | 550 | `declaration-track:5f6442819b27b070e74e885195e3bfdfa2696de8c245d9d279024d047d02b4b9` |
| 57 | `instance` | [(anonymous)](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 556 | `declaration-track:d5a4637b72cd55dc31ec6989f9b8949a4b36d2c55a1443f9c7bf4328bfc7187b` |
| 58 | `theorem` | [generateFrom_mono](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-mono.md) | 559 | `result-track:daa009dbb2fbcfdb4057f30340616efe637a80f1ea1833875eb687e528c7ddc1` |
| 59 | `theorem` | [generateFrom_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-toplots.md) | 563 | `result-track:ca3ee4954729d81bb8fb57ad1038f45f81827f1cd2af5b4f9dbec4536be04991` |
| 60 | `theorem` | [leftInverse_generateFrom](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/leftinverse-generatefrom.md) | 567 | `result-track:d6cb4e48624e71783cf8e2bc9ea4567f67c30881ec51a9ba36bee672d8aea337` |
| 61 | `theorem` | [generateFrom_surjective](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-surjective.md) | 571 | `result-track:fe44d619edc560bef484c97fb28ab93e944ad9c2f2eb74661463ad7f2512d870` |
| 62 | `theorem` | [generateFrom_union](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-union.md) | 574 | `result-track:44336ce1875f8a7b262bd691304bfbf0e9c8b461b6bfb698583085d753eeed00` |
| 63 | `theorem` | [generateFrom_iUnion](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-iunion.md) | 578 | `result-track:8926c15d793d68780e79e153b23e39f6f3bd2b0b1bf6535cb43bd1db7702a201` |
| 64 | `theorem` | [generateFrom_sUnion](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-sunion.md) | 582 | `result-track:8c7a97b6980fdf903ef80706cba771a2c50e8c03feb33a163fc04c2c02eea226` |
| 65 | `theorem` | [toPlots_inf](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/toplots-inf.md) | 586 | `result-track:388f63d9cc3119a3d5721e1b924c00bce3269ba74f22e588193a669f30d7966e` |
| 66 | `theorem` | [toPlots_iInf](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/toplots-iinf.md) | 589 | `result-track:46e4d7ca7b389d779155df2ded24b787b59f2106b18808ca03959674d8728967` |
| 67 | `theorem` | [toPlots_sInf](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/toplots-sinf.md) | 593 | `result-track:d6841cb56696fd531dcd91bde88a1f9ce57cae07856a872db9a41b52c48d12ac` |
| 68 | `theorem` | [generateFrom_union_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-union-toplots.md) | 596 | `result-track:558b6d730f3c728689398447bf31df0235807bb9aaf7eb7abbb43852ad54d4c8` |
| 69 | `theorem` | [generateFrom_iUnion_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-iunion-toplots.md) | 600 | `result-track:5b9f090bee997ff1b96a628a24907a4c4133af23381264bb16c719df29dc5a5d` |
| 70 | `theorem` | [generateFrom_inter_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-inter-toplots.md) | 604 | `result-track:bf933b5e98278ec9b4a18f172ff235273e42cc43fbc76d6efbe63fb0f4b45ad7` |
| 71 | `theorem` | [generateFrom_iInter_toPlots](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-iinter-toplots.md) | 608 | `result-track:8c90cba390a48c17e4d842806b8f27a67e2967bccc41745ab550b973e6e0fe28` |
| 72 | `theorem` | [generateFrom_iInter_of_generateFrom_eq_self](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/generatefrom-iinter-of-generatefrom-eq-self.md) | 612 | `result-track:09278b0d3b4162c43a79ecfe3ad5064a2462de100d5eca740744f64d5ddfc74e` |
| 73 | `theorem` | [isPlot_inf_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-inf-iff.md) | 618 | `result-track:ef05e9fd3850d35fbf6182dd571f67ead412ff7dda52b10d0ff41ae3fc82fab4` |
| 74 | `theorem` | [isPlot_iInf_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-iinf-iff.md) | 622 | `result-track:1035123de99f420b0802970a6b8e54f615b167b8cb0604c2ca4326315725b8df` |
| 75 | `theorem` | [isPlot_sInf_iff](../../../../Geometry/DiffeologyBasicNamespacedPublic.lean/declarations/isplot-sinf-iff.md) | 626 | `result-track:75e8a68be0d0a7d02d837672e396ddf29b99fe503c1635be9b744291edd13c77` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=792351039d9588d05ff255ba136f0e64b4a0a4bd86a53f0251befd08554a8dc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Varianta1f9f34a5dfc8a84b2fa9a669db8fa8716a5d7eb684f6d4354bd450ffeab57fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
