# Verification target: Eigs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99fa9dac7347e62dc25099d51c4d9f9fae16af53",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99fa9dac7347e62dc25099d51c4d9f9fae16af53`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IsAlgClosed.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_eq_prod_roots_charpoly_of_splits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/declarations/det-eq-prod-roots-charpoly-of-splits.md) | 58 | `result-track:898bbf23a0bc3a817bced5816f952702df791ca9a9c2cd0fb614089a395907fc` |
| 2 | `theorem` | [trace_eq_sum_roots_charpoly_of_splits](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/declarations/trace-eq-sum-roots-charpoly-of-splits.md) | 64 | `result-track:6505c8c6213478af56f7dd81ea9b3d4c27727a7930fdc204d294fa93e9053866` |
| 3 | `theorem` | [det_eq_prod_roots_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/declarations/det-eq-prod-roots-charpoly.md) | 76 | `result-track:a855b18afa95e25e639b19f5eab55efbafbf4aba71bee569ab3d8763098af5cf` |
| 4 | `theorem` | [trace_eq_sum_roots_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Eigs.lean/declarations/trace-eq-sum-roots-charpoly.md) | 79 | `result-track:2bd941d7974e7c850b1e34f6a34f8038f1d59eea13d1cf67ec969b9fd6fa5e29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2cd3309a6d98e7eebb02a95d4046587bd0b96a2611c03c0e861144df6f4d8c4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Eigs/Variantd80260b19f5542fa50b198855f638d73d7c8441d972aab98836b4e30d3151c4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
