# Verification target: Probability Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f50e853a720d185d4e2d5da32b30e6cc1d752bb",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f50e853a720d185d4e2d5da32b30e6cc1d752bb`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/probabilitymeasure.md) | 103 | `declaration-track:d2334bc11c9754ac8687db601079326fd8711ab7ba1cf6923ca6eb457a56a312` |
| 2 | `def` | [Measure.toProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/measure-toprobabilitymeasure.md) | 109 | `declaration-track:0702fc80fd10c819c86b6a976ba16133afb4bb61e29156a8df87defa705683db` |
| 3 | `theorem` | [Measure.toProbabilityMeasure_inj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/measure-toprobabilitymeasure-inj.md) | 112 | `result-track:20e2dacecb93cd600117a416b5cf37497242ef0324acef2f00e372a89e1f681d` |
| 4 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instance-source-edition-5.md) | 119 | `declaration-track:6b4a238769c885ea61d40c73beb3af52d8fe62a99b52de19717bc48280864adb` |
| 5 | `def` | [toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tomeasure.md) | 124 | `declaration-track:6657dcf9a2954f4b42f66ac7b68de19aabd8c539f9060f452b25880c68b7055b` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instance-source-edition-4.md) | 127 | `declaration-track:5cdf27be20acab0f19230bd8a85edd3894d6e520745f4552814305d3ec58a215` |
| 7 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instance.md) | 129 | `declaration-track:2591d4d1f927e8385d081787347e2c0b5b3544e5a62391e7e4fd0b5a75660739` |
| 8 | `lemma` | [coe_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coe-mk.md) | 132 | `result-track:335c69c319e3486319856e1b32e6ccf8fc67350885983bc1d1a7750c977c19a6` |
| 9 | `theorem` | [val_eq_to_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/val-eq-to-measure.md) | 135 | `result-track:778ff1cd9f8c422a4e75d67f98aa2c831d210ced316e70b62b8a7d3751a9998f` |
| 10 | `theorem` | [_root_.MeasureTheory.Measure.coe_toProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/root-measuretheory-measure-coe-toprobabilitymeasure.md) | 138 | `result-track:14d3502689227c3b0f3642b778b06e3e11f29f7d954a4025311403049b572d4a` |
| 11 | `theorem` | [toProbabilityMeasure_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/toprobabilitymeasure-coe.md) | 143 | `result-track:08214fdad49faabb3999dad8f87a5f2a733f3af0e74c4aae855caec434e1f41a` |
| 12 | `theorem` | [toMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tomeasure-injective.md) | 146 | `result-track:65df8d3fc29188051ee53e83727e2f8965f3142647edee296b783afa24419d98` |
| 13 | `instance` | [instFunLike](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instfunlike.md) | 150 | `declaration-track:d4bf806baef83e3291aa65f449e51cff77faec7ea53bbcb121cf3949be5c1bd7` |
| 14 | `lemma` | [coeFn_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-def.md) | 155 | `result-track:b69a34a35a4ca7dce84d86a4a338d765de0895fa2ef3d619cd0639397c5c4ae8` |
| 15 | `lemma` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-mk.md) | 157 | `result-track:4b13117f4ee5a1df791319996bf0df74c69c2211f849371869a1bd762915bf01` |
| 16 | `lemma` | [mk_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/mk-apply.md) | 161 | `result-track:647b75a82178fa0ba64d0946a430c5987f9457147c06805b403ca1e8e58f9ed0` |
| 17 | `theorem` | [coeFn_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-univ.md) | 165 | `result-track:0411495d4558232d6e0aeee1cc3453fc5f5d06bcb00c8ae8b393345647116748` |
| 18 | `theorem` | [coeFn_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-empty.md) | 169 | `result-track:142a3f7a703de83cb3da84bb4821cf9da0ebcfc5ef083ae20efc447b3594cf6f` |
| 19 | `theorem` | [coeFn_univ_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-univ-ne-zero.md) | 171 | `result-track:ae42d530dd5909db419ddbdfc16cbe4a41308755c4ae833c17036c45dfeb8e01` |
| 20 | `theorem` | [measureReal_eq_coe_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/measurereal-eq-coe-coefn.md) | 174 | `result-track:17da348db56026c22fac3a9294ace978e11a8eec9452d016772b5c888ebe4d61` |
| 21 | `theorem` | [toNNReal_measureReal_eq_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tonnreal-measurereal-eq-coefn.md) | 178 | `result-track:49edd8ef52e3bd5b45c5086456e4e8776b4c8fc0308b24e24783a791e0cbfc48` |
| 22 | `def` | [toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure.md) | 183 | `declaration-track:967f6a1a3514f8cf41b2d8d9d653ebff81b41246b3647ffa50709ac0b3a425f2` |
| 23 | `lemma` | [coeFn_toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-tofinitemeasure.md) | 185 | `result-track:72f914a2f8ac4e2a4bdf8f40b71abad3f94bf19715c17f6ca2a52d5675a9d5d2` |
| 24 | `lemma` | [toFiniteMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure-apply.md) | 186 | `result-track:1c138f0ca2800ac044c48a6a1d73f2c3f3a97ad47187270a8581ce40d7a80694` |
| 25 | `theorem` | [toMeasure_comp_toFiniteMeasure_eq_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tomeasure-comp-tofinitemeasure-eq-tomeasure.md) | 190 | `result-track:c1dca3225d476d8caa358705d459161304c31fd6831c507b770c66c81d6b47ba` |
| 26 | `theorem` | [coeFn_comp_toFiniteMeasure_eq_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coefn-comp-tofinitemeasure-eq-coefn.md) | 194 | `result-track:53a77091b95dd418b793a49060d629cd494d6398003ab4a3979df8207d69734a` |
| 27 | `theorem` | [toFiniteMeasure_apply_eq_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure-apply-eq-apply.md) | 198 | `result-track:71dfc769ab9382de31c522ac5fe93a3a389f54ecede283c51d63d1a3cff848ce` |
| 28 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 202 | `result-track:8e4429a8d9ffa1378354c90608cc77b3f4b72254b5f80bf0a77e0e3dd4b9ad17` |
| 29 | `theorem` | [null_iff_toMeasure_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/null-iff-tomeasure-null.md) | 208 | `result-track:2efd805d1dd2555b9180a2f9745e5569b507520cfa4137e27f2b95710e3e0426` |
| 30 | `theorem` | [apply_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/apply-mono.md) | 214 | `result-track:ee9b01a2c58212984e5fe1b49422dda008d3f9f4e84c142eae9244b9c9b97cdf` |
| 31 | `theorem` | [apply_union_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/apply-union-le.md) | 218 | `result-track:448bea80000cc58fff6167640967649f7fc7e690792ff3dbf5edacf1518be038` |
| 32 | `lemma` | [tendsto_measure_iUnion_accumulate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-measure-iunion-accumulate.md) | 224 | `result-track:b56482261865eaa3d259185536a7fbb223d4591dbd11d110ffd2fabf4c24d6c5` |
| 33 | `theorem` | [apply_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/apply-le-one.md) | 230 | `result-track:6b3d9d250ab9ef6920faf35f450ffea08586d230b1e69ad4c73ff9e72e5d154d` |
| 34 | `theorem` | [nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/nonempty.md) | 233 | `result-track:0666c5eb52180275da0c4c5af14377cf0726807ffcc4f638d043e5e5c390914a` |
| 35 | `theorem` | [eq_of_forall_toMeasure_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/eq-of-forall-tomeasure-apply-eq.md) | 237 | `result-track:4a7abaed2fff19c91fba1a7b32f1691dea057e2b9e620c228a1f1ffbd3166d06` |
| 36 | `theorem` | [eq_of_forall_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/eq-of-forall-apply-eq.md) | 243 | `result-track:b93b37ed14100b6b5c1c66d2c1ffc4c752a433ff0e2edb77a3e2124016a04c74` |
| 37 | `theorem` | [mass_toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/mass-tofinitemeasure.md) | 249 | `result-track:5535ee6ae045001506ef195cb7812b5d4d376991195730e340cb5ee926930fe5` |
| 38 | `lemma` | [range_toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/range-tofinitemeasure.md) | 253 | `result-track:200c59999ee91a9b6d026128f6d5f60b2934df7eff7d566bdee233cb0d8469a2` |
| 39 | `theorem` | [toFiniteMeasure_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure-nonzero.md) | 262 | `result-track:641db1afff800d10b19334d826d540362c2c3adef3432047ff7e751969e5b40e` |
| 40 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instance-source-edition-3.md) | 266 | `declaration-track:477bb9ebedcd1c47555eba00d2aa9e4bf1ab9d39410dc562687097f91c04b751` |
| 41 | `lemma` | [measurableSet_isProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/measurableset-isprobabilitymeasure.md) | 269 | `result-track:9bb93e434789e3982606556b7d948cc1cf611c387dc25e868f47f890811d6a94` |
| 42 | `theorem` | [measurable_fun_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/measurable-fun-prod.md) | 280 | `result-track:87fc1ba7e48bfc437b583d2b668dacaba6787811b5b0665ab11982fe2a559aa7` |
| 43 | `lemma` | [apply_iUnion_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/apply-iunion-le.md) | 292 | `result-track:1a8247f7407b8abf733911a107e87a74a4f9e8fa4651f2f45b3e51d852cb2411` |
| 44 | `theorem` | [testAgainstNN_lipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/testagainstnn-lipschitz.md) | 301 | `result-track:f8b3cd12509e81df7505942835f724135b2d415e16e82c22045848b7cf704582` |
| 45 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/instance-source-edition-2.md) | 308 | `declaration-track:2ba4fde5931e484831404c4f49680d50d3d6e45fb9b48b03c7fef29a44036771` |
| 46 | `theorem` | [toFiniteMeasure_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure-continuous.md) | 311 | `result-track:bbf6b0a661b22bc8fb00240a86fddec80ca37641cf042883d525995b567e51e3` |
| 47 | `def` | [toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/toweakdualbcnn.md) | 317 | `declaration-track:ae203ab9f6738ade7f46c978f6bec52f18890e87db836d4051642b8617e68749` |
| 48 | `theorem` | [coe_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/coe-toweakdualbcnn.md) | 321 | `result-track:c6a818851b620e69b8aaae185b3813c5fd0c25eea51f316c6890bffee4429a61` |
| 49 | `theorem` | [toWeakDualBCNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/toweakdualbcnn-apply.md) | 325 | `result-track:34145b8288644a3c252d4876ab41f15f223856b606b7fe290dea01d297f3cf43` |
| 50 | `theorem` | [toWeakDualBCNN_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/toweakdualbcnn-continuous.md) | 328 | `result-track:772d0007f9011d578bd33f9f1aa40c77507a0d5cfb518f4de6be48e8586d01f2` |
| 51 | `theorem` | [continuous_testAgainstNN_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-testagainstnn-eval.md) | 333 | `result-track:dd44b45503a6d9df4a16176eb394d3400bd8ecd93b917947804129b60c27859d` |
| 52 | `theorem` | [toFiniteMeasure_isEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tofinitemeasure-isembedding.md) | 338 | `result-track:7338ed07c3104f52c3988b575991ddc5bc5542e251b6af76458bef8c1b7c8c60` |
| 53 | `instance` | [R1Space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/r1space.md) | 344 | `declaration-track:e7d297741e06986efd0caf6a7227151231f169d3297391696825f1a0f89b920e` |
| 54 | `theorem` | [tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-nhds-iff-tofinitemeasure-tendsto-nhds.md) | 346 | `result-track:bac6fad4ee7b6b5b71bec1859e7cfc70babac093e99b25ab5cc6f2f11ceaf9bc` |
| 55 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-iff-forall-lintegral-tendsto.md) | 354 | `result-track:0b4f01fd319d0bf10ca1e9df86fc7b22e6eaf3e18dd0aae54e2877c8a24c131a` |
| 56 | `theorem` | [tendsto_iff_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-iff-forall-integral-tendsto.md) | 365 | `result-track:5f0c4952723be9a703ee1f0a1e56565e0b8e400036e945aebbc05b8f48dbbb81` |
| 57 | `theorem` | [tendsto_iff_forall_integral_rclike_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-iff-forall-integral-rclike-tendsto.md) | 373 | `result-track:6335e755d6736a3c675bb6ef31b16cd69ff47b94d59795d8dd864105a6f964a6` |
| 58 | `lemma` | [continuous_iff_forall_continuous_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-iff-forall-continuous-lintegral.md) | 385 | `result-track:2771c0df71529168b8689ee067d64efe2c80bf78bfb525575b9e7736c8286276` |
| 59 | `lemma` | [continuous_iff_forall_continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-iff-forall-continuous-integral.md) | 392 | `result-track:b5ed256e17cdbdb65cff958056a031f234e09eed4466ec5f1b1d66441302fc00` |
| 60 | `lemma` | [continuous_lintegral_boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-lintegral-boundedcontinuousfunction.md) | 397 | `result-track:420b92747bf4bd64d60d8085018045355479fcc141070f6b17e756b9c1e81cf4` |
| 61 | `lemma` | [continuous_integral_boundedContinuousFunction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-integral-boundedcontinuousfunction.md) | 401 | `result-track:70e3775251545ab4140db2dd3170a3ca557af17c17e214490ba12279bcc9e271` |
| 62 | `lemma` | [continuous_iff_forall_continuousMap_continuous_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-iff-forall-continuousmap-continuous-lintegral.md) | 409 | `result-track:430457be2806d3047ae0dc1e5d2bbb055e81347e9d003824dbe085f8e2b1ae1e` |
| 63 | `lemma` | [continuous_iff_forall_continuousMap_continuous_integral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-iff-forall-continuousmap-continuous-integral.md) | 416 | `result-track:1bce75b8a6fe712c7a76a424117d727d8dedf19b68fea779f2984c8025ebbc61` |
| 64 | `lemma` | [continuous_lintegral_continuousMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-lintegral-continuousmap.md) | 423 | `result-track:8d9b68fb59fb239c7887be12838836c7231a81d37fad1aa751df58c17af91efc` |
| 65 | `lemma` | [continuous_integral_continuousMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-integral-continuousmap.md) | 427 | `result-track:ca03d6637d08c457e1e5cbce43e23d7c0a87871a1c28c728b9e208db7bba2ff3` |
| 66 | `instance` | [t2Space](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/t2space.md) | 441 | `declaration-track:00159b587299f2e0f53d4a63c18ec86ea20aab4c68687a82d8c775ec623775ea` |
| 67 | `def` | [normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/normalize.md) | 468 | `declaration-track:0a6c45934430be9c945ed261bd3133c62ebb5b61062b0d170da1701f78f3d6f9` |
| 68 | `theorem` | [self_eq_mass_mul_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/self-eq-mass-mul-normalize.md) | 481 | `result-track:1230804eb15eafabfd6dab2c59c358ba26283ae07845a80c4a91eedb0292a664` |
| 69 | `theorem` | [self_eq_mass_smul_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/self-eq-mass-smul-normalize.md) | 488 | `result-track:b7ef4644ad22d4e8af44077525d089277371896e09fb4520b822fdefb0c6acea` |
| 70 | `theorem` | [normalize_eq_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/normalize-eq-of-nonzero.md) | 494 | `result-track:d6ebf5b4454ba5d79b21a07265316f7f3ba4b54e587b2f3dcce164a93831ea91` |
| 71 | `theorem` | [normalize_eq_inv_mass_smul_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/normalize-eq-inv-mass-smul-of-nonzero.md) | 498 | `result-track:e8e987b4ad522cb4d4a3c86946e4e8ae9f51d61cafbf32c5cf8ba8dc36536cdd` |
| 72 | `theorem` | [toMeasure_normalize_eq_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tomeasure-normalize-eq-of-nonzero.md) | 505 | `result-track:c125ce5db7afb19b16ef335d163e50e6e15e245c8f1d256ecef605972ff68652` |
| 73 | `theorem` | [_root_.ProbabilityMeasure.toFiniteMeasure_normalize_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/root-probabilitymeasure-tofinitemeasure-normalize-eq-self.md) | 513 | `result-track:8f9ddaa9f8a174f4175c8edff7713e0ba7f1fe1e9e20a480cdd3c751a61d1d80` |
| 74 | `theorem` | [average_eq_integral_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/average-eq-integral-normalize.md) | 522 | `result-track:baf8a5977f10b7e362727048606600b0f09a3f06e207396ddaa8fe0d6c303a50` |
| 75 | `theorem` | [testAgainstNN_eq_mass_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/testagainstnn-eq-mass-mul.md) | 531 | `result-track:4767d17adcfa4ce9b558e9f8c4e706c41c60985ee09c90bf138a83c2d17cf1e0` |
| 76 | `theorem` | [normalize_testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/normalize-testagainstnn.md) | 536 | `result-track:2140b8a13279d7a3b81fe8e96af28bb6e22ef3dfd8e5c120c30ff0ad458e0a20` |
| 77 | `theorem` | [tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 543 | `result-track:15a0a79aae1ac6bdf4cad4ed6dacef29e19eb90709c7114eb227dac88c156af7` |
| 78 | `theorem` | [tendsto_normalize_testAgainstNN_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-normalize-testagainstnn-of-tendsto.md) | 560 | `result-track:9638bebfca3dcd5101bf0fccb14dde6b85b2266fbb3d5966ad2e9b62d1a73701` |
| 79 | `theorem` | [tendsto_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 587 | `result-track:ae60651ed5539450829004b98ec1dcb110b117871f0f8e82464772ee84c9ff11` |
| 80 | `theorem` | [tendsto_normalize_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-normalize-of-tendsto.md) | 596 | `result-track:e0c9384bc4e54073d4fb8ce09d6327237e8e722ad76baf835e1dca4e616904d5` |
| 81 | `theorem` | [tendsto_normalize_iff_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-normalize-iff-tendsto.md) | 605 | `result-track:e10c67c58532905b99e1ee33c450e369cf03f358fae6282b817263278789fa66` |
| 82 | `def` | [map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/map.md) | 627 | `declaration-track:57c4afb99972580f610e0bb9ca3a577ac72da5f9e4276ecd094d6a06233202e2` |
| 83 | `lemma` | [toMeasure_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tomeasure-map.md) | 631 | `result-track:a71864f7115b140aa7a91641c44e9e10808501989de828a30fd620370a739b7b` |
| 84 | `lemma` | [map_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/map-apply.md) | 636 | `result-track:322859e7d31ca7a4080c9bbe895ea2f5932ec13472b980481ba19e60de2da0fa` |
| 85 | `lemma` | [map_apply_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/map-apply-of-aemeasurable.md) | 641 | `result-track:a98766fec0d09bff95ac1f656e6f01dce9faa9c6da33484bd0a2a93378dce39c` |
| 86 | `lemma` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/map-apply-source-edition-2.md) | 647 | `result-track:48f30e6c6460ad9818cd169dbdbd3f8e420188d947a86cb13a2454b9fcf4b5ab` |
| 87 | `lemma` | [tendsto_map_of_tendsto_of_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/tendsto-map-of-tendsto-of-continuous.md) | 658 | `result-track:5e7e2e7897cda8f5afed9f564a2faf97ff518a735ca29759ff23e4feba83b50c` |
| 88 | `lemma` | [continuous_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/continuous-map.md) | 672 | `result-track:d03128405e8a576a82b7b61df83766fd5c382674542d3e01f407a653c23f273c` |
| 89 | `theorem` | [isProbabilityMeasure_join](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/isprobabilitymeasure-join.md) | 683 | `result-track:455e108df99c65ba4d6f08bc5533c1d60bc6d1a7b21530d911e7ae8d653880f1` |
| 90 | `theorem` | [isProbabilityMeasure_bind](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasurePublic.lean/declarations/isprobabilitymeasure-bind.md) | 690 | `result-track:7fa48d871c51c9ebf466982d7514d0a53f8786d2e8258faf9fbf90ff89a2a717` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=73e6e2ef8adc2df687f7a0ba541e36ea105839d3e072290b2aff4725e0c9cb6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
