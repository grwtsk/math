# Verification target: Provenance Range Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60afedd90a667786706cc3a8c84fde609bd30acc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant45a94e22ee2bb130d95bf37104d4cff15778e48ccede884d7f49dffd87c45d33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60afedd90a667786706cc3a8c84fde609bd30acc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant45a94e22ee2bb130d95bf37104d4cff15778e48ccede884d7f49dffd87c45d33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ProvenanceRange/Variant45a94e22ee2bb130d95bf37104d4cff15778e48ccede884d7f49dffd87c45d33.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.NullCrossAnnihilation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Matrix.Hermitian` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [symmetric_mulVec_mem_range_of_kernel_orthogonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/declarations/symmetric-mulvec-mem-range-of-kernel-orthogonal.md) | 39 | `result-track:b8ebe3c5448d9b5b04bcf6fa33ff76073ee1a347b78115303c87468474736532` |
| 2 | `theorem` | [compatible_provenanceMatrix_isSymm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/declarations/compatible-provenancematrix-issymm.md) | 73 | `result-track:027a8e0b33848b56d2de884850f0ea70e728260b8bb2f3ac139c4ccd094830a7` |
| 3 | `theorem` | [cross_mem_provenance_range](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/declarations/cross-mem-provenance-range.md) | 94 | `result-track:0b19a39c81506914154a0b3592cad4cbb6d5b43e0497c3b22ea1fdedfff0a83a` |
| 4 | `theorem` | [exists_provenance_solution](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProvenanceRangeNamespacedEdition1.lean/declarations/exists-provenance-solution.md) | 112 | `result-track:50236c730611663308ed6470a8642e47b5c39ab892c194ba022238bdf276fd0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0b70a3d262c8ade96af626e8f8f8f2764be898413d408bdca58f7809bb84c8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ProvenanceRange/Variant45a94e22ee2bb130d95bf37104d4cff15778e48ccede884d7f49dffd87c45d33.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ProvenanceRange/Variant45a94e22ee2bb130d95bf37104d4cff15778e48ccede884d7f49dffd87c45d33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
