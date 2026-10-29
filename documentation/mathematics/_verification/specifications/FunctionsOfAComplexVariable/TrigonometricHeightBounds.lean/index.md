# Verification target: GRWTSK.Analysis.Complex.TrigonometricHeightBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa6bb34b5053a54cddb3d79c443e0a6883276c82",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/TrigonometricHeightBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa6bb34b5053a54cddb3d79c443e0a6883276c82`.

Source path: `GRWTSK/Analysis/Complex/TrigonometricHeightBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/TrigonometricHeightBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Cotangent` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [norm_sin_le_exp_abs_im](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/declarations/norm-sin-le-exp-abs-im.md) | 24 | `result-track:cfabb4a614d6c093be5ab6365eb6e8fa9d587b869725121476763df4c037d9eb` |
| 2 | `theorem` | [norm_cot_ratio_le_three](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/declarations/norm-cot-ratio-le-three.md) | 39 | `result-track:3a66459618514fcfb6f5920bd5db03a281a24ef6b0bc564a33184ef89529d4f8` |
| 3 | `theorem` | [norm_cot_le_three_of_one_le_im](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/declarations/norm-cot-le-three-of-one-le-im.md) | 54 | `result-track:829363a4f66bf8e02b086b62cdf90310c18e20b89d12aa8c5749d9c8b211ed19` |
| 4 | `theorem` | [norm_cot_le_three](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/declarations/norm-cot-le-three.md) | 66 | `result-track:8529c31c3a65716177768fb0d32ac9b3d1bb4f180b55b65e0647e7907c046fe1` |
| 5 | `theorem` | [norm_half_pi_cot_le](../../../../FunctionsOfAComplexVariable/TrigonometricHeightBounds.lean/declarations/norm-half-pi-cot-le.md) | 77 | `result-track:834f2f729337d05b1fa9e3411110584ce51d830321a2c30b9dacb5affa8da75a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84e999334a580412e8e313859c333285b3ccbf9f4036db5b1588250b34a0c2d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/TrigonometricHeightBounds.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/TrigonometricHeightBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
