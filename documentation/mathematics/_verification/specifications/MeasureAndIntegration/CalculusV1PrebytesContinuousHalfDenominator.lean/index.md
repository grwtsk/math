# Verification target: Calculus V1 Prebytes Continuous Half Denominator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0731122ae29abc711bfdc934c5e4157ea1fa1f5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0731122ae29abc711bfdc934c5e4157ea1fa1f5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimeMomentScale` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [continuousHalfDenominator](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfdenominator.md) | 27 | `declaration-track:8a5b547dbdd3171c45647fae9c9fd2cfc89b238edbdc6d0f14c0b89bcde7c346` |
| 2 | `def` | [continuousHalfRational](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfrational.md) | 30 | `declaration-track:031346276cba250d8386f541f71cceb5a84a74ca62adf8f12dd1dc6eff94db5c` |
| 3 | `def` | [continuousHalfScaleDerivative](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfscalederivative.md) | 34 | `declaration-track:ac9daf35c0c0acd5ef91e9703ec1f050798fe97b8efdf53254f1149b84e3b1ed` |
| 4 | `theorem` | [continuousHalfDenominator_pos](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfdenominator-pos.md) | 38 | `result-track:db424ed3f98790a34c1b86f348229a95f8f7b69731aafc027e8ab1b9c1e86030` |
| 5 | `theorem` | [continuousHalfRational_hasDerivAt](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfrational-hasderivat.md) | 43 | `result-track:c163555b512275c37fa1378bcc6b11b5f77b941b3e889c330b1d920eb92c1134` |
| 6 | `theorem` | [continuousHalfRational_contDiff](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfrational-contdiff.md) | 55 | `result-track:b631173ee9c75dc3eaa385439782ad85adbae07fa8329728becfd8548fd0a712` |
| 7 | `theorem` | [continuousHalfScaleDerivative_continuous](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfscalederivative-continuous.md) | 63 | `result-track:6c9862c91e6dd77b02543ff8aff7cd4fb44f61623b3d7c8373ae73310c684298` |
| 8 | `theorem` | [continuousHalfScaleDerivative_lt_zero](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfscalederivative-lt-zero.md) | 72 | `result-track:b6d613e50537d2594cf1dad0131386006aec25022667f947046180645cdbf3c5` |
| 9 | `theorem` | [criticalContinuousMoment_eventually_eq_rational](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-eventually-eq-rational.md) | 82 | `result-track:7b2df23f448103722e312eea4e68c4b222e1113a58ad55cb8c65d489de48e53c` |
| 10 | `theorem` | [criticalContinuousMoment_hasDerivAt](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-hasderivat.md) | 88 | `result-track:61dc3eeeb70e1cc84223526d8f5662d8c6e40e95fe920a0159065ffed385afd1` |
| 11 | `theorem` | [criticalContinuousMoment_contDiffAt](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-contdiffat.md) | 94 | `result-track:fd4cf0c29f840e84462a9b260df86c6368e4d28bed1a71b6d1e12e1036ebdc55` |
| 12 | `theorem` | [criticalContinuousMoment_contDiffOn](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-contdiffon.md) | 100 | `result-track:1b637f377675b6a50b3388a9eeeb8f93866768b3e526a7128135c36af6d3bedc` |
| 13 | `theorem` | [criticalContinuousMoment_deriv](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-deriv.md) | 105 | `result-track:3d43c81416f8298674e6ff234a3198c0599e57b87df1a7444adfd24091a61a1c` |
| 14 | `def` | [mangoldtWorkScaleDerivative](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/mangoldtworkscalederivative.md) | 110 | `declaration-track:c7812a72013700cdb3de583e2241a0f3b84d7fafe1b79f44cf732782cb72f029` |
| 15 | `theorem` | [criticalMangoldtWork_eventually_eq_sub](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-eventually-eq-sub.md) | 114 | `result-track:9aa713174d9578000d43a5570c505ffe4d371ac82e9c8b1bcae17b8b56d49706` |
| 16 | `theorem` | [criticalMangoldtWork_hasDerivAt](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-hasderivat.md) | 122 | `result-track:ccd8a40f77faca81a121103d0d4f99ffee0fae3523011641ea020842d0e353d5` |
| 17 | `theorem` | [criticalMangoldtWork_contDiffAt](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-contdiffat.md) | 129 | `result-track:f78b5940abdcb733123b051970ceb279e0218ecfa309aa13987a5c8a8b504e00` |
| 18 | `theorem` | [criticalMangoldtWork_contDiffOn](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-contdiffon.md) | 136 | `result-track:580f68e888d653ab85822296d4d6c00adb446d3d2850814fb7147276c71969e1` |
| 19 | `theorem` | [criticalMangoldtWork_deriv](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-deriv.md) | 140 | `result-track:c65307e879e5547933b9ebcd3418aca9cc624d1bda57acf08499f73b0750d381` |
| 20 | `theorem` | [mangoldtWorkScaleDerivative_continuousOn](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/mangoldtworkscalederivative-continuouson.md) | 145 | `result-track:67891876fbac30a08f9c6f1dd87977ccc0adc054facf7c9924416c71ebb2eade` |
| 21 | `theorem` | [uIcc_subset_scaleDomain](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/uicc-subset-scaledomain.md) | 151 | `result-track:c9bf32a64d66720ae22d4b296ebbd2c87c56300c32250006515fb58bd34ee037` |
| 22 | `theorem` | [continuousHalfScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/continuoushalfscalederivative-intervalintegrable.md) | 157 | `result-track:f32ece80427b0f4f2bfa1ff49d5afc8fa35d4a1a8dde794bcceb0d1342a63574` |
| 23 | `theorem` | [closedPrimeMomentScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/closedprimemomentscalederivative-intervalintegrable.md) | 162 | `result-track:ef34e66ca1659782ea8303374514c07bbba5270cd6604f67c2b2af2190e1d6a7` |
| 24 | `theorem` | [mangoldtWorkScaleDerivative_intervalIntegrable](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/mangoldtworkscalederivative-intervalintegrable.md) | 169 | `result-track:c8a3f0f945551c525b8880f3a81cd045f69d5157a5385556aeb693ac40f230cd` |
| 25 | `theorem` | [criticalContinuousMoment_flux](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalcontinuousmoment-flux.md) | 176 | `result-track:93675886ee875bf314c531ffcc33b567238d3e8b2e78f879f7f13cbe50284173` |
| 26 | `theorem` | [criticalMangoldtWork_flux](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-flux.md) | 184 | `result-track:696f9acdc090df4697b9d6cc26feeb5257eac3271442e495d56fe832e5746541` |
| 27 | `theorem` | [criticalMangoldtWork_flux_eq_sub](../../../../MeasureAndIntegration/CalculusV1PrebytesContinuousHalfDenominator.lean/declarations/criticalmangoldtwork-flux-eq-sub.md) | 192 | `result-track:c7804dcfe0d0008647d80fa9dfe4c4373d538b61bf69c91bef978e46e65da99e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2853dc12038bbc53987e085c3a1be2aef98b03ca59c65edc086e09a67306f65c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant3fde1b9bbe181274a62d3ce935e8c8bf343513385e40e59e9253b2c9065a1a25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
