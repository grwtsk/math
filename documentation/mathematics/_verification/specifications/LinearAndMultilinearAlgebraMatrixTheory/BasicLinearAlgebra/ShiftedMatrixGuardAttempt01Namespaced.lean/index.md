# Verification target: Shifted Matrix Guard Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a371de53d6a0a4d7414ae44b20105633428a9b1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant0748e0f3c4086bc4e6e76d76937e55776fc76a621f3e33e3368f3039789a0d4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a371de53d6a0a4d7414ae44b20105633428a9b1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant0748e0f3c4086bc4e6e76d76937e55776fc76a621f3e33e3368f3039789a0d4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant0748e0f3c4086bc4e6e76d76937e55776fc76a621f3e33e3368f3039789a0d4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [shifted](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted.md) | 23 | `declaration-track:bf8c14d143142995ee6e2fe36336bed432d030a5059e57211aa89f46586f4d3c` |
| 2 | `def` | [bottom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/bottom.md) | 26 | `declaration-track:a7f190b5dfbcb37a818397ea8a772d9f5f7f0ef6797cacf6ce53feee38403e7f` |
| 3 | `theorem` | [bottom_le_eigenvalue](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/bottom-le-eigenvalue.md) | 29 | `result-track:9541a9ef258931492f9d6f56e374b983881a32d81551bedc3ec9db26ade1dc30` |
| 4 | `theorem` | [le_bottom_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/le-bottom-iff.md) | 33 | `result-track:7a36c6596fb9f5672282ecbf2b41dd0afa2f1effcc1799fc8704dac287dc0c90` |
| 5 | `theorem` | [source_positive_iff_bottom_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/source-positive-iff-bottom-nonneg.md) | 37 | `result-track:ac306ce0f0c6ef63a141b28bf2c39e089f37240a73ec92c51d4342f27baf1728` |
| 6 | `theorem` | [shifted_eq_spectral_conjugate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted-eq-spectral-conjugate.md) | 42 | `result-track:30bf83e2d5eeb80bbe837ef42f9e9ba90015ad45fdaa4f2215d642bb32b22854` |
| 7 | `theorem` | [shifted_positive_of_le_bottom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted-positive-of-le-bottom.md) | 54 | `result-track:398ce33f03c3407e6ad00a5390003813f27e1126c5a576b36c1d684aa540cce9` |
| 8 | `theorem` | [shifted_positive_of_lt_bottom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted-positive-of-lt-bottom.md) | 62 | `result-track:67fa19ee79a37e26fcaef1e214a72f3fb5cf0466a44e1d0fb489040b58ff1df8` |
| 9 | `theorem` | [shifted_strict_positive_of_lt_bottom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted-strict-positive-of-lt-bottom.md) | 67 | `result-track:b36aeb9367e5a84eeba1ee826688b447e222f19500a4dbf22438fff8be247853` |
| 10 | `theorem` | [shifted_quadratic_exact](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/shifted-quadratic-exact.md) | 75 | `result-track:1b84fa3df0da9b24c36de03bf2325c4d4057b88cf8800196ddf929811265e5c4` |
| 11 | `theorem` | [source_positive_of_shift_positive_and_nonnegative_shift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/source-positive-of-shift-positive-and-nonnegative-shift.md) | 79 | `result-track:cf26b3a994aa45ed8e07729c58317fbbe11ead37a991ea12ae39380e6aa20364` |
| 12 | `theorem` | [negative_one_shifted_by_negative_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/negative-one-shifted-by-negative-two.md) | 86 | `result-track:d5de17c16d73bffc739c405cc2f8b2a5cd9d19e82324bed1a4b941f71780fff0` |
| 13 | `theorem` | [negative_one_has_positive_shift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/negative-one-has-positive-shift.md) | 93 | `result-track:bae3e14f3c6d3222d308472ca7fea619bb45946bcd207a022e20e17be51a979f` |
| 14 | `theorem` | [negative_one_source_not_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/negative-one-source-not-positive.md) | 98 | `result-track:e08a963c7d57e35e520143a511945485ff6166d3c2496e60e993518ae05bee9e` |
| 15 | `theorem` | [no_unconditional_shift_descent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/no-unconditional-shift-descent.md) | 104 | `result-track:fe6dc7aff2a378481998af436d0c45c998170ffe4a92860cf04303e716e586f3` |
| 16 | `theorem` | [conditional_form_shift_coercive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/conditional-form-shift-coercive.md) | 111 | `result-track:c9cfdbcf9b81d17f6e45b8dcca07ab052838c3c733c13efc827a986c80d78600` |
| 17 | `theorem` | [conditional_form_source_positive_of_nonnegative_shift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ShiftedMatrixGuardAttempt01Namespaced.lean/declarations/conditional-form-source-positive-of-nonnegative-shift.md) | 119 | `result-track:9c1c430670c97b4a48b4ef77be9e8ab53c75eaae6147a21b7389fc9b1f0ae459` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ed2b0e39c8b1335de4b592953cf6032700cfab493f5c30d2de3884844e50e8a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant0748e0f3c4086bc4e6e76d76937e55776fc76a621f3e33e3368f3039789a0d4f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ShiftedMatrixGuardAttempt01/Variant0748e0f3c4086bc4e6e76d76937e55776fc76a621f3e33e3368f3039789a0d4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
