# Verification target: GRWTSK.Analysis.Calculus.PolynomialBumpNormalization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95ae75123c6b40150eeea069879904f13dd2914",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Calculus/PolynomialBumpNormalization.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/index.md) · [Full source](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95ae75123c6b40150eeea069879904f13dd2914`.

Source path: `GRWTSK/Analysis/Calculus/PolynomialBumpNormalization.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Calculus/PolynomialBumpNormalization.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Calculus.CompactProfileNormalization`](../../../../MeasureAndIntegration/CompactProfileNormalization.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization`](../../../../MeasureAndIntegration/TestFunctionsPolynomialBumpNormalization.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Convolution.PolynomialBumpRegularity`](../../../../MeasureAndIntegration/PolynomialBumpRegularity.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [firstDerivative](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/firstderivative.md) | 37 | `declaration-track:5eb6505a13657ff973476cbadd8030cce11698699220c95bfe432eed3da2cb8f` |
| 2 | `theorem` | [bumpInterior_frontier](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/bumpinterior-frontier.md) | 41 | `result-track:2b1e59b8d79c46db3c673a2fec60d62a066479c060d22954edba16dd0adb84cb` |
| 3 | `theorem` | [firstInterior_frontier](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/firstinterior-frontier.md) | 50 | `result-track:8d16e399e4e752e6ddb239ecb51018a251c250f7fd864b74f26b3b99571c0292` |
| 4 | `theorem` | [scaledBump_hasDerivAt](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/scaledbump-hasderivat.md) | 59 | `result-track:433a2d38eb656e867ef2916ca4afffa00c78e7aa4fd2c3956e2d425e3341b441` |
| 5 | `theorem` | [firstDerivative_hasDerivAt](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/firstderivative-hasderivat.md) | 65 | `result-track:03cdac50d6335ef6edb955bbc5a0180e76d16f8778579f86f6b5dca85a8b65d0` |
| 6 | `theorem` | [deriv_scaledBump](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/deriv-scaledbump.md) | 70 | `result-track:5859a6957354c468ba19f4c1cca0b2dabeffab8387a3d6544e0e485bbe282353` |
| 7 | `theorem` | [second_scaledBump](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/second-scaledbump.md) | 75 | `result-track:bfd4338ed0ac57b4378688fc9e9d2ac93b7e8ae7a705f9b18f7e393e80c5ceae` |
| 8 | `theorem` | [scaledBump_contDiff](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/scaledbump-contdiff.md) | 81 | `result-track:b07b3a8c01b7242b3b1edde9a54c3086e3fc0d3f439cdb6e7dc70b3af0430be9` |
| 9 | `theorem` | [sourceBump_eq_scaled_unit](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-eq-scaled-unit.md) | 94 | `result-track:422b80cf4882af8c2fdb1f94d01e3ed2af2cc3c9eee6304aed85f7594b55b47e` |
| 10 | `theorem` | [scaledProfile_sourceBump_eq](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/scaledprofile-sourcebump-eq.md) | 99 | `result-track:b7a866004e75dd2de5f3f556ab7e7db9924a63a5844c6960a800e5ff7f8f941c` |
| 11 | `theorem` | [sourceBump_contDiff](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-contdiff.md) | 104 | `result-track:6926fd323d044ce9b820027e95e2bc19c53bfbf4706534979d732d5fd34707a8` |
| 12 | `theorem` | [sourceBump_hasCompactSupport](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-hascompactsupport.md) | 109 | `result-track:cae6e19c803391f7a7818c0de86db21d2bbd7d068239988608a9f58a3a0551bf` |
| 13 | `theorem` | [sourceBump_nonzero](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-nonzero.md) | 116 | `result-track:f74ef94c3f12d12ed9a8a71a100aaebde75813f600c411f4b55ab434390f7737` |
| 14 | `theorem` | [sourceBump_eq_indicator](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-eq-indicator.md) | 121 | `result-track:1a0734e301f8ea14fa1743a70cc582d6b7fb73866f9ca1d49a928e7c49603339` |
| 15 | `theorem` | [sourceBump_second_eq_indicator](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-second-eq-indicator.md) | 126 | `result-track:be7d414c849607c4fe7b39432b71fac71caf1073f11ca2f38929cc5ea44bd616` |
| 16 | `theorem` | [sourceBump_square_integral](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-square-integral.md) | 133 | `result-track:70cfe47c74564f039f3f2c6ebf5217507ad1a923bdab0092456f4e61167aa046` |
| 17 | `theorem` | [sourceBump_second_square_integral](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-second-square-integral.md) | 146 | `result-track:36d4f8b30ceedc02057f1190c188e0d1dbfb4a652edb5bdbd77d05844e23f5ec` |
| 18 | `theorem` | [sourceBump_second_mul_integral](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-second-mul-integral.md) | 158 | `result-track:1165c20ed44f47a0394086f3cc0b7b5a0a546fdcfff7757e198ce116f95310bb` |
| 19 | `theorem` | [sourceBump_deriv_square_integral](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/sourcebump-deriv-square-integral.md) | 172 | `result-track:9049bdf0891d5083713244d2ef5d1a620457c491deff499204c5119b190e78ee` |
| 20 | `theorem` | [normalization_sourceBump_eq](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/normalization-sourcebump-eq.md) | 181 | `result-track:be19caf56059cd52abe5ac323b80f10d9b50a61e6e42df3a0cd6f35bb64e13dd` |
| 21 | `theorem` | [dilationOperator_sourceBump_eq](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/dilationoperator-sourcebump-eq.md) | 190 | `result-track:a8c5db57c5c13d122ba24de6966783791809984c6f0bab827d73fb437cb08e5a` |
| 22 | `theorem` | [normalizedOperator_sourceBump_eq](../../../../MeasureAndIntegration/DifferentialCalculusPolynomialBumpNormalization.lean/declarations/normalizedoperator-sourcebump-eq.md) | 198 | `result-track:b89ad194969415311f2cc66852b5e8dd3d06fae7db64c55c4381e5e8f7d9ed7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=88f76a9bfa278e3729b7dd7764c43947ab3b218b882dc0bcdd8b5696600ae1eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Calculus/PolynomialBumpNormalization.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/PolynomialBumpNormalization.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
