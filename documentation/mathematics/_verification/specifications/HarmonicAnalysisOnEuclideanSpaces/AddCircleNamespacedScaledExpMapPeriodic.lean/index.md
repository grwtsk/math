# Verification target: Add Circle Namespaced Scaled Exp Map Periodic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015ba34a4d64c6cd28b03d58d73265e06bc7ed5e",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant2bdf6faf3414232d4298149375c99862ec157892b2b01f3cfcb32c7af30ffbfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015ba34a4d64c6cd28b03d58d73265e06bc7ed5e`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant2bdf6faf3414232d4298149375c99862ec157892b2b01f3cfcb32c7af30ffbfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant2bdf6faf3414232d4298149375c99862ec157892b2b01f3cfcb32c7af30ffbfb.lean.json)

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
- `Mathlib.MeasureTheory.Integral.Periodic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.StoneWeierstrass` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.FundThmCalculus` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/macro-rules.md) | 74 | `declaration-track:21f0b84592eb6b2438776e6f1f9c2b31a706b023a85199ae33bb6f0e0a3fab34` |
| 2 | `theorem` | [scaled_exp_map_periodic](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/scaled-exp-map-periodic.md) | 87 | `result-track:1fe41270b0eba1b041e8d7d09d0238cda186a7c6ccb3296c03b6cbd19d62935d` |
| 3 | `def` | [toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/tocircle.md) | 96 | `declaration-track:9ecd10b226451d6355a8ec5bcb3950e5960c9bd22a8b7a847948abe997ea7a33` |
| 4 | `theorem` | [toCircle_add](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/tocircle-add.md) | 100 | `result-track:a8c75d795a2d1eb57fdc0844d1c71a3db93ee74f8d35941caaa3f0cf35787186` |
| 5 | `theorem` | [continuous_toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/continuous-tocircle.md) | 108 | `result-track:68e5c48a459d31dcfae49b900e83df7c53ccdc6298f28662364f5e98c8befe7c` |
| 6 | `theorem` | [injective_toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/injective-tocircle.md) | 112 | `result-track:73e84e102ec4940e28f8ef480edf1ccae68d5a5b3f06d06bdfcc470fbf015431` |
| 7 | `def` | [haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/haaraddcircle.md) | 134 | `declaration-track:dc84ffefd04d5543010976bde86c5e134fa5d7bf77d67c30a75c30400a7aa565` |
| 8 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/instance-source-edition-2.md) | 139 | `declaration-track:c6d8a34678698fb61f6236b2a45cd185f9ad44c3d0c66606892349a87749ccdb` |
| 9 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/instance.md) | 142 | `declaration-track:b7491d46e5f77cdf30e5f40dd027e2d9fadcc91bbcc4b87807bdf253a4c41c9d` |
| 10 | `theorem` | [volume_eq_smul_haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/volume-eq-smul-haaraddcircle.md) | 145 | `result-track:46d6baeddd34b800f32c1dd225393413fcf6bda57202301731a1c2cf34d93477` |
| 11 | `def` | [fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier.md) | 158 | `declaration-track:dee0e75b76afa9fc5a3ca95df0a23d9184261a27f9a07353330d51c297c0c097` |
| 12 | `theorem` | [fourier_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-apply.md) | 164 | `result-track:a72a75008fa591557c1fc5e3a1ac774eba6ce5af49901cd8a64f9b33869eb1a9` |
| 13 | `theorem` | [fourier_coe_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-coe-apply-source-edition-2.md) | 169 | `result-track:79b116ead32d03ba2e7d48de0a46a4c993f6d5f5cd246ae65b2eecfe1be1926a` |
| 14 | `theorem` | [fourier_coe_apply'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-coe-apply.md) | 179 | `result-track:3a54238b951978e36e6c7f92ea1585a82e7b631c57b1bcef13f9d8b508142fdc` |
| 15 | `theorem` | [fourier_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-zero-source-edition-2.md) | 184 | `result-track:b33a2ed8e1d19c01db91a9a67cea1ebdd9460cbb5f83e9a580b3de13813ea9a2` |
| 16 | `theorem` | [fourier_zero'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-zero.md) | 191 | `result-track:426a1888fc5fba1ae78efe932a48e6804b3d31a5857e006b60be7669b66d2d66` |
| 17 | `theorem` | [fourier_eval_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-eval-zero.md) | 196 | `result-track:3031479dc4e5fd6a35b65db9d410a356adf2e5addc8c20a951a5597e7d74bc7c` |
| 18 | `theorem` | [fourier_one](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-one.md) | 202 | `result-track:af0c1ad1840683b5152a2e4010fc6675cdd981239d887630730482e25d5d5fb1` |
| 19 | `theorem` | [fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-neg-source-edition-2.md) | 206 | `result-track:ad31689501f542819b281bd3d00b4caf29a5ca6604c1f169bbf8f1a024b03424` |
| 20 | `theorem` | [fourier_neg'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-neg.md) | 215 | `result-track:5dc8b56d871e4ee2a51fb37523b6aa28154bb147eb89dad6f738f067dadacf6e` |
| 21 | `theorem` | [fourier_add](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-add.md) | 219 | `result-track:025327b39c7dd20d42dcaf299ab1a37c20e68f8c92081b2507ba4ceae11b1e6d` |
| 22 | `theorem` | [fourier_add'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-add-source-edition-2.md) | 224 | `result-track:3fb919da46b013f48b27b0bfa7b512d27bb64d487a1600bb6a5c3f51f9b8e601` |
| 23 | `theorem` | [fourier_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-norm.md) | 228 | `result-track:cc5531bbcb96606aca07d3e854df59ebd5a12e95ab9397b08aa1f1a37e4aba7a` |
| 24 | `theorem` | [fourier_add_half_inv_index](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourier-add-half-inv-index.md) | 236 | `result-track:44b6a9edfc72c4c6bdb885234c2d5bba257e115287dbd2b2ef4e82207e649deb` |
| 25 | `def` | [fourierSubalgebra](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriersubalgebra.md) | 249 | `declaration-track:50579dcd69c46af0cc3f0a8e110756546c9cf3bc8fda43a5466b3d9f2f3dfda2` |
| 26 | `theorem` | [fourierSubalgebra_coe](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-coe.md) | 262 | `result-track:c53e422163593f407216951751a9a698c9099b7b7628cdb6918128cc8bb61535` |
| 27 | `theorem` | [fourierSubalgebra_separatesPoints](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-separatespoints.md) | 283 | `result-track:cf24d6154b1a68c677f6f2aa879499678ecd0a5354682d71b8cf90d6c5594184` |
| 28 | `theorem` | [fourierSubalgebra_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-closure-eq-top.md) | 293 | `result-track:b2afea247cce2747ddc1d3d53d48b1eebfc75d75f01184533f5ba9aa7e41311f` |
| 29 | `theorem` | [span_fourier_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/span-fourier-closure-eq-top.md) | 299 | `result-track:4cf4d725f925a0ad5866921ba4f536b6aae75f3aa1b8ec1fb901d313cb1c3214` |
| 30 | `abbrev` | [fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourierlp.md) | 307 | `declaration-track:f649386589bf5604b7c10c018ea63e6690f1eb7d24392b98572425f825429ae4` |
| 31 | `theorem` | [coeFn_fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/coefn-fourierlp.md) | 312 | `result-track:e53b536ce4efd2955e4b63fa5d401c4c0043fe70c9805281990aaa2452032e4e` |
| 32 | `theorem` | [span_fourierLp_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/span-fourierlp-closure-eq-top.md) | 320 | `result-track:784b3c3dfe69551f9af4c873006e9d1f11bf359a780e8c03047259488ad1624b` |
| 33 | `theorem` | [orthonormal_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/orthonormal-fourier.md) | 331 | `result-track:5b195c793e2fe1da5fdb02e93798bb261105586dde4775a85fe9004a5cd1a39d` |
| 34 | `def` | [fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff.md) | 361 | `declaration-track:75d00b07b619a18670b5955896251ced8a1b2aa635a4fc0df1d8285f9ff9c743` |
| 35 | `theorem` | [fourierCoeff_eq_intervalIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-eq-intervalintegral.md) | 367 | `result-track:655b9e90998e5bc48fdb7b409a40ab730277c4d93350e3349190e0f84cc1b1b4` |
| 36 | `theorem` | [fourierCoeff.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-const-smul.md) | 377 | `result-track:f8e0bab82551bd28453117370f4edb80b7d2b410072abb84087867231f485ef8` |
| 37 | `theorem` | [fourierCoeff.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-const-mul.md) | 383 | `result-track:450afc339f41e93a57239f3a757797553bab2f0f644272f28503066491ade9a7` |
| 38 | `def` | [fourierCoeffOn](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeffon.md) | 390 | `declaration-track:d4efb0418674e8357dafa24f091742349b30f14719056c9d16901bd817cdbfa1` |
| 39 | `theorem` | [fourierCoeffOn_eq_integral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeffon-eq-integral.md) | 395 | `result-track:1903a888726fb48fd2e05d8d3b3b831286c4edf1b633a79af9a91d20ac96d97c` |
| 40 | `theorem` | [fourierCoeffOn.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeffon-const-smul.md) | 407 | `result-track:4ff8c0eebdbeeed83c526f26af5dea9e7cbe540fd123ffa471fb2fb7de508a2b` |
| 41 | `theorem` | [fourierCoeffOn.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeffon-const-mul.md) | 413 | `result-track:a2bc259dc2b2f4b86241e5216c57a46f86829404d118459e2240343f387ec5fd` |
| 42 | `theorem` | [fourierCoeff_liftIoc_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-liftioc-eq.md) | 418 | `result-track:a85f105af9220d5d6d6d8bcca9399c971157ef7dd5f7d48084fc5b98654d64bb` |
| 43 | `theorem` | [fourierCoeff_liftIco_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-liftico-eq.md) | 428 | `result-track:8246ed115a5ff9fdcea3be97b14eb114939e6432b39f8da55b1e0befb69dee5b` |
| 44 | `def` | [fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourierbasis.md) | 445 | `declaration-track:ff39d2a86e19296573f729af7d502706e4399f4d65d2e0a548b90d6013b7bc82` |
| 45 | `theorem` | [coe_fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/coe-fourierbasis.md) | 452 | `result-track:cc726d55db1305560c4d55dd4ccb4906d8fc24c01e804f72c80cb7f89433ed08` |
| 46 | `theorem` | [fourierBasis_repr](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fourierbasis-repr.md) | 459 | `result-track:6d860059b56c99fb8000d1a43c60363375702cba3e92971fafe6240cea417c17` |
| 47 | `theorem` | [hasSum_fourier_series_L2](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/hassum-fourier-series-l2.md) | 470 | `result-track:0a5eefc527288f0f00ac82923a87f766ac6c95a10862419c65debcf24b001db0` |
| 48 | `theorem` | [tsum_sq_fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/tsum-sq-fouriercoeff.md) | 479 | `result-track:3cce8d843a2846a65c2545ebd6c0580072737caf990f98565dc02e64ec9c10a4` |
| 49 | `theorem` | [fourierCoeff_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeff-tolp.md) | 500 | `result-track:fd41d90f436ab4d4e0f6d3d420dc5d83f10dfecb067922dfdc7e27238632abfa` |
| 50 | `theorem` | [hasSum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/hassum-fourier-series-of-summable.md) | 511 | `result-track:ba331b00de8ac1da95a26477ac9ed7f863d260a077910a9b5e30a0dc5c9064af` |
| 51 | `theorem` | [has_pointwise_sum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/has-pointwise-sum-fourier-series-of-summable.md) | 522 | `result-track:00029767b5481c240fb7e7441b6f53c774b4a1fd934220189dcd7c2548354f23` |
| 52 | `theorem` | [hasDerivAt_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/hasderivat-fourier.md) | 539 | `result-track:43c384496b555bbd47bfdc1b561e24e6f7a1cb9c45ef459390ddd8459f3891b7` |
| 53 | `theorem` | [hasDerivAt_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/hasderivat-fourier-neg.md) | 550 | `result-track:944b303eaec3aa14e807b82d14f7e14ff0f6ab7321ae5c202f237c70208ef91e` |
| 54 | `theorem` | [has_antideriv_at_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/has-antideriv-at-fourier-neg.md) | 558 | `result-track:a26b1bf0daae0bbd8c86b5ba2dcaaa6626e82bb63c7de653a1fb3a91c9598535` |
| 55 | `theorem` | [fourierCoeffOn_of_hasDerivAt](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleNamespacedScaledExpMapPeriodic.lean/declarations/fouriercoeffon-of-hasderivat.md) | 571 | `result-track:564be394aa2f1d0ac508d8e9ebada3268487d37a0c1d15346f1631818a8a5612` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cf27f4d54969f7c16bdb4de0c3436d5327019c0d8c7e69a839f5e909bf31322 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant2bdf6faf3414232d4298149375c99862ec157892b2b01f3cfcb32c7af30ffbfb.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant2bdf6faf3414232d4298149375c99862ec157892b2b01f3cfcb32c7af30ffbfb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
