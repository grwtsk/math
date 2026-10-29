# Verification target: Five Mode Count Constants

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdcca0ce3736bb1bf6d8250a0dbae5ba11684861",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdcca0ce3736bb1bf6d8250a0dbae5ba11684861`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_20261004.FiveModeFiniteTailBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cutoff_log_lt_twenty_nine](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/declarations/cutoff-log-lt-twenty-nine.md) | 15 | `result-track:defb973a64f50f03f219fef0d81854de22d414dc399549240d368ad2c8968317` |
| 2 | `theorem` | [cutoff_log_gt_one](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/declarations/cutoff-log-gt-one.md) | 24 | `result-track:a7b917c8b32638b76fe9c762f08e005ca9aa2bac68c724ad56614f756f59ab62` |
| 3 | `theorem` | [cutoff_loglog_lt_four](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/declarations/cutoff-loglog-lt-four.md) | 28 | `result-track:e1437802659113746bf378682f548a6c5f027e88d0be6b4c5207870e43eeec2c` |
| 4 | `theorem` | [corrected_error_cutoff_lt_eight](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/declarations/corrected-error-cutoff-lt-eight.md) | 37 | `result-track:26c20fa017ed7474ca74dc046eac5bc18387b4c17c7300c43b59cd56501c475d` |
| 5 | `theorem` | [count_envelope_cutoff_le_rational_cap](../../../../FunctionsOfAComplexVariable/FiveModeCountConstants.lean/declarations/count-envelope-cutoff-le-rational-cap.md) | 42 | `result-track:df44cddb17af6346ee5678d6fa7710649d409e70bbee9abc111c362124ca4f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0671cfbd4a15b18b0bb00a276a3e80c0e0f7e735e1ef40d17a209f1c940c758d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/FiveModeCountConstants/Variante8ea4425e6300ff584cf76a03ecb561f87c4a3623edaf6919b3032cc9be5c27e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
