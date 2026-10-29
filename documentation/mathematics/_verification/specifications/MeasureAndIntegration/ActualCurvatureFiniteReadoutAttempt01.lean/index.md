# Verification target: Actual Curvature Finite Readout Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb4d15210b120ab7aa7b62890824e5334ae255a0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant7485abc19ddff12d103336d767ce9ed45eebcd23e1a3b332c11a773ec2423170.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb4d15210b120ab7aa7b62890824e5334ae255a0`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant7485abc19ddff12d103336d767ce9ed45eebcd23e1a3b332c11a773ec2423170.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant7485abc19ddff12d103336d767ce9ed45eebcd23e1a3b332c11a773ec2423170.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualCurvatureResolution` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gridPoint](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/gridpoint.md) | 16 | `declaration-track:54a5948d67478365231db33686181dba8bb7e54969c2b6f57551830874232009` |
| 2 | `theorem` | [gridPoint_zero](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/gridpoint-zero.md) | 18 | `result-track:8da882543ee8fdf5e9208b006cbdcadce1d8eddc63e95217d311a040f4273f67` |
| 3 | `theorem` | [gridPoint_upper](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/gridpoint-upper.md) | 21 | `result-track:9e3e6705c21d932f0906a079c146bc06fd11c4e9fb34b0a0576727ab49502e08` |
| 4 | `theorem` | [gridPoint_step_pos](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/gridpoint-step-pos.md) | 26 | `result-track:a3937265604bb2dc6456b9a102f8548720143e5389e9b1cc782c221a30c969c5` |
| 5 | `theorem` | [leftGridSample_eq_on_cell](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/leftgridsample-eq-on-cell.md) | 34 | `result-track:2b343e9d08b63a1a1a8c227a206a9842a7665d0044b871959df48bcdddaab29a` |
| 6 | `theorem` | [actual_curvature_cell_FTC](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/actual-curvature-cell-ftc.md) | 55 | `result-track:245c23c59401ceba3f83e9af7b1b223ba0836d4ffd3fe78a172d29ab579bd15a` |
| 7 | `theorem` | [actual_grid_cell_integral](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/actual-grid-cell-integral.md) | 60 | `result-track:3619f1bdac157c24f608d8420cadbc82500615b84b6412cc7c39e79b0725deb1` |
| 8 | `theorem` | [sampled_grid_cell_intervalIntegrable](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/sampled-grid-cell-intervalintegrable.md) | 76 | `result-track:e7f3496d51e652e788eaa368b074da9e61e714dd35dc20ed98d6331ea7afd9f1` |
| 9 | `def` | [finiteCurvatureReadout](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/finitecurvaturereadout.md) | 89 | `declaration-track:91cd0117caa92c0d64e07a3eabcb4c899fbb58174062faf73ab4128ffb8430fe` |
| 10 | `theorem` | [sampled_grid_eq_finite](../../../../MeasureAndIntegration/ActualCurvatureFiniteReadoutAttempt01.lean/declarations/sampled-grid-eq-finite.md) | 95 | `result-track:056257b9a8293f8352f48dc2f8e687638aaac221faaab15743632aa8fd629f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6d19f0bb3b38b0599584a922e0be1026d75cae679bd9e10cac112dfd9aaa5fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant7485abc19ddff12d103336d767ce9ed45eebcd23e1a3b332c11a773ec2423170.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualCurvatureFiniteReadoutAttempt01/Variant7485abc19ddff12d103336d767ce9ed45eebcd23e1a3b332c11a773ec2423170.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
