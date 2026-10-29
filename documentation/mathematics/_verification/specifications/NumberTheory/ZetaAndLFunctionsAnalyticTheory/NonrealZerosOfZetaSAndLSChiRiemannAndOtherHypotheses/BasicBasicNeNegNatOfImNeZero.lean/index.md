# Verification target: Basic Basic Ne Neg Nat Of Im Ne Zero

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d33d26edcbb986938c335bb99f43dedafa396fb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d33d26edcbb986938c335bb99f43dedafa396fb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.ZetaReflect` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Fold` — import line 18; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 19; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.CountByIntegral` — import line 20; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.XiLogDeriv` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Shift` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ne_neg_nat_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/ne-neg-nat-of-im-ne-zero.md) | 37 | `result-track:5c5de40c5493fb4b19c8ecdf1ccab3dfabb1dff8d627b16d119dfb9499fb661c` |
| 2 | `lemma` | [ne_one_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/ne-one-of-im-ne-zero.md) | 40 | `result-track:cf1b39399a2a2f084febf2331161bd9cf7d3012856e0329e492ccd93ad4f3f35` |
| 3 | `lemma` | [ne_zero_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/ne-zero-of-im-ne-zero.md) | 43 | `result-track:bdcb2e7b70bf6c2c808ed06b515c6c8732573ce79c554210f541a3df0bddd77f` |
| 4 | `lemma` | [im_one_sub_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/im-one-sub-ne-zero.md) | 46 | `result-track:5c6b0bb9a7b73ff17251a77ec35c9a080c37807f3aed8d0b6683a890e74e951b` |
| 5 | `lemma` | [half_ne_neg_nat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/half-ne-neg-nat.md) | 49 | `result-track:4a9620d827ad126e74fca77c94e0e97354b2361ded67dc26f29179eae57844af` |
| 6 | `lemma` | [Gammaℝ_ne_zero_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/gamma-ne-zero-of-im-ne-zero.md) | 54 | `result-track:5bfaff7539bf596111e4bdc2de4fb54bbbefdee926239a2f3173061af36bdca6` |
| 7 | `lemma` | [differentiableAt_Gammaℝ_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/differentiableat-gamma-of-im-ne-zero.md) | 59 | `result-track:fb129f2b44ba2242f90c55d35017fc52e23c6f6d0e790233ad6fd411756bde2a` |
| 8 | `lemma` | [isOpen_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/isopen-im-ne-zero.md) | 68 | `result-track:94a1fadf0c240d02ea5af654d5192f2cf4cfa1aca8c82eefb250acfe23dbf827` |
| 9 | `lemma` | [analyticAt_Gammaℝ_of_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticat-gamma-of-im-ne-zero.md) | 70 | `result-track:6ed41329a7d5f54c357922253689515f5a0e984ae4c9e4e1ea8a0e2a42b0f88c` |
| 10 | `lemma` | [analyticAt_Gammaℝ_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticat-gamma-one-sub.md) | 75 | `result-track:245ee4babf9ee9ca24567c8e08563d1ce8e45d6df85c22b7996f111a34b0b5b3` |
| 11 | `lemma` | [chiFE_def](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/chife-def.md) | 80 | `result-track:7edfc40ae5ee6c3ae3747d660ae6f9f8fb911e4292e10b323c91a7d4416f5b49` |
| 12 | `lemma` | [chiFE_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/chife-analyticat.md) | 82 | `result-track:e9650c49feb1ff37cf410889f4d276fbbe532180f57aa9a5ccef8144a0bc4a59` |
| 13 | `lemma` | [chiFE_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/chife-ne-zero.md) | 88 | `result-track:8193decde97d61db4095334a141617eba21f9195e420f0b58b13d5de752ec840` |
| 14 | `lemma` | [chiFE_mul_chiFE_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/chife-mul-chife-one-sub.md) | 91 | `result-track:eb129c77e541006bb8ad08822899fe6ed03e434f63ca6f52eca5756e869a542a` |
| 15 | `lemma` | [logDeriv_chiFE](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/logderiv-chife.md) | 96 | `result-track:f1734fb21ac38adbf0559cf9187d0191b4817b33f71dbfafaea095c3cabd09dc` |
| 16 | `theorem` | [L2_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/l2-eq.md) | 113 | `result-track:06afc0c6f55be05605d7bbf5d926b52df8fff4dea0cf694bf604780f18fe21fc` |
| 17 | `theorem` | [L2_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/l2-one-sub.md) | 116 | `result-track:89e5f5ecdd6451915b83ebee1c738a888be3fcae19a3d46bbc1ce3f2596474ac` |
| 18 | `theorem` | [L2_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/l2-conj.md) | 119 | `result-track:a38ddcab55130082ced3523d2d046f4534c1c39bd2c2abe421c0942ceb7b3e15` |
| 19 | `theorem` | [L2_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/l2-analyticat.md) | 124 | `result-track:dc35f3ca5b5932cdefd9de508c6b87ed4dad4aff1ddcc85a5f0b57fa0086dcca` |
| 20 | `theorem` | [deriv_chiFE](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/deriv-chife.md) | 131 | `result-track:14cd43c13b25e4054271eda56775b280a0e4a104e4f24901a557b332aa44d3e3` |
| 21 | `theorem` | [zeta_eq_chiFE_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/zeta-eq-chife-mul.md) | 137 | `result-track:37d80c1ef53eb6e665432194c48a67f7fb9379924a45d7c52dae4cff2e26a12f` |
| 22 | `lemma` | [isOpen_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/isopen-ne-one.md) | 154 | `result-track:c1c1d108ed4d5dd33b765419af5fcdaa4c9d97aed705b166702115f76fa71f28` |
| 23 | `lemma` | [analyticAt_riemannZeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticat-riemannzeta.md) | 156 | `result-track:e435fda1175b0a39235ffeb2ed2adc05d20487260d04840132c24156dc5482a3` |
| 24 | `lemma` | [analyticAt_deriv_riemannZeta](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticat-deriv-riemannzeta.md) | 161 | `result-track:8f794e0161fa6965976d6403ef53223e6d288ee86452da74ee4b32698d9aa9dc` |
| 25 | `theorem` | [hardyW_analyticAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-analyticat.md) | 165 | `result-track:2b6fa813259985b10529fc7333f09f19a4403dd8e2aa243b054382f82102da08` |
| 26 | `theorem` | [hardyW_differentiableAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-differentiableat.md) | 171 | `result-track:714b7eb412ae350691f16e71798b548526fb46c98cb64f7bdb6878a14d194341` |
| 27 | `theorem` | [hardyW_analyticOnNhd](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-analyticonnhd.md) | 174 | `result-track:1de10d9f9886db5bd189a66c4529fc2fc854fec2b072a3bd1268a25fed6c6104` |
| 28 | `lemma` | [deriv_conj_of_symm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/deriv-conj-of-symm.md) | 177 | `result-track:996ab140b2f56cdb21b78577e1089d15bded7a885108b44045430d451574e5c3` |
| 29 | `lemma` | [deriv_riemannZeta_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/deriv-riemannzeta-conj.md) | 186 | `result-track:ee036ced54f92f8bb2cc936211479e017ff3537828be657398952b291c63de1c` |
| 30 | `theorem` | [hardyW_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-conj.md) | 195 | `result-track:2c3eef6eed80778e36d444a2132befcbd16b0217fe01d605c94622fb30d6a8f9` |
| 31 | `theorem` | [deriv_riemannZeta_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/deriv-riemannzeta-eq.md) | 201 | `result-track:7146f7053a463739635261f5b6ddfca44966ddddf05244617bbeb041ffc71aca` |
| 32 | `theorem` | [hardyW_eq_neg_chiFE_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-eq-neg-chife-mul.md) | 221 | `result-track:545d0e75918542e035cdff96302b9604649758f97bd77bcd054eb21899d55803` |
| 33 | `theorem` | [hardyW_one_sub_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-one-sub-eq-zero-iff.md) | 226 | `result-track:56fd3529378eafcbc644cd3ce0d20e6d8822093012c659a038181cba19bd411e` |
| 34 | `theorem` | [hardyW_conj_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/hardyw-conj-eq-zero-iff.md) | 230 | `result-track:c938e39313d5fa4651672fd008b9acf530405d77472d8207f6beb29ad4886a3f` |
| 35 | `theorem` | [isWZero_reflect_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/iswzero-reflect-iff.md) | 234 | `result-track:57872c4a734a538407a7ed0973f6333effc1ea1bbef6b99910ac237c19a89234` |
| 36 | `theorem` | [analyticOrderAt_hardyW_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticorderat-hardyw-one-sub.md) | 247 | `result-track:89fd724e4d03b763491a66f16ae26237e0f11856bf1ce3212cd9ab8cf130034a` |
| 37 | `theorem` | [analyticOrderAt_hardyW_conj](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/analyticorderat-hardyw-conj.md) | 268 | `result-track:adf43d8b8d6149e9e51b1b0d763ebdec54dbfc267d2baf7899dccb0dc033bf6a` |
| 38 | `theorem` | [wMult_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/BasicBasicNeNegNatOfImNeZero.lean/declarations/wmult-reflect.md) | 280 | `result-track:c6aa3689c22646d2242b169c098c70ddbee904bf786575514bfedfbdd1f3f98f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d1114e035af3ab58903d1e341b789078c81fe7242f5ac33d0f38b71b2c2ddb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant15f5155467d0dfc0e58244509a184f3c42bcd1b140349d894a000cef7fe8554b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
