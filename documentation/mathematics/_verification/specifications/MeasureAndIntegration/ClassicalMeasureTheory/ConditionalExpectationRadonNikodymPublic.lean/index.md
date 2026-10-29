# Verification target: Conditional Expectation Radon Nikodym Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d177835c8606c4b74cc394f2df9080d4abe83cfb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d177835c8606c4b74cc394f2df9080d4abe83cfb`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.LebesgueBochner` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toReal_rnDeriv_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/toreal-rnderiv-map.md) | 52 | `result-track:fc31e1a0e7f06b335ecb45a2a88c3e6e8436b3168b0e024d316faf60ef1b0a1b` |
| 2 | `lemma` | [rnDeriv_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/rnderiv-map.md) | 83 | `result-track:9552420106926afd5d7533f35598c2b80320e491edbfefc199d1ce72c26fd86e` |
| 3 | `lemma` | [rnDeriv_map_ae_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/rnderiv-map-ae-eq-trim.md) | 103 | `result-track:67367e5b1e0d55efee176dbe7b8848bca77eab471be473e69f03ffb942505259` |
| 4 | `lemma` | [toReal_rnDeriv_map_ae_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/toreal-rnderiv-map-ae-eq-trim.md) | 119 | `result-track:1cdc2489251afa0de0609aa8af24851a2383d5045b7896d7c4af4eed9eb8292b` |
| 5 | `lemma` | [toReal_rnDeriv_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/toreal-rnderiv-trim.md) | 134 | `result-track:d2c5fcb4eee4b539565f6949a20a20acfe3e24c04f892460f149ce4b6034659d` |
| 6 | `lemma` | [rnDeriv_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymPublic.lean/declarations/rnderiv-trim.md) | 147 | `result-track:8b0bd9f0d55e760a6895b5146b0f0db4a5410fec8239ecaf08959247048a8862` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dca72e7e02b193d98145f37a8a11fd3587f6281536494a6eb485367e039d861d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/RadonNikodym/Variant1b7a8f1e0122ad74b475139e6eadac9a87308c96a628747e5a9cf9fc7437eb5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
