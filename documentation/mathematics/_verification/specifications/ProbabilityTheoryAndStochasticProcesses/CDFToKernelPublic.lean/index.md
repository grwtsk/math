# Verification target: CDFTo Kernel Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ffda87e1c3370647a584a62c8bc589d235d0bfce",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ffda87e1c3370647a584a62c8bc589d235d0bfce`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean.json)

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
| 1 | `structure` | [IsRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdf.md) | 70 | `declaration-track:338ecff95c688351a44d2375f3244186f473b302f6dd2994b9fb4898cf6ac56d` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdf-mono.md) | 78 | `result-track:44ab0301c06f0d54825be321443292ecf6ef613f62728fea226e065edd3782b7` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdf-tendsto-attop-one.md) | 82 | `result-track:920ba4d6c80d1e1a96a90de4b4866c771e62bff6e1b75c1596dee70dd7df5d2e` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdf-tendsto-atbot-zero.md) | 86 | `result-track:d386f2b2eb78c10cd528f20b934ad69025bde81e49c5e8f4d6f98bc0a5ed5bc3` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdf-iinf-rat-gt-eq.md) | 90 | `result-track:6fea94e76884ff13caa993d40671c66020d31ec8d1d85b68b1fcc8da9061e2bf` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/stieltjesofmeasurablerat-ae-eq.md) | 94 | `result-track:d4aa2723c0321f99ca2b1f765ef81c3472e5d2ecbe18573fdadfcb214d05733f` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setintegral-stieltjesofmeasurablerat-rat.md) | 99 | `result-track:4523a5a45a5d61c1d9508b671b253a650a1a3524f377b5fbebe2450e5bea3299` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setlintegral-stieltjesofmeasurablerat-rat.md) | 106 | `result-track:a45b5c89a761434ef65d8aee23fac9431b77803a31490a4162b153973e1b633f` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setlintegral-stieltjesofmeasurablerat.md) | 117 | `result-track:167875ffdf5d545b983a457f34f0cde79b9a90c9430822eab7df5b19635c5c7c` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/lintegral-stieltjesofmeasurablerat.md) | 173 | `result-track:930d8ae047a24b969a82c2cf67ee7a28b014063cee6e302cb08c478327a153e8` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/integrable-stieltjesofmeasurablerat.md) | 179 | `result-track:9e52f9eccae6bf4a4c6fe758be57a53f8cedad312defc4b062c7fd43e07c5834` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setintegral-stieltjesofmeasurablerat.md) | 194 | `result-track:be37c0b540f989b57f71b2d877a5b3a977fa2d5fb120b29d7c843c7ab28f0527` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/integral-stieltjesofmeasurablerat.md) | 206 | `result-track:6964416d8f18069a85d382b6610e8f2de6ff607c37515b9a8747217df25e276a` |
| 14 | `structure` | [IsRatCondKernelCDFAux](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux.md) | 221 | `declaration-track:33ac8a3540f729e9559496befda1c13efac14431d34882c5e79481d0fa272aba` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-measurable-right.md) | 243 | `result-track:eccc2e07c8f68ad31d24330aa80e61330456c2d8d6839e5425905eb7418c198a` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-mono.md) | 249 | `result-track:9206247775534129263cfee128fe39f166f216d6971e994e57860cabe6e04816` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-nonneg.md) | 255 | `result-track:41867e4cdb945b968fe9fd33be43ab9db7142b33089423e12b9e4fe0efdc9cfa` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-le-one.md) | 258 | `result-track:65d581cce26430cd976f38e9bb8f4d9b36533e1f222eb563eca6d3fae22b549d` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone.md) | 261 | `result-track:fd958e8733580991b21965ceadb5c78862c59f1b6baf52e61b24019e6ef8e501` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-tendsto-one-of-monotone.md) | 272 | `result-track:f3fb4aea0669b9e85810252935887ee366e7b5792da09bd5403766a3617ea4d1` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-tendsto-attop-one.md) | 283 | `result-track:089a4b6d7d530963c3bedcac11b16fc3d4b1ef0ed75da06bfb3497f069e7f853` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-tendsto-atbot-zero.md) | 293 | `result-track:4ded162e74748036c90ef7b1eb6284e50a34f24c8c5f91a917575178faf922cb` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-bddbelow-range.md) | 306 | `result-track:9790a4a00d0675ea9a2c7e85361a4179fdb1a47d28423b7bbbfa920a950fac86` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt.md) | 312 | `result-track:8a27d83e88cd2583a3a543d602f41d06ed78303ddb6cb850fe95dc1b1bd1b8bf` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/root-measuretheory-measure-iinf-rat-gt-prod-iic.md) | 329 | `result-track:e460313ed03551af87ffd575f420e73a3534b3cfd7b02ad9fd53dbfdf765261c` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt.md) | 344 | `result-track:4f2efcfcc6c1c03d409d2a376f1ed5ef9beb19eac8ac758b3b4a35083d2f5a39` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-iinf-rat-gt-eq.md) | 367 | `result-track:453518a99417549d2d278de1f27be4ffa74582da3c3b28a15e7709927b4bd6aa` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-isratstieltjespoint-ae.md) | 377 | `result-track:f313928d524055a54b950a4139e8da0535d2b8de5327631e86c19ae50358349d` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/isratcondkernelcdfaux-isratcondkernelcdf.md) | 384 | `result-track:a2e9df38d7e72ddd121897cbe876b642dda5c50068bbc9e563b850c5a74fbf30` |
| 30 | `structure` | [IsCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf.md) | 402 | `declaration-track:5033976645bf0a26341f35ef21824fb585aa5a942fef2567c09f522fc2d36117` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-nonneg.md) | 411 | `result-track:a427f13c6d7f8340ed779d065a25640b28a0ee3905cd2521844fd7fc3ee92248` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-le-one.md) | 414 | `result-track:b94d052a6035842a06bd0c52475379db1e39bab80ec89c52af847f7a1c38ef78` |
| 33 | `lemma` | [IsCondKernelCDF.integral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-integral.md) | 417 | `result-track:73db605ac6596f1af320b96055a721b8827d77fc94fdb3154437e16eee91e904` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-setlintegral.md) | 422 | `result-track:1cfe9d0200ffb5a26ea2dc3c71f3429f4079466166ac3705fc45dfff43554659` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-lintegral.md) | 429 | `result-track:f466d35cc70b2ae755887faf92cca33ca3d8203db74f8056ecd9b7c81d30f415` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-stieltjesofmeasurablerat.md) | 434 | `result-track:649932343dce6d592bc10abf46afcfa78d54a2013f13bdad30953d7f2f9ae3a8` |
| 37 | `def` | [IsCondKernelCDF.toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-tokernel.md) | 453 | `declaration-track:cf4bdfd24ee2e7abdcaadec124fdfc0b7fab2331e13acb4b5e3da647a7172a9f` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-tokernel-apply.md) | 459 | `result-track:79883164ea22f82a35734246534aff0286dead322f4252cfeec83d796ab3adaa` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/instismarkovkernel-tokernel.md) | 462 | `declaration-track:960a4ff732259a12a690a80a6e72fabea4f228dcfca1201aaf42061b6ddb42a2` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/iscondkernelcdf-tokernel-iic.md) | 466 | `result-track:756bf46a9861ae7b4e77960b59ba612258797635e0228dbe6165107417f0c538` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setlintegral-tokernel-iic.md) | 477 | `result-track:2466a4c05b129d4bd524e123ee70633d065562e548b8dd55f17c66ed33d65fc1` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setlintegral-tokernel-univ.md) | 483 | `result-track:58fe6a6c24a27b385369983c5a229184ffffbcce889766a9c33beb89548a9a62` |
| 43 | `lemma` | [lintegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/lintegral-tokernel-univ.md) | 502 | `result-track:6a59ddd0ec046d54002deb5cf2b1bf84efc7277685e5795ccb9eb588e527488e` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/setlintegral-tokernel-prod.md) | 506 | `result-track:4192f7db5210be7f702ea34aad790d0032d07851a6fd73deb83f969274752be1` |
| 45 | `lemma` | [lintegral_toKernel_mem](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/lintegral-tokernel-mem.md) | 547 | `result-track:81bc041580a550f251bd43824ae25a75b71a8710993e3fdf8124443f6c67befe` |
| 46 | `lemma` | [compProd_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelPublic.lean/declarations/compprod-tokernel.md) | 612 | `result-track:bf26d222eca6b9908a7198dd2005f090fda0a5421b23b1600084f33b65bdf2fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5f9e27ccf92663f384830c974ff1878e725ecba011535bc22744675d52d5a033 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CDFToKernel/Variant849360d552757c37943a0f7b34e37fb172a4e82984327716da7b43eb6e5db4c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
