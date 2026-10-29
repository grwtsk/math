# Verification target: GRWTSK.NumberTheory.Cyclotomic.Checks.Positive.ThirdCyclotomicReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b3058064dad56af3aa4dbd57147607af7dc805f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b3058064dad56af3aa4dbd57147607af7dc805f`.

Source path: `GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Cyclotomic.ThirdCyclotomicReduction`](../../../../../CommutativeAlgebra/ThirdCyclotomicReduction.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [actual_omega_cube](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-omega-cube.md) | 8 | `result-track:fcaf30389abfccd584024e552162bdd7933a8ca8eae4828736804274ae8f319e` |
| 2 | `lemma` | [actual_omega_not_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-omega-not-one.md) | 9 | `result-track:008364f364b9046b649b7dc10a8ebf15c64708377ee384c903112d93745636c7` |
| 3 | `lemma` | [actual_lambda_nonzero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-lambda-nonzero.md) | 10 | `result-track:cc301e8c415940d0bc3b5f062a099dc56304e2a333cee21c0ceb95f484bc7199` |
| 4 | `lemma` | [actual_ramified_norm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-ramified-norm.md) | 11 | `result-track:ba15a62a4cc115d2a3722c380ac28015cd1533f64bbdca0866404ab757d7a9b5` |
| 5 | `theorem` | [actual_ramified_good_condition_counter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-ramified-good-condition-counter.md) | 14 | `result-track:2526e44c7661e2d336296d6a355b694f2cf508477ab28f068adfd871675ef229` |
| 6 | `lemma` | [actual_ramified_quotient_card](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-ramified-quotient-card.md) | 21 | `result-track:a6ea6d50c02e6e77b1d2aae0e5edf1017db3cf6cb1efc03f4f297844d865ca4c` |
| 7 | `lemma` | [actual_three_reduces_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-three-reduces-zero.md) | 24 | `result-track:fe62914ca2a9f62a4710c28aa7c6fd7d12d8cfb25bae5e8998431129dbd22780` |
| 8 | `lemma` | [actual_two_not_ramified](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-two-not-ramified.md) | 27 | `result-track:df68b8a9fcea2b9ea49861477e8ecc1d8e1d0813f96d3ceec35023d80f38d1d2` |
| 9 | `theorem` | [actual_good_reduction_nonvacuous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-good-reduction-nonvacuous.md) | 30 | `result-track:ec918f5b61888b08d346de6bc6b5b452f2be5978908b6f5f4741514fa19aa703` |
| 10 | `theorem` | [actual_good_order_nonvacuous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-good-order-nonvacuous.md) | 38 | `result-track:f4dc7ddbbadbad0c20110d73d139e838331eeb9f639a502a24cc1c5f2bdd6090` |
| 11 | `lemma` | [actual_ramified_not_good](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-ramified-not-good.md) | 44 | `result-track:0224913664ead6be87437ceaf04d8b5e89943994ade75e045c8ed53af790f14e` |
| 12 | `theorem` | [actual_lambda_generator_not_primary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-lambda-generator-not-primary.md) | 49 | `result-track:7136d1c6f97d746059e9b132b9616a62c1f8c8c465f686b48e9370056f8d0bf1` |
| 13 | `lemma` | [actual_no_ramified_primary_generator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThirdCyclotomicReduction.lean/declarations/actual-no-ramified-primary-generator.md) | 53 | `result-track:ba2b31bde29834ef591eeaf526da8005e5b43ac798f6d38933a334053d8b0eb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7be0cbeb603253d4ff1aa524862509d2ec18de165a0c467f5eb503206bcf7135 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean","GRWTSK/_verification/specifications/NumberTheory/Cyclotomic/Checks/Positive/ThirdCyclotomicReduction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
