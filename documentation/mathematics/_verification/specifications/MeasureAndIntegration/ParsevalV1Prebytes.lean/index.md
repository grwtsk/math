# Verification target: Parseval V1 Prebytes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87b25ea5cad854eb498f9259ffa51acbfa9dce3c",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87b25ea5cad854eb498f9259ffa51acbfa9dce3c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceMangoldtInteraction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceL2FourierCompatibility` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [symmetricPhaseMultiplier](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/symmetricphasemultiplier.md) | 24 | `declaration-track:e66b04f3a84a803fceae6bfcdd7672a1f81daab1cec6c6554a02e8d20e9c61bf` |
| 2 | `theorem` | [symmetricPhaseMultiplier_apply](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/symmetricphasemultiplier-apply.md) | 29 | `result-track:30c968205d1633f170d2c16cd81701749d7dfa2bdb1664e6fe6b78396f44a10c` |
| 3 | `theorem` | [fourier_symmetricTranslation](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/fourier-symmetrictranslation.md) | 34 | `result-track:2876c5465fbe87d748284feac1407ff50694a0655ef8143ccb3a55ec7adceacb` |
| 4 | `theorem` | [translationPhase_half_sum](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/translationphase-half-sum.md) | 41 | `result-track:41dc47470472d023d6535b670e71e566dbf87fa5f54e7d81dbd07af8f8578e83` |
| 5 | `theorem` | [symmetricPhaseMultiplier_coe_ae](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/symmetricphasemultiplier-coe-ae.md) | 51 | `result-track:f7b0ec2bbdcb28b3075cc7a698fbda9f2d6848af48f60a476da951be4da69f8b` |
| 6 | `def` | [mangoldtFourierSymbol](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriersymbol.md) | 66 | `declaration-track:90bd0724216b19b642f7d47d53486a7cf7273d023e5838466ab86061d5efacfc` |
| 7 | `def` | [mangoldtFourierMultiplier](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriermultiplier.md) | 71 | `declaration-track:c2f11f628983848fec316f6e5c93c40c0f81e49800189f208326a332fa48f50e` |
| 8 | `theorem` | [mangoldtFourierMultiplier_apply](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriermultiplier-apply.md) | 76 | `result-track:c1dd12fbc6d3da76c373f0fc0d35396b8281eac44e1c43d3fc507479082dde1a` |
| 9 | `theorem` | [fourier_mangoldtInteraction](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/fourier-mangoldtinteraction.md) | 82 | `result-track:6d51a4aecac54ef40bd271a4d1607ccee0f3b279eafb778127b37e61da7722f1` |
| 10 | `theorem` | [mangoldtFourierMultiplier_coe_ae](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriermultiplier-coe-ae.md) | 89 | `result-track:2ec7fb6e2daa6edbac67366cf5a3534200a2e9fe3e5c5e1a564e9cb614242bd4` |
| 11 | `theorem` | [mangoldtInteraction_fourier_intertwining](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtinteraction-fourier-intertwining.md) | 116 | `result-track:8ee314cf01519598ccd391440cd421b388c4a79fcb3f2be6b53dd2fabd7c1d72` |
| 12 | `theorem` | [mangoldtFourierSymbol_continuous](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriersymbol-continuous.md) | 125 | `result-track:c96575e65775928921743944f40bc7e611b7797a0378e3eaca9176bb1dfe908d` |
| 13 | `theorem` | [mangoldtFourierSymbol_abs_le](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriersymbol-abs-le.md) | 131 | `result-track:48b832bb3eab45153d830fbad5fb3de9f241830efee729bb6f8080db850964f3` |
| 14 | `theorem` | [inner_real_multiplier](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/inner-real-multiplier.md) | 141 | `result-track:6c513e5c311603dc0bd449857905ce906014880ceb347e29152783ce26563ee4` |
| 15 | `theorem` | [mangoldtFourierDensity_integrable](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfourierdensity-integrable.md) | 151 | `result-track:0a8bbdc8ff92098e461691ac3a04f1f5a5b18032f802e20f43c17f59ad7ff141` |
| 16 | `theorem` | [mangoldtFourierMultiplier_quadratic_integral](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtfouriermultiplier-quadratic-integral.md) | 158 | `result-track:61a367e682ecd0fd490fb64335587bf7949dc5d65007ba8db4fc2f27ae0668d9` |
| 17 | `theorem` | [mangoldtInteraction_pointed_parseval](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtinteraction-pointed-parseval.md) | 167 | `result-track:3f15192dcad5a034bbcf966dc1a4af5d189e2b949159bc8ab017486772a27181` |
| 18 | `theorem` | [closedPrimeMoment_eq_fourier_integral](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/closedprimemoment-eq-fourier-integral.md) | 174 | `result-track:60a3e3110550d5de175ec7a5aee293fc6575f788b8a4d07bd5f40b6c7432ab2d` |
| 19 | `theorem` | [mertensResidual_eq_fourier_integral](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mertensresidual-eq-fourier-integral.md) | 181 | `result-track:eb16a71566bbaefd07962e4bd67ea90b83f2150d6a3afef66e1ca90b3ec5c2cf` |
| 20 | `theorem` | [mangoldtInteraction_pointed_bochner](../../../../MeasureAndIntegration/ParsevalV1Prebytes.lean/declarations/mangoldtinteraction-pointed-bochner.md) | 188 | `result-track:5a9ac2b8ac843be79d482860826a38f698b70b280aa07d8ed8fe0154eb1ca62e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d6ee956b52095fd7f5972c50dbe80865384c185f5080e2836eafb63f0cd3c96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ParsevalV1Prebytes/Variant2e33712af379c00fd05b1babdf00c31c40386f0b5a1d24c58ee8f7659d135076.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
