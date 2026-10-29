# Verification target: Add Circle Namespaced Fourier Coeff On Of Has Deriv Right

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460d37128ff09d798980363d4c29975ccf322f22",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant72d2767ae73c55b2d569601904c2b1613d94b3f5c37faeee4b0d2431d7622eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460d37128ff09d798980363d4c29975ccf322f22`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant72d2767ae73c55b2d569601904c2b1613d94b3f5c37faeee4b0d2431d7622eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant72d2767ae73c55b2d569601904c2b1613d94b3f5c37faeee4b0d2431d7622eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StoneWeierstrass` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/haaraddcircle.md) | 89 | `declaration-track:c4e353bd653d4331a4edc6e4cb444889cfdd26030b12e9c5829fb6a0f54c544d` |
| 2 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/instance.md) | 94 | `declaration-track:13e6c0b96ff6cae0dfbebb8f64e5df9030281b6e280f765b2a74e45600a695af` |
| 3 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/instance-source-edition-2.md) | 97 | `declaration-track:80f304c54aa4dd6b283b147ccd7423f0781cdadd0cce8bba832a0598cda60292` |
| 4 | `theorem` | [volume_eq_smul_haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/volume-eq-smul-haaraddcircle.md) | 100 | `result-track:6177e5c01c58e1a05bf5efcaa9fbc6ac1329d629d3528f685cea6a5ad8e34f64` |
| 5 | `def` | [fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier.md) | 112 | `declaration-track:d2eaaef06bc23e30b47ce751b97e6264946d0d4fc11a66f7e63acf16eaf3f0d0` |
| 6 | `theorem` | [fourier_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-apply.md) | 117 | `result-track:b6c2d804b1a8530f09a2913a4de3c78599a0939376c0ef4612ce3f9765a5c5fe` |
| 7 | `theorem` | [fourier_coe_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-coe-apply.md) | 121 | `result-track:a91cf64aa66cb93eec51128eb40ab9d1b7a0e3d1683669efec45b4f09a2b8b09` |
| 8 | `theorem` | [fourier_coe_apply'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-coe-apply-source-edition-2.md) | 130 | `result-track:b944c459eb54e04d9ed62a4e513fb53cd900b7e570c08655215d275822312453` |
| 9 | `theorem` | [fourier_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-zero-source-edition-2.md) | 135 | `result-track:81be17da88373d6aac4cf0aef6c85c251b89db58af9faa188f56b7f6bafaf7c7` |
| 10 | `theorem` | [fourier_zero'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-zero.md) | 140 | `result-track:74410d3f507e0595bd857f3139374b240324c8a4234d34855438ee07e2ff74ad` |
| 11 | `theorem` | [fourier_eval_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-eval-zero.md) | 145 | `result-track:f588ccfb7d52a6bf8a80d005579be1a1a8469537d6aa1a75dee5c4d8a86fa65e` |
| 12 | `theorem` | [fourier_one](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-one.md) | 149 | `result-track:5358e5fb124e6c7f699da257d97934aa72d64767f0e30e68d0d9b545ebc8b35a` |
| 13 | `theorem` | [fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-neg.md) | 152 | `result-track:dfd8a4e330075a6b9a3ffb6dce154f7964dc2de4ba99445d6add1db7dd1cab01` |
| 14 | `theorem` | [fourier_neg'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-neg-source-edition-2.md) | 160 | `result-track:fd22fd0293a818af0ae281de53aef73575c133195b5a297c72d828e1b3e4455f` |
| 15 | `theorem` | [fourier_add](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-add.md) | 164 | `result-track:22254372dc2c94ac3088763183f15101b2e4f140fdd93e473267ab2b40c56e19` |
| 16 | `theorem` | [fourier_add'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-add-source-edition-2.md) | 168 | `result-track:28a8d69f839388030239f1014d74569e03379f93b31c00e00f870d8e6491cb77` |
| 17 | `theorem` | [fourier_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-norm.md) | 172 | `result-track:e0173175c3c2ac4c7ff22e9507c660d50f4916a4700bde35a255ec5999294bac` |
| 18 | `theorem` | [fourier_add_half_inv_index](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourier-add-half-inv-index.md) | 179 | `result-track:5ea33233165877e5a9f9939dd0c5c1c8741c6f40d61f2c88b0b8a538b1a90033` |
| 19 | `def` | [fourierSubalgebra](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriersubalgebra.md) | 192 | `declaration-track:4271f7b4cd2ad0841da3b054719b23f2ebec3e71ada31a05b3cd9d6fdc04b26e` |
| 20 | `theorem` | [fourierSubalgebra_coe](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriersubalgebra-coe.md) | 203 | `result-track:3d5853f0ef4dda1a63ffe147c3746d2ee41aef7ce288286c4978e012013efeb6` |
| 21 | `theorem` | [fourierSubalgebra_separatesPoints](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriersubalgebra-separatespoints.md) | 222 | `result-track:529ffaa841a6f0547502e259afb4610c81f34eb74180bd8683fa46abbe8b583c` |
| 22 | `theorem` | [fourierSubalgebra_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriersubalgebra-closure-eq-top.md) | 231 | `result-track:12808a45310d3886acd0b939c970666906b4d1ec0fe59e0661ff1a8782dc4b56` |
| 23 | `theorem` | [span_fourier_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/span-fourier-closure-eq-top.md) | 236 | `result-track:3ede15e339a7a0a372a45e807f97fbe9c92e70604269397d19452790f3d0a7b7` |
| 24 | `abbrev` | [fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourierlp.md) | 243 | `declaration-track:d6a57d26b59bce79f2a59ad367f6de62a91e99466c81b63203cf231cf0ff8789` |
| 25 | `theorem` | [coeFn_fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/coefn-fourierlp.md) | 246 | `result-track:0eff59c736044e98e4f377287452b870844b6a6010788ee358531769e7670088` |
| 26 | `theorem` | [span_fourierLp_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/span-fourierlp-closure-eq-top.md) | 252 | `result-track:8244646a983572d306e0a9b22b632bd172f5c9dbd6aafcf572b23907ef41306e` |
| 27 | `theorem` | [orthonormal_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/orthonormal-fourier.md) | 263 | `result-track:703a93a2bae5d95720581f8711b219163ee544d094a5f576b0f2d727c430c904` |
| 28 | `def` | [fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff.md) | 291 | `declaration-track:fe1d716ea3e2bd899357654a356e63b4d0eff3fbadef2ff7b560021acf68209b` |
| 29 | `theorem` | [fourierCoeff_eq_intervalIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-eq-intervalintegral.md) | 296 | `result-track:a64d58ff26d5f402bb9459657b3f82023e54fc183f29208c32c5dea84c4f5405` |
| 30 | `theorem` | [fourierCoeff.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-const-smul.md) | 306 | `result-track:d467f5446f9afb800b857d3fdc0ffeec5f0795ce80a5b1ef02d6e716cca60c32` |
| 31 | `theorem` | [fourierCoeff.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-const-mul.md) | 311 | `result-track:766e5c6516277340f6159fe75ad0864ef594a45f7b66d4c79e1becef06b54216` |
| 32 | `def` | [fourierCoeffOn](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon.md) | 317 | `declaration-track:982a4ce9240cb1538392b367e2179758e7dbf5c364e38e293f9ec4f67a7fa506` |
| 33 | `theorem` | [fourierCoeffOn_eq_integral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-eq-integral.md) | 321 | `result-track:cc28a41bc7ad482e9e1752f65f7ab28da885edff09e57ca7901d90e2d3bd1a37` |
| 34 | `theorem` | [fourierCoeffOn.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-const-smul.md) | 332 | `result-track:8945651227f9cae5aadcae1afec3764a48bba06542d0e5113b2737a0dffdcf57` |
| 35 | `theorem` | [fourierCoeffOn.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-const-mul.md) | 337 | `result-track:aa35999108e44e24b9b15df4cb70b6a8266e9aab0b0afde08181058dd634aff8` |
| 36 | `theorem` | [fourierCoeff_liftIoc_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-liftioc-eq.md) | 341 | `result-track:b3f0c7789fa2ab1e615e1f5d828abbaeaa0ba93ef9105e783a7d53bbaa16f727` |
| 37 | `theorem` | [fourierCoeff_liftIco_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-liftico-eq.md) | 350 | `result-track:bd3494d0ab34b7211f9953966d39cc3acdbac60154392de57ec650b538a9847e` |
| 38 | `def` | [fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourierbasis.md) | 366 | `declaration-track:cd200127470ea6ab371a19571e34ae0b1eeb447730310a7d6e296aeb7364e2d7` |
| 39 | `theorem` | [coe_fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/coe-fourierbasis.md) | 372 | `result-track:a5425d57271a683865dda8c578e92091a970c35ddc179c91fb95ba94a8cbcca4` |
| 40 | `theorem` | [fourierBasis_repr](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fourierbasis-repr.md) | 378 | `result-track:e57b77e7c79430b6211fdfed80956749e244fc0b304eb2036d3bfbd6674c7891` |
| 41 | `theorem` | [hasSum_fourier_series_L2](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/hassum-fourier-series-l2.md) | 388 | `result-track:f69e3afd18eae5b9264b52dc78539ea7b1464a106d876a72bb7f5a23072796cb` |
| 42 | `theorem` | [tsum_sq_fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/tsum-sq-fouriercoeff.md) | 395 | `result-track:4b3f4c1472739269c157818098d2203bb94ae114b60fe5ec4feaea49eaf7aaed` |
| 43 | `theorem` | [fourierCoeff_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeff-tolp.md) | 414 | `result-track:08f6c7d51569a016df714a5ef8474d6962e99a809664a657a9e1e12665115b2c` |
| 44 | `theorem` | [hasSum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/hassum-fourier-series-of-summable.md) | 423 | `result-track:a4a42e3a2a6eeadf355b1d84f5eb2543c0edf91af437061d8edf5412a95c0ca3` |
| 45 | `theorem` | [has_pointwise_sum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/has-pointwise-sum-fourier-series-of-summable.md) | 433 | `result-track:1ac8b086566b744a58fea5f2e608bb3805c76ec5009db461f19af8aee3b7678c` |
| 46 | `theorem` | [hasDerivAt_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/hasderivat-fourier.md) | 449 | `result-track:3e2c4e6fc3865d31b725505f9a017e82ab10832775bae1c83bfb12fbdc5b5d2a` |
| 47 | `theorem` | [hasDerivAt_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/hasderivat-fourier-neg.md) | 459 | `result-track:2c709cd2351fafc0105da627183206989ef6585a170a5e1b61d667cee07ff700` |
| 48 | `theorem` | [has_antideriv_at_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/has-antideriv-at-fourier-neg.md) | 466 | `result-track:16c41cf004afdfe38579492e9604bfd997cf296c80551caf1fc63eb120c730b4` |
| 49 | `theorem` | [fourierCoeffOn_of_hasDeriv_right](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-of-hasderiv-right.md) | 474 | `result-track:270ee365875280ed0ac2ef8bac52ba8f159623401e4a7cb13f1c07bf7e64cd68` |
| 50 | `theorem` | [fourierCoeffOn_of_hasDerivAt_Ioo](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-of-hasderivat-ioo.md) | 502 | `result-track:0751f6a419df2b3a99d9be26fe987c8961fdd195bbf581328dd3b0fd88bc6469` |
| 51 | `theorem` | [fourierCoeffOn_of_hasDerivAt](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedFourierCoeffOnOfHasDerivRight.lean/declarations/fouriercoeffon-of-hasderivat.md) | 512 | `result-track:6121b248b4e5e6deb2be406ce52274935582f05d222cec3c8183838997f11146` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2080ca03a63e8436b1d7e62c0e72998f81c9d7c4e94aca6495520b88beaa9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant72d2767ae73c55b2d569601904c2b1613d94b3f5c37faeee4b0d2431d7622eaf.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant72d2767ae73c55b2d569601904c2b1613d94b3f5c37faeee4b0d2431d7622eaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
