# Verification target: Root Operator Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1698e38e0c95e188893914c51ecb49291de86ac",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1698e38e0c95e188893914c51ecb49291de86ac`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullh.md) | 25 | `declaration-track:122b9697b7292105a797f8b773463f1f480145514ffce9ae4de721f444b66752` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullshift.md) | 27 | `declaration-track:099effdff2dcccacc5e514e87a42bc7717c37658b22d9eaf07dd5a8d269ae126` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullshift-ae.md) | 30 | `result-track:2107e641eaa693c9cff32e0577922c27f83aa5455a6008f49b9d70ad31f17d86` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullshift-continuous.md) | 34 | `result-track:e461a0599305cf217504050b4b2229228d91e2cc69bf54f6f89cfd15e27553bb` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/weighted-shift-integrable.md) | 42 | `result-track:3c7ac2ce9e1a3456a5f433d95d15712baa0d156ed4c78c6e2fe645584fe85cd2` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/vector.md) | 51 | `declaration-track:7119b3d46e323e8d5a466a4efbfaae3af3e6c5071d5301d05ba361dba28d5f54` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/vector-norm-le.md) | 53 | `result-track:c5a56bada8878eee2118dc678179b3ed4fb5cd29a7882d76d58bfd315672ce6a` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/vector-add.md) | 60 | `result-track:a75f9ae397646769331bf5b0a4c904cae230db01e3916ddc0c91614e48182133` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/vector-smul.md) | 65 | `result-track:177bb1ce0d3b5e6007db44064ce5feb6f399664298f1aaad73ff520d18c787e5` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/linearmap.md) | 69 | `declaration-track:249abdab3b6a55a5a790d1e3b22ff511e4bbfbdfacfad1535786c89ddb1765f3` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullconvolution.md) | 74 | `declaration-track:7e282ad73a9b71a5f387b0cc1a0517449264b48666a0274226fa706594d5da16` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullconvolution-apply.md) | 77 | `result-track:240a3d1b3918d9a5c47c16a0b46c118a6afd77c7e8382e44b0e3211e3270510b` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullconvolution-norm-le.md) | 80 | `result-track:c4f8e25c608d8afe56d607749a4467ccb7b7244dcea63958c3426d222e2dc161` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullconvolution-sub-kernel.md) | 84 | `result-track:e76fb70b75d1aa497ef95ee47c0a572c8f2e81fd203341b2dfe125a06ee5ace6` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullconvolution-norm-sub-le.md) | 92 | `result-track:0ac5df769d571068193b8b95b12638a2ed257cb5dffdc20fc4bc7fcceb7e77f8` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/actualfull.md) | 97 | `declaration-track:b95f1e5e6ef0bfbc29539a67b218b82e43b1f9a4ac014383e48a90dd84c6331d` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/actualfull-apply.md) | 99 | `result-track:a0122d5b72d62d7f1a4c85be3f604124045513add8044371c878eb965cf17e0d` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/actualfull-norm-le.md) | 102 | `result-track:0fb46d949f798de6dbd0086ca9abdb4c466ca9ec6d8a0767889cdf424145f19b` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/fullh-source-edition-2.md) | 120 | `declaration-track:e1afcc5dd075cd7aa1b02741636d0494e7c184dfbaea10b1dc6180f81de6cc41` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionfunction.md) | 122 | `declaration-track:5c4c9d0dcd8617be95cc32769d5698d58d8a0a8b5c855e9d9deac0b8b5a92f6d` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 124 | `result-track:b271177d6c22ba401d3e0a808b8e9fd11b76e93fdc6c5ab1ff5e35d30ae9fd9b` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionvector.md) | 128 | `declaration-track:5c8be718dee3ec7bf501fa2e234036702a4330228fbccccf85eff738ca9c8cf5` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionvector-ae.md) | 131 | `result-track:885d588e36a4e9bf254f685df094ee66b2217df0f42394013590cd42c60d55fe` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionvector-norm.md) | 135 | `result-track:87573d9a65670f39a4e8c86f741eb77a070e86be8c4420ecf29793456203fda3` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionvector-add.md) | 140 | `result-track:54b2a411e77612025e2636eac1cc35b789aa6a694f89a8618d13c2b4c85605f1` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextensionvector-smul.md) | 152 | `result-track:c990db4f66184954ca2637d81a2bac627ee76a1d0bc7b164577bbc2860e19ab5` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextension.md) | 165 | `declaration-track:78de507c5c769e4357ff936021166f1054d8219ffe33b05045e6b40a14385961` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextension-ae.md) | 171 | `result-track:107d0a711dd8b3db3c238da6781825e65342cd8264db7507f43ef64d358b1db4` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextension-norm.md) | 175 | `result-track:f1f284ff51011bfb70b851f2c550b25297362083610e593190746b993edb8970` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 178 | `result-track:145ae0fa15ed2e2fa9d1453ec719eb0ea32ac289fa63c0e4f05a9c30b1b952b3` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 184 | `result-track:d8948c2a066a524b1744acf5ba0d8a3fc492ec8e5f605fabfc45d79ce66b7834` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction.md) | 193 | `declaration-track:e760e08f7342d628f61b4e1010e1586660246114afc09f1023ca6c6110c3291a` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction-ae.md) | 195 | `result-track:a941753d5bb94b31914a4368a0c35f960acc8996ad82af0ed7076019b6e1866e` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction-norm-le.md) | 198 | `result-track:bc9a2c65b893380a1db52f9849a2d8057808a09a655d354f40a28c5ed320d1e9` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction-opnorm-le.md) | 201 | `result-track:3d94f389a940e328e497bf5d28abc0d8b130edb6fa67b81a53d4ceb140af6932` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction-zeroextension.md) | 206 | `result-track:9638720267000000aa28ec96da33839b2db7d8b70bbd39003b93afa69a670950` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 209 | `result-track:848b54062501271c8a27b811f4cac361158b0a1074174a1302197e5891ef4eee` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution.md) | 226 | `declaration-track:ad0d508b51ba7d4fd9244cd8ba125ccb424663ba786607bd2ae37c321eec7d09` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution-apply.md) | 229 | `result-track:f1250880d10eded4dd608e2963dad3daf3aa1eaa1930486a638ad41272fe5cd4` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 233 | `result-track:1cd0c6bddac8649d76e5480f8222cf476c71e8c7b673b521a6e71e77519d7623` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution-norm-le.md) | 240 | `result-track:d7dea9c58c81004eb1f180f31b0f82e3528982ff8e235c9583b7747fd47ff863` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 245 | `result-track:eb52fad77768e700e29761c785c52635a3833d4f5041cf4799d189f5b10e9cbd` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 254 | `result-track:2684815ebae23b43db332221af5fd32531697682194c03ad8c0ae81f8b79e954` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceoperator.md) | 259 | `declaration-track:a71c26de1b0d979b380b3df4efc6b0ed1224c3b7ee62d7ff16515c83c256d61e` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceoperator-apply.md) | 261 | `result-track:d1800013fda1dd68f856b5b2b571c73d7dce2d7cbee3b183b5a5bbb81a821fea` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 265 | `result-track:18645876447e577bb972dc606be1ccda5e4ef9cf1bc055d3e9f72359ea83b383` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceoperator-norm-le.md) | 269 | `result-track:834f20338ba73c4c935b1bdce0fb1f66aa3a3c670afe5fcf6639bbe2ad3df611` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy.md) | 273 | `declaration-track:cf08bbda44a38c5bafafb3d0f11afaab7b3c29fa3a0bd53ec8b4645be9aae8a2` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-apply.md) | 275 | `result-track:cb6deeed678734bbd36050df29f49eec7f6fc17d3c2667415e723f1bc714e470` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-ispositive.md) | 278 | `result-track:4c42e960e901373da82efc00e1f63fd8d1083cfa1d4d53b4775ac1006c506324` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 281 | `result-track:5b82a266d65bb87bbe09f574e47fc5adc04fd03a1e6b7afc5889436eb6769273` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-inner.md) | 284 | `result-track:036ae0571c3961123e15771dd29afd7e8ac403d4f3ca55a26b3c22a1c74768bc` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-re-inner.md) | 289 | `result-track:320aa5f123cd98a6cfe407d951a8de8245bdc3f0ed4cef7695742ffda77da6c8` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-kernel.md) | 294 | `result-track:c06e0b5a1c30223974d10708840555c0265ed82d06d280127f4bea877377ea70` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/sourceenergy-norm.md) | 297 | `result-track:1e328aa6cc869620a890834fecd14757e49f4df043c6f3fc896ce209b1479149` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedkernel.md) | 313 | `declaration-track:91eeb720fd1d884b61eb85899cddea44bffbdb674df11ba96a8c78394288044b` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedkernel-integrable.md) | 315 | `result-track:7eec9a6e5fba5727b4a917795c8b8761408e9f174a62b2c147d99267492fec57` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedkernel-memlp.md) | 318 | `result-track:133ddf51542abfde5999824e2bfc960c9d63c3a7c10a54fcf3aa88a4355692c1` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/kernel-sub-truncated.md) | 321 | `result-track:56d0a49c7514345d8eb56f95e9ea9177792d432ee058a74dab9fa9197319446d` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/norm-kernel-sub-truncated-integral.md) | 332 | `result-track:4ae809b2cdbd4ac263441b5b0d781d7533e8467befd543a7ee318a0de945357d` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/tail-majorant-integrable.md) | 340 | `result-track:046cd525f8978634c943189d40b3f2100ae73f4f2cc5a370180cfe84ff1138f1` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/tail-majorant-integral.md) | 351 | `result-track:2ba7dbfc40b7afc42cc8b568e9ae713bd7182a91753e568fe8bb9322547ea981` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/kernel-tail-integral-le.md) | 363 | `result-track:5fd31a5be800986d0a198231aabfacbd929132d3f5334ea129ee6d24162c5d90` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 371 | `result-track:dd54641d292960a17d093cc02dd17ff62e206e0d57b77136093c33e8abd14f9b` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/kernelmass.md) | 377 | `declaration-track:882e5eb03d0e1dfbe0753aa95919ed4d4a83482aaccda97b360b43dca00d21e2` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/kernelmass-nonneg.md) | 379 | `result-track:7938a5da5fd953da7a0c973f9ea3e3157ae5741fa2eaa92e1670ef3f8442a7bf` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncated-norm-integral-le.md) | 381 | `result-track:6e17d2662a70884377ca2732277af01abd74ac1405e8ae0e2f0aed7189bdbdef` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedoperator.md) | 386 | `declaration-track:036b396f30b0f420541ccc9da238faf009fb6c0e42c1f19af09adc42a0843941` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedoperator-norm-le.md) | 389 | `result-track:fad5c317ebc4fd8e899b17cf2206a6adf3a304de2c5b23bbaf2b7bf192855c87` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/operator-norm-sub-le.md) | 392 | `result-track:8e36976124458a3cd22709ae25681725436617f08f55dc2d3f3bdc60aef52a00` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedenergy.md) | 398 | `declaration-track:9ec9328b6c1a6d63ccea9d35ebf1d53811afd19202790aae9bf38d6543ef42ec` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/truncatedenergy-ispositive.md) | 401 | `result-track:590d7d831cc3330b6918639af23f964a41b6905964ef13880af91baf0efa7959` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/norm-energy-difference.md) | 404 | `result-track:c9496adc4b74078e414af5b6f2d59f94e3d3609979e70fa8600ee09b4ceea45d` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/energy-norm-sub-le.md) | 421 | `result-track:dc883936c195a0255a64c8f84b6c8563ef3e1c1863b488e217a412e3264ed496` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/diagonalcutoff.md) | 433 | `declaration-track:6eaf370788f239ae0af9877b89d47a96b47b586260f07b08cf73c0cc9916e2fa` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/diagonalcutoff-ge-two.md) | 435 | `result-track:45f29e7c87be90d7dd27408b40cfb463c4d9510ffb6a11751776d2f3b0f67f35` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/diagonal-exp-le.md) | 437 | `result-track:febae7366a3c96163fbcbb2024d11202e0b4130ef60c34c5d57bfb4f86c44b11` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/diagonal-operator-error-le.md) | 447 | `result-track:3679790c8859e5a1a51b90acf1ff0b58fe078bf1e0ce33b08b1498ba505044fe` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/RootOperatorAuditNamespaced.lean/declarations/diagonal-energy-error-le.md) | 453 | `result-track:f36c912f38a82c871cf1d67ec78f4628bcb9cd5e65b19b127ac62abd472bbaa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83939bdfe7f3b6b4c98eac20b71be4261ea21ec1cd1141b74c8e68b02d4ea005 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/RootOperatorAudit/Variantbeba5346a29704bbbb85d92c0e960f3e5e6c002341c8477fd37ef7ab2db71f61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
