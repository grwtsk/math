# Verification target: Source Derivatives

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4da0314f8c37b73dd2f5df5f45a7ebe57fe92446",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDerivatives.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDerivatives.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4da0314f8c37b73dd2f5df5f45a7ebe57fe92446`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiModes` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussianterm.md) | 12 | `declaration-track:fa5afd23fc5aa6ecd2d21a3be81d9d0a32aa049356b21864365dd6dbab7748fa` |
| 2 | `def` | [thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiansum.md) | 16 | `declaration-track:56d3b7cad750d9d47a53fd9fede680a344c15bff1d2f106f77572350866cf520` |
| 3 | `theorem` | [thetaGaussianTerm_nonneg](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussianterm-nonneg.md) | 18 | `result-track:0f61792f3752be217bf2196b04cc0981b849676ee9605ca796d40ee1cad75cb7` |
| 4 | `theorem` | [thetaGaussianTerm_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussianterm-summable.md) | 23 | `result-track:6c4804a07b331a6e511b2f885123c98550fafb31b8c28c6d43e3fa61e5de412a` |
| 5 | `def` | [thetaGaussianCompactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiancompactbound.md) | 28 | `declaration-track:79d733e70684a914c06909cc27c57c583075b0574bb8547608cd656aeda5075a` |
| 6 | `theorem` | [thetaGaussianCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiancompactbound-summable.md) | 31 | `result-track:d9f41cbd7c7b6f76d762b9d328f78ffe7cf11fcc7931738791e14a022341d566` |
| 7 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussianterm-norm-le-compactbound.md) | 35 | `result-track:c19efff19758f86d2beb32da39eb5397ab7b000cd1326f623d047e21da4b5eb3` |
| 8 | `theorem` | [continuous_thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/continuous-thetagaussianterm.md) | 48 | `result-track:2ca34bd82717458886ed10fe6cd563c106f6056c58d0f39c1c24c1a3c96f0acd` |
| 9 | `theorem` | [continuous_thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/continuous-thetagaussiansum.md) | 52 | `result-track:8b7a80148aa4c3a6751356bbf76f0975c73516bfa13cfb679fb4908678c8f87c` |
| 10 | `theorem` | [thetaGaussianSum_nonneg](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiansum-nonneg.md) | 63 | `result-track:4d6d8517fc6e961f1da09dc812b08350655ea6a8c5ecc7e74a3fdad200eb1c87` |
| 11 | `theorem` | [thetaGaussianSum_le_superexp](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiansum-le-superexp.md) | 67 | `result-track:2d5d449791987492ff71fd83514b34493e72f23e3293b7d4151b606d4fc9a8e2` |
| 12 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiansum-poly-norm-le-tail.md) | 101 | `result-track:febe72cd1fdbec5f94128cc424f77ba4591ac826a2969439e88edd72421eff42` |
| 13 | `theorem` | [thetaGaussianSum_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetagaussiansum-poly-integrableon.md) | 137 | `result-track:f05f203973841eab1a1832ae08ee99adda8ac18317b9ace9ff9eda1d2ec8be21` |
| 14 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermderiv-eq-gaussians.md) | 160 | `result-track:bd79cdd54740601c5a6daf27c849a6a80a3a12bb85d42e66007c389bf7a3a7fd` |
| 15 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermsecondderiv-eq-gaussians.md) | 174 | `result-track:85ea279751fe1c0e99a2bc4e432ad01ae49dedaaf44ce4bf6f9df0c036c2f173` |
| 16 | `theorem` | [thetaPhiTermDeriv_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermderiv-summable.md) | 192 | `result-track:4f471dc45f1fa8a67d0c50775783b021616c2732f0439082de71647060ffe6d1` |
| 17 | `theorem` | [thetaPhiTermSecondDeriv_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermsecondderiv-summable.md) | 200 | `result-track:676f244a85a9044c477e77d3f261c4f576f003df71f138dd412b5f8edf18a781` |
| 18 | `def` | [thetaPhiDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphiderivcompactbound.md) | 209 | `declaration-track:6924bbebda8b45d70d49e01f2c3d23707ce044c083fbc1f491ae1a438d1f3994` |
| 19 | `def` | [thetaPhiSecondDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphisecondderivcompactbound.md) | 214 | `declaration-track:e1727d26779aaf295499f3c35409c16bf1609b0ebda6da295b6c4697581b24ea` |
| 20 | `theorem` | [thetaPhiDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphiderivcompactbound-summable.md) | 220 | `result-track:c3b6ee5c0c480ce2008879a949a23622bb37a74eafee52123dfa7eb7944d0680` |
| 21 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphisecondderivcompactbound-summable.md) | 226 | `result-track:7281d739fc8e3d64a9e56f5007b21751c66a36fba41aec8d5a7938488f28e4d4` |
| 22 | `theorem` | [norm_sub_sub_le_real](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/norm-sub-sub-le-real.md) | 233 | `result-track:acb213bd9d456b822dbf26e39c6575f9bfe2893d2cdad9c37a7b6c446b964562` |
| 23 | `theorem` | [norm_sub_sub_add_le_real](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/norm-sub-sub-add-le-real.md) | 237 | `result-track:2f6507efa9b83570c651b6b254855d965495803efd3406d1e453d8b64f413686` |
| 24 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermderiv-norm-le-compactbound.md) | 241 | `result-track:b53d8dde302628fd90e12a3ed885d0977155845f4f3ff8c9354d63e89352e5d8` |
| 25 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 253 | `result-track:8e731e9630ff0b86f17912eb80d6d0acac8d4216c9adc3c6169692cdaa82a5f1` |
| 26 | `def` | [thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphirawd1.md) | 268 | `declaration-track:b3899e9a219665534441510d15a8a055ad7f33c5931032a8f932a933e37c6f0b` |
| 27 | `def` | [thetaPhiRawD2](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphirawd2.md) | 271 | `declaration-track:677082bd396e74abb9a8838bdf10a29e3014c3b1a7dc001465bcd7cdccb552a2` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_raw](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphi-raw.md) | 274 | `result-track:99b1a8c2b74831c5f1f75a7a2eb9a35502421883bf96768c5bc7b0c11b284141` |
| 29 | `theorem` | [hasDerivAt_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphirawd1.md) | 283 | `result-track:d324e85a3ab6c0c0941bd379f8b0df45d609afb92b7f678c75413d0c4da2aa7c` |
| 30 | `theorem` | [deriv_thetaPhi_eq_raw](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/deriv-thetaphi-eq-raw.md) | 293 | `result-track:10d02dcec85e41d3b01b4f4ec919413d1b307f0ede039f8d820ceba2ee870ee5` |
| 31 | `theorem` | [continuous_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/continuous-thetaphirawd1.md) | 296 | `result-track:bbc28c9cca24217502cd36554c1f7d3bcac2f7e24dcc7500e9cd8c5a21b2dbdc` |
| 32 | `theorem` | [thetaPhiRawD1_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphirawd1-eq-gaussians.md) | 299 | `result-track:b0758501742e249bfe7cca18d3465a6f38fff7ddf1eb31ffabdc20bd6716759b` |
| 33 | `def` | [thetaPhiD1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphid1.md) | 317 | `declaration-track:3f3b828da49c003e13bb5eefa223495e2a8c122104d49885a4d7937ae7066a3f` |
| 34 | `def` | [thetaPhiD2](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphid2.md) | 320 | `declaration-track:29e772a68afd2b4dcc57dd4ac72dab7452a60feef0d522f9e72023126af84dcd` |
| 35 | `theorem` | [thetaMode_den_ne_zero_of_modeA](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetamode-den-ne-zero-of-modea.md) | 324 | `result-track:c436f019071c5a476b2725abc9f644d8b0badb8752da096c5c59ce3e632d526c` |
| 36 | `theorem` | [thetaModeA_gt_three_halves](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetamodea-gt-three-halves.md) | 336 | `result-track:fc496513da9adf7dcf616573d5e382f5ac7f409cec47aa37b1e2c72713b776a9` |
| 37 | `theorem` | [thetaPhiRawD1_eq_D1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphirawd1-eq-d1.md) | 343 | `result-track:41574069c07af3d152a3ec6cb00ce5d1c19c2ca077ec670b202bb4082cbb93bf` |
| 38 | `theorem` | [thetaPhiRawD2_eq_D2](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphirawd2-eq-d2.md) | 348 | `result-track:c7d8657ef80ecc92efd17e2a835b5294acd8cf37b1e9b3b148f9d174e40d79aa` |
| 39 | `theorem` | [thetaPhi_mul_score_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphi-mul-score-summable.md) | 354 | `result-track:66dde2cfe0d929a75de5f501424dd19669ba6158b6619af0230a235c01097e38` |
| 40 | `theorem` | [thetaPhi_mul_score_sq_add_curvature_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphi-mul-score-sq-add-curvature-summable.md) | 360 | `result-track:36be91e762c8740f0914e54c7cfa7e4e23398bf2b42de8c5521cd48fc7f7f6cb` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_of_modeA](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphi-of-modea.md) | 368 | `result-track:846394bedbc8effc652aec55d7a0581bf6102c5dbcfa5773b097cefa0c7b0e40` |
| 42 | `theorem` | [hasDerivAt_thetaPhiD1_of_modeA](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphid1-of-modea.md) | 374 | `result-track:dd1f3901b1966183407d9fcb7c9856734e55a417fe5a97b536b336bca45a7c75` |
| 43 | `theorem` | [hasDerivAt_thetaPhi](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphi.md) | 385 | `result-track:9d74847458d59169066ac7d3bc88d4a7b22013dba80f1f1ca637df8de16321dd` |
| 44 | `theorem` | [hasDerivAt_thetaPhiD1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-thetaphid1.md) | 390 | `result-track:0b09131c3e7c4e956f31e66a0a41210b3d43bcab8a592eae11e006ab16b5fe93` |
| 45 | `theorem` | [deriv_thetaPhi_eq_D1](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/deriv-thetaphi-eq-d1.md) | 394 | `result-track:1e48c3830d224431005481a8c2d2dd9ac0d4ab5bad77fcf18374d29e7bc8dc4d` |
| 46 | `theorem` | [hasDerivAt_deriv_thetaPhi](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/hasderivat-deriv-thetaphi.md) | 398 | `result-track:4f8c81c065de479ffcfff696a4f61061dd0f6e3f023077f020c60b7eb275634e` |
| 47 | `theorem` | [deriv_deriv_thetaPhi_eq_D2](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/deriv-deriv-thetaphi-eq-d2.md) | 404 | `result-track:5c2f41a60adecfdb45adb4bec75349a49194bee58f57dd096f53040cd607d425` |
| 48 | `theorem` | [thetaPhi_mul_y_pow_summable](../../../../MeasureAndIntegration/SourceDerivatives.lean/declarations/thetaphi-mul-y-pow-summable.md) | 409 | `result-track:390416bd37b6daf503a8e8d09183880540463e794e1d1f0d09ec45aa6e0cf4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2bf72d5cbb112cf60fdb77016ffd5b874c57f945bd426cdf42f7d9d66525ef3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
