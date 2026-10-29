# Verification target: Damped Divisor Coefficient Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ccf6c71a6d1f2e4ad6898f5436ddb3950e7a8cf",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ccf6c71a6d1f2e4ad6898f5436ddb3950e7a8cf`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusEndpointBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient.md) | 12 | `declaration-track:3ff3a9cc8066c59bb1ebb53258de41721f98493876d55fa0202cf48893c4789f` |
| 2 | `def` | [damping](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/damping.md) | 15 | `declaration-track:09b7a00f5c5fd77b1e2ae147b2e9eae33174d6dbb803fe12469e0f81493c3b6d` |
| 3 | `theorem` | [damping_multiplicative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/damping-multiplicative.md) | 18 | `result-track:50242d1030b801b855fec4789ca41ee636acd8f381779262819e615d3dafc377` |
| 4 | `def` | [divisorFunction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/divisorfunction.md) | 29 | `declaration-track:d4b625daeac0e1098a9118279b1813d32dd6a5501b5693bcddae91a07ed42fe4` |
| 5 | `theorem` | [divisorFunction_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/divisorfunction-apply.md) | 32 | `result-track:b56fd940c7dd9249f1da6765739376b6b7774de116cdbdd4e11d4552d40d34d7` |
| 6 | `theorem` | [divisorFunction_multiplicative](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/divisorfunction-multiplicative.md) | 42 | `result-track:469fa7ef1e3abf7e6a9aad23c6c3bcdc4ccedd7b615aeb19fd1a1950074a7e26` |
| 7 | `theorem` | [divisorFunction_prime_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/divisorfunction-prime-pow.md) | 46 | `result-track:f2a65ff9c1beac030c4c2050f73c7b63f9b87a96bf4e741d0878ab60753247e5` |
| 8 | `theorem` | [dampedDivisorCoefficient_eq_primeFactors_prod](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient-eq-primefactors-prod.md) | 64 | `result-track:1e8d4706037df0f36d43f4d40f4113d97db4b810687d42fb0505e584125de7e6` |
| 9 | `theorem` | [dampedDivisorCoefficient_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient-nonneg.md) | 78 | `result-track:f0fb20ee2e5731c3e4ef24a1a71bdd3021a0c4b36843c189a60c24dc49bb2315` |
| 10 | `theorem` | [dampedDivisorCoefficient_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient-le-one.md) | 90 | `result-track:6dd70cab1f82995a923a417101c0b82fbbd492f92ad40c2dac074e27d8c440e7` |
| 11 | `theorem` | [dampedDivisorCoefficient_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient-zero.md) | 102 | `result-track:4d475f954d79ecf1057503826f03ffdc0ad2cd3bff9b705709e5961d8fed5a27` |
| 12 | `theorem` | [dampedDivisorCoefficient_zero_ne_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/DampedDivisorCoefficientAudit.lean/declarations/dampeddivisorcoefficient-zero-ne-zero-iff.md) | 112 | `result-track:984e21fac7ae317465b43e816fd1a28aed378c0fb9ba15c4d38b326fa003f9e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=387458d690a0d796f1f48e7eb08da054147546b5df4024a60b44631a6d022960 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/DampedDivisorCoefficientAudit/Variantd6e99f44b3307c6e90fdd9c8e3c113e4c14b24d8fab0dd47de13cfce41d707ca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
