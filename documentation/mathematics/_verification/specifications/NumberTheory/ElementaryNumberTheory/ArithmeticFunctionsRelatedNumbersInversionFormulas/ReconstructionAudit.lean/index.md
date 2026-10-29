# Verification target: Reconstruction Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bb75c146251823c8d27edf14fa59bfd3bf160f",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bb75c146251823c8d27edf14fa59bfd3bf160f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizedPsiError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/normalizedpsierror.md) | 41 | `declaration-track:5644f24729c72b0af4aee43514f856ffd354b00e53bebeee1b3091afc377d6d2` |
| 2 | `def` | [kapitzaKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kapitzakernel.md) | 45 | `declaration-track:949c210115f977b69c7146996510e54e1cb473f576035788fbf3d7815f777d85` |
| 3 | `def` | [kapitzaWeight](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kapitzaweight.md) | 50 | `declaration-track:baf9ba16ec244adb318a0fd94b5bc2f99e9a4597c8466f4f7c04bc5e8cdf4946` |
| 4 | `def` | [endpointValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/endpointvalue.md) | 53 | `declaration-track:f2fafb5a5c085d84a8e6e93cb520e2f05572a4095f8ece3d74693b671b61aca4` |
| 5 | `def` | [endpointSlope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/endpointslope.md) | 55 | `declaration-track:818131fd15263c64974cf6ba5cef651c7d318aad8557d2d68fd967882e4f7a93` |
| 6 | `def` | [affineTrend](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/affinetrend.md) | 58 | `declaration-track:999ae48b64028704e9836c5d3daec489636e9942349f5e412796bfefa27cd6cf` |
| 7 | `def` | [nonaffineDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/nonaffinediscrepancy.md) | 61 | `declaration-track:6cd54f8db08fd72b284b3ad7898845a2e5162eb5fa77ce1e14109707c4ba9e83` |
| 8 | `def` | [kernelMomentZero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentzero.md) | 63 | `declaration-track:e1a69fec98bee491d4e442f7b45d4f23ed2f370e00157042bf7977318304b9c8` |
| 9 | `def` | [kernelMomentOne](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentone.md) | 65 | `declaration-track:d52aa915acfc6942b89258efb6b526387a2de86019c0dee6ed3891950d066d42` |
| 10 | `def` | [trendValue](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/trendvalue.md) | 67 | `declaration-track:ebf44ddfb9d47f6a3f1e6b605e0548706452112338f23d2cafb90f39b10f0a61` |
| 11 | `def` | [nonaffineWork](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/nonaffinework.md) | 71 | `declaration-track:702cbb299f333703daa2a8bec31ddc17d0b34937baebcc4b6aca8ec2c795158e` |
| 12 | `def` | [continuousDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/continuousdefect.md) | 74 | `declaration-track:b6a2a09255d8d395c9ea414c7bfc082fd945f89c4556edfe5d65f11b48589162` |
| 13 | `theorem` | [normalizedPsiError_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/normalizedpsierror-zero.md) | 77 | `result-track:1663268ab0ad530384e243c7b43957a2e0e3d2288b9744e8ff23a9047047ec48` |
| 14 | `theorem` | [nonaffineDiscrepancy_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/nonaffinediscrepancy-upper.md) | 80 | `result-track:753ed7d923536713df86e4e48ea075c215418ea9e1165f44b0ee93f3c0af7f37` |
| 15 | `theorem` | [normalizedPsiError_eq_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/normalizedpsierror-eq-prefix.md) | 83 | `result-track:7d7e490bc0f29433cdef5a54fd676f7c332e1b987882472f8116b936b41c889e` |
| 16 | `theorem` | [chebyshev_mul_continuous_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/chebyshev-mul-continuous-intervalintegrable.md) | 89 | `result-track:7ca243c5ed558e391f8e0bf92d1897167f83712386aee16aedfb8bf9583bbd59` |
| 17 | `theorem` | [normalizedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/normalizedpsierror-intervalintegrable.md) | 110 | `result-track:84ed7a6d09e6437012efa22286bb89d9d24a971898279a1db8abd6bfde9ad6a3` |
| 18 | `theorem` | [kapitzaWeight_continuous](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kapitzaweight-continuous.md) | 120 | `result-track:d32262166f95e24c1ff84350325d252c3d3f4d9ebabc9d87d72595f6da14eb63` |
| 19 | `theorem` | [weightedPsiError_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/weightedpsierror-intervalintegrable.md) | 125 | `result-track:20a86b8dc2a11fe985a96c64a7752d98f19092ccd7416f20b536d32e3b99f1a8` |
| 20 | `theorem` | [kernelMomentZero_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentzero-eq.md) | 132 | `result-track:6cd3c4b34af9631109df1fb87b5afcfa89338929a6fce08e683203f7a31f8fb2` |
| 21 | `theorem` | [mertensResidual_eq_weightedPsi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/mertensresidual-eq-weightedpsi.md) | 151 | `result-track:829b19ab9c3f6f8df2d4480477f1c9973a20e269ff590162756b649f8bb82250` |
| 22 | `theorem` | [mertensResidual_eq_affine_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/mertensresidual-eq-affine-nonaffine.md) | 208 | `result-track:7124a108b2af0f510592b54574c8a7d85dbfa78b80d31c1da5e73fdfa6b3b630` |
| 23 | `theorem` | [one_add_continuous_eq_defect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/one-add-continuous-eq-defect.md) | 249 | `result-track:368767f9f461d5eacd520529c2a60ba013833f5a915f89dc8af2b653d3278cf3` |
| 24 | `theorem` | [mertensResidual_eq_defect_trend_nonaffine](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/mertensresidual-eq-defect-trend-nonaffine.md) | 258 | `result-track:e17dbf9190bac8ad4f7bfba27bc9310a45758059814b9b435d9ef0e94959b77b` |
| 25 | `def` | [negativeFirstMoment](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/negativefirstmoment.md) | 265 | `declaration-track:77a0c83e0987643bdaeb1b06be3166aff396584fb0c7d037bfabc7b5b149b294` |
| 26 | `theorem` | [positiveFirstMoment_eq_negative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/positivefirstmoment-eq-negative.md) | 269 | `result-track:075fa40cd006209fde327136d51c85c7d5028980e4fb6bb02d91a93f67d4d44f` |
| 27 | `theorem` | [kernelMomentOne_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentone-eq.md) | 317 | `result-track:1614fe7e831fb20a2b50c36aef122be603d97a54a829e7e0d4a3b193033055b7` |
| 28 | `theorem` | [negativeFirstMoment_abs_le_four](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/negativefirstmoment-abs-le-four.md) | 360 | `result-track:23aafb0a9010fc6173a48a155389ee87d7768814eb8ef10128284d6d4a6475ba` |
| 29 | `theorem` | [kernelMomentZero_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentzero-abs-le-one.md) | 389 | `result-track:39033a54dd1bfdca8516edcfa17c41d3889cfed31ec4ac41026f0bc0751781d8` |
| 30 | `theorem` | [kernelMomentOne_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/kernelmomentone-abs-le.md) | 395 | `result-track:b877663ce0a8dc6782ba26ffcf1aca9bcfff98d6961e76369cb263da0f62732b` |
| 31 | `theorem` | [trendValue_abs_le_of_samples](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/trendvalue-abs-le-of-samples.md) | 412 | `result-track:056fd53783e2d54cd31f53f1292161a538ed75ff57a76900e29db4e774cae032` |
| 32 | `theorem` | [continuousDefect_antitone](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/continuousdefect-antitone.md) | 439 | `result-track:346b200bd24e575733d39aaa3902fcfc09cd8efacb392c6a4bf1b2e361bd4cbb` |
| 33 | `def` | [originalPrefixFloor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/originalprefixfloor.md) | 453 | `declaration-track:82845ffb59e38fbafb654151f1911835031d6151ba088b1be36685685a8cba68` |
| 34 | `theorem` | [originalPrefixFloor_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/originalprefixfloor-le.md) | 457 | `result-track:9e770109eaffcead6f5a2023f4bff2c6ebad97b96e7ec8cd29986c9e66ece0ce` |
| 35 | `theorem` | [residual_le_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/residual-le-of-nonaffine-cap.md) | 465 | `result-track:4ab626d64aed41c0d35a4bb2d7793501f98f3f09f8928817cbe0a4f0cbaa552a` |
| 36 | `theorem` | [original_lower_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/original-lower-of-nonaffine-cap.md) | 475 | `result-track:d7ae4dee90745ec8903dd3612a6d3f31472bb0479dc4ac5ca751a172ca7d3d8b` |
| 37 | `theorem` | [estimate_of_nonaffine_cap](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/estimate-of-nonaffine-cap.md) | 497 | `result-track:23c419353bcc51d156bb767b1d2c9f851c733632a8da58296b641ca45267b229` |
| 38 | `def` | [consumerRadius](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/consumerradius.md) | 504 | `declaration-track:042fbf10fb1504fca179697f27e869fa6697d8ff2f86e6403d7da17b44f5c657` |
| 39 | `theorem` | [original_lower_of_separate_nonaffine_caps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ReconstructionAudit.lean/declarations/original-lower-of-separate-nonaffine-caps.md) | 507 | `result-track:662f2d8f93cf6e886365dc8666dc3d615ef819fdff9cd672df14b34fcbb33a87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=51b33bcfbe9c1f29b48a40a0242a8b8cf2641d011723be94fc40e368ece6577e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/44521de731520aff314d41a20779b12bda08fb938df6f83d30235cfe9a7d0df8ReconstructionAu/Varianteea31c5b95e9c257d7a419d97b6e8ecd2bca233974c8552cec8f1e739ec275dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
