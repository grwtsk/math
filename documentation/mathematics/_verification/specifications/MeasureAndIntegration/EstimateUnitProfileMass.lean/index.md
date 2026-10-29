# Verification target: Estimate Unit Profile Mass

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba1c72cc9860f2a027a994b6bac2d2e779a31f1c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/index.md) · [Full source](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba1c72cc9860f2a027a994b6bac2d2e779a31f1c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateNormalizedSourceProfile` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitProfile_eq_indicator](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/unitprofile-eq-indicator.md) | 23 | `result-track:1f35f2769e55c0515058a4979f077a8316a42d0487fe5de37102d5a35f566b74` |
| 2 | `theorem` | [unitBump_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/unitbump-integral.md) | 48 | `result-track:82ab6b4d82c888f05e36c79ffd74ec7efc5676d947e1b7efeec2063b9ea94ae5` |
| 3 | `theorem` | [unitSecond_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/unitsecond-integral.md) | 61 | `result-track:64c21df04cda25ad58f76dd6472add935ee1a859b1f98a4104f948f59c329dd3` |
| 4 | `theorem` | [unitProfile_integral](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/unitprofile-integral.md) | 70 | `result-track:c50d66eb1323bf1cdcb50fce2d91d074793b75b2bfc66aa912ba0e97f8130d6f` |
| 5 | `theorem` | [sourceNormalization_le_one](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/sourcenormalization-le-one.md) | 80 | `result-track:e6c683697a3341ffbbf79f91f442c8f19d92e06c47f67de3957b3b0a585bab43` |
| 6 | `theorem` | [sourceNormalization_le_41](../../../../MeasureAndIntegration/EstimateUnitProfileMass.lean/declarations/sourcenormalization-le-41.md) | 93 | `result-track:213cb75268d904f34c0cafe0167834231091e28f63825e494a2dd6df68d91c10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82575edb51b31bdb24d540e4e03947f87ee796f38d7eb735b1447c571041816b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/B12cb511fdd452e14bc7EstimateUnitProfileMass/Variantb12cb511fdd452e14bc73dad559a346ae807b383e10a6849daba328168f04bd5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
