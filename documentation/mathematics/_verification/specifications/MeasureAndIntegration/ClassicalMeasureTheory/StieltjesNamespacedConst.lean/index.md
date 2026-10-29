# Verification target: Stieltjes Namespaced Const

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff61badabb2319015eea68cb05a2e021f2e14cd5",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff61badabb2319015eea68cb05a2e021f2e14cd5`.

Source path: `GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightLim` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/stieltjesfunction.md) | 46 | `declaration-track:d3d10e81a7df3746e1bfa35cc72b11e31f212f51a702b231bbb705861609f8d6` |
| 2 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instcoefun.md) | 55 | `declaration-track:c6ee78ea26104fc072f0991f35026f25a21149d67e13f3a019c45572bcec12d6` |
| 3 | `lemma` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/ext.md) | 60 | `result-track:08bd96e9d3aef9584f6e7899950dc1fbab47a8535ce0687bae130a1caea5f996` |
| 4 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/mono.md) | 65 | `result-track:28428f5da513b7de9231ea83e720885114ad91638d9fd39bbe1b19909bd694f8` |
| 5 | `theorem` | [right_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/right-continuous.md) | 68 | `result-track:c80a905027a873e9555e2964162fbc16f1817c4bc47a3cc14bb375b24ea324f7` |
| 6 | `theorem` | [rightLim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/rightlim-eq.md) | 71 | `result-track:0cd5ffe169a18876c8c00d114b6a84130291ff8184166bc74be677f5b06c4479` |
| 7 | `theorem` | [iInf_Ioi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/iinf-ioi-eq.md) | 75 | `result-track:27e8c6b8ec5ec1b734b907cce4d4ffe44e6daed9db2437d2938c7e49fc4f9cb4` |
| 8 | `theorem` | [iInf_rat_gt_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/iinf-rat-gt-eq.md) | 81 | `result-track:cb9b07a51c0bf2769a7e9a2ee7975d4b526f86140d220719f0712c419acfe298` |
| 9 | `def` | [id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/id.md) | 91 | `declaration-track:8b2c0d7b654d83b23709cc167f6c88981830facd487e748c2fd08a2489bbd95a` |
| 10 | `theorem` | [id_leftLim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/id-leftlim.md) | 97 | `result-track:00d29b34409a9d97f9a9669e9e2e984845b2d42952d60e7084d9418fdf2cac7b` |
| 11 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instinhabited.md) | 101 | `declaration-track:5b9d2a074cdbe76c572b1feb0905a033c56bedaec67f0891631dd4ff5bf3845b` |
| 12 | `def` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/const.md) | 105 | `declaration-track:7e483cb03b2fa15380b01387a959d31fde5278f3b146ac85c54a73c0ddaa8095` |
| 13 | `lemma` | [const_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/const-apply.md) | 110 | `result-track:523c0efca475b8e3497c206231521211bd359e0aa514e6b40df05ac13e49b864` |
| 14 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/add.md) | 113 | `declaration-track:fb7be17b09f5fb38b7479174b075dd4598f752e2de2160029d691218487e4246` |
| 15 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:fc194af902ed992ef24546267d337500901ea9e99148da9dded8a0dffd076246` |
| 16 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instance.md) | 124 | `declaration-track:2ae8d5272257a48dfd691197cd6afebd980997d24871e811a6321f0d5d450db2` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instance-source-edition-2.md) | 130 | `declaration-track:56a424569139b5cf3e3e93b5ce8897e808be864fd0d44c8f84c3fc39ddcd8a97` |
| 18 | `lemma` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/zero-apply.md) | 142 | `result-track:d89dfca4f0859591b0818d473cdb525ec414038e6eb805143d6ce78a24a5429d` |
| 19 | `lemma` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/add-apply.md) | 144 | `result-track:7d046aacd57b91e860195588476ce9bd7c186e6e7914a8eaad70fb05cdcf3276` |
| 20 | `def` | [Stieltjes Namespaced Const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/stieltjesfunction-source-line-148-occurrence-2.md) | 148 | `declaration-track:cc19f5413e28089772e9f47ce59b8b6d64a9e6a4f56e3c5f2cd03dd5ac6dd5e3` |
| 21 | `theorem` | [Stieltjes Namespaced Const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/stieltjesfunction-eq.md) | 167 | `result-track:914e191ea5a5306a0311c39b7a0bc92fd6cdf51eb4ade6a7622b2624927d35ba` |
| 22 | `theorem` | [countable_leftLim_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/countable-leftlim-ne.md) | 171 | `result-track:49644c925164e34347ba966a904ed2ae57a28315778c620f35f2e839ed678fba` |
| 23 | `def` | [length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/length.md) | 182 | `declaration-track:9f3f8d7192b063823c48c684a1c06aaeddab380217142326b0ea7b5b1a3f345e` |
| 24 | `theorem` | [length_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/length-empty.md) | 186 | `result-track:17a7c23150cff18c98cc497942cef965c341b5a1f99f6700e141b7d6562739bc` |
| 25 | `theorem` | [length_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/length-ioc.md) | 190 | `result-track:11aa136fcbcc50a076901ce5f1d449f855c9e0f39483196f4a3cb47988226644` |
| 26 | `theorem` | [length_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/length-mono.md) | 200 | `result-track:f8f8e238f0343ab33ed8de8dd039eac6948b70727260ae8bedb0c098c978d59c` |
| 27 | `def` | [outer](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/outer.md) | 206 | `declaration-track:7f2ed41b13f8276cd83baddb38da423ff4c2fae77757a701526eec26a6e91c77` |
| 28 | `theorem` | [outer_le_length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/outer-le-length.md) | 209 | `result-track:2469792be3d1c475ae6066b6d1b9db25f3c26899d3b6150d13c82903ba7bd795` |
| 29 | `theorem` | [length_subadditive_Icc_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/length-subadditive-icc-ioo.md) | 216 | `result-track:32df8fa38afbc48accf8d47508273eb6e67a5d315b42fbc7321295e2f2b84c2e` |
| 30 | `theorem` | [outer_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/outer-ioc.md) | 250 | `result-track:7a86deea387e3882f119be467e254b6066face915c0c176ba6a6e5e04ef506dd` |
| 31 | `theorem` | [measurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measurableset-ioi.md) | 312 | `result-track:d9f32f59e42c01cde62e4316112d74442682fa0df0ef2f85b7400195a56245a8` |
| 32 | `theorem` | [outer_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/outer-trim.md) | 331 | `result-track:673c172baa5e408f8eb797511b3b0c2d94f5b6a1e93e8e108df4ed3a21dc477b` |
| 33 | `theorem` | [borel_le_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/borel-le-measurable.md) | 356 | `result-track:408f56d16c74a8c29bd6a2158399603ee69908f97ccb7233f02064ea7a4c5157` |
| 34 | `theorem` | [measure_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ioc.md) | 372 | `result-track:3d8e79234b19d15f901769b7ed61747ea35e03558b567236c0262c1175091ab4` |
| 35 | `theorem` | [measure_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-singleton.md) | 377 | `result-track:a77c7f421e3bc5ecdc65f3946f62f9cf2a5b4b07036ab9ac2dd93cb9fe85ea35` |
| 36 | `theorem` | [measure_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-icc.md) | 404 | `result-track:1d27bf18aee6442a99fbabbb3ea8233fa957ce45c81e27746ad7264e8967bb4f` |
| 37 | `theorem` | [measure_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ioo.md) | 414 | `result-track:366696950c7ed12856ab2562dbbf43907da63c4e34f31c86179147fa1fcfbd7a` |
| 38 | `theorem` | [measure_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ico.md) | 430 | `result-track:cc7df199950d5c841dd3f58985a51ca08971f3ccc859d90eccdbbe6051aee070` |
| 39 | `theorem` | [measure_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-iic.md) | 439 | `result-track:46127050c812f45222e37d15c239b9910418acb7f0fe2187718dc7ffdd67c576` |
| 40 | `lemma` | [measure_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-iio.md) | 445 | `result-track:338907c7aa955217090744526ea35f9436d51af00262ed98cc7eb8692f0b9da3` |
| 41 | `theorem` | [measure_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ici.md) | 451 | `result-track:7afecf52db4ed0079835ba365f2f3eca40c2ccff146cd74903b8984573db8b73` |
| 42 | `lemma` | [measure_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ioi.md) | 462 | `result-track:ed0b55fa87ec5ecc1c267f2e72ad35c10419fba0f3f7cd05c2e9a9043154eada` |
| 43 | `lemma` | [measure_Ioi_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ioi-of-tendsto-attop-attop.md) | 468 | `result-track:bba620c8b73f55c94ef3ebb021b74e01a09197724506646fa815d2ab2c77d1fc` |
| 44 | `lemma` | [measure_Ici_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-ici-of-tendsto-attop-attop.md) | 475 | `result-track:ca774bc5161986482fbed79191a0e8c6f2afbd476d4bd7c03563e3d95fe11709` |
| 45 | `lemma` | [measure_Iic_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-iic-of-tendsto-atbot-atbot.md) | 480 | `result-track:bfe57997883aaa18228f0dcb0bcc63b5ba118289b9554186329e63dc82bd76ad` |
| 46 | `lemma` | [measure_Iio_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-iio-of-tendsto-atbot-atbot.md) | 487 | `result-track:d938bd56771585df8642a6fb07ff339d0c414098c4adb9f0ee3cdc4e235058d0` |
| 47 | `theorem` | [measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-univ.md) | 492 | `result-track:6861982767a83f3fae52b64e883a78ef51b4715b980d4b3113adf6d809417765` |
| 48 | `lemma` | [measure_univ_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-univ-of-tendsto-attop-attop.md) | 498 | `result-track:5e85fc1e1a6e8599dad6c78a1ef3c6afca9a3dcf57d4b07dd62cf4d5c8a795e2` |
| 49 | `lemma` | [measure_univ_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-univ-of-tendsto-atbot-atbot.md) | 503 | `result-track:6e9c90136ce5a35fc6d644368a5e1e974d68341a2b885f61f4499d4c15fe8c47` |
| 50 | `lemma` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/isfinitemeasure.md) | 508 | `result-track:4af297b305c3a85e89e19b85586fa7c9a7796a01923ca1473bf55f0d39ddfce7` |
| 51 | `lemma` | [isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/isprobabilitymeasure.md) | 511 | `result-track:555b524d19b228f56004277cc4aff06a74f96a77b14635b8e8ac71c7d108fcf5` |
| 52 | `instance` | [instIsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/instislocallyfinitemeasure.md) | 514 | `declaration-track:6a3582f8f9b967b78e7c1a2f6b6c01d4ecb955629705501fe62fc9f955563c9a` |
| 53 | `lemma` | [eq_of_measure_of_tendsto_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/eq-of-measure-of-tendsto-atbot.md) | 517 | `result-track:9df42ba50bb9df454b45734cb946b24755ce865579dbd6fa24f4c3cf9d6baf1f` |
| 54 | `lemma` | [eq_of_measure_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/eq-of-measure-of-eq.md) | 529 | `result-track:53a95d17715aeb5f73f32e73aaa7f5a7598509fe13db4571f36ab85b4924d513` |
| 55 | `lemma` | [measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-zero.md) | 552 | `result-track:14299ba3ddee11a3bd6f08c5e9a29acf3fcef814f34fb0ea3b4abb99736890b1` |
| 56 | `lemma` | [measure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-const.md) | 556 | `result-track:706b1a8098a970d07648230b1a15eaba449d2f1c4946c3df33cca4ccbbf7f40d` |
| 57 | `lemma` | [measure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-add.md) | 560 | `result-track:b24bd4b4d3f22367931831f71bca47a70a0dab4999ccb27fae4576093ed7b4fb` |
| 58 | `lemma` | [measure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesNamespacedConst.lean/declarations/measure-smul.md) | 567 | `result-track:6d281aead1b1f9a44121606d42d55e42de4436fcb8c2043db9741795e4c4560d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9b2ae3ceff220b327c2bcf53a0bc237a26a86da9192ee0008f432691524dfbd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
