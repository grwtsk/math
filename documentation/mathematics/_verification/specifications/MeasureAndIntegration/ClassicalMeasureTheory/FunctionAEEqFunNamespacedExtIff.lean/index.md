# Verification target: Function AEEq Fun Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da3f364e9b6f02913a4c456ed87c250f51426478",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da3f364e9b6f02913a4c456ed87c250f51426478`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.aeEqSetoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/measure-aeeqsetoid.md) | 101 | `declaration-track:f6c01ff3795b8bc9c7f455601f28d8838ca1179febe73e9ac06c756a8557c7c5` |
| 2 | `def` | [AEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/aeeqfun.md) | 111 | `declaration-track:9f8777117d6f331cc71540c4e65adc1ec803fea4296b5678f0e7df4738cca4ce` |
| 3 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk.md) | 129 | `declaration-track:fa5f130a5c290275366ea21d539afb805c6dcb51d90d493203606bcf9c9c1151` |
| 4 | `def` | [cast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/cast.md) | 136 | `declaration-track:5ea02db9ea6dd0a043e030db83e621dfc4a408a75615fddf8f1a9c1fe88514cb` |
| 5 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instcoefun.md) | 140 | `declaration-track:9ae2d12686e776085f430d7dec71da0392d62e724075960919dfe22cfec8d03d` |
| 6 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/stronglymeasurable.md) | 143 | `result-track:4c3471bb49b393dcf529cc3dfb157be5581df3975a8be597dd249d742dc75008` |
| 7 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/aestronglymeasurable.md) | 147 | `result-track:79db8f56f6d7d3c9ef964cf957ad78c134d22bc11cea5d0ae8a49b6bb706a371` |
| 8 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/measurable.md) | 151 | `result-track:c3d8789428adbc32c3abf1c24f27dd942bc8928800591ab73ec7392681e3613d` |
| 9 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/aemeasurable.md) | 156 | `result-track:d09ed1dc394baf8f8aab94a6c7247832fd9cb61d75375d72a4b28ccbbc0eee83` |
| 10 | `theorem` | [quot_mk_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/quot-mk-eq-mk.md) | 162 | `result-track:4897b92d39b9557f1ca5768ad74fbf859d7925ea471e8c310f480dc44bae55d8` |
| 11 | `theorem` | [mk_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-eq-mk.md) | 168 | `result-track:6a985a03e6040cd77fadeda8e172b88088b2b4b7db5e48c3c49800072064e26a` |
| 12 | `theorem` | [mk_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-coefn.md) | 173 | `result-track:36e0765b135898951c74cd96ffa6fc83d644773f763f602126eb0fb455733e3b` |
| 13 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/ext.md) | 182 | `result-track:6d6a1bb5b538f7e9d8bb6a5f30db9612b6dd56e45093fb3ec2b0f18fc80e4946` |
| 14 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/ext-iff.md) | 186 | `result-track:c9e1df88437e39e39f551252546c478e269cd47dfd637e79cfc9931c63909a20` |
| 15 | `theorem` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-mk.md) | 190 | `result-track:14db11d158ea7beba59df6d541a41cb4d7d14d35eab0e79ee97e5d1f62d00f67` |
| 16 | `theorem` | [induction_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/induction-on-source-edition-2.md) | 196 | `result-track:f5304b1da6854b67e7486e1ec1a2b47744f7be566537cbabe2f24900064661a6` |
| 17 | `theorem` | [induction_on₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/induction-on.md) | 201 | `result-track:e81d2f9be80cc7b44d170c88edfc0bbcb5dd434575ddb478adfc565f3318b6e5` |
| 18 | `theorem` | [induction_on₃](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/induction-on-source-edition-3.md) | 208 | `result-track:f7298be3e084e0baa615778e2ce251c0bc7f01fb9b79c5a2ec7b2a584f695b7c` |
| 19 | `def` | [compQuasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compquasimeasurepreserving.md) | 229 | `declaration-track:77526903abba3a0337499dcd4ad60f2b3771d75cf11d87c49521be17b5f2660b` |
| 20 | `theorem` | [compQuasiMeasurePreserving_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compquasimeasurepreserving-mk.md) | 235 | `result-track:60c59ad2a2e51df1b8f0f7b8cd077d527a6e384d46468921a96296c2b1ea0515` |
| 21 | `theorem` | [compQuasiMeasurePreserving_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compquasimeasurepreserving-eq-mk.md) | 240 | `result-track:2055cfd7e110d130768e6979d4d276dcca72ba1516586026d1168c7863b2d596` |
| 22 | `theorem` | [coeFn_compQuasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-compquasimeasurepreserving.md) | 245 | `result-track:d9514bfe39864b1eba3b6df7d3575340d33364ebc29bb99874875a049081701f` |
| 23 | `def` | [compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurepreserving.md) | 260 | `declaration-track:cd665f0a339ead0cf97d8d007deeba2e9509bc6b53f5198948041cdf7896006c` |
| 24 | `theorem` | [compMeasurePreserving_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurepreserving-mk.md) | 264 | `result-track:86e00838ba79e227971895c6193434713d1bf99552d259fd6f2dbab99aa3462c` |
| 25 | `theorem` | [compMeasurePreserving_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurepreserving-eq-mk.md) | 270 | `result-track:0e08459c209aca25ba49ad069b6f897cf7fae72829172d9653ed56bbfba23f74` |
| 26 | `theorem` | [coeFn_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-compmeasurepreserving.md) | 275 | `result-track:1a33a39883f41d23bc5db60b71d52460d22ef20d04f67308ba9cf5470df21eef` |
| 27 | `def` | [comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-source-edition-2.md) | 284 | `declaration-track:f1865058161af5076bd683f8bf513b57cd34bb8915d6f1f06146ef4a2dd00954` |
| 28 | `theorem` | [comp_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-mk.md) | 290 | `result-track:9cfce9efcbc438cbafcf975af106a11fe04621e3ad252f0463d7b42def4875ab` |
| 29 | `theorem` | [comp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-eq-mk.md) | 295 | `result-track:8976fba400a0e3fca62907d25c6b405ce0ebce8818db11153548249d5af3e67f` |
| 30 | `theorem` | [coeFn_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-comp.md) | 300 | `result-track:03fb85f9b30138fb43ae357c027399e6c6b9b4ce83320a619bbe875a2c947cf0` |
| 31 | `def` | [compMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurable.md) | 313 | `declaration-track:54f3793a0eef2df877a6fb4b4338d769588b8bba222355f0cd274dfeaf0b6401` |
| 32 | `theorem` | [compMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurable-mk.md) | 320 | `result-track:afbec14403c3062cbe65ce244bf5e410ec005864a9e87859c2183a2c99d0f87b` |
| 33 | `theorem` | [compMeasurable_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurable-eq-mk.md) | 327 | `result-track:8960353c39e0b90548561ee48887c50e3d4872b7a71b28440923523a42bad071` |
| 34 | `theorem` | [coeFn_compMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-compmeasurable.md) | 332 | `result-track:bcde1a1e4e74a1445016bdbfd3c194b80bea1c80748766a642b4ee836f719826` |
| 35 | `def` | [pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pair.md) | 341 | `declaration-track:5b2125bba0b85fcc8c0592b9b303dd95507e1a1801efa059bbd5fd3acdb354d0` |
| 36 | `theorem` | [pair_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pair-mk-mk.md) | 347 | `result-track:1e18b94d0f34b3dac95c1d97d61d6b96c76970174edd1ade031e64d0c91d083c` |
| 37 | `theorem` | [pair_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pair-eq-mk.md) | 352 | `result-track:8bb00b3c6fa6ed573bf5a80313e2e6d25c70a8d329148cfb4e5dbe707e58e483` |
| 38 | `theorem` | [coeFn_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-pair.md) | 358 | `result-track:f9fee5398eea328d89f48d160ddde058fe130932f9c6f193996cfb8feeca5319` |
| 39 | `def` | [comp₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp.md) | 367 | `declaration-track:c22da59516d2f0171f37e09d9eff5a3504126b93c364bb4a676b8e1a5404cf1f` |
| 40 | `theorem` | [comp₂_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-mk-mk.md) | 373 | `result-track:454dd444354fd6ba20901a8fe36250e6e2df8a8d2f98b6e79b8f22f63de5314c` |
| 41 | `theorem` | [comp₂_eq_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-eq-pair.md) | 380 | `result-track:b1576e3ab95460c65ad88f316368c40f2375f19a0a196a3c893fc52b232db23b` |
| 42 | `theorem` | [comp₂_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-eq-mk-source-edition-2.md) | 385 | `result-track:b064d4f0bcce8e5202e666949bb287730b3d44eae9cdfdac44d5c56fd576d122` |
| 43 | `theorem` | [coeFn_comp₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-comp-source-edition-2.md) | 393 | `result-track:765855206254f05231bdabd50066950007dda948333784ae8914b6156cf0b526` |
| 44 | `def` | [comp₂Measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-measurable.md) | 409 | `declaration-track:3a9425bcc5e3df885bc31f53fd7d528e94866533c7a9264f4fdacb344da1493b` |
| 45 | `theorem` | [comp₂Measurable_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-measurable-mk-mk.md) | 415 | `result-track:18ff32cafc2d3b14a5675f0b2fd15e064afbdbdfb742cf7c43fbfa54727e748e` |
| 46 | `theorem` | [comp₂Measurable_eq_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-measurable-eq-pair.md) | 423 | `result-track:5331e4c60da0dda92430f1d3bca5150c63502500cd3fcf35779632fa12374897` |
| 47 | `theorem` | [comp₂Measurable_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-measurable-eq-mk.md) | 428 | `result-track:c3c8acf764b49311bf041f5a70187283cf32e431bd9a4a4ea7a06f90f509c25c` |
| 48 | `theorem` | [coeFn_comp₂Measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-comp-measurable.md) | 436 | `result-track:c85b013dc10b3419123d40b94ddc8716e7924a8b92e779a0526259bf258b54ce` |
| 49 | `def` | [toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/togerm.md) | 446 | `declaration-track:13af802d47c438102eedeabdeaa1ad4f397954991d8190ee97d14b3992734e27` |
| 50 | `theorem` | [mk_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-togerm.md) | 451 | `result-track:a577b12a8b9875283f83f5043ba330e695e84880e01074cfb75d4756fbcead0a` |
| 51 | `theorem` | [toGerm_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/togerm-eq.md) | 455 | `result-track:85088e0b1fde0d92260249b6760c9f2ba5cfd31b2529a06a2590f9b51d3c3502` |
| 52 | `theorem` | [toGerm_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/togerm-injective.md) | 458 | `result-track:712374e668ce1f07306dbb6697de2aecfdfd87957911f0f7410cdbf6ffb4453d` |
| 53 | `theorem` | [comp_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-togerm-source-edition-2.md) | 462 | `result-track:73a3ef9c3ebded2a99b2b8553fda94a75845af43d18f8e05fd25a47519ce8d5a` |
| 54 | `theorem` | [compMeasurable_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/compmeasurable-togerm.md) | 467 | `result-track:ad222c0a90da6aead5b07261b32863bdee6fba2d0c4749bb473be38af918755f` |
| 55 | `theorem` | [comp₂_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-togerm.md) | 474 | `result-track:45238c36474bf6e05917e250228a3ad99a2548da1ed264efb95b679b292f4dfe` |
| 56 | `theorem` | [comp₂Measurable_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/comp-measurable-togerm.md) | 479 | `result-track:b769a26244f112ea44d3d67184505f760bf153f09f3e6cb161a2f126b31b5632` |
| 57 | `def` | [LiftPred](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/liftpred.md) | 490 | `declaration-track:6bf8ed14de77ea7cff6e2e63a15feb3208f7b5d34b2b304a2f526a4095dc30ab` |
| 58 | `def` | [LiftRel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/liftrel.md) | 496 | `declaration-track:ce818c0a9ac865e5151533f0574b5f817ee50ac3042aca315d2093c48a6628f8` |
| 59 | `theorem` | [liftRel_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/liftrel-mk-mk.md) | 500 | `result-track:83ea9bf61b1b74796f097669e99a078cffd45e4509f8420767d62fa1b46fef09` |
| 60 | `theorem` | [liftRel_iff_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/liftrel-iff-coefn.md) | 505 | `result-track:21fcfc127d36c25abd1cd5be235484506d3ca94d61bac61edff40a1c1246e8f2` |
| 61 | `instance` | [instPreorder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instpreorder.md) | 511 | `declaration-track:ca88a0715a790cb85c8261d73888981555664633a5f77ef935219230c2f7632d` |
| 62 | `theorem` | [mk_le_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-le-mk.md) | 516 | `result-track:a4df44312e0a82ba444adc0d72aa0128fe42a62eaea8925ba5b110942033adb0` |
| 63 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-le.md) | 521 | `result-track:4384c07fce28e9831b9527d14cb0a97e3059377c184878ace1e7f5e3475f41ee` |
| 64 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instpartialorder.md) | 525 | `declaration-track:95ae148d7e00873b30dd3683771e8a30d62344d2c0cd4c5ae8d7b49d4b361677` |
| 65 | `instance` | [instSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instsup.md) | 535 | `declaration-track:acb74de1e697cedaca513bf28daf0001b0e7e88ca54cd8da89ae30346200d143` |
| 66 | `theorem` | [coeFn_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-sup.md) | 538 | `result-track:c8d0f930ca6bccce117a4827f577154493ae18cd8828f82fdcb7051e2f6eb0c5` |
| 67 | `theorem` | [le_sup_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/le-sup-left.md) | 542 | `result-track:1285e2b3f95dadee66256a6a24710bbc4ffd1e0b725044bb59689532e495db94` |
| 68 | `theorem` | [le_sup_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/le-sup-right.md) | 549 | `result-track:8739c3e4db99c8d06419084f46ccc827341616be6dca34fccf479f07cd8b0d3e` |
| 69 | `theorem` | [sup_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/sup-le.md) | 556 | `result-track:194d4c5f1e32e5be10282aa8f6f46588a8453f060b349c8fce44e3db951c67b0` |
| 70 | `instance` | [instInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instinf.md) | 569 | `declaration-track:65910a95e3bdd8a97583cae84bde965418e51239e0abe6acff8392168a9dcea7` |
| 71 | `theorem` | [coeFn_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-inf.md) | 572 | `result-track:8b4573c7c2d3c16b5cf400d10edcc4deb8bef65226093847312c941cdd4258f7` |
| 72 | `theorem` | [inf_le_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/inf-le-left.md) | 576 | `result-track:389f839ca54b0e930efb0499d870828bbe08cb93da502eda482616aa6dd62bc2` |
| 73 | `theorem` | [inf_le_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/inf-le-right.md) | 583 | `result-track:1baa18642c21d7a2d6b3883e81a29409f40832bcedbf84e1c1b3dac6ee03c035` |
| 74 | `theorem` | [le_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/le-inf.md) | 590 | `result-track:aaf9fb5f319e9c7138a30ef80a8c197a6058291ab58467ee114c10b294953981` |
| 75 | `instance` | [instLattice](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instlattice.md) | 599 | `declaration-track:3a3c5190b4604a25b6fd298a7ed9e058c4a459a3ac695058d2c22762d289a83a` |
| 76 | `def` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/const.md) | 619 | `declaration-track:c42023745a4a4ce80ec300d18980dbda3b9fc215db1e061c358858216a55cbc9` |
| 77 | `theorem` | [coeFn_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-const.md) | 623 | `result-track:c731329402d6e57ec403c75a675d5bf231fb2f6d34b9e7286fc2a0ef2e49ccd4` |
| 78 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instinhabited.md) | 629 | `declaration-track:7cd3d37f2c9dbc69fc100530891400ac1dcce5503b0fc5687855c7b284482f8a` |
| 79 | `instance` | [instOne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instone.md) | 634 | `declaration-track:8abb7e1032ec006e1c6aa49c6c199b24cc4eb300725cf6bf722127b7cc1f7421` |
| 80 | `theorem` | [one_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/one-def.md) | 640 | `result-track:c67d6bbea254fd680bfc88577d91429b8045ea5559a171855905322a02dd2881` |
| 81 | `theorem` | [coeFn_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-one.md) | 646 | `result-track:0530b57df0bcccb0898da79a7e499e9357e91341ee528068cdf02024bcdf0e7f` |
| 82 | `theorem` | [one_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/one-togerm.md) | 652 | `result-track:5c650628884f9e7b10b779d6c8cce4bec7775b051b39d2e54c9d7508acbe502f` |
| 83 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instsmul.md) | 667 | `declaration-track:8b645b8f272f614c0a82ea4886db4c63cbff8044083fa54ac13eac11d9dc50f6` |
| 84 | `theorem` | [smul_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/smul-mk.md) | 672 | `result-track:34355e8929f97a456475bb5620dcdcd3c97b1e1abc760c16436fbb066428770c` |
| 85 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-smul.md) | 677 | `result-track:f68021b68a3addf6025ca40bcb99344d51ecb3e76449c6730c8f490fc3225de8` |
| 86 | `theorem` | [smul_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/smul-togerm.md) | 681 | `result-track:e58801fc8e3a6f4689b2b89fa3b504df2e4f397849d8f8f332cc2d3c64ac0c76` |
| 87 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instsmulcommclass.md) | 685 | `declaration-track:05b3c3150c968dbfde4eded4ef1da2585146ddfd6716fa58b21a8b82840757ef` |
| 88 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instisscalartower.md) | 689 | `declaration-track:0c4c897bf829ac6d0f625886fc08c3c02cd950918d5903bf7d97577980ae354a` |
| 89 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instiscentralscalar.md) | 693 | `declaration-track:7dd8f324ca7e499d59b18cc96a04a7a65eda080e39c3d1a044f4167f340f856a` |
| 90 | `instance` | [instMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instmul.md) | 704 | `declaration-track:a244bc0fd95e353b4ccd773066c718ed594f88e3ab4dc999d5f0c4b12406ff5e` |
| 91 | `theorem` | [mk_mul_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-mul-mk.md) | 710 | `result-track:c6c64f87df62e2546e2b25facb659fbbb1d16fe85cd9f43938d264e8dad4dc79` |
| 92 | `theorem` | [coeFn_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-mul.md) | 717 | `result-track:5c7a0df738553767895592d1c20b7126ef9a560ad21e21c83d2f85178a3c1c93` |
| 93 | `theorem` | [mul_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mul-togerm.md) | 723 | `result-track:bf98d68c59d052051e1eef503349d6a62871ad1e4accb9caea4b674216bdcac1` |
| 94 | `instance` | [instAddMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instaddmonoid.md) | 730 | `declaration-track:3dc6d3ea238c6cc98244fb8ae24f963b86253807437fa2faa823b348cdeb0d5f` |
| 95 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instaddcommmonoid.md) | 734 | `declaration-track:d07d4d4025d8d369b3ffbd542d4511d0db33aa551916f6b23615d65117db331e` |
| 96 | `instance` | [instPowNat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instpownat.md) | 742 | `declaration-track:371cb02ac3a2eca8ad0889bb6783c8a44e2919d06a61815eb19204674f2c6a22` |
| 97 | `theorem` | [mk_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-pow.md) | 747 | `result-track:fb7ccf278757bd4ef7bb17e8addae46cec11406d08666dd9c4f1fac723118534` |
| 98 | `theorem` | [coeFn_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-pow.md) | 753 | `result-track:5b9398235983956a89d2ae93633f12daa23cd84fd6e5d37e2d3f31dd83044960` |
| 99 | `theorem` | [pow_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pow-togerm.md) | 758 | `result-track:3ef1ba88dd13f04917f56d775bca06cd479ce8c1834958d72e2f38de89b6793e` |
| 100 | `instance` | [instMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instmonoid.md) | 763 | `declaration-track:bd7b8b4d13983a30cbfde79c0f37807af2e26c7c4ddf76870bac9c80a861c34c` |
| 101 | `def` | [toGermMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/togermmonoidhom.md) | 769 | `declaration-track:0c9194a0044dfd031cb4caf4e702c4578c3967c0c848ef64be950a0b030dc370` |
| 102 | `instance` | [instCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instcommmonoid.md) | 781 | `declaration-track:1102915d1415f90ce4c9def2021225e66e8d6cef16f6603f08de6415a22b2532` |
| 103 | `instance` | [instInv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instinv.md) | 792 | `declaration-track:e0b171e6e5ca96267e1a4dade7e0bbaae5884336c047d31a8adc93842aa1aa52` |
| 104 | `theorem` | [inv_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/inv-mk.md) | 798 | `result-track:f749cb4166abfe0e2bbacf5b54ae408ab05be6f0c9d55b6675f1df27a27dea11` |
| 105 | `theorem` | [coeFn_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-inv.md) | 804 | `result-track:aca8cea0dbe14fcae4f0c534d1b32d7133f127a49d4c6bc2d33fbd19bb420c9b` |
| 106 | `theorem` | [inv_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/inv-togerm.md) | 810 | `result-track:edf90d138aa690d4a9a52bacf0eaaab0512995d209abb8d310440f396f24e650` |
| 107 | `instance` | [instDiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instdiv.md) | 820 | `declaration-track:534fef0b50cd952f2d1c2368385cd276ad8e9ae6df7aafba3247a2f5aad46500` |
| 108 | `theorem` | [mk_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-div.md) | 826 | `result-track:6c70ddec73870bd9c151b4f63ee31867f479447dcb29f836b19c893e24abb49e` |
| 109 | `theorem` | [coeFn_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-div.md) | 833 | `result-track:dc6e6322153b5fc023f5ec8a2d23d8c1ac1288c74145d1bb542aa2e50c672887` |
| 110 | `theorem` | [div_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/div-togerm.md) | 839 | `result-track:e9525256b299d4b449bdf0b2177dab267b504bb83b7da35e156e0be8398f0910` |
| 111 | `instance` | [instPowInt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instpowint.md) | 848 | `declaration-track:0379a4a076dcd5fe366bbf41887ce794b66d56e1f60bc4f5e66bdc8071236ae5` |
| 112 | `theorem` | [mk_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/mk-zpow.md) | 853 | `result-track:7b0ee42490a206624ae88e6e36d2cb780296d9fa978928d5a3485c692f008b3b` |
| 113 | `theorem` | [coeFn_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-zpow.md) | 858 | `result-track:ff03b16dc074331888140e8f1e5d336fe414b5fd4d4174f564320f425effdaf7` |
| 114 | `theorem` | [zpow_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/zpow-togerm.md) | 863 | `result-track:34e8721eb7e5c6dab1780eb569c1aeca4a4e96e7e21024067ef23161e6ffce6c` |
| 115 | `instance` | [instAddGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instaddgroup.md) | 871 | `declaration-track:712150c37670482a914a571f7f36f4d5261e88e2f8f3306f8e68be5e384adae4` |
| 116 | `instance` | [instAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instaddcommgroup.md) | 876 | `declaration-track:22999166b3ee1d4cac7328c7d492c3d9d3ca3a13ef32ce43c956b0a54ed94f61` |
| 117 | `instance` | [instGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instgroup.md) | 882 | `declaration-track:a7e2358e943e1003c1dcbb4c8f88dc1af4d5270da13aa5299e34824d8b94e768` |
| 118 | `instance` | [instCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instcommgroup.md) | 887 | `declaration-track:94b609e80dc376b32911a7dfcdb02d2bec0488b43e4a01b48759887f1f295af3` |
| 119 | `instance` | [instMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instmulaction.md) | 895 | `declaration-track:4bdb97fc91226d25b11764138d12221bb9a54347b521e62fe79ffbeb611415cb` |
| 120 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instdistribmulaction.md) | 900 | `declaration-track:ecf0ee56da8624998589e408d6d474f01159733e126133ea898ce7c9acd5b212` |
| 121 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/instmodule.md) | 906 | `declaration-track:0634abf7272c8900e41e1836f7227ce0bc37c3568565b7ecf29249c62b4ef357` |
| 122 | `def` | [lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral.md) | 916 | `declaration-track:d1e10eadba3a57d8fd168011323ae13aaa2fca621cd5d52671317579c9c00791` |
| 123 | `theorem` | [lintegral_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-mk.md) | 921 | `result-track:816b724df3b408d0bc897eb96ebbc6f2b39360863d9132a79ad5cf2ac3e6d5b8` |
| 124 | `theorem` | [lintegral_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-coefn.md) | 925 | `result-track:0b18cbc6a0a0626d14c3ada23f3d9d7a3d3a0c27ce0724e1c44bb9dc3745c6cb` |
| 125 | `theorem` | [lintegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-zero.md) | 930 | `result-track:9c9356c559677785d03fd0048a5c0c4e7b1db3594158070c8f5bc9c4ce4ddc28` |
| 126 | `theorem` | [lintegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-eq-zero-iff.md) | 935 | `result-track:f1836b44619e186a37b37abf1bcc48229727ad9416f6ac4631ecb02bca9f056d` |
| 127 | `theorem` | [lintegral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-add.md) | 939 | `result-track:65458527fb1d5a118c6d365c10247b54d11c36082d2be5d34e671d3eb7c24c75` |
| 128 | `theorem` | [lintegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/lintegral-mono.md) | 943 | `result-track:d0aaf50f37aa7c46cd06b12c48ea4b287d40c28e58354a99c252998fbfb77352` |
| 129 | `theorem` | [coeFn_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-abs.md) | 949 | `result-track:6723e0803213e29de223766bdba222c49d13f888b7e27c32c1c076b1f5c046f7` |
| 130 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pospart.md) | 963 | `declaration-track:b18a468c390ced43caadd1f65db3d7f83c8c6e1c0c8077839191820896b3a5bd` |
| 131 | `theorem` | [posPart_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/pospart-mk.md) | 968 | `result-track:4761c6108aed1f886d0a5c3c5f0042711078578a78b5721254994e45fcedfd90` |
| 132 | `theorem` | [coeFn_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-pospart.md) | 975 | `result-track:34f71a1955c71113cdcdffca9698c41fc48db317311dbc392b601e45e702bc11` |
| 133 | `def` | [toAEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/toaeeqfun.md) | 995 | `declaration-track:84abe1a38d31ec71630ac8d525ffa3afba3e79fd1196856aeaf6ea148ec31281` |
| 134 | `theorem` | [coeFn_toAEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/coefn-toaeeqfun.md) | 999 | `result-track:897981ed4b06e6ef9f9ecbd3f8a9f18a9d0483e9b935e8cf8dc92e57451c373d` |
| 135 | `def` | [toAEEqFunMulHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/toaeeqfunmulhom.md) | 1009 | `declaration-track:9a5634b0f85f3789dac966f799a38c274cfc48a1d8ff81d6717a815909e7c4fe` |
| 136 | `def` | [toAEEqFunLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunNamespacedExtIff.lean/declarations/toaeeqfunlinearmap.md) | 1024 | `declaration-track:e207231f71d42b123aa745e695a988001008e09d47425aec59825535a2661a7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=313883ddeab932fb699220c01d43f2256889af6ce7a593aa72758870af7d7f6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/AEEqFun/Variantfcf5233ef736d279460f08d47dfa744535a927571f769fabdc600566c6a60ee0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
