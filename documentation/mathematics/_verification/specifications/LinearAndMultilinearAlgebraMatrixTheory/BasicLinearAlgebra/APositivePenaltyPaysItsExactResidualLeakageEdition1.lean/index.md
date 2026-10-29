# Verification target: APositive Penalty Pays Its Exact Residual Leakage Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba641c96fc11935a688f23c19a07d5f3176543ea",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba641c96fc11935a688f23c19a07d5f3176543ea`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean.json)

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
| 1 | `def` | [quadratic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/declarations/quadratic.md) | 28 | `declaration-track:668a7dd589ae887eb57cbfbb4e713de96368ee7a9a1afbb4479f3ad997359dc1` |
| 2 | `theorem` | [normalized_penalty_leakage](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/declarations/normalized-penalty-leakage.md) | 31 | `result-track:cd316453148abf3a5946f2e84f3c48000ee1c0749d82d1ad8d01b7b593feb19d` |
| 3 | `theorem` | [exact_annihilation_has_no_penalty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/declarations/exact-annihilation-has-no-penalty.md) | 55 | `result-track:cc56510c75aeec9a782499bd020e89492b8bd503c5307ece197bad75f8030dbc` |
| 4 | `theorem` | [norm_payment_consumer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/declarations/norm-payment-consumer.md) | 64 | `result-track:854a5f3b0f5f994b1af898d927443da78a2084b4c834994d0dc5261c90fb55c5` |
| 5 | `theorem` | [norm_payment_is_sharp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/APositivePenaltyPaysItsExactResidualLeakageEdition1.lean/declarations/norm-payment-is-sharp.md) | 70 | `result-track:4ab21dea51b2cb60532dc9176cb671b4485fd86ee84830c3b47c8922a9582cb7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10da7c0c6edc72b6939e09f733a019625ae62f7143ed0bc3ccd388e906bdf34d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatrixLeakage/Variant6f85f349b62b8de8299a0c96c3e143c8bdf5a1dde78967b0c18dac86093498e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
