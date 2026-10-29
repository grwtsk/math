# Verification target: Borel Space Real Real

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90ba282077f845be50f10e9ed8a57bc301985361",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90ba282077f845be50f10e9ed8a57bc301985361`.

Source path: `GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.NoAtoms` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [borel_eq_generateFrom_Ioo_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/borel-eq-generatefrom-ioo-rat.md) | 40 | `result-track:dd50a9a655001af6a1159ab6e71c46b3da15a2887a7467d098119b9f66903713` |
| 2 | `theorem` | [borel_eq_generateFrom_Iio_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/borel-eq-generatefrom-iio-rat.md) | 44 | `result-track:c29f6e9edeb629b30cf1b92a50b1d206f3e6b47e97775ca35aac67a224a6991b` |
| 3 | `theorem` | [borel_eq_generateFrom_Ioi_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/borel-eq-generatefrom-ioi-rat.md) | 56 | `result-track:31ce2f8425f1720bca1905f489a43c36aec7cbbc263177a975a1e9b05810ac42` |
| 4 | `theorem` | [borel_eq_generateFrom_Iic_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/borel-eq-generatefrom-iic-rat.md) | 68 | `result-track:f4aa90650dcd0b011e01a890931e758e98abcb9ea45d43a9d8a31650866f73b3` |
| 5 | `theorem` | [borel_eq_generateFrom_Ici_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/borel-eq-generatefrom-ici-rat.md) | 76 | `result-track:3654bb8616c72128db8f729018bf3e1f99c76894e842c74fa1d1f46455451241` |
| 6 | `theorem` | [isPiSystem_Ioo_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ispisystem-ioo-rat.md) | 84 | `result-track:b8c9a910aebe2d7d2de388b72403dc025e5bf6193b4a86decba25251ad972bb2` |
| 7 | `theorem` | [isPiSystem_Iio_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ispisystem-iio-rat.md) | 90 | `result-track:82acb81f65ac7fbe93709b4d894d4ee121ac0908865af0e82bb83ea46e3afb5c` |
| 8 | `theorem` | [isPiSystem_Ioi_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ispisystem-ioi-rat.md) | 95 | `result-track:9ffc1b960377fa6d6745f3a73812294fe73d53500423d5edd022cbf39afc6e09` |
| 9 | `theorem` | [isPiSystem_Iic_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ispisystem-iic-rat.md) | 100 | `result-track:223c486731cfd3bc95b40332a7cbd5f015e8cf3c49a5bd78f4651c672f5a0021` |
| 10 | `theorem` | [isPiSystem_Ici_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ispisystem-ici-rat.md) | 105 | `result-track:e89a526fa9729f945ce0dca08f801789ace9143ba79739ec12b3a469ef15a143` |
| 11 | `def` | [finiteSpanningSetsInIooRat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/finitespanningsetsinioorat.md) | 112 | `declaration-track:35fd8709fb6524607991037e89e5e502fdf7eae0b87f8414c5049764ee7d97b4` |
| 12 | `theorem` | [measure_ext_Ioo_rat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measure-ext-ioo-rat.md) | 127 | `result-track:2f7c37381ff93f1cf197c6bb15f7968cc145d6e0ce6860474ee8baf1f3b147bb` |
| 13 | `theorem` | [measurable_real_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-real-tonnreal-source-edition-2.md) | 139 | `result-track:a90c59b85364782a40f92b835ee63719657219a65d4e55fe3af39ce288380b4e` |
| 14 | `theorem` | [Measurable.real_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-real-tonnreal.md) | 143 | `result-track:03f30daca433ca9be6e127ab4faf7bc91a16354f571d9e73e7ffc975f5bbd6dd` |
| 15 | `theorem` | [AEMeasurable.real_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-real-tonnreal.md) | 148 | `result-track:c538acc207b322db3b655babe44ff3584cd79024a2c75c5e05c0189c095e905d` |
| 16 | `theorem` | [measurable_coe_nnreal_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-real.md) | 153 | `result-track:6d494a520e0b62fb388c46c14dd9c64e0728f084ecde7f7298cd973fca206f7b` |
| 17 | `theorem` | [Measurable.coe_nnreal_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-real-source-edition-2.md) | 157 | `result-track:cd9acbf658f68dd66f2d6a7a8654f4f61672829471bc902204316c6a05c96a58` |
| 18 | `theorem` | [AEMeasurable.coe_nnreal_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-nnreal-real.md) | 162 | `result-track:d6e13ee519949f2d310e352939a0fbba5321351398982fa3f7d93d2355e403ee` |
| 19 | `theorem` | [measurable_coe_nnreal_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-ennreal-source-edition-2.md) | 167 | `result-track:a4dc724d657130a65fba486bfee407f898e42a285d9bd031be62358602f7c349` |
| 20 | `theorem` | [Measurable.coe_nnreal_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-ennreal.md) | 171 | `result-track:053773ab804e8014b8726acaa26b5b51d0d0e9537c94b9d1721d11ff44d12f29` |
| 21 | `theorem` | [AEMeasurable.coe_nnreal_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-nnreal-ennreal.md) | 176 | `result-track:7440e6bc0b3d315d889fdf08265986a9a732a87730cceab2b068b74041e3915c` |
| 22 | `theorem` | [Measurable.ennreal_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ennreal-ofreal.md) | 181 | `result-track:6d8fdc115366a805b4bec373038886b5b2fed8d012344637286ca9aaa8275d5e` |
| 23 | `lemma` | [AEMeasurable.ennreal_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ennreal-ofreal.md) | 186 | `result-track:da14499a98afa7c2f6c10bb3571df600eb35a948d3bd0cbc73546ffb9938b90d` |
| 24 | `theorem` | [measurable_coe_nnreal_real_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-real-iff.md) | 191 | `result-track:d313b0388c5c1c42b11c2def5fdda7112c6f5adfbbd7966988caec796ab210de` |
| 25 | `theorem` | [aemeasurable_coe_nnreal_real_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-nnreal-real-iff.md) | 196 | `result-track:0f6fd1e32062fd1cd7553d3ed151c2aa18fd2416951227f827c49f5d342fa023` |
| 26 | `def` | [MeasurableEquiv.ennrealEquivNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurableequiv-ennrealequivnnreal.md) | 201 | `declaration-track:f42b26d36a192738078b06872dd88a6fc37d7cb6c379bd1e843387f05f9723c6` |
| 27 | `theorem` | [measurable_of_measurable_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-measurable-nnreal.md) | 206 | `result-track:b26f32a1d94552d49926c3592bf20d600934401f44300ec08edc059dcce1b186` |
| 28 | `def` | [ennrealEquivSum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ennrealequivsum.md) | 212 | `declaration-track:0a043fab98c846a60d5f312928989056b95df3adcf93da3efd249f1d43a56810` |
| 29 | `theorem` | [measurable_of_measurable_nnreal_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-measurable-nnreal-prod.md) | 220 | `result-track:16f21b7e45e92c0eb74254be90acad7827a58149c4c3bf3892d459bf59aafeea` |
| 30 | `theorem` | [measurable_of_measurable_nnreal_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-measurable-nnreal-nnreal.md) | 228 | `result-track:0938bc99eec007a2c95a121fc1fffc36c7f8f4b8e4c7f7bfdb60f1ea5740d93a` |
| 31 | `theorem` | [measurable_ofReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ofreal.md) | 236 | `result-track:430be09ae8bf7fa85afe630e4f579313a7dabfc6597555d7ff153ff089fc14b5` |
| 32 | `theorem` | [measurable_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-toreal.md) | 240 | `result-track:60e13b2f69f44d3a5fb7d861ac96a9cf2593e48a7ae7ffb87c5d2a24533ad53e` |
| 33 | `theorem` | [measurable_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-tonnreal.md) | 244 | `result-track:709b8e60eff36a9da5ec46ac28fe222473b82dfc780233bb89a71ec06a0b02af` |
| 34 | `instance` | [instMeasurableMul₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instmeasurablemul.md) | 247 | `declaration-track:db19e0b3a3b6871d0042d58188dd61f6e50fbf0cba2d4aa081c83aef252506da` |
| 35 | `instance` | [instMeasurableSub₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instmeasurablesub.md) | 255 | `declaration-track:1c0674f402c333564e88784d51d9f663f2ef615dcd482d3e5cd7653f3a053a16` |
| 36 | `instance` | [instMeasurableInv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instmeasurableinv.md) | 261 | `declaration-track:b6078465b756a7297836985e4d56f475deb30edd9e35c2cf885d0cc923ab583c` |
| 37 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instance-source-edition-4.md) | 264 | `declaration-track:69207c02d818f8c2891a642adaf42223f7e1ac00b8c895413f8a9d467823a7ef` |
| 38 | `theorem` | [measurable_of_tendsto'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-tendsto-source-edition-4.md) | 271 | `result-track:fe8bfbdac2718ef463a9481a7554981d2ea7fb602fbed9375c37c195400bc3fc` |
| 39 | `theorem` | [measurable_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-tendsto.md) | 284 | `result-track:695082f5aa480d6e540fab509d615bf2e8a411360f1b57c4a97d2c1dd4358ead` |
| 40 | `lemma` | [aemeasurable_of_tendsto'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-of-tendsto-source-edition-2.md) | 290 | `result-track:7f07a5f0d6ce5209eb8a3bae4bcfb5c64f68a2a45336d84302b30a74ae18a876` |
| 41 | `lemma` | [aemeasurable_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-of-tendsto.md) | 313 | `result-track:726ad0eb7864f9f503e55a415bf127e63d838146865851c5e1b9e0bd876e29b5` |
| 42 | `theorem` | [Measurable.ennreal_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ennreal-tonnreal.md) | 321 | `result-track:a226b0d1a3327c0722aa58d7080b79c6560f53ecd96f7e7f8b2d4bdb9394b41d` |
| 43 | `theorem` | [AEMeasurable.ennreal_toNNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ennreal-tonnreal.md) | 326 | `result-track:fbe458ea51695789b3f3246c549bb5c73f21f04f2675201b98cc8207c91ba5bb` |
| 44 | `theorem` | [measurable_coe_nnreal_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-nnreal-ennreal-iff.md) | 331 | `result-track:30c175be537ef31c9c579f788953ed329e65c9f2354637b758ff813e35a039df` |
| 45 | `theorem` | [aemeasurable_coe_nnreal_ennreal_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-nnreal-ennreal-iff.md) | 336 | `result-track:180cebf119b326ddc61c2b471a2f76c1ebf81e18b84841921ad9fe8f3f5c7dce` |
| 46 | `theorem` | [Measurable.ennreal_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ennreal-toreal.md) | 341 | `result-track:5810dc806174f2ce811e4806bc8b1b89a1baed8a47947b8d5ab218346938a134` |
| 47 | `theorem` | [AEMeasurable.ennreal_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ennreal-toreal.md) | 346 | `result-track:eec5bb5acf481c245867c8c69638848281afcedd117067d0a6d53d653a0fc398` |
| 48 | `theorem` | [Measurable.ennreal_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ennreal-tsum.md) | 352 | `result-track:3a941494051dce0b287d263a2582ee08bc67b9626059280b9423ba2facc0890a` |
| 49 | `theorem` | [Measurable.ennreal_tsum'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ennreal-tsum-source-edition-2.md) | 358 | `result-track:fbeeee317e669680bf056ed48727b11366fb553cb2cfacf56727eafee94dbd0f` |
| 50 | `theorem` | [Measurable.nnreal_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-nnreal-tsum.md) | 364 | `result-track:854a23a153dc6708b2864330f4adecd8c682bcdf2d531a3b4f561dbf620563a8` |
| 51 | `theorem` | [AEMeasurable.ennreal_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ennreal-tsum.md) | 370 | `result-track:7877e0cd59aa3b6a3987ac703607edace8d57650a802f5cfe4a71df971891383` |
| 52 | `theorem` | [AEMeasurable.nnreal_tsum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-nnreal-tsum.md) | 376 | `result-track:a26e1ada5e70b85998f396f8918dc8adfc4a3fe7b8087a97084f414e0eda2c2f` |
| 53 | `theorem` | [measurable_coe_real_ereal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-real-ereal.md) | 383 | `result-track:5c585595b425b8fa19eb1e506594b7211d51062cc719d5a4c4866e2ae2d212c2` |
| 54 | `theorem` | [Measurable.coe_real_ereal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-real-ereal-source-edition-2.md) | 387 | `result-track:f2509430249f6da305acda8d85788c837ed02bf2fdfc1b82013c93740fd4de00` |
| 55 | `theorem` | [AEMeasurable.coe_real_ereal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-real-ereal.md) | 392 | `result-track:0c3000dbb808f0f736d47d28a84f39d690216ea1e6d412da6c4cf0493848f368` |
| 56 | `def` | [MeasurableEquiv.erealEquivReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurableequiv-erealequivreal.md) | 397 | `declaration-track:1d9fe72bf85e4126ae6cbf5285dcafd3bdf8e3b55b642a40ad8f9b5d65968a78` |
| 57 | `theorem` | [EReal.measurable_of_measurable_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/ereal-measurable-of-measurable-real.md) | 400 | `result-track:a9f5b0ca450274c4e7d5bdf225008f9b9cc4da93963cc51d23ee8aed7cdd0d9f` |
| 58 | `theorem` | [measurable_ereal_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ereal-toreal-source-edition-2.md) | 406 | `result-track:dd1d7961402c29b9de6da13737d3e7694f95888b4e5e0e95cdc7ada72619ee2f` |
| 59 | `theorem` | [Measurable.ereal_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ereal-toreal.md) | 410 | `result-track:bc5563017eb009ef44ebded4cfc572815747c2e979b5a76e1b81793738e58155` |
| 60 | `theorem` | [AEMeasurable.ereal_toReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ereal-toreal.md) | 415 | `result-track:badaf384be579a53bd2b95e3c93b25809c7b2ab24f170497beea33e8dcdad2d5` |
| 61 | `theorem` | [measurable_coe_ennreal_ereal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-ennreal-ereal.md) | 420 | `result-track:a8528f2a1449480dfd52d217e53b2b072693f88b0d41f4697457d2e820a2ce24` |
| 62 | `theorem` | [Measurable.coe_ereal_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-coe-ereal-ennreal.md) | 424 | `result-track:f0e8438e8c0c8515162ce216faeca376e33d545bbc4ec0d5023424b430482d0c` |
| 63 | `theorem` | [AEMeasurable.coe_ereal_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-coe-ereal-ennreal.md) | 429 | `result-track:66f3063f8c713b3aad4f5ac12b11df17e96188a5b4d0559805471746806fac9b` |
| 64 | `theorem` | [measurable_ereal_toENNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ereal-toennreal-source-edition-2.md) | 434 | `result-track:5f8f6cf33550234d5c2fe3b6f7a19564c4b9c8404588dc1118b717d5376d4022` |
| 65 | `theorem` | [Measurable.ereal_toENNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-ereal-toennreal.md) | 438 | `result-track:0cbfd89c2f30a63e4e10c359f16e066245a4d03214a412e08fefa2ffa28edf32` |
| 66 | `theorem` | [AEMeasurable.ereal_toENNReal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/aemeasurable-ereal-toennreal.md) | 443 | `result-track:4909e0bd4cba3a8de52200a119a5552111194d1df6137163497f1ea3567c074b` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instance-source-edition-3.md) | 449 | `declaration-track:4d1688cb333fd2b0ac36590c24a7e80243c1fa31292d92997425e2485803040a` |
| 68 | `theorem` | [measurable_of_tendsto'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-tendsto-source-edition-2.md) | 453 | `result-track:776277e25ef2f9cf270f05a8a3a44d289e166fffec2d4e492fdc1e261b1ff1c3` |
| 69 | `theorem` | [measurable_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-tendsto-source-edition-3.md) | 462 | `result-track:f4428b565496e7087fc7a1bd9b3a4b96abb54ed3140010f0fc3e08ea479ad2e6` |
| 70 | `lemma` | [measurableEmbedding_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurableembedding-coe.md) | 470 | `result-track:35d394b2f6923aa4fb85396a5f4ac5bfffdcd21ddfdebfa5da4ac2e8dc59d8ce` |
| 71 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instance.md) | 473 | `declaration-track:214e7cb77c8d659d6035fd701c574a3f2fb099ad32e6d40026a49f18c005ae52` |
| 72 | `lemma` | [measurable_of_real_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-real-prod.md) | 479 | `result-track:b549e38c8eb61bf86b098fa2d52d54c8661ffd3d48fdb6a84d5aeee060eade63` |
| 73 | `lemma` | [measurable_of_real_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-of-real-real.md) | 486 | `result-track:84c5ec958f6c22c06a04e0094f9f46b9e03d8ded33b7945e06b9dfe0565edea8` |
| 74 | `lemma` | [measurable_const_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/measurable-const-mul.md) | 499 | `result-track:da3b2cf863caebbbfd1e8caaee6dcf5bec71ee5d2cedfde98fbbaeae0debec4a` |
| 75 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/instance-source-edition-2.md) | 520 | `declaration-track:2da7826127452651043f84646e8e173f3d8106bd82d4f5d9c33f9886370b797d` |
| 76 | `theorem` | [exists_spanning_measurableSet_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/exists-spanning-measurableset-le.md) | 538 | `result-track:4a9bc85685ad4cd2880e5b15dee88e27c2a4b4b3e6c727ae60ff6b05817c1a60` |
| 77 | `lemma` | [tendsto_measure_Icc_nhdsWithin_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/tendsto-measure-icc-nhdswithin-right.md) | 569 | `result-track:008824e7e5c94159176fa6a55b52db8ba3b3d71dcb749696b540430184f2a259` |
| 78 | `lemma` | [tendsto_measure_Icc_nhdsWithin_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/tendsto-measure-icc-nhdswithin-right-source-edition-2.md) | 577 | `result-track:174e24bdcef86e7d1d8db2fbe7999fe73da6cf59db33601c660230d31573af6a` |
| 79 | `lemma` | [tendsto_measure_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceRealReal.lean/declarations/tendsto-measure-icc.md) | 584 | `result-track:b984b5de9d51c2df4ae5e72718a5de3d4adde8cd059bc5a5d4fdd1ab2c4921f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4451d78fcc7bf2ef5bb6aab5ccb252f04c899fca9580690b446cffdc426f247c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Real/Variant166e6822998dc5fa55df456d48969403b133bc1ac68a831a75849f38bff5ecf5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
