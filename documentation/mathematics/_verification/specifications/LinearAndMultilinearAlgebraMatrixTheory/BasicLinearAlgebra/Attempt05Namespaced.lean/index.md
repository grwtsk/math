# Verification target: Attempt05 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7301acbc2a1a256f5c681daa467d248b02f14f2e",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7301acbc2a1a256f5c681daa467d248b02f14f2e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MatrixCalculus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cartanMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/cartanmatrix.md) | 22 | `declaration-track:54e7e8035efea6d565929347793bdbb87f6893ff2070d4849e14d5fb58ade8ad` |
| 2 | `theorem` | [mutationMatrix_cartan](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutationmatrix-cartan.md) | 25 | `result-track:b9492e0a4a8bc6d0687480afda5ae47d206fabb2d74a0f3ed8d0ea9d9be1a00f` |
| 3 | `theorem` | [mutation_form_entry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutation-form-entry.md) | 41 | `result-track:9b16ef14fc649d409d5409a278525493fbef20ec683b18224b96b747b63f2e8b` |
| 4 | `theorem` | [weightedCartan_symmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/weightedcartan-symmetric.md) | 57 | `result-track:2e9d74233807eb47a9276beb5235dc30db91248c4dc5716ed6979f1b8d2f4e1f` |
| 5 | `theorem` | [mutationMatrix_weighted_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutationmatrix-weighted-metric.md) | 71 | `result-track:7ecf43e270b0ab36cf3abe06067ffe4535e9d0e6e9484e6227f4d0026fe96089` |
| 6 | `theorem` | [mutationMatrix_symmetric_metric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutationmatrix-symmetric-metric.md) | 89 | `result-track:07cff8c481a7cab83f4ee4db5822d0e954eb9e2fa19df24038a0f10d31799750` |
| 7 | `theorem` | [mutationMatrix_nonadjacent_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutationmatrix-nonadjacent-commute.md) | 97 | `result-track:b281c26c32335c10471fea9bb868cbaa76aac86b97eabe4fa2df079c114e7bc6` |
| 8 | `theorem` | [cartan_row_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/cartan-row-square.md) | 120 | `result-track:12ff01fab71c0dc6e94cd9efd255b90828f64f1fca61d98709c2c104316a877c` |
| 9 | `theorem` | [cartan_row_triple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/cartan-row-triple.md) | 132 | `result-track:8775e72d18e380656aaf787f29338703a0b99e5ad6370ec42f24a172f63ed7b8` |
| 10 | `theorem` | [mutationMatrix_adjacent_braid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Attempt05Namespaced.lean/declarations/mutationmatrix-adjacent-braid.md) | 146 | `result-track:21bc551521937bc88baefac3aef5963d2f6281f9411d170c16f00fa480b9a892` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2623190d8e5b58a623d8e7bed5152fa9e8fcac6b42b925a95fe30f0ba99cb2e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Attempt05/Variant9f95d4f9620c97d715a8bbc48b48f0d64d1aa127386c1eeba7ef3872822b24f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
