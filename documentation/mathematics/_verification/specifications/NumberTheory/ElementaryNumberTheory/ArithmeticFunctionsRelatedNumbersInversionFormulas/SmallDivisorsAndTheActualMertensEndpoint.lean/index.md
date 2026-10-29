# Verification target: Small Divisors And The Actual Mertens Endpoint

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18becace601b9101db72937bc4b7a39dc8968037",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18becace601b9101db72937bc4b7a39dc8968037`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ActualKernelBound` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMobiusIntegerTransport` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [realMoebius_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/realmoebius-abs-le-one.md) | 32 | `result-track:fd74574a228ae768dac9f505abf12e58e0987d8188287facb979404edd415dc0` |
| 2 | `theorem` | [positive_divisor_integer_agreement](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/positive-divisor-integer-agreement.md) | 37 | `result-track:4c85ce6a229dfb20302ba328f59422142583474cb2eeb5f857d8b62ad9baf062` |
| 3 | `theorem` | [smallDivisorMobiusMoment_eq_kernel_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/smalldivisormobiusmoment-eq-kernel-sum.md) | 99 | `result-track:3d6f2d2b841e2f6f423eaa78ba46ffae508239b30bbfa378acdf45530a3f1091` |
| 4 | `theorem` | [inverse_sqrt_sum_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/inverse-sqrt-sum-le.md) | 150 | `result-track:ea5caadab907e1844289e5ce1920a61ce23c551f874c474efc88a51c718e51bb` |
| 5 | `theorem` | [smallDivisorMobiusMoment_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/smalldivisormobiusmoment-abs-le.md) | 169 | `result-track:6dbbac830af27afe391c736ffc1d62247fceffc0c4678f843eb4e2a46f0ba283` |
| 6 | `theorem` | [mertens_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/mertens-abs-le.md) | 198 | `result-track:60c717c2a59b33b4ca37e2834da317390d24fc93ad44e50b899aa16563dc9ed9` |
| 7 | `theorem` | [actual_mertens_endpoint_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SmallDivisorsAndTheActualMertensEndpoint.lean/declarations/actual-mertens-endpoint-abs-le.md) | 220 | `result-track:753d1dcf7fa3996095abf461e9cb5110af70d8249e5efda9befe949220aa6307` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5114173d57b25459d9a72a20a0aad92563462f52e014a176a71d5739f6c0549 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SmallDivisorBound/Variantc8e61e8b028d6187c31d1ea10ee940ddfdd11d374714160d161327abde2bc83a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
