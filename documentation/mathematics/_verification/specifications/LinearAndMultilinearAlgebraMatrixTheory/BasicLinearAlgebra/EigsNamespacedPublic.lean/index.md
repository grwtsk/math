# Verification target: Eigs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce71dbdc39b07715ae36a40f7a6b0032c28cf7a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce71dbdc39b07715ae36a40f7a6b0032c28cf7a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_spectrum_iff_not_isUnit_eval_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/mem-spectrum-iff-not-isunit-eval-charpoly.md) | 78 | `result-track:bb911280d6d3e0c8ea62716a1be4f55d2ace3c7437dfd64470fe64189763e29c` |
| 2 | `theorem` | [mem_spectrum_of_isRoot_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/mem-spectrum-of-isroot-charpoly.md) | 84 | `result-track:f90d29e403b8411c89086a99bd986573354e9940407fc491bca811452dfb007d` |
| 3 | `theorem` | [mem_spectrum_iff_isRoot_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/mem-spectrum-iff-isroot-charpoly.md) | 92 | `result-track:15bd9a6a6b8bff649f153152fa52af04272293f55f85a5bb73632f2818ae254f` |
| 4 | `theorem` | [spectrum_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/spectrum-transpose.md) | 96 | `result-track:c50f7a5a79ee3fe82d936763f92b3844d12c072c397451ddb7c874f2e9e8646d` |
| 5 | `theorem` | [det_eq_prod_roots_charpoly_of_splits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/det-eq-prod-roots-charpoly-of-splits.md) | 99 | `result-track:47fe6157ad614cd6523a58b5915746f9958c32b862d2be04cdf01270ad414f6f` |
| 6 | `theorem` | [trace_eq_sum_roots_charpoly_of_splits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/trace-eq-sum-roots-charpoly-of-splits.md) | 105 | `result-track:e2945a1a8c07601a39e6968408c9c54b5d9434d296eefbfd64fc9cac791bdd84` |
| 7 | `theorem` | [det_eq_prod_roots_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/det-eq-prod-roots-charpoly.md) | 114 | `result-track:d9767d4f34e4f3e4858a3d62c534044616d0f03f8016a1c99f9b0bcc0c14c3d4` |
| 8 | `theorem` | [trace_eq_sum_roots_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/EigsNamespacedPublic.lean/declarations/trace-eq-sum-roots-charpoly.md) | 117 | `result-track:b542f56c6e445dd6b8c7737a08f90182ac3db5ed9274ea630c0e268319d50547` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa2873011a16ff90f60f14c490d2da814155a015a6c6ac3447f98d06a30886d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Eigs/Variant7f8c21f0e812716d888487cc79bbec4eec091da54c949a1bc09cb150f9aee40b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
