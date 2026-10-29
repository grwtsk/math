# Verification target: CDFTo Kernel Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cd17fdc6e66cd0bdf731dea45598795f980162b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cd17fdc6e66cd0bdf731dea45598795f980162b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean.json)

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
| 1 | `structure` | [IsRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdf.md) | 78 | `declaration-track:c988cf9fc582fdb91ae4ef6c27619db3222f969298ff60cc898907e0801dad61` |
| 2 | `lemma` | [IsRatCondKernelCDF.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdf-mono.md) | 86 | `result-track:0d27ce40725770a23d9f74fb5ed060ffbb130a8a713ddaf3375da1c1101c3a2a` |
| 3 | `lemma` | [IsRatCondKernelCDF.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdf-tendsto-attop-one.md) | 90 | `result-track:5d8a54a39b32829b48e347ff31edc0dd280e1ccca5075c039acaf321e708e4fe` |
| 4 | `lemma` | [IsRatCondKernelCDF.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdf-tendsto-atbot-zero.md) | 94 | `result-track:f640ff5520a825c7f7c41b72ce5db6dc779511bcf11dfd3ef2561ad0742e61ba` |
| 5 | `lemma` | [IsRatCondKernelCDF.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdf-iinf-rat-gt-eq.md) | 98 | `result-track:453bcf9fe03bb0c463281900be7d17a6350a3c377233ff8e0a4d499bd0ba3f57` |
| 6 | `lemma` | [stieltjesOfMeasurableRat_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/stieltjesofmeasurablerat-ae-eq.md) | 102 | `result-track:a20fa0d5b1d0a1a9c8c876bf36c3f9f5d9f483eb592548bf0aeead04d0ef7106` |
| 7 | `lemma` | [setIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setintegral-stieltjesofmeasurablerat-rat.md) | 107 | `result-track:a1f63297a7b2cf34e7ac7456f97e049e0e2172ee5c0befb87cae318730032a81` |
| 8 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat_rat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setlintegral-stieltjesofmeasurablerat-rat.md) | 114 | `result-track:2a800f5402fd3e7c69b1611f0130b58a8b4d1a3621ce47a1cec7e6d4ebb72d84` |
| 9 | `lemma` | [setLIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setlintegral-stieltjesofmeasurablerat.md) | 125 | `result-track:586d48cc296abe77a1282a6950229ef947650772c1862d39b49d7fbb471f0f2d` |
| 10 | `lemma` | [lintegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/lintegral-stieltjesofmeasurablerat.md) | 181 | `result-track:2a288a4226ecbfc09b38c8d786d972168f5137f7a51e010a5a5f8a4055a06e28` |
| 11 | `lemma` | [integrable_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/integrable-stieltjesofmeasurablerat.md) | 187 | `result-track:1bddcb9e0f3f6234360a5bd4cbc3c1a4e89835027efd2e88898463329bd9a6e6` |
| 12 | `lemma` | [setIntegral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setintegral-stieltjesofmeasurablerat.md) | 202 | `result-track:24f5ccbfa1ce7685eefc80bbeb3f830d96efca77b2f9defa08bcaa9708db78ec` |
| 13 | `lemma` | [integral_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/integral-stieltjesofmeasurablerat.md) | 214 | `result-track:74a69ae11a12e574f0f7fdeeeac17fbb996547fa0ebfdf79ac1ce4f8f82835b7` |
| 14 | `structure` | [IsRatCondKernelCDFAux](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux.md) | 229 | `declaration-track:5705bb8ebd349b07975cdf5ea971752a592283b9be6cc188a1109e725c0bea07` |
| 15 | `lemma` | [IsRatCondKernelCDFAux.measurable_right](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-measurable-right.md) | 251 | `result-track:873a4f31726bc3e229ba8828e40599eac145c842fe84845f01e041efe52fe0d1` |
| 16 | `lemma` | [IsRatCondKernelCDFAux.mono](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-mono.md) | 257 | `result-track:eaf55e99ce60b2699b7472f41cc93c834ec384b302be2d13d13a0f742557dd8b` |
| 17 | `lemma` | [IsRatCondKernelCDFAux.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-nonneg.md) | 263 | `result-track:527f0d0695ee170a29b231e745d6f56a74c0fbc5971a69e27aee06df5f55aba5` |
| 18 | `lemma` | [IsRatCondKernelCDFAux.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-le-one.md) | 266 | `result-track:19513b52aa0bd7c67c5c3e049fb397192f85c31d7930b249b201285b18d3be50` |
| 19 | `lemma` | [IsRatCondKernelCDFAux.tendsto_zero_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-tendsto-zero-of-antitone.md) | 269 | `result-track:d817982071d30cb17256e5b84861dd02873e33be5cfb892d76545b01c02b8ebb` |
| 20 | `lemma` | [IsRatCondKernelCDFAux.tendsto_one_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-tendsto-one-of-monotone.md) | 280 | `result-track:cd4e19ce09c604455952cddc4b5b90168e61fa5c72bf157a7ae2b2ade008efd9` |
| 21 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atTop_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-tendsto-attop-one.md) | 291 | `result-track:7811ad7822422cae22aa6f2250101195b9a43294d35781103a78802b0a4b500f` |
| 22 | `lemma` | [IsRatCondKernelCDFAux.tendsto_atBot_zero](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-tendsto-atbot-zero.md) | 301 | `result-track:f15a2f8fcb13f6e3ddd84926be62e120a030206c7a54614ae238cbc54eaf42c7` |
| 23 | `lemma` | [IsRatCondKernelCDFAux.bddBelow_range](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-bddbelow-range.md) | 314 | `result-track:789461241c6b85a585f6f660bd6cdbd9c66f8d6e8a94d568fbc56244051358cd` |
| 24 | `lemma` | [IsRatCondKernelCDFAux.integrable_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-integrable-iinf-rat-gt.md) | 320 | `result-track:7758184978890940308045abd93853e461176867eeade20c416fec9ba1d03629` |
| 25 | `lemma` | [CDFTo Kernel Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iinf-rat-gt-prod-iic.md) | 337 | `result-track:5064e86083f237d6da6720db80424d062f755d70c0b4ed7aa5fbaf55e80e0237` |
| 26 | `lemma` | [IsRatCondKernelCDFAux.setIntegral_iInf_rat_gt](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-setintegral-iinf-rat-gt.md) | 352 | `result-track:839f376466b85a9441f284bd3a8ebbceaaa20a4a230db085c8029a23d62498ff` |
| 27 | `lemma` | [IsRatCondKernelCDFAux.iInf_rat_gt_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-iinf-rat-gt-eq.md) | 375 | `result-track:fe89b66408c472d57e89aa6e8436b2809e78e7eb9303f15a8ee7adbb1f4c8efc` |
| 28 | `lemma` | [IsRatCondKernelCDFAux.isRatStieltjesPoint_ae](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-isratstieltjespoint-ae.md) | 385 | `result-track:b54e95b21d707682658af6b19d20d98129b93601485af240c9134292dfbb549e` |
| 29 | `lemma` | [IsRatCondKernelCDFAux.isRatCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/isratcondkernelcdfaux-isratcondkernelcdf.md) | 392 | `result-track:abeeeb708ee38590fbd712b2fafa5a854a4a3bf1a7de964ef94544ae7ee0a532` |
| 30 | `structure` | [IsCondKernelCDF](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf.md) | 410 | `declaration-track:d0c528dbc5336a72a4ae2ec1576c1da576d64d724ef943e2d7f34c704fe26783` |
| 31 | `lemma` | [IsCondKernelCDF.nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-nonneg.md) | 419 | `result-track:b4df3d956bbc40dfe95f7a001db9c4319ef7e3e2a1829a3d2cc308d746d99e42` |
| 32 | `lemma` | [IsCondKernelCDF.le_one](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-le-one.md) | 422 | `result-track:492ff59c13c1f4cd9c14a66af343ba0340e87458b9d7c7205841213547a1e33a` |
| 33 | `lemma` | [IsCondKernelCDF.integral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-integral.md) | 425 | `result-track:89c4110ddcbb36434a7962a47dedbd95de0a8627398436b56bc4edc7cc973d7a` |
| 34 | `lemma` | [IsCondKernelCDF.setLIntegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-setlintegral.md) | 430 | `result-track:b7bdbd965b68dc28e54cd77f1333fed605f71ee92c7c7e571f3e2fc851eed05e` |
| 35 | `lemma` | [IsCondKernelCDF.lintegral](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-lintegral.md) | 437 | `result-track:11e53689b1d7825f63dada768853c88b9ea6a77b408eb0b004bbec9269333b09` |
| 36 | `lemma` | [isCondKernelCDF_stieltjesOfMeasurableRat](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-stieltjesofmeasurablerat.md) | 442 | `result-track:da8ed39fc8c2079edf30986b9f67301010706c79e2c3e4595b6897548ee7d3eb` |
| 37 | `def` | [IsCondKernelCDF.toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-tokernel.md) | 461 | `declaration-track:b75af90f95b15fac1ae771ab1ba9f9ae8c6965e2d6561324f55f50160cf0a776` |
| 38 | `lemma` | [IsCondKernelCDF.toKernel_apply](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-tokernel-apply.md) | 467 | `result-track:bd62931a9c69eea7565a56560b8218aa6e58c9a3a632f54d29a157b77f126d96` |
| 39 | `instance` | [instIsMarkovKernel_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/instismarkovkernel-tokernel.md) | 470 | `declaration-track:1da7750440c4699208b9615d7ca104df46c6e962b1c862cc4f8082a78b44a4e5` |
| 40 | `lemma` | [IsCondKernelCDF.toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/iscondkernelcdf-tokernel-iic.md) | 474 | `result-track:70d084aa4c156e2e8f124b5432f096fb4478aefe8f3ac9ee51b8e7e1d46cba7c` |
| 41 | `lemma` | [setLIntegral_toKernel_Iic](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setlintegral-tokernel-iic.md) | 485 | `result-track:1d86ddf21130bdda6035bc1877ce2b4acab591523195d211b0923906ce5efca5` |
| 42 | `lemma` | [setLIntegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setlintegral-tokernel-univ.md) | 491 | `result-track:b4cc54f77864bb77bab9b36c80cac46e49e2f9cd51f68062c093497628c3b8fe` |
| 43 | `lemma` | [lintegral_toKernel_univ](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/lintegral-tokernel-univ.md) | 510 | `result-track:37f024a04b59466759647149e80027dc12a609856676f0d01381d8065fb43363` |
| 44 | `lemma` | [setLIntegral_toKernel_prod](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/setlintegral-tokernel-prod.md) | 514 | `result-track:bfe8f3cf6083f33e410a9210d18241fac80bd0a2e3e00d6d07de8077de5ce66c` |
| 45 | `lemma` | [lintegral_toKernel_mem](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/lintegral-tokernel-mem.md) | 555 | `result-track:9ebb57c36f8ca75f89050999f8bda38a1c7874ff4f75d90b279e39795fe96b3d` |
| 46 | `lemma` | [compProd_toKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CDFToKernelNamespacedPublic.lean/declarations/compprod-tokernel.md) | 620 | `result-track:661ec729e852867a2b65574e40356ba2f9c6f5e406729c475994217d4b6e1cc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52f834df781d6a7c37a96fc0140760eb7e0fd10c28d73b09927e368aaa87181f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/CDFToKernel/Variant7f24b5a7a741f2bbefa5328e12cb8178b6ed7940f125796abfe8219ba1338017.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
