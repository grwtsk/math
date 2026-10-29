# Verification target: Add Circle Scaled Exp Map Periodic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05f57442e7387d37ce08a7686356ae18bbd49e52",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant89b76aa4ff946f17cb595ce69624ced093614ef4e4c7ba9edb3537f8cac855aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/index.md) · [Full source](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05f57442e7387d37ce08a7686356ae18bbd49e52`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant89b76aa4ff946f17cb595ce69624ced093614ef4e4c7ba9edb3537f8cac855aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant89b76aa4ff946f17cb595ce69624ced093614ef4e4c7ba9edb3537f8cac855aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ContinuousMapDense` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.L2Space` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Periodic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.StoneWeierstrass` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.FundThmCalculus` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/macro-rules.md) | 66 | `declaration-track:4f1c465396d1dfa5171111ced5ba1242534d56c696f4670e58cbdd2d76a57a71` |
| 2 | `theorem` | [scaled_exp_map_periodic](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/scaled-exp-map-periodic.md) | 79 | `result-track:3e502f6695f7feb74f93d2c5553865c430c3ce6cb539f7bcf03c74a83df70c05` |
| 3 | `def` | [toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/tocircle.md) | 88 | `declaration-track:66ad087e5e1c1276c06331d431060589b896a6e2fb4a2920a79ffe4af815c04b` |
| 4 | `theorem` | [toCircle_add](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/tocircle-add.md) | 92 | `result-track:9d80ec11d4b2f42108282c71889a6ea3945bd1307d959166f9bcdc86fef360c5` |
| 5 | `theorem` | [continuous_toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/continuous-tocircle.md) | 100 | `result-track:a5ebea007c4a983411a239efc1f5bf303fbf7f87edda8d8aa685b642f8f67f1d` |
| 6 | `theorem` | [injective_toCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/injective-tocircle.md) | 104 | `result-track:0eadf559fd773e5449082650072879f8cf9597735bf88f09d0d1aae29f17ad4a` |
| 7 | `def` | [haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/haaraddcircle.md) | 126 | `declaration-track:8cd2d07a708beca79d9e6194ca82b937eb576e101e9bc3c0a32df79d785bfab9` |
| 8 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/instance.md) | 131 | `declaration-track:0912b728d3cf314403e0bad3dd1a07a19bc26ab79f84d10a86c6e4e75cebe92f` |
| 9 | `instance` | [(anonymous)](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/instance-source-edition-2.md) | 134 | `declaration-track:f0a91f17026cfdd403358c817948009d41468c3fbeda9b23f6066605fa7ec8da` |
| 10 | `theorem` | [volume_eq_smul_haarAddCircle](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/volume-eq-smul-haaraddcircle.md) | 137 | `result-track:6e55f1efd2a0028fa4e864464f5407f51698a176a21b18e83ca50cae15791c34` |
| 11 | `def` | [fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier.md) | 150 | `declaration-track:9c3e954b31a9466356aa3bb2e9e50d00f8e2c9e77be878a9e1e763d6aea4a51c` |
| 12 | `theorem` | [fourier_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-apply.md) | 156 | `result-track:967b559a5077bc4c6914b35dcd8a4868a0f84931adbfca4bb93dfbfb6a5f34c2` |
| 13 | `theorem` | [fourier_coe_apply](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-coe-apply.md) | 161 | `result-track:09ea23b2d5eca128ea60e8383f37bf5d1c882b611864b31c3d55188571f393d6` |
| 14 | `theorem` | [fourier_coe_apply'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-coe-apply-source-edition-2.md) | 171 | `result-track:a7cf504f618ecc883e04e75b97763c7120f2320f78e444865c59a697baf03b8b` |
| 15 | `theorem` | [fourier_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-zero-source-edition-2.md) | 176 | `result-track:b318e34ce5b2d2856bc902de515ec7c1ee2d44c6ba2adc8c6c4b9fe77a0f66a1` |
| 16 | `theorem` | [fourier_zero'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-zero.md) | 183 | `result-track:94dcf30a4e4504102a8cffe879874b3c94c1ed391dc24fef49ed0ba13a2f9772` |
| 17 | `theorem` | [fourier_eval_zero](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-eval-zero.md) | 188 | `result-track:9a9853bfcb3f82dc48bd40ee3359633a586d6b549ff26cde00155eeb994f9dd7` |
| 18 | `theorem` | [fourier_one](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-one.md) | 194 | `result-track:e3138a897cdfb8fa44f0b4a6b5c701051e192b8055c83f9828f684603b93660b` |
| 19 | `theorem` | [fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-neg.md) | 198 | `result-track:05da9f0be3734701c8cad2ba61cf84197d7b6adc9e46c40d434b174581d72776` |
| 20 | `theorem` | [fourier_neg'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-neg-source-edition-2.md) | 207 | `result-track:1ae778ff1b60cdbe4c257e82fba98d6320bef202e66c1879701dde668883d9b8` |
| 21 | `theorem` | [fourier_add](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-add-source-edition-2.md) | 211 | `result-track:b5c92bb2cc19dded486b8748dabcda3e5a5afd0c9c393c70642c699723651019` |
| 22 | `theorem` | [fourier_add'](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-add.md) | 216 | `result-track:63076d4f72ff626dbc2040fb355c5db92a0f32ce92cfb5486bda459c8fc5fdaf` |
| 23 | `theorem` | [fourier_norm](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-norm.md) | 220 | `result-track:366ef05acf4ed043696611c5a44afa449bafa9a25d979a9fe7d42c385e766da5` |
| 24 | `theorem` | [fourier_add_half_inv_index](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourier-add-half-inv-index.md) | 228 | `result-track:9ac23c5e0728984d1f382da57ccdbd3dd2c39d356ab8e909770f6f7edeb6988b` |
| 25 | `def` | [fourierSubalgebra](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriersubalgebra.md) | 241 | `declaration-track:aba330eb30ce41745e7606f6ad4ab991337c503685e86572c19b6a5269c19458` |
| 26 | `theorem` | [fourierSubalgebra_coe](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-coe.md) | 254 | `result-track:5fc6c01d442543581a5d59803ecacfd325dd77ab201a11081e14910ff1d4ed3b` |
| 27 | `theorem` | [fourierSubalgebra_separatesPoints](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-separatespoints.md) | 275 | `result-track:6ee6ea5007a78495a2708db5fea611eb8da7b66dede7eac56f72573f17a74f7c` |
| 28 | `theorem` | [fourierSubalgebra_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriersubalgebra-closure-eq-top.md) | 285 | `result-track:1f1e1723bd5c20120484c53545833358726eecf52062b90e8e984f08397525b0` |
| 29 | `theorem` | [span_fourier_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/span-fourier-closure-eq-top.md) | 291 | `result-track:bcf3337ade0dc9bcdefd3f8057c850e2b85d91a97ae8f57abce7cdb87c94c12a` |
| 30 | `abbrev` | [fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourierlp.md) | 299 | `declaration-track:c5822fbc9158bb02480cef08e95779bfdd4b6375ce8923c858093eed8f9417b0` |
| 31 | `theorem` | [coeFn_fourierLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/coefn-fourierlp.md) | 304 | `result-track:ed13473139d9e26579faef60562a46b6f5840f353df34461402e9a52b9927473` |
| 32 | `theorem` | [span_fourierLp_closure_eq_top](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/span-fourierlp-closure-eq-top.md) | 312 | `result-track:2823eac1367e7d813fcfc6eb57f9b63c911ea034c9131fa22716657dbdaf22e8` |
| 33 | `theorem` | [orthonormal_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/orthonormal-fourier.md) | 323 | `result-track:d022be61c2ca5dc5e69a8a8346915c28cc32a5251a13e4fda43d564a78e3be62` |
| 34 | `def` | [fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff.md) | 353 | `declaration-track:62bb3c6105fd5751ce52a52e49127f338efa127ed54239f418d46715af91d999` |
| 35 | `theorem` | [fourierCoeff_eq_intervalIntegral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-eq-intervalintegral.md) | 359 | `result-track:00d6896e33e17333ba38a3008dcf782d0ca560603037a2606b76e5878886326d` |
| 36 | `theorem` | [fourierCoeff.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-const-smul.md) | 369 | `result-track:074e6fcd11c5d0a0268f1ab749abbfb16d830a7f606ed0dafbe18faf24d07f29` |
| 37 | `theorem` | [fourierCoeff.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-const-mul.md) | 375 | `result-track:74fdd0ee0eeb8b727a1ba7aa928c8dfab5d5730c1c5bf787ce4104eacc44f95d` |
| 38 | `def` | [fourierCoeffOn](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeffon.md) | 382 | `declaration-track:b232ef04e2cd73c94698be51ec05d750b83af67e42efe872be477c1a2d293e25` |
| 39 | `theorem` | [fourierCoeffOn_eq_integral](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeffon-eq-integral.md) | 387 | `result-track:79a49254868cceb82456c9017fcd297b29716aa326357f1dc92e5a2489822854` |
| 40 | `theorem` | [fourierCoeffOn.const_smul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeffon-const-smul.md) | 399 | `result-track:0d834d54b65dbff0696530c3546148cf6a166740b5fc9d756ff50b8c62d8504a` |
| 41 | `theorem` | [fourierCoeffOn.const_mul](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeffon-const-mul.md) | 405 | `result-track:d3c199bb3d1bbbbb8883bafaf38ba9235073cad63eb5866b49e5af9e054f3787` |
| 42 | `theorem` | [fourierCoeff_liftIoc_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-liftioc-eq.md) | 410 | `result-track:04911f885df5da251b29769b98b681e9fb881845303a81b147d0121e4014c596` |
| 43 | `theorem` | [fourierCoeff_liftIco_eq](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-liftico-eq.md) | 420 | `result-track:04802ca30abd97c130b9dc4a091ab0fffa5765fecd7e86f28c5b9cc97f919566` |
| 44 | `def` | [fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourierbasis.md) | 437 | `declaration-track:b3fa2fe7713249786a0011a96e5a326de22bf34202ee6b206089a7436fa6f412` |
| 45 | `theorem` | [coe_fourierBasis](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/coe-fourierbasis.md) | 444 | `result-track:e24e35f264b67de9ce36f6b3a3eb25fc026935e706be0a6d06de234d572e801e` |
| 46 | `theorem` | [fourierBasis_repr](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fourierbasis-repr.md) | 451 | `result-track:b5400f195bc0028de483028c2d6038feff35d6c69ae095aa1a44a00b771ad07e` |
| 47 | `theorem` | [hasSum_fourier_series_L2](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/hassum-fourier-series-l2.md) | 462 | `result-track:b1dc7546e8976c83d34005d0e8986d53e313a8086f38ac7f179399c971a456d6` |
| 48 | `theorem` | [tsum_sq_fourierCoeff](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/tsum-sq-fouriercoeff.md) | 471 | `result-track:855754150912063d9a9ef3728fd5ae62a58913bfc1f14dcf00136fd477fcb33e` |
| 49 | `theorem` | [fourierCoeff_toLp](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeff-tolp.md) | 492 | `result-track:2806e48b0c7794d25d2d167c2b4191fa6d9900803018778bd1eab2f40c937c94` |
| 50 | `theorem` | [hasSum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/hassum-fourier-series-of-summable.md) | 503 | `result-track:2f69ae287034482bf4727cbaf3d7468ccbd2f59083d654e2002d3016d6c0794c` |
| 51 | `theorem` | [has_pointwise_sum_fourier_series_of_summable](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/has-pointwise-sum-fourier-series-of-summable.md) | 514 | `result-track:77fdd13382d7d4157731496a563cc259ea5ecad8c0919987f75a95ebe88cd0c2` |
| 52 | `theorem` | [hasDerivAt_fourier](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/hasderivat-fourier.md) | 531 | `result-track:9bd151e3c814f6fd5a47fc8cb57f822256a0e5593910948d1a0e69de129db24a` |
| 53 | `theorem` | [hasDerivAt_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/hasderivat-fourier-neg.md) | 542 | `result-track:cd11ab62e97dec9f1cac14f16562cc717d6d89e7746485c85f37e97d09ad7f5d` |
| 54 | `theorem` | [has_antideriv_at_fourier_neg](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/has-antideriv-at-fourier-neg.md) | 550 | `result-track:55f0149862c0314708657487a967fc494da8b79e3f66abe3b9acafb5f5df7b8d` |
| 55 | `theorem` | [fourierCoeffOn_of_hasDerivAt](../../../../HarmonicAnalysisOnEuclideanSpaces/AddCircleScaledExpMapPeriodic.lean/declarations/fouriercoeffon-of-hasderivat.md) | 563 | `result-track:8e3a1c91992b01dd30ca4081aa702e1608e7ad385f89769f15b29088ba1767a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=877acc7991526b15b0c87d1ded1c27de77e0ad0b77cde8880ca4ed2d33561d97 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant89b76aa4ff946f17cb595ce69624ced093614ef4e4c7ba9edb3537f8cac855aa.lean","GRWTSK/_verification/specifications/Analysis/HarmonicAnalysis/FourierAnalysis/AddCircle/Variant89b76aa4ff946f17cb595ce69624ced093614ef4e4c7ba9edb3537f8cac855aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
