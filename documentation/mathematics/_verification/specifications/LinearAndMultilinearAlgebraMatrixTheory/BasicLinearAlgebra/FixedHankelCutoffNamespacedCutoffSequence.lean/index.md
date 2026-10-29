# Verification target: Fixed Hankel Cutoff Namespaced Cutoff Sequence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0535c90e0f97e473a4283d89367a1d5a8660c723",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0535c90e0f97e473a4283d89367a1d5a8660c723`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffSequence](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/cutoffsequence.md) | 35 | `declaration-track:02b9a5efe4e381309078559eddb57cebadc1b32c8febc816933392b19f72c6d8` |
| 2 | `theorem` | [unshifted_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/unshifted-eq-one.md) | 38 | `result-track:4c76960e5e8abcb621852b6de1eb2da2099533295079cdbd248c0f75d4d1e7b8` |
| 3 | `theorem` | [shifted_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/shifted-eq-one.md) | 48 | `result-track:6e7e3bb94711f395bc1b4e7891c1a182a21ac59ef05d90b555b94d527031171a` |
| 4 | `theorem` | [all_ones_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/all-ones-possemidef.md) | 58 | `result-track:a98c7d16dc0cc5e1c071fc0c18302dce9f456bab4f4e57ae6491b462f3b914c6` |
| 5 | `theorem` | [both_towers_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/both-towers-possemidef.md) | 64 | `result-track:dd7c80d50e7528dd1c2d91e56c534949ef0c306d7a99810d5d201b2c28747cca` |
| 6 | `theorem` | [next_order_last_basis_quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/next-order-last-basis-quadratic.md) | 72 | `result-track:de8a734c4fb3c43ea19d7b484abccf79d52ab0d332ff0db596dd8dfc34bbb453` |
| 7 | `theorem` | [next_order_not_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/next-order-not-possemidef.md) | 80 | `result-track:0b5cc43b6ff92c4720b6b81eadc4cee33f8a2aa0cb3a87c3098f8e4fef22ea54` |
| 8 | `theorem` | [fixed_cutoff_counterexample](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/fixed-cutoff-counterexample.md) | 88 | `result-track:e7dfcd599b8aba0329d0de7abcad69cca2b9fbabbb4c67396138d1d010d9a9c6` |
| 9 | `theorem` | [fixed_cutoff_not_sufficient](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixedHankelCutoffNamespacedCutoffSequence.lean/declarations/fixed-cutoff-not-sufficient.md) | 98 | `result-track:36cea4c76f024720981af644f2ac16afaa3580c0de18a42e32d464670f1b0147` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6d56f2432ade3f7f37933870f5e91e87e4a28e2988d666f1f32656c4e3772a65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FixedHankelCutoff/Variant4bc409fe4ab21a630a78615c66ee2245600f1d7d649c79d899390ee543f726e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
