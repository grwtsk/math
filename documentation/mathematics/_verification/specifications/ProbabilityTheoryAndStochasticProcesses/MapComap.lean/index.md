# Verification target: Map Comap

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3daf95913bd472020326a4d37b86bb8327f80fa3",
  "lexical_observation_count": 142,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3daf95913bd472020326a4d37b86bb8327f80fa3`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapOfMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/mapofmeasurable.md) | 49 | `declaration-track:26f6663f8add5afe2e9797f20ad555087e596ef6c663552601cc3cc762b09674` |
| 2 | `def` | [map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map.md) | 59 | `declaration-track:0450513e422763e9385b9ea9d085bd8e37accf90e03151a594ac96edac0da015` |
| 3 | `theorem` | [map_of_not_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-of-not-measurable.md) | 62 | `result-track:b02b6ac9d2f5ec5fd5eeb69f27d518b471b234ec55b31a47701b8a41e32181b4` |
| 4 | `theorem` | [mapOfMeasurable_eq_map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/mapofmeasurable-eq-map.md) | 66 | `result-track:ee0beac7ef66db4e13fc833c5d6f7495fb5fd5a6755c028f43a40c02ddc8a69d` |
| 5 | `theorem` | [map_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-apply-source-edition-2.md) | 70 | `result-track:c59b9083f8279ddd801b325c79fced32c9173e8a8efd249cf3dfaedb1237df4f` |
| 6 | `theorem` | [map_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-apply.md) | 73 | `result-track:8a435a088b0387d1d1cc81b20de4355752616d441421a9145b5bcabc44dcbdf0` |
| 7 | `lemma` | [map_comp_right](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-comp-right.md) | 76 | `result-track:0f85c98d99d82bec50d5a18bb7998494c0c10aa46b8ff27aa7aa7c76f8c37fad` |
| 8 | `lemma` | [map_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-zero.md) | 82 | `result-track:1bd77499dbfabefb3a81f9cad92dec37960ed2f570953f4eae50b1430cbe1a62` |
| 9 | `lemma` | [map_id](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-id-source-edition-2.md) | 89 | `result-track:b2a0d218d9ecd6d0dfa3c83ef67772faf7fe3845ac320a10f778eae4654f0b48` |
| 10 | `lemma` | [map_id'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-id.md) | 94 | `result-track:168115a18db3b7b2cc7e3587b41dcb7b82059a26a77d7bba9fe19ee2feffd5d7` |
| 11 | `theorem` | [lintegral_map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-map.md) | 96 | `result-track:40babab217745e2bc7bfc008b39104d8af5a4f18a44fa755b9cda41cd0b17ce6` |
| 12 | `lemma` | [map_apply_eq_iff_map_symm_apply_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-apply-eq-iff-map-symm-apply-eq.md) | 100 | `result-track:36f48173d352fd75075f6a230f980f5fa75ac6404f0376de6454c30cdfb062bd` |
| 13 | `theorem` | [sum_map_seq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sum-map-seq.md) | 105 | `result-track:8c74bbdc604c10d1bb80acca12a17c1c73c1dc1f7c099f4cb08008d9c967720c` |
| 14 | `lemma` | [IsMarkovKernel.map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-map.md) | 114 | `result-track:ac20d6da4683e9c0941bc66edd6d4a7b79d7eaf7ded5de282c2b578c60905b3b` |
| 15 | `instance` | [IsZeroOrMarkovKernel.map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-map.md) | 118 | `declaration-track:c00f78dbf28b3537c33193d62dccdf3df5b9d5330dae77977402c0260e3bd6cd` |
| 16 | `instance` | [IsFiniteKernel.map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-map.md) | 126 | `declaration-track:43d66f57cfae348411caff7af5e971ffead645ccd9ff96db2e8393390dc214bd` |
| 17 | `instance` | [IsSFiniteKernel.map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-map.md) | 134 | `declaration-track:9959dd4625898bd5a6353efb6fd20c321156c7f9b83f16d84dc0417da52f0e87` |
| 18 | `lemma` | [map_const](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-const.md) | 139 | `result-track:0eb9f58f660fbbb3769006553304ba0d5c95c5f6d18841af76b5666c62e1bda8` |
| 19 | `def` | [comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap.md) | 148 | `declaration-track:82d2394150bcba2df58775d9cf5a7c74001a844475837a27ad053d57bd71b0c6` |
| 20 | `lemma` | [coe_comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/coe-comap.md) | 153 | `result-track:dc9afa1d62cc24079f413fe0fd736f5e7afbd90710e09326a783a1e5fd056cbd` |
| 21 | `theorem` | [comap_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-apply-source-edition-2.md) | 155 | `result-track:eaacfab858a81cf84db8e683bdb11fc3149398ec4628fe84bf0394d6d50f6bf8` |
| 22 | `theorem` | [comap_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-apply.md) | 158 | `result-track:aa464dfbdaee96493654fd6adbd10bf2c2798ff9ebab9423036cc66d955f9b68` |
| 23 | `lemma` | [comap_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-zero.md) | 163 | `result-track:d2c506ce1c77850361e77dde3cf9c271dda172aed74327ad532b2fd7265ed63a` |
| 24 | `lemma` | [comap_id](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-id-source-edition-2.md) | 167 | `result-track:c4bef948042c1ebf55ac20d559b0c79d58e5e745ea125063b3b7bd383b01ed05` |
| 25 | `lemma` | [comap_id'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-id.md) | 170 | `result-track:8acb89c8ef5c0612b904bf28a09d1b56155b8b7252faaf8d19d4d830db8b8f2d` |
| 26 | `theorem` | [lintegral_comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-comap.md) | 172 | `result-track:ce6bf0a8f111183fe2ab4c36e8232ec553c9a4df9a6b3b7125b8fd76673f4017` |
| 27 | `theorem` | [sum_comap_seq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sum-comap-seq.md) | 176 | `result-track:ca74e4b7fd8b5b363332be0c31d448f9fa50defd1893c7a5299bdb7fbf9e5233` |
| 28 | `instance` | [IsMarkovKernel.comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-comap.md) | 183 | `declaration-track:a8af9796a8919110b9ca72290fbeda4319e614ac096f81fb12a5bb819a57536b` |
| 29 | `instance` | [IsZeroOrMarkovKernel.comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-comap.md) | 187 | `declaration-track:561d10e8d8fdaebc84f86034e287203008ca69ff4ee61f485663e180e8fa2ab2` |
| 30 | `instance` | [IsFiniteKernel.comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-comap.md) | 193 | `declaration-track:7ed2aa20c7aa3dcfe8b52a7524a8ace5299938ad0e08e8d2d37ba5aed6fa81c0` |
| 31 | `instance` | [IsSFiniteKernel.comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-comap.md) | 199 | `declaration-track:570cdd46f0296bf63216a5f83ac2c0f1eb8dcaba444af9baba14d570342b4807` |
| 32 | `lemma` | [comap_map_comm](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-map-comm.md) | 203 | `result-track:49de83a4146b151599e59e126519d0886fbbeaf9055b65e629d974fb309bfa4d` |
| 33 | `lemma` | [id_map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/id-map.md) | 212 | `result-track:bf1a73ad60b5b18920f808a510e9fabdeb8428c78872541eaaec59102fc4ec83` |
| 34 | `lemma` | [id_comap](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/id-comap.md) | 217 | `result-track:c3a9bb83c7603d963e7a951e50c4e7317831356c06bbb483b9f0c93d21c4f7f7` |
| 35 | `lemma` | [deterministic_map](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/deterministic-map.md) | 221 | `result-track:03829638e29847bc5491ecce10d14d457c21fd25d863f578c3654d2b2247edfc` |
| 36 | `def` | [prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkleft.md) | 230 | `declaration-track:26d6621035cccfdedc9ddc7e07589dee4b17e565395f0610fd79b4ef78a813b9` |
| 37 | `def` | [prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkright.md) | 234 | `declaration-track:eb817d57b8215d2b83e577aea5a95a5b0c06cbef5680ec5b42b1d4f129a7a697` |
| 38 | `theorem` | [prodMkLeft_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkleft-apply-source-edition-2.md) | 238 | `result-track:d36569431041325ff8a6eecb66f864a47c7a64ca4b30e6f07ca1f5797a7722dc` |
| 39 | `theorem` | [prodMkRight_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkright-apply.md) | 242 | `result-track:3e8f4ba6fff543be29a027d1f6f037aecbb67ef59deb8d981db054b3293208ef` |
| 40 | `theorem` | [prodMkLeft_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkleft-apply.md) | 244 | `result-track:8f0c6fc41cf5927861a9b3392ca48ca96e7667c136b6bc32ec56020ba38eed9d` |
| 41 | `theorem` | [prodMkRight_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkright-apply-source-edition-2.md) | 248 | `result-track:a1fffec5461a5f3db3108ff9edd64035d0be74ab5569c4e05923bfaf408933ae` |
| 42 | `lemma` | [prodMkLeft_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkleft-zero.md) | 252 | `result-track:74879607fbc1c68092a30dda0addfa0abf95f8a243f3739f9cbda0c24fb617e5` |
| 43 | `lemma` | [prodMkRight_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkright-zero.md) | 256 | `result-track:e2201b7b790df414aaf9feeae55c728d45393a39293b3ca3c4cb755a573ea761` |
| 44 | `lemma` | [prodMkLeft_add](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkleft-add.md) | 260 | `result-track:5ddf06d03c0f5a3a27faba1a2c7eec6864b6d63bd1157226a40f36e7e1e4e109` |
| 45 | `lemma` | [prodMkRight_add](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/prodmkright-add.md) | 264 | `result-track:de68a63632134dc517926e426ba436ed0f6048ae5d256f31cb7b54f8d13247cc` |
| 46 | `lemma` | [sum_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sum-prodmkleft.md) | 267 | `result-track:350b46b21c5d307b4c6a7ca7333dfa427e4bfec346bea5765573f13c61cc41cf` |
| 47 | `lemma` | [sum_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sum-prodmkright.md) | 272 | `result-track:45343df931b49710e457ecf090094f3c43e1e1b2cc414a97765c9f4df439f1a6` |
| 48 | `theorem` | [lintegral_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-prodmkleft.md) | 277 | `result-track:48060a06cc1e986f7f1b1d14c52dcd482596f892d45c1123e9b4e26403cf2812` |
| 49 | `theorem` | [lintegral_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-prodmkright.md) | 280 | `result-track:237726d4818f49be9d84cf5a2c9953b25cd2850250e1907610612b69801a149c` |
| 50 | `instance` | [IsMarkovKernel.prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-prodmkleft.md) | 283 | `declaration-track:38c5b9c4a2311acd7e2327a5da7a2ed9e0cbb249e57320ba4a8d1b49e35c7b30` |
| 51 | `instance` | [IsMarkovKernel.prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-prodmkright.md) | 286 | `declaration-track:79840c968dfd7fb00c4528440346b92bf63037eefadfadbbc2921ef43e8ac5f6` |
| 52 | `instance` | [IsZeroOrMarkovKernel.prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-prodmkleft.md) | 289 | `declaration-track:3de53307d77a171bcbaf751bfdfd9162c489cd6c1bbe57cd85d657688ef29e2d` |
| 53 | `instance` | [IsZeroOrMarkovKernel.prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-prodmkright.md) | 292 | `declaration-track:a9a4885b2bcc26d77a91851bb0d444e429d0a8252d040477556c2d8d6c1a16d7` |
| 54 | `instance` | [IsFiniteKernel.prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-prodmkleft.md) | 295 | `declaration-track:6e939940bf49e40e43063836b71a1d71ba0fb2784cc0fcb3104e811410f7ac57` |
| 55 | `instance` | [IsFiniteKernel.prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-prodmkright.md) | 298 | `declaration-track:53e0d8d6ca07cab87125ef7b00a3c53f73721b557cab6336e62b68027894a0dc` |
| 56 | `instance` | [IsSFiniteKernel.prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkleft.md) | 301 | `declaration-track:cc373c90c52b53e76a90ad48e253aba748c50debf00a1a45486f61d5b6d71112` |
| 57 | `instance` | [IsSFiniteKernel.prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkright.md) | 304 | `declaration-track:488d7e9abe757c3626866b38225a672adf97993e8b6fc6c99fcfed2efc531c7c` |
| 58 | `lemma` | [isSFiniteKernel_prodMkLeft_unit](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkleft-unit.md) | 307 | `result-track:c636193f3d8ce2c1386a584fe6fe36a080b23e4c242731482a1eb95f754dbcf3` |
| 59 | `lemma` | [isSFiniteKernel_prodMkRight_unit](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkright-unit.md) | 313 | `result-track:722fdbc66b801a80f176d994783a3a4da784c15bba50605e46bc12b2d204f1cb` |
| 60 | `lemma` | [map_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-prodmkleft.md) | 319 | `result-track:da1a1116be69505a06f82b220720cf1464b85e474b47efeb6a2e2efd51d7111e` |
| 61 | `lemma` | [map_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/map-prodmkright.md) | 326 | `result-track:54c68176485dc6653620caa9832b6b68f43c4e4375c0212fe28f0fb3e48416d9` |
| 62 | `def` | [swapLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft.md) | 334 | `declaration-track:dc97259f42fdc4c07795d5c3ff8cc610368d7476230b208878988b71e072676b` |
| 63 | `lemma` | [swapLeft_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft-zero.md) | 338 | `result-track:47516cb34c1ccf08dc8028a3023a3f387dbbc49b700e27037d3afde98f117700` |
| 64 | `theorem` | [swapLeft_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft-apply-source-edition-2.md) | 341 | `result-track:f5d32cb782b8a5eaeb04bdcffd4493c77af4aa4a4ed16181275bd5ab8fda2fca` |
| 65 | `theorem` | [swapLeft_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft-apply.md) | 343 | `result-track:e49daebb23d35dbbf4df157d5e732f4addfb8f9e75fbd3a0cc919871eb4921b3` |
| 66 | `theorem` | [lintegral_swapLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-swapleft.md) | 346 | `result-track:d61e4c033d72c4bf1a0c010026aba395a13bc70b6bd5c2a0eea0bc684d72f63f` |
| 67 | `instance` | [IsMarkovKernel.swapLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-swapleft.md) | 350 | `declaration-track:819eea1f3688758198d7d08dccd65973eb08b3346703213e22d8ef091c6f1a72` |
| 68 | `instance` | [IsFiniteKernel.swapLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-swapleft.md) | 353 | `declaration-track:cdc3c6bc3572f59b6d5e7a17abdd8408b31861306363b8726bdb7a69130e80bd` |
| 69 | `instance` | [IsSFiniteKernel.swapLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-swapleft.md) | 356 | `declaration-track:cfba5f0a33b3fc93d3e1bd6ca33ad47ae6dfd16017c475db96d082624c0258a8` |
| 70 | `lemma` | [swapLeft_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft-prodmkleft.md) | 359 | `result-track:cb56569db791164b7580aaf2ff6c5776e97f4f0d753e63c6e30da8b00dd9dc9b` |
| 71 | `lemma` | [swapLeft_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapleft-prodmkright.md) | 362 | `result-track:92e89bf95755574ff771682769c1687f53e40a397a4e08a15a9e039fe6d638c6` |
| 72 | `def` | [swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapright.md) | 367 | `declaration-track:b5aee187dc74cf82399a26aa44493ff78e28c9e252cbeb1cca244ae4cb812434` |
| 73 | `lemma` | [swapRight_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapright-eq.md) | 370 | `result-track:580b9216fb9b93dadcaee811a87f9e81d062c01f5108bb8bb44834871f07a819` |
| 74 | `lemma` | [swapRight_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapright-zero.md) | 374 | `result-track:2dc2d57f72fd0b42344257d1ca24b83ddc5f6c24f155a0f8acd84e3b4578335b` |
| 75 | `theorem` | [swapRight_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapright-apply-source-edition-2.md) | 376 | `result-track:7b847069b4b3dbf29951aa01a8f1b97e8e3cb88901049f7ba15bf47849a39962` |
| 76 | `theorem` | [swapRight_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/swapright-apply.md) | 379 | `result-track:6d57e4a68a50d04f4e8509a4ca899396d1bc423a22343254f472edcea9f241be` |
| 77 | `theorem` | [lintegral_swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-swapright.md) | 383 | `result-track:5a03cc5351d761c539253060e709dfcb78f9b5c9e3af8b0e3cc0945bd21f5788` |
| 78 | `instance` | [IsMarkovKernel.swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-swapright.md) | 387 | `declaration-track:2b863add1b23eb1e8099ddc2042fefaaa3a6458e451359e7286760eefcf2071e` |
| 79 | `instance` | [IsZeroOrMarkovKernel.swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-swapright.md) | 391 | `declaration-track:7eb16c3f466d6b5a7a68630467a8f72c4cdc55719ad92e72148ea4d93cf6f579` |
| 80 | `instance` | [IsFiniteKernel.swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-swapright.md) | 394 | `declaration-track:ed6b40b884b4000798383d0cd72e44c6b11130ad3e1dab9c8745d67251b56721` |
| 81 | `instance` | [IsSFiniteKernel.swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-swapright.md) | 397 | `declaration-track:ddbc54bde5f5a28cbea54a36b45ab3fdbbacc34d736d2486c50aa381914e7153` |
| 82 | `def` | [fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst.md) | 402 | `declaration-track:bf647d5e05f16c7c3d0051c58bb75dbe4166f7445b4787a291f28089b9944fb7` |
| 83 | `theorem` | [fst_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-eq.md) | 405 | `result-track:292b3576df6db2319f1b5de77f96edf5200da66a84977c4e6587a5b602a0e1b2` |
| 84 | `theorem` | [fst_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-apply.md) | 407 | `result-track:30a872033ae6df0d498e9a12ca0074fa43b6ad2eae98d684396add175205afb2` |
| 85 | `theorem` | [fst_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-apply-source-edition-2.md) | 410 | `result-track:954bc5059659428b21f9abfcfe01f2a1572eb8d413f4ac5bfa8ed24e3c84b4c2` |
| 86 | `theorem` | [fst_real_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-real-apply.md) | 413 | `result-track:e05b23285e21e24d875fe1e1c4baece05a4020fdae4f94cf33ceb6472945315c` |
| 87 | `lemma` | [fst_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-zero.md) | 418 | `result-track:eb5ab391ba436c82e96b98fc522db90b035f0ec58b97f5bc34a0df096b57e838` |
| 88 | `theorem` | [lintegral_fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-fst.md) | 420 | `result-track:f090dd4b9bdf2426367d957a0bfe78728f8b7355eb60aed6627a1f6764e0b1f1` |
| 89 | `instance` | [IsMarkovKernel.fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-fst.md) | 424 | `declaration-track:6fb90eaeab0f5b98d9250c36b0f0cac2b751de71f25cb79ef141633fb5c19756` |
| 90 | `instance` | [IsZeroOrMarkovKernel.fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-fst.md) | 427 | `declaration-track:a6ec9ffbf9c6e1dce84aaec940a2706ad4076ba855a6b23fff10217791e1543f` |
| 91 | `instance` | [IsFiniteKernel.fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-fst.md) | 431 | `declaration-track:6ebdf9b73579e62413565cfd6309148c409e5a78d4f15f8fec0635e871841d4c` |
| 92 | `instance` | [IsSFiniteKernel.fst](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-fst.md) | 434 | `declaration-track:89beabe02f5ee57941fde3cdbd12cf5e7a9b5d2bef02909cb312b8b34954d574` |
| 93 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-8.md) | 437 | `declaration-track:9b57f10dcd34d77c560c5b08c5292097215e6791c7f0f0775d068260809c1f49` |
| 94 | `lemma` | [fst_map_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-map-prod.md) | 444 | `result-track:5c8bb0b5bf1623d4739a66a8816822de989739121e133c1017a815ca4e4dde38` |
| 95 | `lemma` | [fst_map_id_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-map-id-prod.md) | 455 | `result-track:8738df2da438a4b1028e74b0e5073739ca9e317a20b1c6c42e29b598e7d45599` |
| 96 | `lemma` | [fst_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-prodmkleft.md) | 459 | `result-track:b009db99a49ebe36629ed0eeb60b0b7f7203709af8d257cded5f37b071d44bf9` |
| 97 | `lemma` | [fst_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-prodmkright.md) | 462 | `result-track:615c11bf7c96df93d087ba0a5836872a8cde2ce2e95aa67860caaa4cc05c3e18` |
| 98 | `def` | [snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd.md) | 467 | `declaration-track:f3f5eb2d3f6b20ab8843b01d25d9dea2fd40632f72602d065c5739ac570d6671` |
| 99 | `theorem` | [snd_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-eq.md) | 470 | `result-track:b55ebc6b4ab2af1df9fb47707e6199afa29828d4e38e1758c5844e792ee5b754` |
| 100 | `theorem` | [snd_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-apply.md) | 472 | `result-track:a3aa46b1127e270451d0bff467096a2fcadc0a2d3bb5d63801f5985b9c555984` |
| 101 | `theorem` | [snd_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-apply-source-edition-2.md) | 475 | `result-track:c905e61866284c3b87c9bf66af1a42cb02b58ba474d5cb5c2842585c4a905e6a` |
| 102 | `lemma` | [snd_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-zero.md) | 479 | `result-track:5b31f68168627b4425c1228c597cf26a2a5e0ed6ea9a918fd15ed59ebc329165` |
| 103 | `theorem` | [lintegral_snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/lintegral-snd.md) | 481 | `result-track:26fbc2117808f72c03c3db16f448e3fca7e1d31fb4a03af67ccb7cde3f3610a2` |
| 104 | `instance` | [IsMarkovKernel.snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/ismarkovkernel-snd.md) | 485 | `declaration-track:7627749721d903d6abbe9bb006b2ece543b35bc75c85d4856abb8aef793db770` |
| 105 | `instance` | [IsZeroOrMarkovKernel.snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/iszeroormarkovkernel-snd.md) | 488 | `declaration-track:79d16682fedaf6f4f96f2e30aba52e2707d2bef284c30cce2f5f3d597f548833` |
| 106 | `instance` | [IsFiniteKernel.snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/isfinitekernel-snd.md) | 492 | `declaration-track:b82363895bf0a02fddb6c794245f7a949b9e2e981135b15914ca004726b75f1a` |
| 107 | `instance` | [IsSFiniteKernel.snd](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-snd.md) | 495 | `declaration-track:b24fce66df3fe57a3a8764e6613ba62236423ae994852ea19576c6b0a5c49b59` |
| 108 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-14.md) | 498 | `declaration-track:fc8e07cdceab9c29a5fafa8df7dd6315a59acbf0bab1ebd64f6949935ee476e5` |
| 109 | `lemma` | [snd_map_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-map-prod.md) | 505 | `result-track:771f5e22d50035fe955d6a0f06c3f1be463ab825cca6048c7f14a54a4ec30c1a` |
| 110 | `lemma` | [snd_map_prod_id](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-map-prod-id.md) | 516 | `result-track:0146f3b091a6dc22923b71a3215f16aa65becb4dcee6550ebc53bb7abe3c5963` |
| 111 | `lemma` | [snd_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-prodmkleft.md) | 520 | `result-track:f955a6321d8e1c4e5d531a0c9b68098743f18f6a1b65a041a6dc02b977c30fc0` |
| 112 | `lemma` | [snd_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-prodmkright.md) | 523 | `result-track:9cf4c086970ca439d7b4d01c14d285f656f8e8cde495a722a164b6bd3cea19cc` |
| 113 | `lemma` | [fst_swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/fst-swapright.md) | 527 | `result-track:5ccbd374613c6155520a98e6967fa88de282c7177b31c8a4f28a0a1e0d4a4147` |
| 114 | `lemma` | [snd_swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/snd-swapright.md) | 534 | `result-track:16b6b2db07be39025361523c4e67cfcb9338460cfbedb4dd82cfa0d52f6bbb34` |
| 115 | `def` | [sectL](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl.md) | 548 | `declaration-track:ebdc46ad95ed12e64b71389d35730935d7c6546380cc66cdca38555b0dd429d5` |
| 116 | `theorem` | [sectL_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl-apply.md) | 551 | `result-track:e94ee4c1a5f5c2bb7c7a3b9ad4a9807a9b9c6ae1d32c201ee7ac42d964a5f0de` |
| 117 | `lemma` | [sectL_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl-zero.md) | 553 | `result-track:1b9498770c83037b9eba056cf2bb43a0701c4fd0a00dc54cafc9c597df1aa9cd` |
| 118 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-6.md) | 555 | `declaration-track:8abb0b2235f619d9c6c1b8da41c15b458695b75385a2beb99fcdd466a261b2aa` |
| 119 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance.md) | 558 | `declaration-track:0293e3c25ee50e84b97d9a7454060905146308298cd422d40c1345eca1e5ed69` |
| 120 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-3.md) | 562 | `declaration-track:8371e0a48dbc66e9f1678fcf177829957044f85b9cc8920e610ffed564a82faf` |
| 121 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-4.md) | 565 | `declaration-track:84a52a4a272129121d35dbe90608ed26319cc3ca1b4648885e08e9d2d4b95638` |
| 122 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-2.md) | 568 | `declaration-track:240a29a5c85fbc1d088ab089bb3aa19a208204370d0fd6f028e861e5316075ef` |
| 123 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-12.md) | 571 | `declaration-track:d84671d656f23b17bee7eb9ac8c48b88cbe07b9ec48e2b4094733fb89d2a4e6f` |
| 124 | `lemma` | [comap_sectL](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-sectl.md) | 577 | `result-track:74e007d9d1860f676fb1c715a0f2b42506f671092d81c87033a06a9d9438bf4f` |
| 125 | `lemma` | [sectL_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl-prodmkleft.md) | 583 | `result-track:bf556680fabeb71335c015b02d46b1cfbf838bd2a6e488dc895155177afa4470` |
| 126 | `lemma` | [sectL_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl-prodmkright.md) | 587 | `result-track:18b49f9e147d2620bf1f71810bf81ed9b6cf7adad63e21cc03aabc8e21ff6581` |
| 127 | `def` | [sectR](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr.md) | 592 | `declaration-track:9a451def832b7417ff5c5fdf9562ee86c86cd37580a31af41b5b7ab442ce9296` |
| 128 | `theorem` | [sectR_apply](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr-apply.md) | 595 | `result-track:0ab1aaae88f563cf6721a568e6cd092b453b7f3511c6f60d2f5877f2bbb2ee97` |
| 129 | `lemma` | [sectR_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr-zero.md) | 597 | `result-track:ba31b0eb315880c019d8421419a8f36dd7040517786b6f02106e86eccab57c5d` |
| 130 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-9.md) | 599 | `declaration-track:b82ea8d79c9c6d86fa9ca428e3cb1aa3cd600d29f07c442827b57ea9204c67f2` |
| 131 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-7.md) | 602 | `declaration-track:94afc00e17a11ec13ed627c7830b45b366aa82bd45805683d5c9da18594e5064` |
| 132 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-11.md) | 606 | `declaration-track:cd995611aac369b73eafda1ee39168733488b899231b16c8dc58e41f509330f0` |
| 133 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-5.md) | 609 | `declaration-track:864857a5d88091062ad7f19e58d29878bfdfca4bceb16af05e3bb2b62e67c5e6` |
| 134 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-10.md) | 612 | `declaration-track:c43bc91877dfec41faf9116604ad27a41350c84122b5952221c02c70bd86422e` |
| 135 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/instance-source-edition-13.md) | 615 | `declaration-track:eaee3f315484b9f39504c0df44ddbd53c7cbcf66192170cc13f29c2499162ff3` |
| 136 | `lemma` | [comap_sectR](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/comap-sectr.md) | 621 | `result-track:7b5d07b76d57faee17dcab11a17cf490fb8c6348a74edb29768a084cd15b445d` |
| 137 | `lemma` | [sectR_prodMkLeft](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr-prodmkleft.md) | 627 | `result-track:c2e61de186f348a53e21a1d73eae2cd6f5e8804bfa9f33b184b7570e862772dc` |
| 138 | `lemma` | [sectR_prodMkRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr-prodmkright.md) | 631 | `result-track:68e4345db2331c8678b313541ea0d5ff0fb6b5f955e770f6efff747615ba430a` |
| 139 | `lemma` | [sectL_swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectl-swapright.md) | 634 | `result-track:e289a4333500ec24b8bede2403e4b7655e349c3d26963c6b0a066042aa2624ff` |
| 140 | `lemma` | [sectR_swapRight](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/sectr-swapright.md) | 636 | `result-track:7caa945f359799ff8925aedef61d3129446631eb8c23f3f56bd481a780f7d475` |
| 141 | `lemma` | [isSFiniteKernel_prodMkLeft_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkleft-iff.md) | 640 | `result-track:c586d42de65e21e5d70158e6bc535b58569d1808d597b38fad0cf818dfbfdc20` |
| 142 | `lemma` | [isSFiniteKernel_prodMkRight_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MapComap.lean/declarations/issfinitekernel-prodmkright-iff.md) | 647 | `result-track:b5d044efb3031caed929c7b657b0c0589d6553adf42718f85800dba9a7eacbc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb0e975754ce5d91894705e310345973fae9b1fda18d155d17c11da294a9089e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/MapComap/Varianta9afa39ed31c292c13ae148ba4999229fde0789e0a1350557df72ba179994d9d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
