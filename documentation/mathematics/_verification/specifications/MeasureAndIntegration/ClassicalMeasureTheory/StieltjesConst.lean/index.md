# Verification target: Stieltjes Const

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "13655cfbce63e4fccf4ac5d0db6eddcaa6f31901",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `13655cfbce63e4fccf4ac5d0db6eddcaa6f31901`.

Source path: `GRWTSK/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Typeclasses.Probability` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformMulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LeftRightLim` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/stieltjesfunction.md) | 38 | `declaration-track:32d15cbc51dc3af75bc31034fffe6fd87315630beb7a00ff0b4e1e89a7aeda1e` |
| 2 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instcoefun.md) | 47 | `declaration-track:353c9f95ebd568782ce14b73b71483be35f88d6cca8db435c04b9d0581067fc9` |
| 3 | `lemma` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/ext.md) | 52 | `result-track:7d9ee6318550ce495ec2e52b6ba3198c92f4912efecad94deef061c0459d4236` |
| 4 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/mono.md) | 57 | `result-track:1ff9a3d66c339112a9ac90f80ac3bf7112bb52e6e46e9588a0f7d4fdc65b6113` |
| 5 | `theorem` | [right_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/right-continuous.md) | 60 | `result-track:aedab2776a04105d74dd07d0d9767fc135ad0af8274626c673d5c223a62979b8` |
| 6 | `theorem` | [rightLim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/rightlim-eq.md) | 63 | `result-track:00fd272a8fe695616a69c3a73da4d6c57c912c4d351e445c5a91d24ef7193815` |
| 7 | `theorem` | [iInf_Ioi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/iinf-ioi-eq.md) | 67 | `result-track:0f612d35b80f35865cb4084c95bbcbf92321ea7d0fda946a3ed5aae5ff3b1d2c` |
| 8 | `theorem` | [iInf_rat_gt_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/iinf-rat-gt-eq.md) | 73 | `result-track:d393053327a3f04199da4519fd8f06acbf0454bcc2bdb0d3bb6fa9d3c6b7ef94` |
| 9 | `def` | [id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/id.md) | 83 | `declaration-track:468ba23d58f995822fa5cb2e07cf3ade9cd734d786b6e4d74aa79008ecf4d9d4` |
| 10 | `theorem` | [id_leftLim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/id-leftlim.md) | 89 | `result-track:a6667bc970c59ee927d9ae78b5782f074253ea5f450662375a32e7c4fa36819e` |
| 11 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instinhabited.md) | 93 | `declaration-track:c836ec90150809b0b424d622660ee22d635461a96aec6b88a872bcfa3cd7d589` |
| 12 | `def` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/const.md) | 97 | `declaration-track:b93a64b206882055a4b8b20497b88619a3a835a3eaf7c0cc57f9bcb951eff761` |
| 13 | `lemma` | [const_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/const-apply.md) | 102 | `result-track:cdbadbfed0fa33739c0ac7f6a6e0a0f2e9770621e6012ae5853dc04e92cf3cbf` |
| 14 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/add.md) | 105 | `declaration-track:d31d15da5700675f029fa37a5ec3e1500510ca85c00e892b80e2366ceb34aa7b` |
| 15 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instance-source-edition-2.md) | 110 | `declaration-track:66f0b7f7dd1696e6383032fc6cd02a495f21f5daaf8084d53d0c4094f0468bac` |
| 16 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instance-source-edition-3.md) | 116 | `declaration-track:f5b1b80427e2d112ca440c064f4b8e0097ebecd34d74ae6e9ded4757fa8643d7` |
| 17 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instance.md) | 122 | `declaration-track:3d2f04bac91e138e45f83d0c402f681c05e67cc5631ac7a1344a0b99d0045f18` |
| 18 | `lemma` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/zero-apply.md) | 134 | `result-track:3496199e82df54300ac830801040c95bf0878d59b8d337d18c6bdd3551494284` |
| 19 | `lemma` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/add-apply.md) | 136 | `result-track:3ab27af9f28cc0eaec6d6037aed40fa9bb2093ab52ef7fc51a6ff04c7e4daef8` |
| 20 | `def` | [_root_.Monotone.stieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/root-monotone-stieltjesfunction.md) | 140 | `declaration-track:dde6029ce5687eb0c5012dedc1931d9bb36030028bb62edf4bb67ce06e99905a` |
| 21 | `theorem` | [_root_.Monotone.stieltjesFunction_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/root-monotone-stieltjesfunction-eq.md) | 159 | `result-track:e4bd77b818a3b2ad14f8f866aeb2ff66dd1514640747a5f1414dc604948050bf` |
| 22 | `theorem` | [countable_leftLim_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/countable-leftlim-ne.md) | 163 | `result-track:21805216f4e06d57421d450e7106c0a08c1da99973b6a2fe8ece5e9187e86993` |
| 23 | `def` | [length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/length.md) | 174 | `declaration-track:b89f35ef11f2d1d3067a56932101b31222547cdb72f7cacb8aad2ec4d027058f` |
| 24 | `theorem` | [length_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/length-empty.md) | 178 | `result-track:e13b0b146b372c3e490ccae920ec11c05686f22af53844ce804d7fbf625b7e52` |
| 25 | `theorem` | [length_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/length-ioc.md) | 182 | `result-track:1d9e4bc1e39d0975f9e9f9fc9cc74a7dc1c7a5784dccad92777c5fe899551084` |
| 26 | `theorem` | [length_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/length-mono.md) | 192 | `result-track:4c34636615ce2babd01365f5db5d243d0415b163feeca7450990f02fd6ea7910` |
| 27 | `def` | [outer](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/outer.md) | 198 | `declaration-track:5b5f03f43421be01253f2fdf321edea8a4f75ae1481770a6a794e98874dcd550` |
| 28 | `theorem` | [outer_le_length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/outer-le-length.md) | 201 | `result-track:5877c2480c3685f3eb1f09f58ae8c531f02f6f7c69c385c818fc1bede8ac5612` |
| 29 | `theorem` | [length_subadditive_Icc_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/length-subadditive-icc-ioo.md) | 208 | `result-track:983188a55196ce9ad1d828f225f22086a3f989dfdcc9315d5accce9535efea78` |
| 30 | `theorem` | [outer_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/outer-ioc.md) | 242 | `result-track:00330ad5ff32528e8acb9b990ffc571756e1a9d7f4e49de1426d89ed67cb68c0` |
| 31 | `theorem` | [measurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measurableset-ioi.md) | 304 | `result-track:4335278825acdb168286b6b90b61cc10e6a351ef8638e10454f7753ece5b6b12` |
| 32 | `theorem` | [outer_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/outer-trim.md) | 323 | `result-track:38c7f1591acc081ef70bd5d4fb8cc7b59ae7dc21843ccf55d3c38c5b8366e280` |
| 33 | `theorem` | [borel_le_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/borel-le-measurable.md) | 348 | `result-track:e043f745ecda3abb0fee474fb969cd9e1640cacccf390dfca2d9a70e5c83d058` |
| 34 | `theorem` | [measure_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ioc.md) | 364 | `result-track:bf2db61b7323dd9039ae2070c3cd625054e97133316e3c922a02bab73072e56c` |
| 35 | `theorem` | [measure_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-singleton.md) | 369 | `result-track:1aaf10cbdaa4770949bb8d9d70c859777fce38379ce97ac5292152e91b5bf79d` |
| 36 | `theorem` | [measure_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-icc.md) | 396 | `result-track:9c3f5ff5d428b2e23ab19d0b3fc039377a7bedea6b558fde16e898d29272309f` |
| 37 | `theorem` | [measure_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ioo.md) | 406 | `result-track:e6adf7e6a601ccdf6a16212d753a2713964edc3da7a3c2769b1628a54f37f0ae` |
| 38 | `theorem` | [measure_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ico.md) | 422 | `result-track:4fca0332b57d2947022055f861f5d03fc23337e4541a970a6c52206b0478e7e9` |
| 39 | `theorem` | [measure_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-iic.md) | 431 | `result-track:9b4d8e5226678977d1c7cfd5da46154e9cfce72cd6a2b90df10539a58c3030d4` |
| 40 | `lemma` | [measure_Iio](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-iio.md) | 437 | `result-track:b919f69142beba461998b7337f9f38c4e7e2d22ab3ae31c267716d7d5e60f880` |
| 41 | `theorem` | [measure_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ici.md) | 443 | `result-track:a5595273a2dde975027f17e22fcb54d52ba9ca240bc73bf367f46be6bdf4baa8` |
| 42 | `lemma` | [measure_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ioi.md) | 454 | `result-track:f3592b120a9bd7fb2e661188bea9f16deaa7e84f4fc423a19deb18fee5f8c994` |
| 43 | `lemma` | [measure_Ioi_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ioi-of-tendsto-attop-attop.md) | 460 | `result-track:2b9b5cc8f15ce364f3da12df684674c048bd12f892ceb37c91c10b026a119528` |
| 44 | `lemma` | [measure_Ici_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-ici-of-tendsto-attop-attop.md) | 467 | `result-track:daabfbb1ce3a3c56695d810a80b98b07d49e4004b7f349e94e22c7ba346f34af` |
| 45 | `lemma` | [measure_Iic_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-iic-of-tendsto-atbot-atbot.md) | 472 | `result-track:4300935bf2a88589fea1b2d37fe3e9da7cb1747fdebe95af0325b99db6ef04ab` |
| 46 | `lemma` | [measure_Iio_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-iio-of-tendsto-atbot-atbot.md) | 479 | `result-track:ae82a4d2937fba2d9d5f61a6d27745f05fa5a95ac5f18df1be1510c0727ea4cd` |
| 47 | `theorem` | [measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-univ.md) | 484 | `result-track:c3e2804624aa8cfc7c2dd3d51628864189d8f606207cf055d76b6acff9601ec3` |
| 48 | `lemma` | [measure_univ_of_tendsto_atTop_atTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-univ-of-tendsto-attop-attop.md) | 490 | `result-track:6a562ee9cf6f6522a1f08f0c1ce3f1d403a23709aed17109a4cffd6b0419fdb2` |
| 49 | `lemma` | [measure_univ_of_tendsto_atBot_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-univ-of-tendsto-atbot-atbot.md) | 495 | `result-track:e0b83092a587ba685ce18da30b9e7e78158699d2d882f916f11fbd6e7f7a9609` |
| 50 | `lemma` | [isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/isfinitemeasure.md) | 500 | `result-track:2ddc7939cfbb9c5c5d43abe3c4717f0c8f9e9b35e72d6b22315fb781897eb341` |
| 51 | `lemma` | [isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/isprobabilitymeasure.md) | 503 | `result-track:9816cc52bf0ddabd44089a4d5f83bb488be98e57b17c9c7b905f1c1e24735872` |
| 52 | `instance` | [instIsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/instislocallyfinitemeasure.md) | 506 | `declaration-track:414ae1ff0b06d7b100cc5d000b76a698bd77ab7443716c36728dfb68098ce83f` |
| 53 | `lemma` | [eq_of_measure_of_tendsto_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/eq-of-measure-of-tendsto-atbot.md) | 509 | `result-track:f498d3e8ec6bb9f5ee8932d532976b4ac9c2849a2220b51284886911350bbc1a` |
| 54 | `lemma` | [eq_of_measure_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/eq-of-measure-of-eq.md) | 521 | `result-track:1464e743278b047862c6e2214f53ae5bbbd7cfd5d2b50340a6b5afc024701146` |
| 55 | `lemma` | [measure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-zero.md) | 544 | `result-track:b87fdc787b4649ef288db94bd8a2e3419a10609b02d2be1c0729ab541e2fa0c8` |
| 56 | `lemma` | [measure_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-const.md) | 548 | `result-track:236565884c135d5ffdc162089e393720508711daeac8b325955702d629c26743` |
| 57 | `lemma` | [measure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-add.md) | 552 | `result-track:86ac2496ca3824402ce00bd29b5588f766229cd416548d6b2628b24953d9b851` |
| 58 | `lemma` | [measure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/StieltjesConst.lean/declarations/measure-smul.md) | 559 | `result-track:b5875c4a306c62b0add75ade14324c781dda920e4d7e1e6626f47a7b822ba499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=439b2a4b230c44245de3dc3674f5a684fde8853f5419539d76b9d521f8dee0a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Stieltjes/Variant45faa1fe6d46e72725df8c9aca2aeb4f2876e7e423502bc2eb6dfe9e8f4bee60.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
