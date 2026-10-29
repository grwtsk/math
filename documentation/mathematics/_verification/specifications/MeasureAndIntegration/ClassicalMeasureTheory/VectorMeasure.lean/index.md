# Verification target: Vector Measure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694b67575ca73381e86004737d448404da573ca8",
  "lexical_observation_count": 155,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694b67575ca73381e86004737d448404da573ca8`.

Source path: `GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/vectormeasure.md) | 56 | `declaration-track:54fb8b20b76593646f6049dd27d8653a5d3374919ecb9ed758b5ed1bb39d87ba` |
| 2 | `abbrev` | [SignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/signedmeasure.md) | 70 | `declaration-track:3b856ebe6e7e2c001e99964ba63014a5a7eeca59baa1d3e0779eb9c8abc6d255` |
| 3 | `abbrev` | [ComplexMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/complexmeasure.md) | 75 | `declaration-track:af464d74d70bfc96dc8a6ec7774ce04f1446cdccde745ba448b20b4eee31547b` |
| 4 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instcoefun.md) | 89 | `declaration-track:92114f6eb70a4ae3b30ba23223de34bbd99b98727adfb116e0af81ba4c84e262` |
| 5 | `theorem` | [empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/empty.md) | 98 | `result-track:8691dad0cedcda88404b04aa37f7c0c5cfcaa06e1e0bc8b432f7452b4d0cb99d` |
| 6 | `theorem` | [not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/not-measurable.md) | 102 | `result-track:62a0e63406d9c9305b217987581bf37f895f1b13e84b63fea83d98ab1ea754fc` |
| 7 | `theorem` | [m_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/m-iunion.md) | 106 | `result-track:b6c9f00bd7b655f57e79fcf84d0af4994428c17fda376e32e2ab02d468a65cf0` |
| 8 | `theorem` | [of_disjoint_iUnion_nat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-disjoint-iunion-nat.md) | 111 | `result-track:3446d257a4be40da15d0286d5e5032ee0c0c381d067ad6a3a650f6aa846e7375` |
| 9 | `theorem` | [coe_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-injective.md) | 117 | `result-track:2df85b1ad6adb73260f8a1853b15bb448b8b9e470fa51324f500034de93a036e` |
| 10 | `theorem` | [ext_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ext-iff.md) | 123 | `result-track:244876481d912723737020ad02a40e7b1ac1e4bc79dd434ffee74f97b7462156` |
| 11 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ext-iff-source-edition-2.md) | 127 | `result-track:60510f2d6ec5ed2c6eac517c36d6f1b4ba90a9d49b20ff077b14893e63330bf2` |
| 12 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ext.md) | 139 | `result-track:ac010c3dfb09cd9dd496f30209ca882b254dab483d012cfc1ca1353aac5a9ed1` |
| 13 | `theorem` | [hasSum_of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/hassum-of-disjoint-iunion.md) | 145 | `result-track:a59dae1ae521d57564b75eadfd07f84dc77619266cbb160738c9ee1397ed3964` |
| 14 | `theorem` | [of_disjoint_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-disjoint-iunion.md) | 180 | `result-track:b69631940c7121c8a78b060c24cec38f7a3c67928df998101249a5dcb8229526` |
| 15 | `theorem` | [of_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-union.md) | 185 | `result-track:de828be6d7930b6d31bb35ef9d115c7748f9000188171fb6e4cb367605a808d9` |
| 16 | `theorem` | [of_add_of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-add-of-diff.md) | 191 | `result-track:87ceb22f2279dc33d8db208cefb393d59b3d35e5b679b747154d9cb500e95be6` |
| 17 | `theorem` | [of_diff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-diff.md) | 196 | `result-track:7f629518768dc415d65e8ac4dcddc61a31e676e835754b6f9b03c9a511bf6296` |
| 18 | `theorem` | [of_diff_of_diff_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-diff-of-diff-eq-zero.md) | 202 | `result-track:42ae0257df224570ea2ad29fac0d833d2b712bf901208100447b4bfd3121d940` |
| 19 | `theorem` | [of_iUnion_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-iunion-nonneg.md) | 221 | `result-track:258e87cf96e52c217f9b2201a540cdb5fedfc98e11f8ecaccc52f7ab800c9d68` |
| 20 | `theorem` | [of_iUnion_nonpos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-iunion-nonpos.md) | 227 | `result-track:26d80da5867793da78efc3acaa554200b1138880c21dc9365cbf63e580e612a1` |
| 21 | `theorem` | [of_nonneg_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-nonneg-disjoint-union-eq-zero.md) | 233 | `result-track:b673ad6ca7567691f67ac264a1342169a63f64c48b559d71ad4db98169bf768c` |
| 22 | `theorem` | [of_nonpos_disjoint_union_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/of-nonpos-disjoint-union-eq-zero.md) | 240 | `result-track:a16be1d16330ad9a670243f27f77e366a6478cbb6dd39e6ad81f05cdef66c05e` |
| 23 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/smul.md) | 257 | `declaration-track:0ab5dd1e4d04da74f89e528b13d1ae6c505b795cdb7e26f85adcaef64d603a93` |
| 24 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instsmul.md) | 264 | `declaration-track:303190248d38c28c5f6fadff36a542ecb5a6c245347bb54ab4dd0f62bd332f09` |
| 25 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-smul.md) | 269 | `result-track:d95e8054f3244632c997bc742c7023b3de06eb5be1f80aaee2f2461bd66c4a16` |
| 26 | `theorem` | [smul_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/smul-apply.md) | 272 | `result-track:69c1b57d44ce5fad177aab3fe2d776f4d213cb797d92675e73d6d84aac61915c` |
| 27 | `instance` | [instZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instzero.md) | 281 | `declaration-track:20add03d861fba51229f4c3551cf546c80a0785c72ed3d86f5ac8bd128e93384` |
| 28 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instinhabited.md) | 285 | `declaration-track:2ff9a7a2e3c1b176bb9e4401daa8bc42e076133d270e973166ec4be44ebb16af` |
| 29 | `theorem` | [coe_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-zero.md) | 290 | `result-track:dfe6bada43f35474f32c9a1bb12dfbc1c6187778732c7bc8ff0439e8c649adca` |
| 30 | `theorem` | [zero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-apply.md) | 293 | `result-track:9c427306dbc7ae1ea7891442cf2974242da205c6fb31df377c59aefc05abd568` |
| 31 | `def` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/add-source-edition-2.md) | 299 | `declaration-track:fc69027befbaafa77cf6ff6914ad5c117c6ffb418385f3984cddf0508c3184f0` |
| 32 | `instance` | [instAdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instadd.md) | 306 | `declaration-track:aca84fa625f47fe35a50d29460c548b56c7204da8c2ab8774ccc01f5c23b1a23` |
| 33 | `theorem` | [coe_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-add.md) | 311 | `result-track:78c93b81673b7ae16f6b1ae99c0859c2c5f229c89150834df7be65a42a7d77d5` |
| 34 | `theorem` | [add_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/add-apply.md) | 314 | `result-track:7810cc55192e17407cf0c48ad86957a563c86235e022051f3199e48d0589ace3` |
| 35 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instaddcommmonoid.md) | 317 | `declaration-track:fe2d21257454658b99017a5656f3300683e7e7bfcf538dabf9f09e24ecf4344a` |
| 36 | `def` | [coeFnAddMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coefnaddmonoidhom.md) | 323 | `declaration-track:c2a0531cdb41d4495b2f9bc460a08fe353c3f162f09e292d66d72ae2e4ee4be7` |
| 37 | `def` | [neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg.md) | 336 | `declaration-track:21cd7cd18246ae5bdf35cec7fdacedc8e40e2073dac2540a049932eef96350f0` |
| 38 | `instance` | [instNeg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instneg.md) | 343 | `declaration-track:32975dfec1bdc41dbfd57c75c1587f42b235b8acbd0a74546b97f3679c020010` |
| 39 | `theorem` | [coe_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-neg.md) | 348 | `result-track:3a5a99d718c0238b8b11fd59c99701eaf35bdb98212135876e1dd1e650ae22e0` |
| 40 | `theorem` | [neg_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-apply.md) | 351 | `result-track:d52f5e8a37e8f8a4c478275e4a96ba9b82bc40445fa83011ae862c3865633985` |
| 41 | `def` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/sub-source-edition-2.md) | 355 | `declaration-track:9f9fed217ceadbecc573fcf09ef18264b72d8df8abe224aee87418773706d05f` |
| 42 | `instance` | [instSub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instsub.md) | 362 | `declaration-track:6b2c630a16e64097f62cc353574529de5b1847bdf17ff129751f8ad8079004ff` |
| 43 | `theorem` | [coe_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/coe-sub.md) | 367 | `result-track:66b53d3e239e34205695d81741e5ab7125a44dc697c40bfc4f8f6054587ea4b9` |
| 44 | `theorem` | [sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/sub-apply.md) | 370 | `result-track:78dc0e132a5c62ff17dfc55efa3731c40d24c84b234db576ee50fc67934dd910` |
| 45 | `instance` | [instAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instaddcommgroup.md) | 373 | `declaration-track:27dbdc0f4172aff02f104b267d1e275e50889f2d90345a7f2eec41abe2eb0e40` |
| 46 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instdistribmulaction.md) | 386 | `declaration-track:815911ad0c97dc3c13045f271aeac74717c73056c3f666164a74e51db88a757b` |
| 47 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instmodule.md) | 398 | `declaration-track:5c3f81b539fb4357275a20c3504bcc90b3c21248e175486304d2bacc0f8befb3` |
| 48 | `def` | [toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure.md) | 410 | `declaration-track:e8466ecc7c2a2e1529d01821f2aa9baa2f4eedd4c618812225431234f06202f8` |
| 49 | `theorem` | [toSignedMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-apply-measurable.md) | 435 | `result-track:9bba3407455251ad0759483ac97ceb9e81ced9fbe272c7237ff6b5f300aa1fea` |
| 50 | `theorem` | [toSignedMeasure_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-congr.md) | 442 | `result-track:822772c39367b992bbdf81969d8928f9f140d20599ae148217f0fbfde9edb326` |
| 51 | `theorem` | [toSignedMeasure_eq_toSignedMeasure_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-eq-tosignedmeasure-iff.md) | 447 | `result-track:9f542a295cc86df9371ad88a352b431a57478bd916025651bc3457df5656d73a` |
| 52 | `theorem` | [toSignedMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-zero.md) | 459 | `result-track:120d6d4c47c847d9956443432a9b0c3f94e90921b4d3292642d13ab87a707c7b` |
| 53 | `theorem` | [toSignedMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-add.md) | 465 | `result-track:fbd07ace326e9e721d8e128f65b7535f00cc16a1795abd3578d8c28b2c6cb615` |
| 54 | `theorem` | [toSignedMeasure_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-smul.md) | 475 | `result-track:908fd800bb270e2c2a997247a4ffe4cd1c7a8028e36eebf99e14401f12afedfa` |
| 55 | `def` | [toENNRealVectorMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/toennrealvectormeasure.md) | 484 | `declaration-track:ecd0bc99fcb41f67564891e6c95be40c98b9bb97b2f3dfb7caa2454b81bb34a8` |
| 56 | `theorem` | [toENNRealVectorMeasure_apply_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/toennrealvectormeasure-apply-measurable.md) | 495 | `result-track:2e0f77fb456fdddb112717d11627ca0bd628d55460c7d49ecbf862c1e7206a64` |
| 57 | `theorem` | [toENNRealVectorMeasure_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/toennrealvectormeasure-zero.md) | 501 | `result-track:ebbaba06a9bb57815cfcde7d559fe319fc563d7bcdf0915d88cd719c48c5e021` |
| 58 | `theorem` | [toENNRealVectorMeasure_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/toennrealvectormeasure-add.md) | 507 | `result-track:8d2cbf80b384b5907df2ff6c59757b17b021679b7557aedb1fd1f8b167614243` |
| 59 | `theorem` | [toSignedMeasure_sub_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-sub-apply.md) | 514 | `result-track:475b2e768cbce8cc7cbfd2100cb5246870cb21f1cf5e867cdc95683e77df93f3` |
| 60 | `def` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ennrealtomeasure-source-edition-2.md) | 530 | `declaration-track:37f81474db35a5623f3a01c2b21ff6e3cc5d0f39d32f08b963ac3222d8fe71e4` |
| 61 | `theorem` | [ennrealToMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ennrealtomeasure-apply.md) | 534 | `result-track:b23cdd11a9f96781e1f28c097080b38d5af505f5f1d7be7b6750d82fa0c2cf31` |
| 62 | `def` | [equivMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/equivmeasure.md) | 543 | `declaration-track:467c19aeac1e3e1610ced4023d1ed9768756ba60c5dd2682ca53ee624fea0798` |
| 63 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-source-edition-3.md) | 563 | `declaration-track:a5b6545219a6a2066608ebe9667eea609ab5372b72150e379c8a6d687b2cf5e1` |
| 64 | `theorem` | [map_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-not-measurable.md) | 577 | `result-track:f90b949a3465c2c029a0427441f185d874273b7f4cf2b3a1e6393361139fdfa7` |
| 65 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-apply.md) | 581 | `result-track:5bb65183b6d7e5fd041237aa605bae4e820c7d7dbfb1f766758d1f85055d813e` |
| 66 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-id.md) | 588 | `result-track:80425cee0ec15144ac13db9fc80f369ac3228b018c00913995bed3a412a695de` |
| 67 | `theorem` | [map_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-zero.md) | 593 | `result-track:25fa9f7af62c8c783becc656b18be34ab48bf39008dd24f4e3862e0c53fe1c1e` |
| 68 | `def` | [mapRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange.md) | 606 | `declaration-track:1924246aa9236589c19d155044ab438fb6bc836dca5f10e1a92e600ce482b1bf` |
| 69 | `theorem` | [mapRange_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange-apply.md) | 614 | `result-track:5d1192709e031bb12124d9188261b30cc70bfa6c1ba5bc37f744b0729e8e1874` |
| 70 | `theorem` | [mapRange_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange-id.md) | 619 | `result-track:49fae2cd0da0f4170e007e86d332e9f6247b98fa328351f9e06ac841f3dd6f3b` |
| 71 | `theorem` | [mapRange_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange-zero.md) | 625 | `result-track:d4fa00b620e423fef02977146aa08811371052e2bf05248b17f1d70e085bf004` |
| 72 | `theorem` | [mapRange_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange-add.md) | 636 | `result-track:6de11372c94606d40ac88f78a0d0425dd6cd7a790918caed916a83000c4e7288` |
| 73 | `def` | [mapRangeHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprangehom.md) | 644 | `declaration-track:665de9b55b6f6adf5b19e56632c770fd0c1dac757ed18e11fbb8ffbcf3d322a5` |
| 74 | `def` | [mapRangeₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/maprange-source-edition-2.md) | 660 | `declaration-track:876fa82ccedec1622d023f428022aeabcbeda26be0e35d442dd97e04ab2b9887` |
| 75 | `def` | [restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-source-edition-2.md) | 674 | `declaration-track:b217e0c146554c972d81a059c97c03da4748bd7162a628c8c1834a99fbab49fd` |
| 76 | `theorem` | [restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-not-measurable.md) | 689 | `result-track:7baf27fed80f59ab54e5605262842ca94aba0b8c5cfaaaf69a4be79ef3f70c7c` |
| 77 | `theorem` | [restrict_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-apply.md) | 693 | `result-track:c565e385158822bb6c3cd87105a8fe9ffcc80bd9139f7c5173bc48adea17560c` |
| 78 | `theorem` | [restrict_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-eq-self.md) | 699 | `result-track:947842003682f4bea9ac090203ea1411dd34da3b0d4ed84deed4ecba4f098fc2` |
| 79 | `theorem` | [restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-empty.md) | 705 | `result-track:020882552ac813a2a5c8db60f083773bd5a881a461a9d3b9976b79598dcbfb9c` |
| 80 | `theorem` | [restrict_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-univ.md) | 711 | `result-track:51695b5d2c2c9fef6ebe64369f1e94a30d90af1a3502c514292a1dac7573c806` |
| 81 | `theorem` | [restrict_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-zero.md) | 716 | `result-track:f57add7429b5b591f13e0c0b7fd581dc7b6f88aa7aba26347b9fca31c7512ee9` |
| 82 | `theorem` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-add.md) | 728 | `result-track:2737784c1830a684606350ebe0fc7d5c9566bcc932f39dd538f6c148154b1dbb` |
| 83 | `def` | [mapGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/mapgm.md) | 737 | `declaration-track:bc4cdffbbddb863e87f47387651f789353f96c746ac9ba7565be88ba9ac9ea00` |
| 84 | `theorem` | [restrict_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-add.md) | 743 | `result-track:1a65e837fc056eb06b388acb09785945e70239f301a2d65cc9f680939141975d` |
| 85 | `def` | [restrictGm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrictgm.md) | 753 | `declaration-track:89cfe56d550337b28d5743e0f54f72d6e52521f9a28003a7e1a160ea17b62d10` |
| 86 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-smul.md) | 772 | `result-track:fc14b9f6fd16421216a4066a180620834c3a938ec08e757dfada2adee9a12227` |
| 87 | `theorem` | [restrict_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-smul.md) | 783 | `result-track:9139bf529d0650699e74c621ac9f3a675eb6ea7ca8e63eb46ab3ded44848eb13` |
| 88 | `def` | [mapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map.md) | 806 | `declaration-track:46dc3c258da56de2daf4b9aa53391505f1d398b4a5242a758c8ec07f1157fc59` |
| 89 | `def` | [restrictₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict.md) | 814 | `declaration-track:6833800d87c89164536054b28b146ef1323a97f8a90a4d33df03820d17d410ea` |
| 90 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/instpartialorder.md) | 829 | `declaration-track:12ac1185d2446d3cfbf0413107c4bbbcde7ced02f8a301a244acb50553d9a1fa` |
| 91 | `theorem` | [le_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/le-iff-source-edition-2.md) | 837 | `result-track:aa7e82fa80807b48beb383f53bc8362326de47e08476940ae6efc9ca12c673a9` |
| 92 | `theorem` | [le_iff'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/le-iff.md) | 840 | `result-track:83a0c7c28b9b4e435a99c5b800710873c4acd5c45522e6321cb126d0cc2a96e0` |
| 93 | `theorem` | [restrict_le_restrict_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-iff.md) | 861 | `result-track:85b654f4519c639c9581797371c716b2c1188ed1b88fd4f75da14095790e8ac4` |
| 94 | `theorem` | [subset_le_of_restrict_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/subset-le-of-restrict-le-restrict.md) | 869 | `result-track:b55702b5b72b483c30d2cbad5a473a03888f2fb329ab61c003094f060596c4ab` |
| 95 | `theorem` | [restrict_le_restrict_of_subset_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-of-subset-le.md) | 876 | `result-track:dd131c03c5c786ebba1071539f60843f2c0e4ffdc42787cb02c6debea9bdd02f` |
| 96 | `theorem` | [restrict_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-subset.md) | 883 | `result-track:824d069e6361068b99b85d6293e47b60b204adb0d83d56421a7a1161e76215ae` |
| 97 | `theorem` | [le_restrict_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/le-restrict-empty.md) | 889 | `result-track:7bab9506209570f641d48d2205cf594051b0292633f65a53f4c6f913aae260ea` |
| 98 | `theorem` | [le_restrict_univ_iff_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/le-restrict-univ-iff-le.md) | 894 | `result-track:3e3693d32a909fdf7e30fd3dd9f28288be53be7d2c57543a44e4222d3ae12b31` |
| 99 | `theorem` | [neg_le_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-le-neg.md) | 914 | `result-track:352f1750a62bc6f3130378be0f762a7a14fb7eecf9fa2d7bd568b1c565793b41` |
| 100 | `theorem` | [neg_le_neg_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-le-neg-iff.md) | 923 | `result-track:3957245ecffffa8f6014fc2606a72d072e6c061ee58f63fec2d83fcb53dfbb44` |
| 101 | `theorem` | [restrict_le_restrict_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-iunion.md) | 935 | `result-track:eac0e832e96db00629e69d39dc3b188a02f11e32ec1b145ef90075a98b47924c` |
| 102 | `theorem` | [restrict_le_restrict_countable_iUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-countable-iunion.md) | 957 | `result-track:6cc190d4dd60ffa1b4ae80f8ef38928fb940e80ea9ed5ae573c9dc90d8bee395` |
| 103 | `theorem` | [restrict_le_restrict_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-restrict-union.md) | 970 | `result-track:aee566f3ba79d0620812106cd2924a7fef462390778ec1fc38b8df5311d2d768` |
| 104 | `theorem` | [nonneg_of_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/nonneg-of-zero-le-restrict.md) | 986 | `result-track:b7f4ed2175f0f36c96103e50b01871689b8571c17915833d09473cf8f7a84037` |
| 105 | `theorem` | [nonpos_of_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/nonpos-of-restrict-le-zero.md) | 992 | `result-track:4d55cdb8ddc61eb1719ae6162487cd1b23319bf3116f4895d91ed400e1016b25` |
| 106 | `theorem` | [zero_le_restrict_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-le-restrict-not-measurable.md) | 998 | `result-track:aa3524363af03d83de8e778f0917bfdfbaa388a9f1a1440a818e5599b5498811` |
| 107 | `theorem` | [restrict_le_zero_of_not_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-zero-of-not-measurable.md) | 1002 | `result-track:5d975e1b629b3fb0bd6a5edcc52e4085a855035b15a4aa845b97c6ca6286f48d` |
| 108 | `theorem` | [measurable_of_not_zero_le_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/measurable-of-not-zero-le-restrict.md) | 1006 | `result-track:37193cab1496bd0055ffe294c157d2bb71447e36530fe71984c0fbc6bd421825` |
| 109 | `theorem` | [measurable_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/measurable-of-not-restrict-le-zero.md) | 1010 | `result-track:29c489fca9db9887daab6213e572a86a74b923365ec35ccca889d28ef9d8da5a` |
| 110 | `theorem` | [zero_le_restrict_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-le-restrict-subset.md) | 1014 | `result-track:b3d63b8daf02d624df4c8fbb3c775b86ae7f7143fffbfc6929c12500cd04ad19` |
| 111 | `theorem` | [restrict_le_zero_subset](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-le-zero-subset.md) | 1019 | `result-track:76aa2f1149eeff481371d7a1ab5549dc1b1148cd017650f9d4dc0cac83c15f7d` |
| 112 | `theorem` | [exists_pos_measure_of_not_restrict_le_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/exists-pos-measure-of-not-restrict-le-zero.md) | 1032 | `result-track:0b1e5eb5f7f1dbf40e5465fc8f3d1f3e887a4ef4d8a6363194124c24a9dd3029` |
| 113 | `instance` | [covariant_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/covariant-add-le.md) | 1047 | `declaration-track:26793d4fa3eaabdd00657d6e564a5aee763f5ddcbd8e4e1d9a1cd34258f4c89e` |
| 114 | `def` | [AbsolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/absolutelycontinuous.md) | 1063 | `declaration-track:848279d263c4bbc3aa5201f30fbf22f69384a43765cb66e09300b7d8d0584cde` |
| 115 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/mk.md) | 1077 | `result-track:64fb4c2d8e0c571376aa8829f8ddc14f63ded9f966146036b898db714832e6b2` |
| 116 | `theorem` | [eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/eq.md) | 1084 | `result-track:2984865f1c3597e680281fc0a744573ffc8fba03b3afbbff82437082ba60685b` |
| 117 | `theorem` | [refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/refl.md) | 1089 | `result-track:7e236ec3bdb2cddaebadeb88b5c75fe8f4645e3c69775d4f67365c73801f5a8f` |
| 118 | `theorem` | [trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/trans.md) | 1094 | `result-track:ffb9a29d8c7b41a8e81b9f36dbd1a92f70de97b4ff112061b7f7747b001dc1c5` |
| 119 | `theorem` | [zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero.md) | 1099 | `result-track:f043883d83c704dcada1e31bea47794537bc30da92d8b535359abce492637e96` |
| 120 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-left-source-edition-2.md) | 1103 | `result-track:853c5ffa44bc1b8beb3daa310ebcea7241517f9af56c03cd36f0b9d7b557fa27` |
| 121 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-right-source-edition-2.md) | 1109 | `result-track:8bc2a61c225a73044e9da8be49b485ec1ab01c4accc62bb8aa552a365eb9e13b` |
| 122 | `theorem` | [add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/add.md) | 1116 | `result-track:53cc0c32289c0300d597cf04c093ee0d9d5b9bf86becb2bc53e50234cb501f0d` |
| 123 | `theorem` | [sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/sub.md) | 1122 | `result-track:64acf8c1b66256606b8e9fbb76c60c8872b9c24cf8b2fb946a5979ea2385bbf3` |
| 124 | `theorem` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/smul-source-edition-2.md) | 1129 | `result-track:edfd6323234f690aeebb69cb0e490244fb01b983fb34c78daa4f8c863df1d4be` |
| 125 | `theorem` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/map-source-edition-2.md) | 1135 | `result-track:9ba8b557a57d9635563207d3872f110d214c4691c6e1bba4acbdf0af98f1ccb5` |
| 126 | `theorem` | [ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/ennrealtomeasure.md) | 1144 | `result-track:35a3edb42cdea68c9947fbae2c7239b5b92588d7bb32f4981fa091eb196582e6` |
| 127 | `def` | [MutuallySingular](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/mutuallysingular.md) | 1165 | `declaration-track:a76d01fec3f144d6eaaac664eecd399f7c527dd69df0636cf270e1c8131cee22` |
| 128 | `theorem` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/mk-source-edition-2.md) | 1177 | `result-track:f6197d08541aa840658f8d80cc10e4e3e9f288a79916091167421c3649b1f9e9` |
| 129 | `theorem` | [symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/symm.md) | 1186 | `result-track:7510e4a71543291fd306c25356d41c022cdda58cf6f5f73e810ca97766212d0d` |
| 130 | `theorem` | [zero_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-right.md) | 1191 | `result-track:71e26573e385407394512bcad6cd2ff390fbe438fcffd8d690fa195120b68c13` |
| 131 | `theorem` | [zero_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-left.md) | 1196 | `result-track:65ddbb7905fdb1ba63c5f986ebae4fc32e7c049239dc324b4f13bd768b529fd1` |
| 132 | `theorem` | [add_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/add-left.md) | 1200 | `result-track:f879ba765c230ac6be5085c23e0d6a4d2e60b3f039403d71acdb7e08ac85d26d` |
| 133 | `theorem` | [add_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/add-right.md) | 1220 | `result-track:f3e08a1f5deb7b4d2bffcda65d5908d15f893975629591e5aaf52a0c1a406de7` |
| 134 | `theorem` | [smul_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/smul-right.md) | 1224 | `result-track:e48d6d9976220b485afa7aa3070341d86edbc881574fb2600ef1651c321cd8d5` |
| 135 | `theorem` | [smul_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/smul-left.md) | 1230 | `result-track:2e7ab4a508bfa83444d41383c5e3cf230c053b475bf48beee3b30256372effae` |
| 136 | `theorem` | [neg_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-left.md) | 1235 | `result-track:793cf696b87474bb0bb65335aef5ab5077ead7a5843b88d7d5171d5e9668e06b` |
| 137 | `theorem` | [neg_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-right.md) | 1243 | `result-track:699ade145f8f80e8129ee8ed0278c0ac5569701332be34d9703b402d64da1c58` |
| 138 | `theorem` | [neg_left_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-left-iff.md) | 1249 | `result-track:966845869e5b8fde55983037541d0dce71c4fa5ca41f1d2a801f1eb10e5ec815` |
| 139 | `theorem` | [neg_right_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/neg-right-iff.md) | 1255 | `result-track:80613f963f182ed831733039ab5cd4969859f47778cf5a522c112a1746d3264e` |
| 140 | `def` | [trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/trim.md) | 1266 | `declaration-track:f8efca76d12ab779340855b3627a8a40a3d70c0fef79c821ff88d2489b31beaa` |
| 141 | `theorem` | [trim_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/trim-eq-self.md) | 1283 | `result-track:526170b3dce4ae06b889ec2db46767020052e1727b0903f1a89af80deb8db4f6` |
| 142 | `theorem` | [zero_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-trim.md) | 1289 | `result-track:96c1417a5475163265f4bafffe622e0e92745b914abdebb6407630eaae904545` |
| 143 | `theorem` | [trim_measurableSet_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/trim-measurableset-eq.md) | 1294 | `result-track:783287ceaea0f7d40a685b681dcde68d56a6e16fbe19075c2e2e296d71cf62d8` |
| 144 | `theorem` | [restrict_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/restrict-trim.md) | 1299 | `result-track:baf7ef0a160e4410d546aae2c97285c55f97fc8f697209d56a7fb47e2e69c5f8` |
| 145 | `def` | [toMeasureOfZeroLE'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureofzerole.md) | 1319 | `declaration-track:06680962322de9041c008ce1302a0cd5e424bf3498d18393c0a0582da9142430` |
| 146 | `def` | [toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureofzerole-source-edition-2.md) | 1326 | `declaration-track:530c7e48763371a48ef125ec5d3fd2ed9b3b73d454f8dc3ce92d9d900ac683df` |
| 147 | `theorem` | [toMeasureOfZeroLE_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureofzerole-apply.md) | 1349 | `result-track:a00ef46a87f7b5d96a6b78a8205a4e495e922d56df7793522f7441966c159da4` |
| 148 | `def` | [toMeasureOfLEZero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureoflezero.md) | 1358 | `declaration-track:0adaa3bb6182f2dcef0d9c7386e0c2dd877daa0f322dacb9a66d04e9eac6d143` |
| 149 | `theorem` | [toMeasureOfLEZero_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureoflezero-apply.md) | 1363 | `result-track:54fb12377d4e6ec2aa247c7ceaac31d4145c514da06cfe84ac3c5d35d89e748c` |
| 150 | `instance` | [toMeasureOfZeroLE_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureofzerole-finite.md) | 1373 | `declaration-track:89a227175b6e19488b3a8557bf4ff0f1464ee38e8897480843045c7e481caec4` |
| 151 | `instance` | [toMeasureOfLEZero_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureoflezero-finite.md) | 1381 | `declaration-track:91ce10fc430e835df03b2a82cd8995377c5e87a06d03100d82f5736edf45daaf` |
| 152 | `theorem` | [toMeasureOfZeroLE_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureofzerole-tosignedmeasure.md) | 1388 | `result-track:a2757ebf9ab6d7e82c9ce196d62a0118bdf4ef2e7fc013f412bec8453c576b0f` |
| 153 | `theorem` | [toMeasureOfLEZero_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tomeasureoflezero-tosignedmeasure.md) | 1394 | `result-track:c3295767c6906a27b68589f9922ba723c346f8667985a8f06a085b26aa92c2ac` |
| 154 | `theorem` | [zero_le_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/zero-le-tosignedmeasure.md) | 1408 | `result-track:9a1b1a728903f9cebc7fa2e70e96f9eb6a41bb372dde2f5e120a3da12a76d0e3` |
| 155 | `theorem` | [toSignedMeasure_toMeasureOfZeroLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VectorMeasure.lean/declarations/tosignedmeasure-tomeasureofzerole.md) | 1415 | `result-track:76474fced29dbb9917f4580fc80079c4aee6d1e954da445c7aa041d584a279a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c5697ce215e20e52118f145e635593b5d4f78918c9f14ef3d06ba090442e2a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/VectorMeasure/Variant580100f6f0205ffe3d1adac1e75d5d1fcadd37155a603c037d173a685bc42f5e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
