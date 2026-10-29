# Verification target: Stieltjes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "741a735ff1afa6ceabadb9c4775b5a82bcb12840",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `741a735ff1afa6ceabadb9c4775b5a82bcb12840`.

Source path: `GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.BorelSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.LeftRightLim` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [StieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/stieltjesfunction.md) | 38 | `declaration-track:f355460993d876a5163235ae9aafd7dafab0a1d510b5f099071fe6a76902cea5` |
| 2 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/instcoefun.md) | 51 | `declaration-track:c3f63a73682ee79f1c41a9bab7f57b11368200b4d1110f798aaccf31115465e9` |
| 3 | `lemma` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/ext.md) | 57 | `result-track:9a3c7442ed4dcba338f9e40b777f1e7315890f5b97372a5198ff1ef995a8b103` |
| 4 | `theorem` | [mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/mono.md) | 62 | `result-track:7bdb3fd681e13ad60ec2ab0bb5574806b2a4d06bf64770745dedb74ed55774bf` |
| 5 | `theorem` | [right_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/right-continuous.md) | 66 | `result-track:b42d638e48e872a387bbdee9b20b75b3a9665584190adf4030e624c7d31fd6cd` |
| 6 | `theorem` | [rightLim_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/rightlim-eq.md) | 70 | `result-track:ebf45369f7cb5afb22215043786e08f9bc3fb9bd46c4b033afb90b6bd06f18d9` |
| 7 | `theorem` | [iInf_Ioi_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/iinf-ioi-eq.md) | 75 | `result-track:c8a9e1d68df499fd4d5f7f360268b7f84d48fdb127d0adf4e38d3dd3b55b5489` |
| 8 | `theorem` | [iInf_rat_gt_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/iinf-rat-gt-eq.md) | 82 | `result-track:87b0cf06c8abf7a70241758d41ac5620006780fa506e6bc6052bf44cd2821084` |
| 9 | `def` | [id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/id.md) | 93 | `declaration-track:01cb4c609f0e1b009fb833b8f7c7de9c1e30bbb8138641bda64fd197ce50c063` |
| 10 | `theorem` | [id_leftLim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/id-leftlim.md) | 101 | `result-track:aa262bb50570718b7d21cee65f30f9eb35c20d6476017f2134bfeae11fc0fcac` |
| 11 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/instinhabited.md) | 106 | `declaration-track:9fb9203032a90d7d75a6f57f78f199ba906b0cbc6318b7308e9d67293a497348` |
| 12 | `def` | [_root_.Monotone.stieltjesFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/root-monotone-stieltjesfunction.md) | 112 | `declaration-track:a30eb897eac07b5a2c59ff92905ac20bfb6b6068e3c226e5f2b61c7a9063fa9b` |
| 13 | `theorem` | [_root_.Monotone.stieltjesFunction_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/root-monotone-stieltjesfunction-eq.md) | 132 | `result-track:039ee243ad7d2cc1b7860fd4f69e4556c5e46f6a872d6e83d9a8f5bee2135b54` |
| 14 | `theorem` | [countable_leftLim_ne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/countable-leftlim-ne.md) | 137 | `result-track:e0484d6c38713d1c0098dde36dda347c10ea4ca9f03b5a74e742873d9ee3c432` |
| 15 | `def` | [length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/length.md) | 149 | `declaration-track:ab5faedb10588bfd4ac3d52da5e8063381a319aedae3c7a2417c231f6731fa16` |
| 16 | `theorem` | [length_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/length-empty.md) | 154 | `result-track:0c9bb659fa79ed38703dd2bddd7bcefdd287f5d464ff9fd3f103aa871c1d75c5` |
| 17 | `theorem` | [length_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/length-ioc.md) | 159 | `result-track:e027ac5d822533784cd0bb3d6c8b371bb7eabe7747365916a713bcc45e7448ec` |
| 18 | `theorem` | [length_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/length-mono.md) | 170 | `result-track:ce7722d5ee0f9bd23142b96c90728562ede014c78d12dd8a1df380dcc6515af0` |
| 19 | `def` | [outer](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/outer.md) | 177 | `declaration-track:38f7feadc7c6e7d3090dce9c8e30808952a79b26365a89e6ca343cf5d60384bd` |
| 20 | `theorem` | [outer_le_length](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/outer-le-length.md) | 181 | `result-track:6e22ce32af0de2f15d76e787a156b6e94998f5a45f4dad2f0230eb8ac7668382` |
| 21 | `theorem` | [length_subadditive_Icc_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/length-subadditive-icc-ioo.md) | 189 | `result-track:ca25d1b528ad4f4894740da07ba1de7b6c6072be5f82acab961f069cfbcfc0c6` |
| 22 | `theorem` | [outer_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/outer-ioc.md) | 224 | `result-track:19756179e16ccca9070dd942a7481b23c8afa9c92fdf4bac62b9205e1bf90d73` |
| 23 | `theorem` | [measurableSet_Ioi](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measurableset-ioi.md) | 287 | `result-track:31719421c5828910dfb07561e7ac235179bb7abb82094e953074e476d2ccaacb` |
| 24 | `theorem` | [outer_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/outer-trim.md) | 307 | `result-track:6607b67e1e6fb2df0cbdacfe1e5744a7f27edcf7dd8ca4ec1d2a30399233cbab` |
| 25 | `theorem` | [borel_le_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/borel-le-measurable.md) | 333 | `result-track:e0d1480a9c63e35272947504cb2faec33286d04c4b9bc20f5787ff7600e9f373` |
| 26 | `theorem` | [measure_Ioc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-ioc.md) | 352 | `result-track:bdc12956926f57e79a2a15274990bdc82b4f739bb91c5d2894228fe8a18f65ec` |
| 27 | `theorem` | [measure_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-singleton.md) | 358 | `result-track:ff8d13d5b77e1b864073f7fd3199356d2e6604245bb645b43ccc0398bd165b5b` |
| 28 | `theorem` | [measure_Icc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-icc.md) | 385 | `result-track:39688022b8056266b154b75ca7d6cc781668b801f1a53e7a0847e0b6311e01f1` |
| 29 | `theorem` | [measure_Ioo](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-ioo.md) | 396 | `result-track:441dfb6112896e4caef83fe473ed58192d80026b0bbcf1a8f0c68f9169b2b790` |
| 30 | `theorem` | [measure_Ico](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-ico.md) | 413 | `result-track:45a819f9a9f67f315a238cfaa88bd4ece59e5871ca8d9526e0d51099aad6f064` |
| 31 | `theorem` | [measure_Iic](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-iic.md) | 423 | `result-track:d3a31c7cf3d19b9f1bb45e1c61573b97d5f7c3392d8fdb42c15f7042795fcff0` |
| 32 | `theorem` | [measure_Ici](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-ici.md) | 430 | `result-track:9b632c46cd7d67f061091a4eae96fe472aef43c5174d1001686d7021849ec054` |
| 33 | `theorem` | [measure_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/measure-univ.md) | 442 | `result-track:156513c4291480330254d0624964e017abd28c2ad6d58112668962681f28dd5b` |
| 34 | `instance` | [instIsLocallyFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/instislocallyfinitemeasure.md) | 449 | `declaration-track:08dc49a9d24755c57077f536f83a7b2a66fb802e488441f894b36ef946e5ae29` |
| 35 | `lemma` | [eq_of_measure_of_tendsto_atBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/eq-of-measure-of-tendsto-atbot.md) | 453 | `result-track:c116b39d0e10330cef4501d24da1c3e539b4e4bd8a20c372d265c0921d750abb` |
| 36 | `lemma` | [eq_of_measure_of_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/Stieltjes.lean/declarations/eq-of-measure-of-eq.md) | 465 | `result-track:15eaf937ff1d73df6afa3da011b3e5e3da43571bed4a5352a46d010a0f811ca7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6967cdd705fefbd3910fde2fcb64c832372ab5b0eec2cf2aec9e3d03fc80ff55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Stieltjes/Variantebcaf0abb5312b6d2210620be951b37a6340a7f906bfa292e79b33d18ebd2cbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
