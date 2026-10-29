# Verification target: Theta Positive Lift Results Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7031867c241b9d9a76622952e585ceddbeb3917",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7031867c241b9d9a76622952e585ceddbeb3917`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaDifferentialBridge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Trigonometric` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaSourcePair](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetasourcepair.md) | 30 | `declaration-track:8108cccc88d1071ace9fb32278a9d630c3be2b978c1861e92b402dd4381e0af7` |
| 2 | `def` | [thetaStrongPair](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetastrongpair.md) | 34 | `declaration-track:abe252e1f50347a8f30473ee2fe391b53ac12cd2d6ac8aaf7e16055cbab32c34` |
| 3 | `def` | [thetaUpperSource](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetauppersource.md) | 38 | `declaration-track:abc4da464366de20ac96984c9aadd2f28f892503379c757238b9ec828067149e` |
| 4 | `def` | [thetaLowerSource](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetalowersource.md) | 42 | `declaration-track:c4a3758f02d1393d01c4591b57d846ca207f9d1e9e1ec332561b78246b75d348` |
| 5 | `theorem` | [thetaSourcePair_symm](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetasourcepair-symm.md) | 46 | `result-track:769af2f8818481f18939e90bcc732b064b64345228c8485af96c935627aa34bf` |
| 6 | `theorem` | [thetaStrongPair_g_eq_f](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetastrongpair-g-eq-f.md) | 51 | `result-track:0c69007acf44c95cc50926d7fb3c7a3104d3d6d752e24bfee21cfcfc8db28528` |
| 7 | `theorem` | [thetaStrongPair_self_dual](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetastrongpair-self-dual.md) | 57 | `result-track:fe53c67e837b1cae74d91f72bfd2a52ab43557d342fe2dcbf3a0ca44698e5f82` |
| 8 | `theorem` | [cpow_neg_half_mul_rpow_half](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/cpow-neg-half-mul-rpow-half.md) | 65 | `result-track:94ddc567b68f7d20666ad93b8e1a59fa58f6c7fd51eaee88e2e12401cd75929b` |
| 9 | `theorem` | [thetaStrongPair_f_eq_two_thetaPsi](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetastrongpair-f-eq-two-thetapsi.md) | 74 | `result-track:a584e25d6abdfe1d3bb962c2bb778550956e6a98a7d033fa2f4ff06fb92d5db2` |
| 10 | `theorem` | [thetaUpperSource_of_one_lt](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetauppersource-of-one-lt.md) | 92 | `result-track:dc99b87163318956d5e7060153d5fe5af8bfcdcce69fd9bf82e318379b11888b` |
| 11 | `theorem` | [thetaUpperSource_of_le_one](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetauppersource-of-le-one.md) | 96 | `result-track:1c322b2495815be84b0252efff8516a11b0f356cad8cc85824b3619a8f3e0202` |
| 12 | `theorem` | [thetaStrongPair_source_split](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetastrongpair-source-split.md) | 102 | `result-track:7aafc3edd609c047b57825ed41488714d58887ab58bda8ceb3379e74c3b54c8f` |
| 13 | `theorem` | [thetaUpperSource_mellinConvergent](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetauppersource-mellinconvergent.md) | 119 | `result-track:a90e00d0b235621a4e81f80a508c0647f166d0ab3d20f5eb41f7d98a129a129a` |
| 14 | `theorem` | [thetaLowerSource_mellinConvergent](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetalowersource-mellinconvergent.md) | 128 | `result-track:7339daa8a87174029d68efe31f1d72696bf607be5b3af271e804dbc2cb69557f` |
| 15 | `theorem` | [mellin_thetaLowerSource](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/mellin-thetalowersource.md) | 155 | `result-track:50510d61953437506e3053d315130e3129137df1079a8c22da57dd95d90b0641` |
| 16 | `theorem` | [mellin_thetaStrongPair_split](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/mellin-thetastrongpair-split.md) | 176 | `result-track:0ba9684e19b6bb3cd9e2fcdf0b2e51ab1723a7f598ef71910322ad500e4b8e9a` |
| 17 | `theorem` | [thetaSourcePair_Lambda0_split](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetasourcepair-lambda0-split.md) | 195 | `result-track:81efc00a3795aafa953b4d403ce782c52737e7f2de342eb20a2d9bb52fbc3663` |
| 18 | `theorem` | [exp_four_cpow_centered](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/exp-four-cpow-centered.md) | 204 | `result-track:8704dd94bfce37f4e861753286af7c2c6da26faeaf538dab47dbe1d408eec8fe` |
| 19 | `theorem` | [mellin_thetaUpperSource_centered](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/mellin-thetauppersource-centered.md) | 220 | `result-track:836047643c200cb7c8e76ce7860a186fd4168eb573b6810ccc5467423cb6608d` |
| 20 | `theorem` | [thetaA_exp_integrableOn](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetaa-exp-integrableon.md) | 280 | `result-track:a1b0fe948a52ffa799cb03f8dc5f3a2fe80743caf95b42ad252c9246bd5848a5` |
| 21 | `theorem` | [thetaA_cosh_integral](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/thetaa-cosh-integral.md) | 341 | `result-track:1b2295f9c735599be813dc5cf5ad18b43a8b8028050b1183afdf3fe728a38ba2` |
| 22 | `theorem` | [completedRiemannZeta0_centered_thetaA](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/completedriemannzeta0-centered-thetaa.md) | 363 | `result-track:9851bcf81da4e1dffbb3b969430b00134cc23da3efe695382a331d1b1bd0669c` |
| 23 | `theorem` | [xi_centered_thetaA](../../../../MeasureAndIntegration/ThetaPositiveLiftResultsSourceEdition2.lean/declarations/xi-centered-thetaa.md) | 385 | `result-track:725f9f066d8fb91ba4a96d41d158df01c6e7f8e947baf4053fc69e441d131684` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bb74584c5b15d4f0955e02398bd47f5e8a41ebe886c9b6590d12a16796020ef3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant16628a25d8de16b0aa0f08dc6e3d5eb8a985c4c0169e6f74cfb4c24ade621b0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
