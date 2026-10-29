# Verification target: CDFTo Kernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25f38cf0214ed3c5ce9cd620ef2ff0a871c81e38`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Composition.CompProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.Disintegration.MeasurableStieltjes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdf.md) | 66 | `declaration-track:08d26379f834dff99ae5d71ffb790825e944aeb9960ca019c733dfde63541748` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdf-mono.md) | 74 | `result-track:0e525f241d7313afe3ab29b91bb8f0609d8fac92b8e39d1187f41b64bf846149` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdf-tendsto-attop-one.md) | 78 | `result-track:74475e5419d650c4282df8737c5991094e94f203c83ac554317c4641dcaa243e` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdf-tendsto-atbot-zero.md) | 82 | `result-track:105a9ee9adc2eb4ade0d8ed3d55f2eca69b66b192348fabded76a2db6c6257fd` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdf-iinf-rat-gt-eq.md) | 86 | `result-track:2dd7413b71f0c952f4a5c56e977cf1c9420b0a8b0113228286dd49c1a8d2f828` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/stieltjesofmeasurablerat-ae-eq.md) | 90 | `result-track:a52913f3a894e5c1beba8b75bee547126eb76c731d145148d13d43f8060846e6` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setintegral-stieltjesofmeasurablerat-rat.md) | 95 | `result-track:a1c41ebb4baa02c058630413e12d1074c737ed8f95f2f55bf23366fdcf539fe1` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setlintegral-stieltjesofmeasurablerat-rat.md) | 102 | `result-track:da66d038db5838a85f53130f8cf581595895852aca27f4226880045230a7de1e` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setlintegral-stieltjesofmeasurablerat.md) | 113 | `result-track:404542eec76b4b301da2ce2f40f015a71bd9c3c4a35f9405b2ecd245e5f53f2e` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/lintegral-stieltjesofmeasurablerat.md) | 172 | `result-track:fff6768508b7844235f3ed9300b1b2d66ba63e4c7253d2c4026e430b0d34b632` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/integrable-stieltjesofmeasurablerat.md) | 178 | `result-track:4d49b459de9014c9df8b0d37c418567d42f95bfa5f4d50fd21d4b2d9da24f0b6` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setintegral-stieltjesofmeasurablerat.md) | 193 | `result-track:281dcfaa67c14b9d74c0c42a077fca94f5f53111103495562715f1ce43a55c12` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/integral-stieltjesofmeasurablerat.md) | 205 | `result-track:ea349ec3d4cdee6e0edd854c9f52873a31d0d5f1f8cc992a713643db42177086` |
| 14 | `structure` | [IsRatCondKernelCDFAux](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux.md) | 220 | `declaration-track:de4e31f72d5269c252e3ed459cc76cf7a4b41fc8b4c2fa4d5661d4d128707241` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-measurable-right.md) | 242 | `result-track:58601b793101d1ccfec6d1636c1ae813e0957d04726fa50cda39c244edcb7550` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-mono.md) | 248 | `result-track:4958b2688e44502360fa03ab9ccda0b6be491d85e0279efb3112ea15ba0da8eb` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-nonneg.md) | 254 | `result-track:1a7c3f6167d97dbed852186d1ece2b7e21f7b1810bea73cbe02f394d8fe0b446` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-le-one.md) | 257 | `result-track:25b48f349998a4ca11e6b951c9efe67abd042f5ef94f267413c813b8a8df7ccf` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone.md) | 260 | `result-track:9508e74ee31c8567975d76a070505be17cbc6830526c1cd0430802e1d7f67185` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-tendsto-one-of-monotone.md) | 271 | `result-track:85a98cec6740b678c447a62143e25ea81702b564c06719bb930c6e1502e714fc` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-tendsto-attop-one.md) | 282 | `result-track:2470ef65b300fac73fddf9a34304836cd7a6e445471c93e1fb12d90b0ed772d1` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-tendsto-atbot-zero.md) | 292 | `result-track:d7eb2c0239204640adeb5a7d40c83fa396a5c54c761ec7bc0dd20b953902d90b` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-bddbelow-range.md) | 309 | `result-track:bd5e8f60739176514fd7d6dcf28aa91cec1d9e47550c96b8a3c60ae5fb77f2a2` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt.md) | 315 | `result-track:d6badd3a03902a3263d94095d3a6ac5a7acf865a6f310adfd4ab4654187363d8` |
| 25 | `lemma` | [_root_.MeasureTheory.Measure.iInf_rat_gt_prod_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/root-measuretheory-measure-iinf-rat-gt-prod-iic.md) | 331 | `result-track:9a525b3e162db24490309e939fd914698c38cd1164922323a47d56b10ed8cb3c` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt.md) | 346 | `result-track:0a8b7eeda1279114c964c1f78edc769d9bd4984f57dd03bf9141011967768b4d` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-iinf-rat-gt-eq.md) | 369 | `result-track:af6a2a5bcd182bf3db9ee590ca7090bab47a50b1cd8712ef2d31771f23e734e5` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-isratstieltjespoint-ae.md) | 379 | `result-track:2e88d2fbba641c9070d4a29bd8267204f92039e5878b0a93b752fb71bd09ba1c` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/isratcondkernelcdfaux-isratcondkernelcdf.md) | 386 | `result-track:bcd31f761f51a1db9d91c260dfd2c29b11ff683f064e5e915b239500f618a420` |
| 30 | `structure` | [IsCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf.md) | 404 | `declaration-track:21d51b21afa2ea2ee668cc6e31430bc067b36f763faa4927c06cd700ed216ee3` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-nonneg.md) | 413 | `result-track:d3850a46723fcbba078dd07481db4ba68ce1bda9a6fe115a9be3614d7498fd12` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-le-one.md) | 416 | `result-track:96fd101104ec7a82bf4d9fb68f158b5b9a560ddbe9bcea3024042d8a18c6847a` |
| 33 | `lemma` | [IsCondKernelCDF.integral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-integral.md) | 419 | `result-track:9a755fdbb070ae5778f6ddf2daf909bed4f3888291fdf129782363e08654b6ba` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-setlintegral.md) | 424 | `result-track:1c81044c924368c0d123cf3b351b63f35e34a2b35d32382db9db56b29486dfd4` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-lintegral.md) | 431 | `result-track:d38e6e00c896880b3c9b20df0a1e50f9ef93d608ed2ba9d4607ba1e2cdc283fb` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-stieltjesofmeasurablerat.md) | 436 | `result-track:9da2e0a549d057c7d99392dfd8f372ef53312c86def41306698938e156ec9120` |
| 37 | `def` | [IsCondKernelCDF.toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-tokernel.md) | 455 | `declaration-track:49d4997d867b20ceb59621ccb5d5872d9bba3ef4b7ed2717f956a48e34cda45b` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-tokernel-apply.md) | 461 | `result-track:f107b8a1395600a14cbc8f8492a43efd5581dcd5740ad860d8339ab12f102eed` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/instismarkovkernel-tokernel.md) | 464 | `declaration-track:cce246cb859f81908c68b7d871bc0c33de184813df7ec1dd95c69a74bda1dc02` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/iscondkernelcdf-tokernel-iic.md) | 468 | `result-track:2a865984f0b2117c6aa8ec71d8926f77bb812fa8e341590dc2af9cb3814ce41f` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setlintegral-tokernel-iic.md) | 479 | `result-track:43dac44679acc581b6eacbad2169b2e139acb00f10e19139c959e06a52737b84` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setlintegral-tokernel-univ.md) | 485 | `result-track:526899f9d1bcc03d854a4c2f15d4e98ca2b96c8e92004a858532095419d8ae87` |
| 43 | `lemma` | [lintegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/lintegral-tokernel-univ.md) | 504 | `result-track:9066aa3520911992d42059872d628b2ddf6c7afa9f1a8512bf7fe16d9ab91ff8` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/setlintegral-tokernel-prod.md) | 508 | `result-track:552bb5f678bb46f120a68f5ac0adb2f4702a7f63a5350f11c2d79f9c736f202f` |
| 45 | `lemma` | [lintegral_toKernel_mem](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/lintegral-tokernel-mem.md) | 549 | `result-track:8703dd9d920711c77dab6bad3e4e6a17d796ca585cd71f65b73285fc2643bb76` |
| 46 | `lemma` | [compProd_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernel.lean/declarations/compprod-tokernel.md) | 620 | `result-track:da1765d494359bd6d16144d4fed45b50e03ac897958cdf88a4e158ace9a5a576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17445887a1d30f7293162005e179175a5311d1fd590a5175ba1fe200fd02a132 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CDFToKernel/Variantd8fe33ca153003087b49616cdd06cdad2a2f16a53341615d2df1897c92fc25d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
