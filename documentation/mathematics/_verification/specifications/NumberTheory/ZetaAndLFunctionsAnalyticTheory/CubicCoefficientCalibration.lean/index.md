# Verification target: Cubic Coefficient Calibration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9eb9823c8fe3f018fbd69115b247500d9399a098",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9eb9823c8fe3f018fbd69115b247500d9399a098`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourthDisplacementEnergyPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/declarations/fourthdisplacementenergypolynomial.md) | 19 | `declaration-track:b930476ea66b73a0100ed17764ea049536df2c65af1f1bf96fa65f25e6fef98d` |
| 2 | `theorem` | [cubic_energy_ratio_le_sixty_seven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/declarations/cubic-energy-ratio-le-sixty-seven.md) | 23 | `result-track:3e8f17020233aa8d352ab3039ba391d411420edb80861c9ae0f122b6209805e4` |
| 3 | `theorem` | [cubic_energy_ratio_le_sixty_seven_of_scale](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/declarations/cubic-energy-ratio-le-sixty-seven-of-scale.md) | 32 | `result-track:12c324b73ebc350c2a30db58080b4bb5874e966f5641b8aaaffa82baa1f53371` |
| 4 | `theorem` | [refined_cubic_calibration_budget_lt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CubicCoefficientCalibration.lean/declarations/refined-cubic-calibration-budget-lt.md) | 41 | `result-track:d83cc99ada8f67012cc51ca525dec7aa2ddc6f6a5716852fe4423e9abaf4de13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6df00614b0347ccc54178077bae5aa6ac4ec2e602e96e128d4daa8a602d35943 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6df72eae3ee3785a0a3dCubicCoefficientCalibration/Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
