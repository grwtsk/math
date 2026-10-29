# Verification target: Group Measure Measure Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9af0551171e42e0bccd446f80e6fbb391fea42c8",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9af0551171e42e0bccd446f80e6fbb391fea42c8`.

Source path: `GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Action` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Prod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Equiv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.CocompactMap` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_mul_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-mul-left-eq-self.md) | 51 | `result-track:abffbfb9932f683af0d04665bd223d5962e3cb94b620e2b66550cfc6f4f0ff87` |
| 2 | `theorem` | [map_mul_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-mul-right-eq-self.md) | 56 | `result-track:34a40c4f85e4cab3e1b0a9c8d3a83be8a29eda96baf6264bb540fef4034dc362` |
| 3 | `instance` | [isMulLeftInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulleftinvariant-smul.md) | 60 | `declaration-track:07ee7d92a97969dd0fd27f6eeed162f5abb2a7491f64dc8271c614cc799122b8` |
| 4 | `instance` | [isMulRightInvariant_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulrightinvariant-smul.md) | 64 | `declaration-track:efd2e79f0d3bc820929049fdbb30aaf9db344ba9403aadba2c43dfb2538363ed` |
| 5 | `instance` | [isMulLeftInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulleftinvariant-smul-nnreal.md) | 69 | `declaration-track:759729bf8c39e5bb20271f00dd56680b072e9e9b954261a497fe4d336d8451ac` |
| 6 | `instance` | [isMulRightInvariant_smul_nnreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulrightinvariant-smul-nnreal.md) | 74 | `declaration-track:8a0c6d0cb85332e77223d5fb4ee37a5a66be540138476a66e60c720976f316f7` |
| 7 | `theorem` | [measurePreserving_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-mul-left.md) | 83 | `result-track:7c7afe9d836e67beafb8ba5252826885cca5454ee0d07ebd91e27f4a46d1c013` |
| 8 | `theorem` | [MeasurePreserving.mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-mul-left-source-edition-2.md) | 88 | `result-track:cd5590f6becc8c4c96f55d554355eb1dc90004019d9e848439643193fc4b25b8` |
| 9 | `theorem` | [measurePreserving_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-mul-right-source-edition-2.md) | 94 | `result-track:e934cb470bf62537d4a7c40f62bed9d7c58eb1c0b7da299e49f065267a64a53c` |
| 10 | `theorem` | [MeasurePreserving.mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-mul-right.md) | 99 | `result-track:d4fb78d43201ffcbb840a4a72b006d5b25a4ca122742b3ac4ad5712dcbc51273` |
| 11 | `instance` | [Subgroup.smulInvariantMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/smulinvariantmeasure.md) | 105 | `declaration-track:4e76c151cd04055d9a2ee6b72083092bab5a5aa7e4d25882308f046c52faa124` |
| 12 | `theorem` | [forall_measure_preimage_mul_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/forall-measure-preimage-mul-iff.md) | 111 | `result-track:3463ef214a2a872898301149972d3fa8dc14be76139c4865a5cc66d42ae55fbb` |
| 13 | `theorem` | [forall_measure_preimage_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/forall-measure-preimage-mul-right-iff.md) | 122 | `result-track:b75aa39e50958cf2ff3c336601e4be83337ac5ab7969251aba81771f26b7cde5` |
| 14 | `instance` | [Measure.prod.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instismulleftinvariant-source-line-132-occurrence-2.md) | 132 | `declaration-track:b6adb5aab7826e544f4a4bb1f9d1b5c21df1b468658272aca6194595cf1b10d8` |
| 15 | `instance` | [Measure.prod.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instismulrightinvariant-source-line-142-occurrence-2.md) | 142 | `declaration-track:142bf95b12aec399e35cef95f1908d898a0078cba3cae349a9ac3477da8be6eb` |
| 16 | `theorem` | [isMulLeftInvariant_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulleftinvariant-map.md) | 152 | `result-track:e9a0041421fe888d6539ab3a71453eb684b7cee727d3b16b173fc8d973a46af3` |
| 17 | `theorem` | [isMulLeftInvariant_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulleftinvariant-map-smul.md) | 176 | `result-track:809172753f289d89ed5d61adc4a27da3c6d69496f10bbbb54482a3d3c3ce1f2a` |
| 18 | `theorem` | [isMulRightInvariant_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulrightinvariant-map-smul.md) | 187 | `result-track:1d121fcb9232906af578750f819e3f02547fa19c43f8b667158734253d03e84c` |
| 19 | `instance` | [isMulLeftInvariant_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulleftinvariant-map-mul-right.md) | 197 | `declaration-track:8ae8c9b93617778bc694d0d937797865049d0929bfb7a7637ef49dbc931343c9` |
| 20 | `instance` | [isMulRightInvariant_map_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ismulrightinvariant-map-mul-left.md) | 204 | `declaration-track:4969159ec22f5339e600e2003747386b345c8ba286231866228c8d938ff5e68c` |
| 21 | `theorem` | [map_div_right_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-div-right-eq-self.md) | 215 | `result-track:f1c4c5c4a8f36faec661f784889d8948f72ac401089a004c0a7f93f9364f802a` |
| 22 | `theorem` | [measurePreserving_div_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-div-right.md) | 225 | `result-track:679e6aeff6d54e67276a92cc396b411c1fe72db1e569884e02d50ddebdd51ec9` |
| 23 | `theorem` | [measure_preimage_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-preimage-mul.md) | 233 | `result-track:7d3886000fb5bf4ed549efdee1bae670c82d2024c24e2bf96416c612b6f04ca5` |
| 24 | `theorem` | [measure_preimage_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-preimage-mul-right.md) | 241 | `result-track:2b3e72c96881225de1747f59f51689c7c3ffa47aa37d3f7ad1f1b4fad8c32b26` |
| 25 | `theorem` | [map_mul_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-mul-left-ae.md) | 249 | `result-track:32fdca4e03675921662c6a763e87960b2222d116cff54c21ce02f15e6a1c85d5` |
| 26 | `theorem` | [map_mul_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-mul-right-ae.md) | 254 | `result-track:7f2bae5b6f92940a4477abbc41099ca48b8320966fc91bca2d3e7dbcabfed04d` |
| 27 | `theorem` | [map_div_right_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-div-right-ae.md) | 259 | `result-track:7336cb18b1d4a3afcaa65ce0f99f7b4aae08221be4f801023bb783c7eeaa4887` |
| 28 | `theorem` | [eventually_mul_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/eventually-mul-left-iff.md) | 264 | `result-track:019561c5023a6152352635ef084d457980fc4f5f2aad20b3842ba4493b833656` |
| 29 | `theorem` | [eventually_mul_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/eventually-mul-right-iff.md) | 270 | `result-track:59ae8a55e32e88adf5c25c6e24c36ff85a0915fda1d009813a4c94c037f39ae8` |
| 30 | `theorem` | [eventually_div_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/eventually-div-right-iff.md) | 276 | `result-track:6c44570e190b5aceb738b0007b578ace6e52f0ada8421fbdc72c609f2a00ecbe` |
| 31 | `def` | [inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv.md) | 289 | `declaration-track:3f0805169ce0b960b66f2ff1f7c061ec28faee3919404878cf67264f7a29e9fd` |
| 32 | `class` | [IsNegInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isneginvariant.md) | 294 | `declaration-track:83d1d6d6a028f81d353e18151479a6490918c1f1983f6d40184aa0c787be33aa` |
| 33 | `class` | [IsInvInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isinvinvariant.md) | 300 | `declaration-track:fb3c745ee71695e6b8f7ee7dad682b5893c5d1207819dc98445eb8368980e786` |
| 34 | `theorem` | [inv_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-def.md) | 308 | `result-track:4657d5ad32e898dd2e529acaa7cbd3d28fbc3d17b065c47f80eacf56654343c3` |
| 35 | `theorem` | [inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-eq-self.md) | 311 | `result-track:936ef2970c50836c0138ad5f4154baf850edaeb742263d6d834aad7e11494b99` |
| 36 | `theorem` | [map_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-inv-eq-self.md) | 315 | `result-track:42255b121160aba26d492f37b83b8782d71ed6e96d9024b255e077894baa30bd` |
| 37 | `theorem` | [measurePreserving_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-inv.md) | 321 | `result-track:9323946cbfbb579d43e259131245222e2c4f3d2695536a149a74cde7e984e9c4` |
| 38 | `instance` | [inv.instSFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-instsfinite.md) | 325 | `declaration-track:029d4a50bb7dcba84de87dc28c858a969f425a91756e4449a42e6d44ddab6717` |
| 39 | `theorem` | [inv_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-apply.md) | 335 | `result-track:63b2a786c8e0f57c122f2c64909511994030f4352648a6a169b467aef7f98cd6` |
| 40 | `theorem` | [inv_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-inv.md) | 339 | `result-track:2039765fbf2e82e40cfac17e49287da02c7abaf32c68f18cbbaf2c137f2f843d` |
| 41 | `theorem` | [measure_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-inv.md) | 343 | `result-track:90aae782be4eaa1d0fd40154bc0febb661864ad804f9a8504a8c5203abb372e2` |
| 42 | `theorem` | [measure_preimage_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-preimage-inv.md) | 347 | `result-track:e5f4171c7292cdd788b3163cb027c58373615d45133c922294dccfa75911631d` |
| 43 | `instance` | [inv.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/inv-instsigmafinite.md) | 352 | `declaration-track:ff81df46974454215351525e6ab5decdfe382c1466c021d4ba8e3768cb08208d` |
| 44 | `instance` | [inv.instIsMulRightInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instismulrightinvariant.md) | 362 | `declaration-track:342d0957e969b8414cfe73defaf550d16f128570e31e9ea60d00c4f6423b6127` |
| 45 | `instance` | [inv.instIsMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instismulleftinvariant.md) | 370 | `declaration-track:6b0d227e137f32ba38b47aa4d9ee71a7c55591b1b4d689338627694c0d3a679c` |
| 46 | `theorem` | [measurePreserving_div_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-div-left.md) | 378 | `result-track:4698fe066fc36eb4c2226ba170a294405e08a4c11fea06fb0c39a6c9d10a53c7` |
| 47 | `theorem` | [map_div_left_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-div-left-eq-self.md) | 384 | `result-track:3efc739a39e17b06ad09a9e5c702b8e263c562ecaead6f91fddd82efc145b65d` |
| 48 | `theorem` | [measurePreserving_mul_right_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measurepreserving-mul-right-inv.md) | 389 | `result-track:7d2c8c9010f810b35983945eee7ca66d75c85f2df5bc450f67fb390cd5f99c57` |
| 49 | `theorem` | [map_mul_right_inv_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-mul-right-inv-eq-self.md) | 394 | `result-track:88e4dfbb37e631aa9ddcdf91ab9b89fb6a25a7aa8299be873f26eb4a06f7f742` |
| 50 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 409 | `declaration-track:3c1bd05a6c15e509ba7201e1300a18be0d9c4f112776bbde5599c5011206cae3` |
| 51 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-7.md) | 417 | `declaration-track:a7c80b9eff687b3d031de24c2b5196a2692e735911fa94002ab4e4f425a1f5d5` |
| 52 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-6.md) | 429 | `declaration-track:8f5b4ef98954dd8610f7832c8906f6b09522813ea7cd52aceeb0ffe7c50abd2b` |
| 53 | `theorem` | [map_div_left_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/map-div-left-ae.md) | 435 | `result-track:7e40799a997065914a9273395d58282a7522ea411ecf67650319df572fb19036` |
| 54 | `instance` | [Measure.IsFiniteMeasureOnCompacts.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-isfinitemeasureoncompacts-inv.md) | 448 | `declaration-track:c20fa39d48399efe7c8d138128cdf9ad7f6541e103c7fe86b19b48c32adf6333` |
| 55 | `instance` | [Measure.IsOpenPosMeasure.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-isopenposmeasure-inv.md) | 453 | `declaration-track:bb968d1d5653c8021b28204672a639a5297619a14073f3079e465dc794a4c1c0` |
| 56 | `instance` | [Measure.Regular.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-regular-inv.md) | 458 | `declaration-track:6c6a2f58f5abc9e85ad55515dc4b97910133675490b3cb4f341c39e111ee2033` |
| 57 | `instance` | [Measure.InnerRegular.inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-innerregular-inv.md) | 462 | `declaration-track:dc551950defdae4b91be312df23543a5e37cbf54e73500a44de11864fe887662` |
| 58 | `instance` | [innerRegular_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/innerregular-map-smul.md) | 469 | `declaration-track:590e1dd580c077b06a949ecaeb4104ad3bcc4a1bafb9c440633bf17de0d3a9d8` |
| 59 | `instance` | [innerRegular_map_mul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/innerregular-map-mul-left.md) | 475 | `declaration-track:f63d0d00b1b9dc6714ecffe16ef1e8c59328d648eaf0c07c65d7d54aad85f2df` |
| 60 | `instance` | [innerRegular_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/innerregular-map-mul-right.md) | 480 | `declaration-track:9416256312562bff307e7c8ee480d975a5b716eb6f9a9246b6407b4dc55eae64` |
| 61 | `theorem` | [regular_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/regular-inv-iff.md) | 486 | `result-track:f784fbb769306863b500fa7570939e9ea9f78293600d1c24e4862c37c3e3aec6` |
| 62 | `theorem` | [innerRegular_inv_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/innerregular-inv-iff.md) | 490 | `result-track:9861bf779325bb444147e9886900cd17b794e9612f563d7ef43bee8260964e91` |
| 63 | `lemma` | [eventually_nhds_one_measure_smul_diff_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/eventually-nhds-one-measure-smul-diff-lt.md) | 496 | `result-track:d128fc5bbdfa662a03fc91f8be164ca59fb4fc96a4968ded7de8205da93151c3` |
| 64 | `lemma` | [tendsto_measure_smul_diff_isCompact_isClosed](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/tendsto-measure-smul-diff-iscompact-isclosed.md) | 514 | `result-track:7d6a61f191e8a9190d91962b57df5976bb03c6545d427b2d356c4910d3fb85dd` |
| 65 | `theorem` | [isOpenPosMeasure_of_mulLeftInvariant_of_compact](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isopenposmeasure-of-mulleftinvariant-of-compact.md) | 529 | `result-track:f71e7272319b688785171a991072b863418c6f34759921984e4130202c1269d1` |
| 66 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-3.md) | 544 | `declaration-track:416254a2704fa93cef8b32f51cbf8adf217fc92c85273d4d2ba6ab0b5f569249` |
| 67 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-8.md) | 551 | `declaration-track:c18d43923fb03a6b7a12198f0370068924f8a54a7cc0fba740a4b435363fe95e` |
| 68 | `theorem` | [null_iff_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/null-iff-of-ismulleftinvariant.md) | 558 | `result-track:0bf2851fdee380336724426832cc2a78155cfc85165c4ad41cdde6f90ef4ffec` |
| 69 | `theorem` | [measure_ne_zero_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-ne-zero-iff-nonempty-of-ismulleftinvariant.md) | 565 | `result-track:0949668d054d352d7ba24cd7b4a8a60cb91256f6739ed89f6668538b9446f08c` |
| 70 | `theorem` | [measure_pos_iff_nonempty_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-pos-iff-nonempty-of-ismulleftinvariant.md) | 570 | `result-track:fd1cde902f3bb56f0e8a8655685a259c6c8953c826389e98e3955db8876604ee` |
| 71 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant-source-line-579-occurrence-2.md) | 579 | `result-track:c8cd16198f004b668206ba38747678d853e18b6ecf1ceba22e3bdaa49235b506` |
| 72 | `theorem` | [measure_lt_top_of_isCompact_of_isMulLeftInvariant'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-lt-top-of-iscompact-of-ismulleftinvariant.md) | 591 | `result-track:0ff17e612edeca6cf3cecd9f395c9e7c071329875551c193af0fd2e86503e8cb` |
| 73 | `theorem` | [measure_univ_of_isMulLeftInvariant](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-univ-of-ismulleftinvariant.md) | 601 | `result-track:74555ae8657fe7fbd0af6abed5bff23e255dcd31788e7b46bdd8f946382b4a01` |
| 74 | `lemma` | [Group Measure Measure Namespaced Source Edition2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/mul-closure-one-eq.md) | 645 | `result-track:93f2769a2610a5d93163ed36199698c5dedb995fb3121b3a1cedba1527fae82c` |
| 75 | `lemma` | [measure_mul_closure_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/measure-mul-closure-one.md) | 653 | `result-track:11a09c8c902cf394140b380f89cb7d753ea946a34fb0308002969cea11c5717c` |
| 76 | `lemma` | [innerRegularWRT_isCompact_isClosed_measure_ne_top_of_group](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/innerregularwrt-iscompact-isclosed-measure-ne-top-of-group.md) | 666 | `result-track:4574031dd935398c8d982d664300bd458a9ad8646cdc1cbd7e8a24fb73232843` |
| 77 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance.md) | 687 | `declaration-track:01f4ec3cd2ce2b68569c3e19a601b24fa9be2a1c1ddeda1521951b706fd3932c` |
| 78 | `class` | [IsAddHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isaddhaarmeasure.md) | 705 | `declaration-track:2c12b6819e40cbdd9d78a5d1c87b10982bbefaf8b301fa797fcff56208e2743f` |
| 79 | `class` | [IsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure.md) | 718 | `declaration-track:358ee7a56a562693b1a92a49802fd2bcf7dffabd559ac773c41bedde75bc7a0e` |
| 80 | `theorem` | [haar_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/haar-singleton.md) | 725 | `result-track:69f22c0045b4dbb494cc0755b1b8a9df12090dafdc8f02cb32fe6bcf089db81e` |
| 81 | `theorem` | [IsHaarMeasure.smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-smul.md) | 730 | `result-track:4ce183013465bc2c8e2c3712a80b8a955f9c2015b80aa2a917d32639873782fb` |
| 82 | `theorem` | [isHaarMeasure_of_isCompact_nonempty_interior](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-of-iscompact-nonempty-interior.md) | 739 | `result-track:94f19909db5fce58602de250bc28e6b2fa107153c3f86bc4ea3e1dc71ad0746c` |
| 83 | `theorem` | [isHaarMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map.md) | 752 | `result-track:6f58a81524999b51f773c180b8f314dbce389a9f9052ae1a027fcc9d0febf352` |
| 84 | `theorem` | [isHaarMeasure_map_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map-of-isfinitemeasure.md) | 769 | `result-track:dbbc9f5aff95bed4680533ee297cf0067ef29a2c1db10c335430916bf9b51bfd` |
| 85 | `instance` | [isHaarMeasure_map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map-smul.md) | 780 | `declaration-track:06ec31b351eb3eff30515d052aa02e1222b4fd5699646f8f6f4b7dd83da5b32e` |
| 86 | `instance` | [isHaarMeasure_map_mul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map-mul-right.md) | 795 | `declaration-track:15bf7ad6eacae2efbf91827477f9a8d8cb16ba47e8fd868e0c82ec2845d461b9` |
| 87 | `theorem` | [Group Measure Measure Namespaced Source Edition2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map-source-line-801-occurrence-2.md) | 801 | `result-track:3c7b5d5d0d94344bdad62cab9a809a8b21945c35eabb82195cffade71bc07dea` |
| 88 | `instance` | [Group Measure Measure Namespaced Source Edition2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/ishaarmeasure-map-source-line-816-occurrence-2.md) | 816 | `declaration-track:6a457acaf2e197cb9101ecd93b7a513ac250aee54167b5912409e57bf0810e75` |
| 89 | `instance` | [Group Measure Measure Namespaced Source Edition2](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isaddhaarmeasure-map.md) | 822 | `declaration-track:c0d6a7afaea1ff2c58fb8a1c2a149c482a1193b00ac15195dd999473b99c6ed2` |
| 90 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-4.md) | 840 | `declaration-track:6133e14cf1d314dc512c742e93336f31ff12cb7607c7cc9e437a09247bbab5af` |
| 91 | `instance` | [prod.instIsHaarMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/prod-instishaarmeasure.md) | 847 | `declaration-track:68f3b38b5ea39e0352f881739b4394edf32e670896ec06320d89494563117d5e` |
| 92 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/instance-source-edition-5.md) | 863 | `declaration-track:868e527da0e1a9c9fa537c737ecd9e246e3215a642138459fd3634683742a47e` |
| 93 | `instance` | [IsAddHaarMeasure.domSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupMeasureMeasureNamespacedSourceEdition2.lean/declarations/isaddhaarmeasure-domsmul.md) | 874 | `declaration-track:0bf7fa16cc02fac4cd11c5230687b7a01fa4585a2ed6577bc124b567bee6fd8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c064858f20f6256b92c4a11d49a7041e25a24e615d045576902817393bdc4f5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Measure/Variantd7d716b5843aa9dbc72a49aa49859e3ef4beb411517528ea9f44ee00bda0d855.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
