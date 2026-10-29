# Verification target: Iteration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `357e7d9c4fb50cc877131e8a90775dc5f5fbc2ff`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BooleanMatrix.Application.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iterate](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/iterate.md) | 19 | `declaration-track:4788d1e91982096677dff8833c6eb8a54eb02439dab6b4f956e715a3f05819aa` |
| 2 | `theorem` | [iterate_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/iterate-zero.md) | 27 | `result-track:4c5c499526fb8f4366e1e5f7cc06455879d1f6183ed22ff6a1c805055220395d` |
| 3 | `theorem` | [iterate_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/iterate-succ.md) | 34 | `result-track:7e976a934cddc4dca8c11fbb979313b5da020f118a2830afb943891c43298681` |
| 4 | `def` | [orbit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/orbit.md) | 43 | `declaration-track:0dd3dfe4432b8f38299186f82ed294a7dbf368665c3370c489b5f4f99de6e8ca` |
| 5 | `theorem` | [orbit_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/orbit-zero.md) | 50 | `result-track:ea06a0981e826c3e365629d00e83f61187f7fad868acca9720d67f34c865f63b` |
| 6 | `theorem` | [orbit_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/IterationNamespaced.lean/declarations/orbit-succ.md) | 57 | `result-track:bd99a73969b6c479ab95001ff7abb85c294ded58d3af320a78131612d27fa1af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee960bcfa49691753e7a946b16247af0adacd0f39f47f378c0cfc9ebc14663b1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Iteration/Variant6e75c8f1f01b051b14b0c67391bc7996b82d86a04e9f140e05283aadc28c4a0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
