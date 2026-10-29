# Verification target: Source Derivatives Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36e39e1db8c72be2e2559aac7ad0ce96d2575d28",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36e39e1db8c72be2e2559aac7ad0ce96d2575d28`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean.json)

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
| 1 | `def` | [thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussianterm.md) | 20 | `declaration-track:048d0076a2c0a78a86bf96e6fc1157e1098b90c9085d88c903ff8858ccc3e98d` |
| 2 | `def` | [thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiansum.md) | 24 | `declaration-track:03c5d05bb9f099c4ed3377422a182bf7c02c49663cccb73430d883416671a93b` |
| 3 | `theorem` | [thetaGaussianTerm_nonneg](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussianterm-nonneg.md) | 26 | `result-track:fb4733959ae63f796238303a2abd1ed0b52bb827c8401094bd92d9f156638bb0` |
| 4 | `theorem` | [thetaGaussianTerm_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussianterm-summable.md) | 31 | `result-track:a62f2839b48ffd11d967e177ed842a32fb39f075822eb20a93326b62d97f855f` |
| 5 | `def` | [thetaGaussianCompactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiancompactbound.md) | 36 | `declaration-track:f97e5b14f5bfd1171d4d355ea51a96ad59fd7f33ba0b09fa3186b7efa4465c23` |
| 6 | `theorem` | [thetaGaussianCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiancompactbound-summable.md) | 39 | `result-track:52966619060d71a5712f45a6a2db2228fc42b3d892a0d943bf8bc5dcfa9dc0ef` |
| 7 | `theorem` | [thetaGaussianTerm_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussianterm-norm-le-compactbound.md) | 43 | `result-track:7fa8e185653118b61b8dacb1e113b44948b5a08c590a98877773b1e29e3fec8b` |
| 8 | `theorem` | [continuous_thetaGaussianTerm](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/continuous-thetagaussianterm.md) | 56 | `result-track:609c2fb222f93ed1ec151bce8d04ad76b7e8defcc3fa694fbdd7c229778ca7ed` |
| 9 | `theorem` | [continuous_thetaGaussianSum](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/continuous-thetagaussiansum.md) | 60 | `result-track:3c93048075b8d28ca0fcf82ff8713a507869f2b2c4b59089fd85da2d9fbfa266` |
| 10 | `theorem` | [thetaGaussianSum_nonneg](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiansum-nonneg.md) | 71 | `result-track:44ded8baddb3de94b0aed9a00d8bca100440e422090257cff211a49e1265d716` |
| 11 | `theorem` | [thetaGaussianSum_le_superexp](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiansum-le-superexp.md) | 75 | `result-track:629e73a4143b6fb2de0ad9bb338ec354b355d448542cf28fce254a72183de2cc` |
| 12 | `theorem` | [thetaGaussianSum_poly_norm_le_tail](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiansum-poly-norm-le-tail.md) | 109 | `result-track:633b4d7c3e6a14962be9738e54deff3363c66cda4689a275f7bb9693aa3bc310` |
| 13 | `theorem` | [thetaGaussianSum_poly_integrableOn](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetagaussiansum-poly-integrableon.md) | 145 | `result-track:7ba17bd4eea72968e780c6382bea834ccebd885e7ac485b825aee6579a3923d8` |
| 14 | `theorem` | [thetaPhiTermDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermderiv-eq-gaussians.md) | 168 | `result-track:5009c51f5232a77a333c06f4d51a0e3b13cc7ac87ad93a6850cf53faa82cfdf0` |
| 15 | `theorem` | [thetaPhiTermSecondDeriv_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermsecondderiv-eq-gaussians.md) | 182 | `result-track:71b8bd89ff09881d180929e8e8abd778736e2b4025419338e19dde39c98ba380` |
| 16 | `theorem` | [thetaPhiTermDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermderiv-summable.md) | 200 | `result-track:d1aee51f0b5c282ade299a2bafd6e727b2b6a3f92272fe964afebaa89c0757ca` |
| 17 | `theorem` | [thetaPhiTermSecondDeriv_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermsecondderiv-summable.md) | 208 | `result-track:a33d89515a4534ff0ebda596a3269df8ed99b2fdf683d2046f836d23cfef1dee` |
| 18 | `def` | [thetaPhiDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphiderivcompactbound.md) | 217 | `declaration-track:c35a1b458d2a903bb900407fc8d79bff4cc8cf165e54967b1845c35a31c70973` |
| 19 | `def` | [thetaPhiSecondDerivCompactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphisecondderivcompactbound.md) | 222 | `declaration-track:174b3890ca91de001c15b04798cb032fb0288ad873bb9242959011e8a590db14` |
| 20 | `theorem` | [thetaPhiDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphiderivcompactbound-summable.md) | 228 | `result-track:55cfb2b6b739f76e3bf8711f50fe4c4cb1881b32f247f807765beb5809e47600` |
| 21 | `theorem` | [thetaPhiSecondDerivCompactBound_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphisecondderivcompactbound-summable.md) | 234 | `result-track:2ef87286dbe74de8559caeea139a0c5270acf06168484e0484121d88ccbeb6ab` |
| 22 | `theorem` | [norm_sub_sub_le_real](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/norm-sub-sub-le-real.md) | 241 | `result-track:8465a6beb84ec4c9e4b75e51303ed1969a1be7b9d406d22cbe5049fa4e4641f5` |
| 23 | `theorem` | [norm_sub_sub_add_le_real](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/norm-sub-sub-add-le-real.md) | 245 | `result-track:2ce25a1424c1b7788f27696d6f456f8dc99eb949274e6e8b006f98be951e0acf` |
| 24 | `theorem` | [thetaPhiTermDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermderiv-norm-le-compactbound.md) | 249 | `result-track:d6b76ece03fbd841d6430d8eda30126e3fa703c841883fd11d7b2498a951e350` |
| 25 | `theorem` | [thetaPhiTermSecondDeriv_norm_le_compactBound](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphitermsecondderiv-norm-le-compactbound.md) | 261 | `result-track:3d9f8a994bdd22287c4f505290918fb53f718474833310ca47560b132d34c1f2` |
| 26 | `def` | [thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphirawd1.md) | 276 | `declaration-track:bf566db299386b5a8ad2e721aba6b4cb23b71a5d1fd20aa4a6e5e765a4f4c586` |
| 27 | `def` | [thetaPhiRawD2](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphirawd2.md) | 279 | `declaration-track:13045ba7f8ad36a845de6a472d1751ae9a5b96acbb99b9bfe56a9fc41c125edd` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_raw](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphi-raw.md) | 282 | `result-track:64a667cb0b4177514d4528e0ecceb108f31270876fa716639449e7093d9b3a48` |
| 29 | `theorem` | [hasDerivAt_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphirawd1.md) | 291 | `result-track:554fff583ccd2e597ff736f289ff31bd9e1cb1bf10d10e54ca0700935891c1b0` |
| 30 | `theorem` | [deriv_thetaPhi_eq_raw](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/deriv-thetaphi-eq-raw.md) | 301 | `result-track:6fbb396d6ef2102e887dd2a042df09b57a4a647cbd8ac6b27c0aa8d1504a32ac` |
| 31 | `theorem` | [continuous_thetaPhiRawD1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/continuous-thetaphirawd1.md) | 304 | `result-track:9a4c5ab9dceecc0a5c549c1d7dd9eb5795408fb4ca92a563391f7a4cca9fe404` |
| 32 | `theorem` | [thetaPhiRawD1_eq_gaussians](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphirawd1-eq-gaussians.md) | 307 | `result-track:dcd2da5184630a1ba8509353448b780982a102f4c1baa096f89a588f3508bc75` |
| 33 | `def` | [thetaPhiD1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphid1.md) | 325 | `declaration-track:66ce9d567381400d911ec213ca1c604d2d067ac8f43e2fc80cbad799cb648440` |
| 34 | `def` | [thetaPhiD2](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphid2.md) | 328 | `declaration-track:2c0d87dd9fb53ce78acb267d9495911034ce7655c515131b93f4eb242b68b5d8` |
| 35 | `theorem` | [thetaMode_den_ne_zero_of_modeA](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetamode-den-ne-zero-of-modea.md) | 332 | `result-track:f7cae0a212269855e460f9c732eda4a4638e777aa57cccaec1b2be6ab3df7507` |
| 36 | `theorem` | [thetaModeA_gt_three_halves](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetamodea-gt-three-halves.md) | 344 | `result-track:3b0581d368422f592b564e1aa1abd99dcdee6045cab5b87ed0ecd41dc9041723` |
| 37 | `theorem` | [thetaPhiRawD1_eq_D1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphirawd1-eq-d1.md) | 351 | `result-track:70e82945a2149d008742d756f8ec0bd0520968211a59bdc7693f083473fc3236` |
| 38 | `theorem` | [thetaPhiRawD2_eq_D2](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphirawd2-eq-d2.md) | 356 | `result-track:c5fcfc1fe54ab454d482391bcc1f64d35a3052285d8dad2043bb44a0f6035b72` |
| 39 | `theorem` | [thetaPhi_mul_score_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphi-mul-score-summable.md) | 362 | `result-track:6b7a61b70d3ff6a439317b9f9cf1f98ad10b85e0d4677f8119e460c0ba1b5d54` |
| 40 | `theorem` | [thetaPhi_mul_score_sq_add_curvature_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphi-mul-score-sq-add-curvature-summable.md) | 368 | `result-track:85e7b0275a32390b6483c7915134701351003f52a57e3f7d7a4cd8ed9d97e1b6` |
| 41 | `theorem` | [hasDerivAt_thetaPhi_of_modeA](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphi-of-modea.md) | 376 | `result-track:40a4aa23acbfe940d3f94b039edeb3fb9e8eaed87cbf3a144f06af8d8987fda7` |
| 42 | `theorem` | [hasDerivAt_thetaPhiD1_of_modeA](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphid1-of-modea.md) | 382 | `result-track:0237277c5659f8c4623b066beff71aa174e44dd6857b658390bc1a1ffe9f69a1` |
| 43 | `theorem` | [hasDerivAt_thetaPhi](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphi.md) | 393 | `result-track:83a24d70603e9cf765ff5925c4a9df70ca37a7b6c5819e062ece53229d02dfd3` |
| 44 | `theorem` | [hasDerivAt_thetaPhiD1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-thetaphid1.md) | 398 | `result-track:6bc5d11bdf6f7d967111c8267fe9cc0e0f49019b30cc641d333c99850f309fbc` |
| 45 | `theorem` | [deriv_thetaPhi_eq_D1](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/deriv-thetaphi-eq-d1.md) | 402 | `result-track:a22360fb5496318aa04e6f98c9e64cf414ddee4613135569aa37f449756b3038` |
| 46 | `theorem` | [hasDerivAt_deriv_thetaPhi](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/hasderivat-deriv-thetaphi.md) | 406 | `result-track:4f130142513d3e3cb19f29876b60239148d09a737e9c6ac5c9f380bdd79184c4` |
| 47 | `theorem` | [deriv_deriv_thetaPhi_eq_D2](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/deriv-deriv-thetaphi-eq-d2.md) | 412 | `result-track:85ad13d97add38e9b13d6d0821fe59d6580acc8dfa701ea45958f61c001f513e` |
| 48 | `theorem` | [thetaPhi_mul_y_pow_summable](../../../../MeasureAndIntegration/SourceDerivativesNamespaced.lean/declarations/thetaphi-mul-y-pow-summable.md) | 417 | `result-track:6e2bd7879f10c560a47dce929c314d1eae712f81c93670c45eee34fdb02c9b7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3758a745f1538c5e78811237ad64aa06e624f277ecdb62d8bbc3b8eff06b475a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/8a6844dbe52f90d82f4600a7130c0f6185baf51546ca5ea42ab81e116d7e22ceSourceDerivative/Variant6174879fd37ac49713e0858ea82ebcd05b172b9f964475134fecb1ab4019f148.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
