# Verification target: Results Alternative14

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae526553207e13e8e892041a41c543c370e5b162",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant62ad412540470b5e3944402fe516b3954deda7621017f9d147e4971bcdd8492c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ResultsAlternative14.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ResultsAlternative14.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae526553207e13e8e892041a41c543c370e5b162`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant62ad412540470b5e3944402fe516b3954deda7621017f9d147e4971bcdd8492c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant62ad412540470b5e3944402fe516b3954deda7621017f9d147e4971bcdd8492c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitProfileMass` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [unitCorrelation_product_majorant_integrable](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-product-majorant-integrable.md) | 23 | `result-track:be47c419c55fed14cefb6e3f539ecc91f351b29761bdc06614adec569d71bf15` |
| 2 | `theorem` | [unitCorrelation_product_integrable](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-product-integrable.md) | 31 | `result-track:262e0d2560c1ff943a82f99507b505bee7b45f17c5d29184d12294585ccba311` |
| 3 | `theorem` | [unitCorrelation_integral](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-integral.md) | 45 | `result-track:4679d492f0c0b149078a900968047364a6903fba5fb897afff8ce3c61623dfea` |
| 4 | `theorem` | [unitCorrelation_even](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-even.md) | 54 | `result-track:1560c54733833351aaceaf85a81bad79bbafc9dfe0864dcf4e52124734a42245` |
| 5 | `theorem` | [unitCorrelation_integral_eq_interval](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-integral-eq-interval.md) | 62 | `result-track:964352457c571bb41735123f3620e3c71ce150c9d7c3b76579486e27ce3083b0` |
| 6 | `theorem` | [unitCorrelation_half_mass](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-half-mass.md) | 78 | `result-track:4d3d4f79a927a21585abf1a75f8fe20b7074146b9ca65586d6760033bae4cb62` |
| 7 | `theorem` | [unitCorrelation_half_mass_formula](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-half-mass-formula.md) | 95 | `result-track:f317bd1e39351360e14bcda636f51ca403779c56a6f87fbae59c87f8f0b8e413` |
| 8 | `theorem` | [unitCorrelation_half_mass_ge](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-half-mass-ge.md) | 104 | `result-track:2a586d8acb0b128ade821ea5007e3b883848431f0f951d8e596176817cbe1fa6` |
| 9 | `theorem` | [unitCorrelation_abs_le_one](../../../../MeasureAndIntegration/ResultsAlternative14.lean/declarations/unitcorrelation-abs-le-one.md) | 111 | `result-track:b6c1fafda7f5d7ef09d130540eab980d239a959a07ae92f0b17a1d558b669261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0cec9f5cafadb538d87b6867bf41f94e90d4b4831321d80427d2a15e605bd91e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant62ad412540470b5e3944402fe516b3954deda7621017f9d147e4971bcdd8492c.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant62ad412540470b5e3944402fe516b3954deda7621017f9d147e4971bcdd8492c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
