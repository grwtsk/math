# Verification target: Probe Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "509edd1a4fba561f9176e161a2f7c999f9d43943",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variantdb7d4293fac683e3e965b6939993f0b7417006a40f1d91bccc2b2bf8c347c7ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `509edd1a4fba561f9176e161a2f7c999f9d43943`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variantdb7d4293fac683e3e965b6939993f0b7417006a40f1d91bccc2b2bf8c347c7ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variantdb7d4293fac683e3e965b6939993f0b7417006a40f1d91bccc2b2bf8c347c7ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivativePolynomial_le_five_normPolynomial](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/derivativepolynomial-le-five-normpolynomial.md) | 22 | `result-track:8fe53fde517ea93b27c9933d6b62d63514686240697278a40b85bb71d8f0dd6e` |
| 2 | `theorem` | [exact_ratio_upper_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/exact-ratio-upper-five.md) | 31 | `result-track:8490601520ec4a9b5ad29abf0132a32722a636cae6b5968e379f2d7525363009` |
| 3 | `theorem` | [actual_derivative_energy_upper_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/actual-derivative-energy-upper-five.md) | 37 | `result-track:74b045a2aba8244c7052d7e382a301d7028ed467030dc7163a9069de1ae353b0` |
| 4 | `theorem` | [sourceCorrelation_second_deriv_abs_le_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-second-deriv-abs-le-five.md) | 46 | `result-track:6d50795b501170a7fbb6af57bd5ed8eba93db182ca1e892c08ba61255e4e4e50` |
| 5 | `theorem` | [sourceCorrelation_deriv_increment_bound_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-deriv-increment-bound-five.md) | 55 | `result-track:0a413affea767d7db29a35ab95ac1be7dae110a3b4ae5ffcffd7f44b9b67676d` |
| 6 | `theorem` | [sourceCorrelation_deriv_zero](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-deriv-zero.md) | 68 | `result-track:aa1a2eda0844e20e7fcb4119e207fa7e1bdbc8f195873bf6e5fca681a63005dc` |
| 7 | `theorem` | [sourceCorrelation_deriv_abs_le_scaled_distance](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-deriv-abs-le-scaled-distance.md) | 84 | `result-track:d3dbf8b7ae4c2d8d80ab264403652a7931045dd6f05df95621cf75886239ba02` |
| 8 | `theorem` | [sourceCorrelation_linear_taylor_bound_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-linear-taylor-bound-five.md) | 91 | `result-track:ccfa695637ad8747fa426666f4bdc9e0cf779f19d35392434d9efbc37f4c9c25` |
| 9 | `theorem` | [sourceCorrelation_sub_one_abs_le_five](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-sub-one-abs-le-five.md) | 129 | `result-track:3466751399f515e3f0ced172ac8855c154cc75900d246346c48a86ad529c37f6` |
| 10 | `theorem` | [sourceCorrelation_rectangle_defect_bound](../../../../MeasureAndIntegration/ProbeNamespacedSourceEdition2.lean/declarations/sourcecorrelation-rectangle-defect-bound.md) | 139 | `result-track:6a956ef37a8958147d8a6649233e0f230a01cf519876640cf0f608e8300ff5d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1574deffd9e06483ff1103c72f1929436eb275841358424a9ce02ceaf292560 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variantdb7d4293fac683e3e965b6939993f0b7417006a40f1d91bccc2b2bf8c347c7ed.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Probe/Variantdb7d4293fac683e3e965b6939993f0b7417006a40f1d91bccc2b2bf8c347c7ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
