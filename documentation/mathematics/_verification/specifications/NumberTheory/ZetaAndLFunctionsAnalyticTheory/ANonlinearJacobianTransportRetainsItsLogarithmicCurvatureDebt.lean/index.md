# Verification target: ANonlinear Jacobian Transport Retains Its Logarithmic Curvature Debt

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a5be36465168573473716b56fd98beaa4499318",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a5be36465168573473716b56fd98beaa4499318`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [solve_chain_quotient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/solve-chain-quotient.md) | 22 | `result-track:ff7721f61c6555aabf019f8659926d1ed316c3c434a6b46c7979a2887d8bbbcc` |
| 2 | `theorem` | [exact_transformed_derivative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/exact-transformed-derivative.md) | 33 | `result-track:86b2b6bbc98b765d47ec8e846018f059bcf2afd1b4f18d4eb432c8397560ec8a` |
| 3 | `theorem` | [exact_transformed_energy_density](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/exact-transformed-energy-density.md) | 47 | `result-track:dfd00afab07caf33fc259b2e5385a6bd96971a53609958d4791a4090d5b2f8f7` |
| 4 | `theorem` | [affine_jacobian_removes_curvature](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/affine-jacobian-removes-curvature.md) | 55 | `result-track:bb1e167dfe48714b37c4b9525e9a343b7ae0a487a17e003deb1e12f4ad95e09a` |
| 5 | `theorem` | [curvature_can_create_derivative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/curvature-can-create-derivative.md) | 59 | `result-track:e3e5657435c276562b07463c6663f0cd0b33e0434f47277a910dcf53462b567e` |
| 6 | `theorem` | [exponential_fold_constant_source_derivative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ANonlinearJacobianTransportRetainsItsLogarithmicCurvatureDebt.lean/declarations/exponential-fold-constant-source-derivative.md) | 67 | `result-track:99fa83fd7cc14a385ac9db6213d8ad15dc92bd6b0ac79c363514e5d126fd2289` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=af7e1d4a1aabdec164f9a7f48a36cf36e1ff5c73a0df27a5ba060939eae26c76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
