# Verification target: Projective Space Independence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9879cf3e0e48aa0a67dfb54b5a233f9bbf0cec00",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9879cf3e0e48aa0a67dfb54b5a233f9bbf0cec00`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ProjectiveSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/independent.md) | 48 | `declaration-track:28e8d724ddd6c46e28e3cb10ce4f8daeb4e1ca10742b03497eb0b1c67159afbd` |
| 2 | `theorem` | [independent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/independent-iff.md) | 55 | `result-track:4473f8fe9d9c57b862ba5adf641a75d263b21d3e110f038b2f8f42743ad118ff` |
| 3 | `theorem` | [independent_iff_completeLattice_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/independent-iff-completelattice-independent.md) | 70 | `result-track:387af0be6a8309fa228056234f7040a2b06895d5342d5fef2784a574703ee8c0` |
| 4 | `inductive` | [Dependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/dependent.md) | 84 | `declaration-track:0f24faa1e5f8d5ae7e483a1b7918b318c159ad3de6a546d7badda3a41f79933b` |
| 5 | `theorem` | [dependent_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/dependent-iff.md) | 91 | `result-track:32c02c55349db3ad801bd90d60f52f228e65ab5c0de8e7f301d3adef85513c50` |
| 6 | `theorem` | [dependent_iff_not_independent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/dependent-iff-not-independent.md) | 105 | `result-track:956a46a12808a6a367f1dbf495ed16237a6f8b9644cba749476c8788753efa01` |
| 7 | `theorem` | [independent_iff_not_dependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/independent-iff-not-dependent.md) | 110 | `result-track:9b837d7bf0d50ba94027408e6738a2452742388dcd3f962f6bf20e75bfe357da` |
| 8 | `theorem` | [dependent_pair_iff_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/dependent-pair-iff-eq.md) | 116 | `result-track:c3752ce8a71b3a3fcddc629b6301dcc2cf5300b3e8138fe2068f6c704c24f6d2` |
| 9 | `theorem` | [independent_pair_iff_neq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ProjectiveSpaceIndependenceNamespaced.lean/declarations/independent-pair-iff-neq.md) | 126 | `result-track:f08afaf868427651d27a78a12c28fe71f103869587fa389a399a9d079bc2fd0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba0a9c91dbee1cd1d36eea85be421fc458da98e98a0cdbf7eeab349a857b9fb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Independence/Variant264581763a5f419b719c7ebc6d0e987f5d51583beb5b57eb37fa0c58c8878218.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
