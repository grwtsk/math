# Verification target: Branch Seam Cell Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e394a0d1ef179a0ac7deef63053ac0cf2a781c25",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e394a0d1ef179a0ac7deef63053ac0cf2a781c25`.

Source path: `GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Core.ComplexAnalysis.FiniteHoleGeometry` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.Core.ComplexAnalysis.RectangleContour` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.CurveIntegral.Poincare` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficientOneForm](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/declarations/coefficientoneform.md) | 33 | `declaration-track:3cfec0bc2ce17b183dfb43ab3f0e348be2ec6067b536a544463a301a330ff4de` |
| 2 | `theorem` | [curveIntegral_coefficientOneForm_homotopy](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/declarations/curveintegral-coefficientoneform-homotopy.md) | 37 | `result-track:3b2b63873336538de9635449029303bed40ef9800679b93212e9d717fb05d26f` |
| 3 | `theorem` | [four_seam_cells_cancel](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/declarations/four-seam-cells-cancel.md) | 79 | `result-track:045687646c8b58f447b04a9dd0478c12dbe830c2d5cc2060722f2d63679161aa` |
| 4 | `theorem` | [coefficientOneForm_curveIntegral_segment](../../../../MeasureAndIntegration/BranchSeamCellEdition1.lean/declarations/coefficientoneform-curveintegral-segment.md) | 151 | `result-track:6cbeaae2191a00f28645353c734bc36c2e240c28881f4f5771f874a62a07c6f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a7ded14ebd4ba458f838e97e5fb5de57182fef4c25464a881e9544a451427cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/BranchSeamCell/Variant5adc723f109b3c0071019fc2156dafdd36aa5eda42ef9d928723a9da417c24ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
