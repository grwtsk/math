# Verification target: Historical Continuity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "459108054a340576c297b66cddff86875fb183cc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HistoricalContinuity/Variant091a6d38b5d7e605be2dda8656a56d05dced318f7346aae1e485cc0ea6209bd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `459108054a340576c297b66cddff86875fb183cc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HistoricalContinuity/Variant091a6d38b5d7e605be2dda8656a56d05dced318f7346aae1e485cc0ea6209bd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HistoricalContinuity/Variant091a6d38b5d7e605be2dda8656a56d05dced318f7346aae1e485cc0ea6209bd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SUCAS.AdmissionSource` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.AdmissionSource` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [derivative_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/derivative-eq.md) | 20 | `result-track:0a8a908a7e61bdf822778c201e95bf56fae1a82d062199fb45256f81eaf91334` |
| 2 | `theorem` | [dilation_test_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/dilation-test-eq.md) | 24 | `result-track:fe2e4c122cf7eddf691bea05d1781d72e498b165c019c6dfb5f4032d948be0d1` |
| 3 | `theorem` | [normalized_test_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/normalized-test-eq.md) | 30 | `result-track:62289a4c4a4fbf814b3da7d447018a5fac10b813d23af2ff3f3fb0db2422c48f` |
| 4 | `theorem` | [arithmetic_form_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/arithmetic-form-eq.md) | 36 | `result-track:77929c0212e108b8d4775f26cd88fc76a883fea7bbaea425b0caa33f0055f324` |
| 5 | `theorem` | [logarithmic_domain_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/logarithmic-domain-eq.md) | 40 | `result-track:198cd19bca7864b32b2fec1a43ee8eee83ebe8d85962fcf18941c06689e258c9` |
| 6 | `theorem` | [scalar_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/scalar-eq.md) | 44 | `result-track:5cb8a6405a8228729764961c4c4fa74e694044a57f6e050cb2f5df88449a2804` |
| 7 | `theorem` | [multiplier_statement_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/multiplier-statement-iff.md) | 50 | `result-track:afea5a5d245571ee2143113e9f1dc365c66c062b9a17a8867ce2acd4364280f6` |
| 8 | `theorem` | [integrability_statement_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/integrability-statement-iff.md) | 54 | `result-track:19480ade3a46a0c3b0d0b7a88f78f2078364ccac21bdff410d52e05c396df411` |
| 9 | `theorem` | [admission_statement_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/admission-statement-iff.md) | 58 | `result-track:16dd8d176492523da1f0dd08aef82c91983b22d2d6861110e5f3a95e37c69ffc` |
| 10 | `theorem` | [admission_current_to_historical](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HistoricalContinuity.lean/declarations/admission-current-to-historical.md) | 62 | `result-track:0e3c75d3f121549a836803b1739c1a6c2f897cf6747ecd1434e1bd158cf54ad0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6c8373e88578b9ab1f5b8a88f7bbee7aecf785452ed83dd9863e0c0a8e33984 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HistoricalContinuity/Variant091a6d38b5d7e605be2dda8656a56d05dced318f7346aae1e485cc0ea6209bd8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HistoricalContinuity/Variant091a6d38b5d7e605be2dda8656a56d05dced318f7346aae1e485cc0ea6209bd8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
