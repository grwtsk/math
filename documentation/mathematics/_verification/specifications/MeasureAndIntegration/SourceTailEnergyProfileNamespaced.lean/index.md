# Verification target: Source Tail Energy Profile Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab357dbfa2de9ef376415b4131ee3a1a87cb4fde",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab357dbfa2de9ef376415b4131ee3a1a87cb4fde`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean.json)

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
| 1 | `def` | [tailEnergyCoefficient](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient.md) | 30 | `declaration-track:bb33c4a2d1e7ce6384344e63c325ed607f3dd4ed3c19f1187a2cacbfceee5558` |
| 2 | `theorem` | [exact_ratio_comparison](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/exact-ratio-comparison.md) | 34 | `result-track:1a5a137a1fc1a37b4f5c21808284444922bcbbf1257d2214706f841edfddc3b2` |
| 3 | `theorem` | [exact_ratio_mono](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/exact-ratio-mono.md) | 44 | `result-track:47593683c8450cd9cd97685db7f65ebe540fe6e5b2dea67d39e191440c8a6502` |
| 4 | `theorem` | [tailEnergyCoefficient_pos](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient-pos.md) | 55 | `result-track:71df8e820c7f290325a9e83dab0b061e738719e5512fb1c8aae699d8a4cdb3a9` |
| 5 | `theorem` | [tailEnergyCoefficient_antitone](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient-antitone.md) | 60 | `result-track:7723bfec44e06692989d34240281263651fcf8892231a37c033357b998527dd9` |
| 6 | `theorem` | [actual_derivative_energy_le_tail](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/actual-derivative-energy-le-tail.md) | 68 | `result-track:05b9b5e5e237cb8f39a23ccce0afa8ac97288cca10a123575b49da109309c6c2` |
| 7 | `theorem` | [actual_correlation_deriv_abs_le_tail](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/actual-correlation-deriv-abs-le-tail.md) | 77 | `result-track:fdf3764676c1f836f62a31b99a958e1972ec080ec8dfa93b7f32d67508a6951e` |
| 8 | `theorem` | [actual_correlation_second_deriv_abs_le_tail](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/actual-correlation-second-deriv-abs-le-tail.md) | 89 | `result-track:61c3458f80b49a5e2da0bfdcbe1f5c9463d21023fe75457001b6e0a18a229f9a` |
| 9 | `theorem` | [tailEnergyCoefficient_ninety_one](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient-ninety-one.md) | 98 | `result-track:92dd209f712ce94204c1fe3ec1df617f86f3f1cdeb5df7c326a4b0550d80ddc0` |
| 10 | `theorem` | [tailEnergyCoefficient_ninety_one_lt_five](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient-ninety-one-lt-five.md) | 102 | `result-track:a68970e1eed388675f85f8809765ee3f8fa3b4dbc721677be62a22ac43d4a02b` |
| 11 | `theorem` | [tailEnergyCoefficient_le_five](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tailenergycoefficient-le-five.md) | 107 | `result-track:4d899c9f8385ba301f1f9983e2701f6af04b94673d6596dafafea0332d3695b5` |
| 12 | `theorem` | [actual_correlation_derivative_bounds](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/actual-correlation-derivative-bounds.md) | 113 | `result-track:871b49fbcc258ea23803013de938f028b6ebb3a5ab32c8093dd0bb33a50c88ac` |
| 13 | `theorem` | [tail_physical_derivative_bounds](../../../../MeasureAndIntegration/SourceTailEnergyProfileNamespaced.lean/declarations/tail-physical-derivative-bounds.md) | 123 | `result-track:610df5c6b4f5addd851a8a3bc71231e6c0ac2238761917e9d47f15d0d3632c67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a29201b735a517f9603eb04ef1bb7b1d0af424ab704c3f23c28b77ef1cada9d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceTailEnergyProfile/Variantd904eb86650c03a61626d1559dbeb80d214976cdad60cdd4ed8bc98f98be164b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
