# Verification target: Source Endpoint Envelope Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e4b0cf15e4c0ee6f231bdf1fd85cad445c55932`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceMangoldtColumnQuotient` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [column](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/column.md) | 33 | `declaration-track:e05a7ce45d73d405179d795a4010027496481a3e3a1444de3d13b07d81474a19` |
| 2 | `def` | [centeredPrefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/centeredprefix.md) | 36 | `declaration-track:63886d26253e49ccaa4c7382e39173cf912dd850f37a9db45d5c924dd5834d42` |
| 3 | `theorem` | [exp_gt_square_add_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/exp-gt-square-add-one.md) | 39 | `result-track:01022b131803c9d3898a529f704cc581b4d8e8b6d2ec4eb7e906bd90a71c34fa` |
| 4 | `theorem` | [square_adjacent_le_upper](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/square-adjacent-le-upper.md) | 51 | `result-track:5ffeb2d7059d91dd9152abbb60739d3115066f67cb662ba98ec4e9d51fa088fc` |
| 5 | `theorem` | [quotient_geometry](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/quotient-geometry.md) | 63 | `result-track:de1359bd4cd102868b957fc86620b3116bab4a95cfdfd9787e7f2b9a14edf917` |
| 6 | `theorem` | [column_at_quotient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/column-at-quotient.md) | 87 | `result-track:8f56812f8ed260c6787110816fd78de68347d038694d202fe1cfab41119549bf` |
| 7 | `theorem` | [centeredPrefix_abs_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/centeredprefix-abs-le-cutoff.md) | 115 | `result-track:fa8f81f23e8a0de8bca67bc9ce9919ec99a783ec4a879ef0775b2f899d284ccd` |
| 8 | `theorem` | [endpoint_weight_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/endpoint-weight-abs-le.md) | 126 | `result-track:cdfffb5edc8008d1fefd26fd383bf3bdcc8fb0756e7dd3d338360de0164aff16` |
| 9 | `theorem` | [endpoint_abs_le_exponential](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/endpoint-abs-le-exponential.md) | 162 | `result-track:7cf65c622c6ccdc97e151c037e0adeefdc4016131fd25e413696100db94d488f` |
| 10 | `theorem` | [actual_centered_column_endpoint_abs_le_envelope](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceEndpointEnvelopeNamespaced.lean/declarations/actual-centered-column-endpoint-abs-le-envelope.md) | 198 | `result-track:a1826f124bd3c82823c90c716801950fb7463eb171a77327a327d22032c5174b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=660f00ad94c07e3cec6cc9a45e03f39c525980fc12b42a4eea14c3dd17f8554c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceEndpointEnvelope/Variant91790d21873aebc92881713fd599e84008dc5d1ca8e39442916aac33aec3f11a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
