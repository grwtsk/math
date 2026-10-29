# Verification target: Source Divisor Quotient Sampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79c113cf79a81b620045cdb747eb75627a2f122c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79c113cf79a81b620045cdb747eb75627a2f122c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceDivisorCounterterms` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceSamplingPointwise` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [divisorMultiplesInteraction_eq_quotient_sub_diagonal](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/declarations/divisormultiplesinteraction-eq-quotient-sub-diagonal.md) | 28 | `result-track:6b2d3b15916233cad228682460168740ba1a0e2c6f1ad51e63ff9015ca73e66e` |
| 2 | `theorem` | [divisorRemainder_eq_quotient_sampling](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/declarations/divisorremainder-eq-quotient-sampling.md) | 68 | `result-track:9ba63f7e545b84efcaa2d8b79a9f04ea8bdb0f726a8ee7b051758a0a8673513b` |
| 3 | `theorem` | [actual_multiple_eq_plain_sample](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/declarations/actual-multiple-eq-plain-sample.md) | 83 | `result-track:5f218c99d73fa7982536708b672c0a99f1c629d6ddf208922ae4db170feb1f79` |
| 4 | `theorem` | [actual_full_multiple_sample_sub_main_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceDivisorQuotientSampling.lean/declarations/actual-full-multiple-sample-sub-main-abs-le.md) | 95 | `result-track:577cf5396a2cf31775237f99100fbb52d0bb9ecf37d469a26be83d1534cc4e49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf496c1ca6a959e917531ddf671e8dd4c3c8d4329fc842ea73f2f30f77baa822 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/4dc2c15b0a0deb196af8SourceDivisorQuotientSampling/Variant4dc2c15b0a0deb196af84a31c59d43f2add1ee11f556ef45b50494424d2e8726.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
