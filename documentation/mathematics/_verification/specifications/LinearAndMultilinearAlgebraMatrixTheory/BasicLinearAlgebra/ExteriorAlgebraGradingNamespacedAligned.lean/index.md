# Verification target: Exterior Algebra Grading Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a52dd089658f4773940905192d31e8751bd6ba1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a52dd089658f4773940905192d31e8751bd6ba1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GradedAlgebra.ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra-source-edition-2.md) | 40 | `declaration-track:b72f952b76d494e604088a6c8bb86c178af19c13434c318d24a5b650542d81ec` |
| 2 | `theorem` | [GradedAlgebra.ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra-apply.md) | 47 | `result-track:4f514516af7382c99b3038eba91db5ce71ebc44924a191c4e66e983d2f1cb410` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/instance.md) | 56 | `declaration-track:bb3d29f4b6ff7bf91c0ca433c9384c1573e6692dccaad07bd228db567def29f4` |
| 4 | `theorem` | [GradedAlgebra.ι_sq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra-sq-zero.md) | 58 | `result-track:0b300249b441c85e4e3174f3be5c5bb95432dfa415b0dd173639b5c9ded051ff` |
| 5 | `def` | [GradedAlgebra.liftι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra-lift.md) | 66 | `declaration-track:a2dc7296ce974eda0ecfe5f0ee21d39ed5584820e20f0c2c44cbcfaffcb3dbe9` |
| 6 | `theorem` | [GradedAlgebra.liftι_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra-lift-eq.md) | 73 | `result-track:ead6874a95433aa83948a947f69b596c24467178b1e0dc7f86e7ced1b1895e09` |
| 7 | `instance` | [gradedAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraGradingNamespacedAligned.lean/declarations/gradedalgebra.md) | 98 | `declaration-track:628fa7ef8a80c72a19ea0eaa1d9a02b3999d1579ebdd2a4582e1947912d2dde7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=356b4565002f19ac438c66d5260c56d3070128f2006361605820968032e2705c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Grading/Variant4d869dcb23d368506770e7aa6caf8160a53bc869574c7421d56656ca0b99532b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
