# Verification target: Source Phase Polynomial Budget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7bca87fe727185ec95b7566a4bfe705ad23915",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/index.md) · [Full source](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7bca87fe727185ec95b7566a4bfe705ad23915`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePhaseMassFTC` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [phasePolynomialCoefficient](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/phasepolynomialcoefficient.md) | 21 | `declaration-track:96fd1b505698b60cae18a9589f3912d4d72e2cc2e82b1554b805c9183ad39a0b` |
| 2 | `theorem` | [phasePolynomialCoefficient_pos](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/phasepolynomialcoefficient-pos.md) | 24 | `result-track:25835b8f94d6308fe5a0e1fff614dc49d49bdcacaba2b6f73a9218b24f836640` |
| 3 | `theorem` | [positiveMass_ge_taylor](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/positivemass-ge-taylor.md) | 29 | `result-track:76d6c4d0dbc6a90cbf2d197e3900d15edcbadc347776cfb916f2b6fc8b17cef4` |
| 4 | `theorem` | [positiveMass_gt_polynomial](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/positivemass-gt-polynomial.md) | 44 | `result-track:1054f33ff0a975e53572b195ca4f7e5d59dfe0050208c0d76dca2409c565cc74` |
| 5 | `theorem` | [positiveMass_eventually_gt_polynomial](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/positivemass-eventually-gt-polynomial.md) | 61 | `result-track:071b4e2e8bcd4c0d54d3941f58f8712c1d3ba6a73a94ba1a398072528c52ee07` |
| 6 | `theorem` | [positiveMass_not_eventually_polynomial_bounded](../../../../CommutativeAlgebra/SourcePhasePolynomialBudget.lean/declarations/positivemass-not-eventually-polynomial-bounded.md) | 69 | `result-track:a2ff9a12243056d1d37c5bdca32eb20fe6d8f54c2cf478d78dde1ca2b935019f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=adc7cf8466d4486fa466984a4f10528b99ebdf853fe9542e5d0cc8c313853738 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SourcePhasePolynomialBudget/Variant540c8970c99ee0eb66663c12c9b33e81ea0c9e53d8afa7e365e17d7c2b1a66fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
