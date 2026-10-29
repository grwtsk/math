# Verification target: Prime Exhaustion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f64cd95dc5a5ab497e89be3c8000e2f541cd3f8d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeInsertion` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeBlockReduction` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cutoffPrimes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/cutoffprimes.md) | 17 | `declaration-track:04d76819e52982d612dc5adae581671312223be12ac4162983e713f69cfb653b` |
| 2 | `theorem` | [mem_cutoffPrimes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/mem-cutoffprimes.md) | 20 | `result-track:cf3976a9018595776fa41c76e63dfb4be40496175f1117138bd32ce3036a1fff` |
| 3 | `theorem` | [quotientSupported_of_contains_primes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/quotientsupported-of-contains-primes.md) | 29 | `result-track:af048d19b197b6effa028dd092c7434ba72a996af87469f2f78268eee4c1b806` |
| 4 | `theorem` | [primeSupportedBlock_eq_full_of_contains_primes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/primesupportedblock-eq-full-of-contains-primes.md) | 41 | `result-track:4cfbf933c36b2e4a03f7aa7a1fe016dc1fde72c6477498aacaace2de5312f6af` |
| 5 | `theorem` | [primeSupportedBlock_cutoffPrimes_eq_full](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/primesupportedblock-cutoffprimes-eq-full.md) | 57 | `result-track:7a7f0e78de4cc8ba3fe5e38906c68bf58cff1aec015577c4bad3307770a2f4f4` |
| 6 | `theorem` | [roughRatioRemainder_eq_zero_of_contains_primes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/roughratioremainder-eq-zero-of-contains-primes.md) | 66 | `result-track:95717abf86fbf10d6f1368f7f71ebce583edd6167b26c6bb41f9b8e5012dc582` |
| 7 | `theorem` | [sourceQuadraticValue_eq_complete_block](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimeExhaustion.lean/declarations/sourcequadraticvalue-eq-complete-block.md) | 74 | `result-track:d9fb69a708400a4461abac733f23f33bfd888c0e0c253f9cd0f331fac941e13d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13771a24a5c223acc42c79b0e37c7612fe5f3e02f8fa51135dc963c87d474460 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeExhaustion/Variantaaf9b5e2b1b76d9faf23a29315b438603559d742f3fb95a61ce32e5b77d62993.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
