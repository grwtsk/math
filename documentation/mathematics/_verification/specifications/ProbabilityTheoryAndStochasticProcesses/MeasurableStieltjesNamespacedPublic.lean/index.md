# Verification target: Measurable Stieltjes Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f98e2baed6cca7c73b9785b97e113d27decf38cf",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f98e2baed6cca7c73b9785b97e113d27decf38cf`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean.json)

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
| 1 | `lemma` | [StieltjesFunction.measurable_measure](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesfunction-measurable-measure.md) | 62 | `result-track:4eaeb69e294061f4d3c092b9e4288701a48da89ee556d118342308fbd7033516` |
| 2 | `structure` | [IsRatStieltjesPoint](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/isratstieltjespoint.md) | 83 | `declaration-track:573645fd9f987771fd9f56fa05346d80cbcb9fc267efc434ee7a466305adbbb5` |
| 3 | `lemma` | [isRatStieltjesPoint_unit_prod_iff](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/isratstieltjespoint-unit-prod-iff.md) | 89 | `result-track:775cb68a7bd747b11e313cef74723ac2812c3b17ab65f0dd1a94235d10c779a6` |
| 4 | `lemma` | [measurableSet_isRatStieltjesPoint](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measurableset-isratstieltjespoint.md) | 95 | `result-track:408f3da2bc78323196b1eff10bac92dc05c3010cd3c600e483a8d1674ce92c68` |
| 5 | `lemma` | [IsRatStieltjesPoint.ite](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/isratstieltjespoint-ite.md) | 123 | `result-track:3e16752a2d5e0e6473523cd53264e33a7df848daa3b73c899869d0e88c739600` |
| 6 | `structure` | [IsMeasurableRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf.md) | 142 | `declaration-track:c8b823540d716bd7b24b646bfca6bbb7f71bc423aa04952ea10ef0aa9ddba855` |
| 7 | `lemma` | [IsMeasurableRatCDF.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-nonneg.md) | 146 | `result-track:0f7e48981efec6531e06e8fc1630e953d1af6011f2227a23e00f360ca220e678` |
| 8 | `lemma` | [IsMeasurableRatCDF.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-le-one.md) | 151 | `result-track:10098498f825fdd5a1f59b9e1d1441d46b6b9c033883e69cd21990aec87fcca0` |
| 9 | `lemma` | [IsMeasurableRatCDF.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-tendsto-attop-one.md) | 156 | `result-track:220caba5843f46beb285764974c6ea701251b99311e23888299916ae152412de` |
| 10 | `lemma` | [IsMeasurableRatCDF.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-tendsto-atbot-zero.md) | 159 | `result-track:e59bb9a2fc3bd824a740ed3e0a76f1765eecca79486777c27ef1bef0353937a4` |
| 11 | `lemma` | [IsMeasurableRatCDF.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-iinf-rat-gt-eq.md) | 162 | `result-track:147f0a00889b070d5eb9e0dda8364c23bd58a24d8b8564e19ad9ad900a2765bc` |
| 12 | `def` | [defaultRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/defaultratcdf.md) | 173 | `declaration-track:e9093db91b1db66b93b73be29b15fdcbb79dffae2d078d29784e22da9a0af322` |
| 13 | `lemma` | [monotone_defaultRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/monotone-defaultratcdf.md) | 175 | `result-track:f92b6a0e9d73b708f0845423c99bd3eb81eee587b5530595a3dcfd1d4e2d49b4` |
| 14 | `lemma` | [defaultRatCDF_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/defaultratcdf-nonneg.md) | 182 | `result-track:80464c65fb12c5ff680acb64401721560ed524998f75c554f1ececc17e8bef17` |
| 15 | `lemma` | [defaultRatCDF_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/defaultratcdf-le-one.md) | 187 | `result-track:da7ca5487355f69266802a2b9f1ccc137addc02ad1e6c50932afcf05e5139c54` |
| 16 | `lemma` | [tendsto_defaultRatCDF_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/tendsto-defaultratcdf-attop.md) | 191 | `result-track:c03b70a216bd9db2d3fc56e88f2e2b3f8a8e47900f1be7342ef5046b59a4fe10` |
| 17 | `lemma` | [tendsto_defaultRatCDF_atBot](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/tendsto-defaultratcdf-atbot.md) | 196 | `result-track:9efcb9ce84c283bc230a389401f23ad88603601629fcc270b357d6191df05fc7` |
| 18 | `lemma` | [iInf_rat_gt_defaultRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/iinf-rat-gt-defaultratcdf.md) | 202 | `result-track:b4aeb29fe9874b7906af39c4f2e7cebfe563b151dd5310a1ea4d1926299045af` |
| 19 | `lemma` | [isRatStieltjesPoint_defaultRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/isratstieltjespoint-defaultratcdf.md) | 227 | `result-track:c4d87f4f068fb3344ee7477c9a841d840018d035e4c9aae9aee09e3011a6814c` |
| 20 | `lemma` | [IsMeasurableRatCDF_defaultRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-defaultratcdf.md) | 234 | `result-track:a05446874e923ab02a7e390004f6e26ba31ba7551954a5633fa64903344b73d5` |
| 21 | `def` | [toRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/toratcdf.md) | 252 | `declaration-track:aae0f2162fa525adc18b18a0a94d80f0b4b98df107a6688b98bab3b1d53b77b5` |
| 22 | `lemma` | [toRatCDF_of_isRatStieltjesPoint](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/toratcdf-of-isratstieltjespoint.md) | 255 | `result-track:4c3988c3443ed9c514a52071a786706d109a9ca301b7e8b6ae27cba1621639fe` |
| 23 | `lemma` | [toRatCDF_unit_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/toratcdf-unit-prod.md) | 259 | `result-track:71b710c9ca08c2f537236159415af40a351715d4ddecddbeac7f7c61fbe7fb18` |
| 24 | `lemma` | [measurable_toRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measurable-toratcdf.md) | 266 | `result-track:a8b0b99b72bb3ffd50c06e699e906e61b1e56ab4cea1db4d6a72e44bf8385574` |
| 25 | `lemma` | [isMeasurableRatCDF_toRatCDF](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-toratcdf.md) | 269 | `result-track:f8136f6868040b4fe35e26637aac6ce5ce28ac27c788e16b6393e3e4039e360d` |
| 26 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_def'](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunctionaux-def.md) | 287 | `result-track:0b8c4fa689c910e8f66d17f834423e5e82702373fe6f73f584a7edb8016a9d95` |
| 27 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_unit_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunctionaux-unit-prod.md) | 292 | `result-track:87a0cb9c7e95322e2fcf4f470d0b5ed4bff8cfc3b9ea0fc8405a1bc57d379cba` |
| 28 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunctionaux-eq.md) | 300 | `result-track:3ac604b8c052eb234a22c6a5b12e54523e33d6fba9c16ec37631015074268682` |
| 29 | `lemma` | [IsMeasurableRatCDF.stieltjesFunctionAux_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunctionaux-nonneg.md) | 310 | `result-track:7271af8b4612082a8ccbf354b36bab4eae65c58901d662377a3878c72b0798bf` |
| 30 | `lemma` | [IsMeasurableRatCDF.monotone_stieltjesFunctionAux](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-monotone-stieltjesfunctionaux.md) | 318 | `result-track:b0ddc24496ae0f136c408d77e45aa140941c0b1f4de81506b8fa9baacc2af181` |
| 31 | `lemma` | [IsMeasurableRatCDF.continuousWithinAt_stieltjesFunctionAux_Ici](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-continuouswithinat-stieltjesfunctionaux-ici.md) | 330 | `result-track:fddd5d33cb2c25b8cfbc56e83de56ffc795f31351df2002690fa75bf5625e5f4` |
| 32 | `def` | [IsMeasurableRatCDF.stieltjesFunction](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunction.md) | 352 | `declaration-track:8ec62f3d9a404240b28e49273ffa65501a3d4a681baf2b88d01c40c433aa4a55` |
| 33 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunction-eq.md) | 357 | `result-track:768c195adddd7676d94f2476bda11066e08377297b4830d9b04800548240bda1` |
| 34 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunction-nonneg.md) | 360 | `result-track:3ad2958006c59b106c0adc5fa21c98d8992376658d1f346c61ec6f5cc51652aa` |
| 35 | `lemma` | [IsMeasurableRatCDF.stieltjesFunction_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stieltjesfunction-le-one.md) | 363 | `result-track:6759cf9fdfd5d4322af6a8258cb24c058fdd79968e1f0b1b56228da8039b0c23` |
| 36 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-tendsto-stieltjesfunction-atbot.md) | 372 | `result-track:1c261325f1921c496213121fbef33085675083e1b6104d1f6b4cbcb563e6b75a` |
| 37 | `lemma` | [IsMeasurableRatCDF.tendsto_stieltjesFunction_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-tendsto-stieltjesfunction-attop.md) | 388 | `result-track:3a3fac0be74246f1eb3e8adc516aff180c80e9b97bf2538e770b27c7a76d5369` |
| 38 | `lemma` | [IsMeasurableRatCDF.measurable_stieltjesFunction](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-measurable-stieltjesfunction.md) | 404 | `result-track:7a920b729966d9e13d58528b8860dd3466b4e00a7876bd0a8500c4688e696808` |
| 39 | `lemma` | [IsMeasurableRatCDF.stronglyMeasurable_stieltjesFunction](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-stronglymeasurable-stieltjesfunction.md) | 414 | `result-track:fe341d04baa0ab9cdff2ec7aa66426b8c548acf3d2eb23ed80fe8465dad539ef` |
| 40 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-measure-stieltjesfunction-iic.md) | 420 | `result-track:8587be0a815e41e2be5796d7b1bb939d61bcb084c3600ce1bed9d3e62180201e` |
| 41 | `lemma` | [IsMeasurableRatCDF.measure_stieltjesFunction_univ](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-measure-stieltjesfunction-univ.md) | 425 | `result-track:b875e88998eea22ddf5869a74a54a34d4946ae98059ced990c2c26d03194c299` |
| 42 | `instance` | [IsMeasurableRatCDF.instIsProbabilityMeasure_stieltjesFunction](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-instisprobabilitymeasure-stieltjesfunction.md) | 431 | `declaration-track:61241037eeff7d5feb7e832b97f0fc9e644981c310c21642cbbe6288b276a9cd` |
| 43 | `lemma` | [IsMeasurableRatCDF.measurable_measure_stieltjesFunction](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/ismeasurableratcdf-measurable-measure-stieltjesfunction.md) | 435 | `result-track:288e479eeed977f88eaa72d666629aa3a09e40c7f4b4e9278eab6d0f12ddc7b9` |
| 44 | `def` | [stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesofmeasurablerat.md) | 451 | `declaration-track:40d0a51e02aea42d29c49379be10dc1aac65336e8875132303d3737ee1d3ae72` |
| 45 | `lemma` | [stieltjesOfMeasurableRat_eq](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesofmeasurablerat-eq.md) | 454 | `result-track:220e8891c71474e4411ea7ffa125dc37d2374bdbf26f56bd8153fd57bec9d44e` |
| 46 | `lemma` | [stieltjesOfMeasurableRat_unit_prod](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesofmeasurablerat-unit-prod.md) | 458 | `result-track:748cd73c70d58da2d066448af94d1a09fb1347773868484d27f87ac42cc9e717` |
| 47 | `lemma` | [stieltjesOfMeasurableRat_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesofmeasurablerat-nonneg.md) | 468 | `result-track:c5e300a189675d637d3a1743015531ee03e70baf399c9280693d0a6c56511510` |
| 48 | `lemma` | [stieltjesOfMeasurableRat_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stieltjesofmeasurablerat-le-one.md) | 471 | `result-track:beda5305611d2c0c77d6589455df7520a183d86382353fc7ae2cde57576e3a34` |
| 49 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atBot](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/tendsto-stieltjesofmeasurablerat-atbot.md) | 474 | `result-track:496568f326093cfecc3d2571adcb190ec38fc90eaa257d212a9a9812a88018df` |
| 50 | `lemma` | [tendsto_stieltjesOfMeasurableRat_atTop](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/tendsto-stieltjesofmeasurablerat-attop.md) | 478 | `result-track:cd3aac3a6b17b16ec9861d8a82c1eb0f7f82d7bd8ae98d826307b6ea7af86d7d` |
| 51 | `lemma` | [measurable_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measurable-stieltjesofmeasurablerat.md) | 482 | `result-track:46facdf378d14b47e3e3830fb025a37e4dda100a7bfe127f62aa6b94900b8391` |
| 52 | `lemma` | [stronglyMeasurable_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/stronglymeasurable-stieltjesofmeasurablerat.md) | 486 | `result-track:d986ceb1526ba3d2a2c2d02e76419435e8312874d183e40dcbecb15a0c9e7e06` |
| 53 | `lemma` | [measure_stieltjesOfMeasurableRat_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measure-stieltjesofmeasurablerat-iic.md) | 492 | `result-track:3613db47a0e851ccca49c5b98d18123df00a41a1646336d3f8fd4501a5a6d051` |
| 54 | `lemma` | [measure_stieltjesOfMeasurableRat_univ](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measure-stieltjesofmeasurablerat-univ.md) | 497 | `result-track:3f5aa48a6f135fbe661fbfc72b6ab079c005caf87e493bf89ee2c335d2b791e2` |
| 55 | `instance` | [instIsProbabilityMeasure_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/instisprobabilitymeasure-stieltjesofmeasurablerat.md) | 501 | `declaration-track:50bd3d4011aeb598ae29c27c76ec21fdd44238aeb779cb809a57fcd028e014cc` |
| 56 | `lemma` | [measurable_measure_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/MeasurableStieltjesNamespacedPublic.lean/declarations/measurable-measure-stieltjesofmeasurablerat.md) | 506 | `result-track:cba15182b35edb770b2d8c5393014d85a74398d582902547a077026de19c8e9f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36b557554a23c0acb478590ebdefb196d84db7c2786e86362d6f4f616d6bd3e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasurableStieltjes/Variant7952fa9ed61579f77e35531497a3ca7e003c0419417d17fb637378793f827719.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
