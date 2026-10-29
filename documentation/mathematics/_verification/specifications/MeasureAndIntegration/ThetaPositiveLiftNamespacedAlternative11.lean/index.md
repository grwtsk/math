# Verification target: Theta Positive Lift Namespaced Alternative11

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "330633acc6d5e8ebf52cf915dd34798b0403eed0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `330633acc6d5e8ebf52cf915dd34798b0403eed0`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiModes` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaGaussianTerm](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussianterm.md) | 32 | `declaration-track:dfca2a3c6686813748649f4e34d39e08f196ad3bf670263250b6de8be60c3651` |
| 2 | `def` | [thetaGaussianSum](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiansum.md) | 36 | `declaration-track:275171222b01bdb1cca050e66e58d15936582567d1fe9d97234a07a08f9acb2e` |
| 3 | `theorem` | [thetaGaussianTerm_nonneg](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussianterm-nonneg.md) | 38 | `result-track:6cfd9ccd4c11c6f42dfe1d6fb0bb9541b270875853df2d736576fb4c210b3304` |
| 4 | `theorem` | [thetaGaussianTerm_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussianterm-summable.md) | 43 | `result-track:55164cadc9c0d3baaea562a1e38c762bdf116ee29596a50ffb7d1c54b7191f4b` |
| 5 | `def` | [thetaGaussianCompactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiancompactbound.md) | 48 | `declaration-track:78f242ee23c3d9e60f4bc5c9d86fe894b4818c00ea44c81c47b5b3ac1bc71585` |
| 6 | `theorem` | [thetaGaussianCompactBound_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiancompactbound-summable.md) | 51 | `result-track:b6a346dbe82509871eb6838a12bc6376260143899278bf036b497beba29fd72b` |
| 7 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussianterm-norm-le-compactbound.md) | 55 | `result-track:f54f2d6851c0eda9b18666a25d58cb227c5008c17a5603fcea03b279072bb222` |
| 8 | `theorem` | [continuous_thetaGaussianTerm](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/continuous-thetagaussianterm.md) | 68 | `result-track:d8de9609824fdce1d9f0bf01938589ace482613891d08c18aadfc90421a103a8` |
| 9 | `theorem` | [continuous_thetaGaussianSum](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/continuous-thetagaussiansum.md) | 72 | `result-track:0e54af8df981c97e125ea9742c6f1205d10e1bac37412e304248346aeb471af1` |
| 10 | `theorem` | [thetaGaussianSum_nonneg](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiansum-nonneg.md) | 83 | `result-track:e05c62fe810067a41a54242d1b9a1b49f97bb717764148b41d5fb003b7df3cf2` |
| 11 | `theorem` | [thetaGaussianSum_le_superexp](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiansum-le-superexp.md) | 87 | `result-track:23ae17ae29f8eae130eeb6822819015edfc72e3b1de0de46ad8de9a275549616` |
| 12 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiansum-poly-norm-le-tail.md) | 121 | `result-track:f37e36cf8e018a04b3e45cd8b102e1d7dd2fc683a2b1a035840927f91ba4e32f` |
| 13 | `theorem` | [thetaGaussianSum_poly_integrableOn](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetagaussiansum-poly-integrableon.md) | 157 | `result-track:9e26f8310d53f1eb157976a7fb317d2975ccbcb91dddb34ea5ab3023a79e9845` |
| 14 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermderiv-eq-gaussians.md) | 180 | `result-track:2b12c909edb768f820455c21b87cd8d2b0e34e4a47436f7609aaefa35ed839ed` |
| 15 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermsecondderiv-eq-gaussians.md) | 194 | `result-track:70490c3790712ec41ec88aa4b50702d137326d102393b5d11d1791ad7f805f04` |
| 16 | `theorem` | [thetaPhiTermDeriv_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermderiv-summable.md) | 212 | `result-track:44cbd7411bcd87556670cd59fc8638b831bf3030a767a74304d8affeb2dc9f1c` |
| 17 | `theorem` | [thetaPhiTermSecondDeriv_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermsecondderiv-summable.md) | 220 | `result-track:5c4c9cfc1cc3a0e9f70cef4d7151aba0f9aa88607457f56365f02ec051c7ca7d` |
| 18 | `def` | [thetaPhiDerivCompactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphiderivcompactbound.md) | 230 | `declaration-track:89c3a7646d9febff5f87411abe3c2b85712ca8c6e3501c9749c512d169e93b6f` |
| 19 | `def` | [thetaPhiSecondDerivCompactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphisecondderivcompactbound.md) | 236 | `declaration-track:15159b56da3d526b1bce12d677376d6a93aafca5432a2ba83719657f6321ec3c` |
| 20 | `theorem` | [thetaPhiDerivCompactBound_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphiderivcompactbound-summable.md) | 242 | `result-track:5ba06016eba19c5f4b96933d4f4db8059cb630a169a2fc6be9d076f17de490c5` |
| 21 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphisecondderivcompactbound-summable.md) | 248 | `result-track:dce5cd2164c0fb5b75a7a6d5fd1f9ceaf275bdf6955ca2f9d74967ea5ac209eb` |
| 22 | `theorem` | [norm_sub_sub_le_real](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/norm-sub-sub-le-real.md) | 255 | `result-track:c2c325db29c6e2faba0bbef22d53744e45597c63f7389a8071c7f83defb77130` |
| 23 | `theorem` | [norm_sub_sub_add_le_real](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/norm-sub-sub-add-le-real.md) | 259 | `result-track:c23d47ebf4fb1dc2ac1216dfdc62be72e5e98c38ca31f4f2f070f34131050f67` |
| 24 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermderiv-norm-le-compactbound.md) | 263 | `result-track:ee9d3669c5e3795f90c44384421b121a7ee5b9647456075c70e0e4e2c58f1b3a` |
| 25 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 275 | `result-track:eae305bcd4df74df48ff233e9ef3f415a30087d9d0b77eb54bf1e84df9a3c44b` |
| 26 | `def` | [thetaPhiRawD1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphirawd1.md) | 290 | `declaration-track:281212693acdd749d138c9c80b2b489426d9eb20e621bcd3166dae259f24bb72` |
| 27 | `def` | [thetaPhiRawD2](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphirawd2.md) | 293 | `declaration-track:8f5163bfa38cb7666871497db01b480a396b145a7d604e90a0da3d1406e8ab3d` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_raw](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphi-raw.md) | 296 | `result-track:6df8f9aaf1e3f33598cfd6c79bedc2cbf2a002ebea61c4825fd971453d4b4f46` |
| 29 | `theorem` | [hasDerivAt_thetaPhiRawD1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphirawd1.md) | 305 | `result-track:8a34329f46911822c28b1575e81f8fdb1820e373ab39eacf326c0f60187f3c48` |
| 30 | `theorem` | [deriv_thetaPhi_eq_raw](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/deriv-thetaphi-eq-raw.md) | 315 | `result-track:5490bf1f8725ab5aef4220cfeba1d7abd04d3d6ad70de836c6f89c63b41680a7` |
| 31 | `theorem` | [continuous_thetaPhiRawD1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/continuous-thetaphirawd1.md) | 318 | `result-track:fb970a5fe3e966308e5d34676f4533913bde0c72e568ba51b077ff54b1758521` |
| 32 | `theorem` | [thetaPhiRawD1_eq_gaussians](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphirawd1-eq-gaussians.md) | 321 | `result-track:cdd89bd827033b286f17cd716138f2ef9647a57f33c0cf5d02239af9b66e301d` |
| 33 | `def` | [thetaPhiD1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphid1.md) | 339 | `declaration-track:7ccea01528d5c38dbe2349da43500816fe1eeb19c79a4b2798a49023e2441d23` |
| 34 | `def` | [thetaPhiD2](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphid2.md) | 342 | `declaration-track:2958a4202f33aec8e3ceda39c03074137604c35a1de655fa4dc9e69a14f89b25` |
| 35 | `theorem` | [thetaMode_den_ne_zero_of_modeA](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetamode-den-ne-zero-of-modea.md) | 346 | `result-track:22867e36f550a48b981bf094999bd75602d1f61dfea1e26ab1efeabf85cd0d7c` |
| 36 | `theorem` | [thetaModeA_gt_three_halves](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetamodea-gt-three-halves.md) | 358 | `result-track:14110a78cd517585257f782f3bf2dd7df8fcbc06aa339895a9703142a2221ec1` |
| 37 | `theorem` | [thetaPhiRawD1_eq_D1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphirawd1-eq-d1.md) | 365 | `result-track:b4136cb9ca2ae49314806d64e4c0f088e84c7be3033de51d7d9662090bfaea01` |
| 38 | `theorem` | [thetaPhiRawD2_eq_D2](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphirawd2-eq-d2.md) | 370 | `result-track:9cb4b1f2bfcf6005b46e53e1521538fada122e00b7d10b956bb502ea7fdbb9ca` |
| 39 | `theorem` | [thetaPhi_mul_score_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphi-mul-score-summable.md) | 376 | `result-track:d0d59c92dc84c796529dbf7e723d04f4dc0fa1754cc68367c4b930a8a7724c70` |
| 40 | `theorem` | [thetaPhi_mul_score_sq_add_curvature_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphi-mul-score-sq-add-curvature-summable.md) | 382 | `result-track:2f9f5d7001350249e3d8a5407cf5606e6ff2a8b2ea162d57723b9bfcb494f40b` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_of_modeA](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphi-of-modea.md) | 390 | `result-track:89dadcca57ed5a9138f640ba52d2585bbab25b83d30d20576fe5d58a5c9d4f0c` |
| 42 | `theorem` | [hasDerivAt_thetaPhiD1_of_modeA](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphid1-of-modea.md) | 396 | `result-track:1214111fb7d59f8efbb6836cb9a16a9b709ab211fabf43f4be122b338fa5b50b` |
| 43 | `theorem` | [hasDerivAt_thetaPhi](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphi.md) | 407 | `result-track:347d9bba87405ec1d5ab97035c9efa8486ef0e8430e1198cc32285886a68fc5e` |
| 44 | `theorem` | [hasDerivAt_thetaPhiD1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-thetaphid1.md) | 412 | `result-track:873fbe77579df42a14fa48d7903bdb80e21dec58c8a67e5ef27d34aa12400714` |
| 45 | `theorem` | [deriv_thetaPhi_eq_D1](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/deriv-thetaphi-eq-d1.md) | 416 | `result-track:1182e0a0e17035435d028ccb4b75d6711353b484cb6362c76db9369784d7b938` |
| 46 | `theorem` | [hasDerivAt_deriv_thetaPhi](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/hasderivat-deriv-thetaphi.md) | 420 | `result-track:9878110714bc2a8c1d132417c36cf09e8f220f54d60a3394efbe37136294db26` |
| 47 | `theorem` | [deriv_deriv_thetaPhi_eq_D2](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/deriv-deriv-thetaphi-eq-d2.md) | 426 | `result-track:1174e3d1fe3c7e1b00032c22f5692acf998bd816a7034ef5dae7d3c268eac244` |
| 48 | `theorem` | [thetaPhi_mul_y_pow_summable](../../../../MeasureAndIntegration/ThetaPositiveLiftNamespacedAlternative11.lean/declarations/thetaphi-mul-y-pow-summable.md) | 431 | `result-track:2f9d5c91cf026b585e3022d1b6162378c4f8b08e84ddd359b84ec9a8b0a35047` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a66df863e7bfda11ef84b1a5108bfc45368a2f9175863727d180ac0c073c3b7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variantc77b38436227e19ec8babddaf5b3d84cac446144fe9b86b3a0d25dfb9a5ccec0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
