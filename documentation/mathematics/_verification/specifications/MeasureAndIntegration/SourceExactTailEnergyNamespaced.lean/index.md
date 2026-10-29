# Verification target: Source Exact Tail Energy Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e33d54e535634d40c5bf3a58f3f742b39ff3ab40",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e33d54e535634d40c5bf3a58f3f742b39ff3ab40`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167.lean.json)

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
| 1 | `def` | [tailEnergyCoefficient](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient.md) | 30 | `declaration-track:23243bd2dd81a589c031440d13d9da85d9ce54b5b0c2fdce42675105b503007d` |
| 2 | `theorem` | [exact_ratio_comparison](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/exact-ratio-comparison.md) | 34 | `result-track:00f20383a6887032ff5bb918c9a2e12701b108dd9107da295555ecec948c0ff3` |
| 3 | `theorem` | [exact_ratio_mono](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/exact-ratio-mono.md) | 44 | `result-track:407521ff36f7015dac5d1c98611eb984121c11b919feec8d11d6cfbd48ff0ee6` |
| 4 | `theorem` | [tailEnergyCoefficient_pos](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient-pos.md) | 55 | `result-track:6888b8e7eb6249cfcaf08e8f0965fdd788d220ef63eee421596f1c733d6c5191` |
| 5 | `theorem` | [tailEnergyCoefficient_antitone](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient-antitone.md) | 60 | `result-track:fcdc7f517f788bdb3eff1b549021768da658d9b8a94566983843e0bbd5137b51` |
| 6 | `theorem` | [actual_derivative_energy_le_tail](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/actual-derivative-energy-le-tail.md) | 68 | `result-track:d94380d19292999cfacf11c28a967c821eb9dff10eed95cd0f59cac1e7341c5c` |
| 7 | `theorem` | [actual_correlation_deriv_abs_le_tail](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/actual-correlation-deriv-abs-le-tail.md) | 77 | `result-track:a854ba6dae0538913e946c86672289bf9953da2bc1880c4bbad2b1621812754e` |
| 8 | `theorem` | [actual_correlation_second_deriv_abs_le_tail](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/actual-correlation-second-deriv-abs-le-tail.md) | 89 | `result-track:1c53049f1220bf2fc6bc15253c676c5105b2a2e5827529ce4c4ffab9090fd12d` |
| 9 | `theorem` | [tailEnergyCoefficient_ninety_one](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient-ninety-one.md) | 98 | `result-track:c0388bf625a30cb92a99d967a3ef5f99369b8c80a0ceb5efd9282f0ead0b2dd5` |
| 10 | `theorem` | [tailEnergyCoefficient_ninety_one_lt_five](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient-ninety-one-lt-five.md) | 102 | `result-track:88c5054abd1c4a7fc039c2b7552da26301a54261a8e93166d90ad7e4e2d54c78` |
| 11 | `theorem` | [tailEnergyCoefficient_le_five](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/tailenergycoefficient-le-five.md) | 107 | `result-track:ce61de377cd8bc287e5bb02abc87053aaa3d6460dc98bfd9260ab206722c6893` |
| 12 | `theorem` | [actual_correlation_derivative_bounds](../../../../MeasureAndIntegration/SourceExactTailEnergyNamespaced.lean/declarations/actual-correlation-derivative-bounds.md) | 113 | `result-track:a5d2d0b6b41cb9ed46dd3881fe07ca589637b55a2144017cb4a1d03239d6b3dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba050467b482bdbe778758ef5a5535c2322377765f11158b86cca7729e9de2bb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/06SourceExactTailEnergy/Variant834c8273905972727fd237cb9fc955ff67747597903d8412c614c1e049b40167.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
