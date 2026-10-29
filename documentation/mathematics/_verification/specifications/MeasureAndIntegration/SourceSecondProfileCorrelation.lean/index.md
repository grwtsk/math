# Verification target: Source Second Profile Correlation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dea494c939dc59376b6049766ce0f60a278841ca",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dea494c939dc59376b6049766ce0f60a278841ca`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSecondEnergyCalibration` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualSecondProfile_measurable](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofile-measurable.md) | 24 | `result-track:cb3831e99c72511f8ba97cb0e52a63159f46cc0a26a37cd1989e389e19c0febe` |
| 2 | `theorem` | [actualSecondProfile_square_integrable](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofile-square-integrable.md) | 35 | `result-track:e1d9bba52463c686ed54c56381ead9f23156ed492458ac46c2a0991597fb96e4` |
| 3 | `theorem` | [actualSecondProfile_square_integral_eq_actual_energy](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofile-square-integral-eq-actual-energy.md) | 41 | `result-track:b96f9bec740053e2c92e83819e66cdd55a9e9aea01400e92e5fee9e39cb23742` |
| 4 | `theorem` | [real_product_abs_le_square_mean](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/real-product-abs-le-square-mean.md) | 48 | `result-track:a3d5cc82d87d2ec1c700089c0ef1ca3314e2e35d4e48913854a39a5deb96d3eb` |
| 5 | `theorem` | [actualSecondProfile_correlation_integrand_integrable](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofile-correlation-integrand-integrable.md) | 54 | `result-track:2e49cce472c7c045237ab73f1dd2f24cd2231748072236176ceb37fb1b963833` |
| 6 | `def` | [actualSecondProfileCorrelation](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofilecorrelation.md) | 70 | `declaration-track:0dc25906061d2a2f1d22e38272a11627e141c93dc78191903b84d720e7da52f0` |
| 7 | `theorem` | [actualSecondProfileCorrelation_abs_le_energy](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofilecorrelation-abs-le-energy.md) | 74 | `result-track:b299bae640805493a70bfe9964ce07813a4d72306b635b0bb6e9674eeed4e489` |
| 8 | `theorem` | [actualSecondProfileCorrelation_abs_le_sixty_seven](../../../../MeasureAndIntegration/SourceSecondProfileCorrelation.lean/declarations/actualsecondprofilecorrelation-abs-le-sixty-seven.md) | 95 | `result-track:1b9cef703f7d175c49afe746842b7f669394bcc08440d0036a3b150a3d8f1dc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b56bbbd5cd56db2d79190c962cff0a1121d62077612ef38a65e68635e7b8130 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/1acb0f90111bf954ac2eSourceSecondProfileCorrelation/Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
