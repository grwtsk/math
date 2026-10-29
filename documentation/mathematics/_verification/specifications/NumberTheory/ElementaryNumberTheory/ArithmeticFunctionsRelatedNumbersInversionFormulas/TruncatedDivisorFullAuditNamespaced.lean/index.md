# Verification target: Truncated Divisor Full Audit Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "876b7c7206959c40f1ed37a883f92e5d17aeb272",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `876b7c7206959c40f1ed37a883f92e5d17aeb272`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CoprimeCount` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.LogarithmicResidualTail` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dampedDivisorCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/dampeddivisorcoefficient.md) | 15 | `declaration-track:a0424108c9ffa82c8dd07a6189b9c6b11971e46975a02b5bd24261232d46fa93` |
| 2 | `theorem` | [floor_sum_divisors](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/floor-sum-divisors.md) | 32 | `result-track:1a11aa2eb638c38783b6b900aef8921d70e3f34a79f3fb5dbd74a81d93267cab` |
| 3 | `theorem` | [divisor_prefix_eq_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/divisor-prefix-eq-floor.md) | 62 | `result-track:3cb5392d23deab82f6b6b082db465a77ce2dca5ebd4ff2003f62f0657d41db6b` |
| 4 | `theorem` | [residual_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/residual-floor.md) | 68 | `result-track:220e6d3ff88594d0d58bba9a5166513b612721f17b43a2d50b5332ea914dc1e3` |
| 5 | `theorem` | [damped_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/damped-floor.md) | 83 | `result-track:b3df6037c8262b248a5a44d25522b650507a497323bd53b5176118e6ce1f315e` |
| 6 | `theorem` | [arithmeticResidual_eq_divisor_prefix_closed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/arithmeticresidual-eq-divisor-prefix-closed.md) | 95 | `result-track:17e7fd6bdb537ee2a4e38511daf3b58fb1b238cd7ca14f2682bb3d57dd74202d` |
| 7 | `theorem` | [arithmeticResidual_eq_divisor_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/arithmeticresidual-eq-divisor-prefix.md) | 108 | `result-track:67c5c6f0a9522bb2f0d97b1ff5a31e667885376a9e85efdb64c626abb1cc9d64` |
| 8 | `theorem` | [arithmeticResidual_zero_of_lt_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/arithmeticresidual-zero-of-lt-cutoff.md) | 119 | `result-track:1740c0520f63266bd26e0a894af2f2569c31959d2ee5796880e5b273ac561cc8` |
| 9 | `theorem` | [arithmeticResidual_zero_damping_endpoint](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/arithmeticresidual-zero-damping-endpoint.md) | 129 | `result-track:e0385a41bb7277d6fe8624cc577094db711a30c912e7130c605528b89e3fcc5a` |
| 10 | `def` | [truncatedDivisorCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/truncateddivisorcoefficient.md) | 156 | `declaration-track:a0cd1e9d5f0da4206886c39e78395d3d6b5b0b5cf515d0ad0f7f5d2b05cc4edc` |
| 11 | `theorem` | [truncatedDivisorCoefficient_eq_full](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/truncateddivisorcoefficient-eq-full.md) | 161 | `result-track:113118e5697163631d47dcfb8009c45a36e4788964024d5ae3a923f1a70008f7` |
| 12 | `theorem` | [finite_floor_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/finite-floor-prefix.md) | 169 | `result-track:b0f170db8ea19e5e8fa73194264980eb65066c3704860159c2f1fcb8b73d0df4` |
| 13 | `theorem` | [damped_floor_eq_truncated_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/damped-floor-eq-truncated-prefix.md) | 198 | `result-track:9c314e77b02a81587c0a37107c30e840045ef186b19625dd8ed0cb1d5ac59997` |
| 14 | `theorem` | [residual_floor](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/residual-floor-source-edition-2.md) | 208 | `result-track:601f92378cb7c755b05dda72cef1e2b81e325e4a9b8f95af90bccfbebc113ab6` |
| 15 | `theorem` | [arithmeticResidual_eq_truncated_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/TruncatedDivisorFullAuditNamespaced.lean/declarations/arithmeticresidual-eq-truncated-prefix.md) | 226 | `result-track:cb0bf3291bb95a82b9d6f9815f884925601e6e70b1c69d8d95656b9fa8be8195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a8a77d78ece2f51ad99b9681691de4c8fa128a45ba3e0650bb0fb76ffb96e39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TruncatedDivisorFullAudit/Variant5dd19b1fe91b536bb7b7919d7a5ee7c914e1fe0ace1411759fa46a82318c9300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
