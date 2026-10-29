# Verification target: Conditional Expectation Radon Nikodym Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b3c6a58ba4356f58c0e290feab1bd44ab0995ec",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b3c6a58ba4356f58c0e290feab1bd44ab0995ec`.

Source path: `GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Decomposition.IntegralRNDeriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.LebesgueBochner` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [toReal_rnDeriv_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/toreal-rnderiv-map.md) | 60 | `result-track:cc4dca2c625c374b32952ce4df572aa8156f826f7385c08581dcfb983fc16dda` |
| 2 | `lemma` | [rnDeriv_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/rnderiv-map.md) | 91 | `result-track:a1b2a6ae769651bd1525493ce6ce8999e085fcfba0b6d70ce224dc800a40c9a8` |
| 3 | `lemma` | [rnDeriv_map_ae_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/rnderiv-map-ae-eq-trim.md) | 111 | `result-track:beff395db864217f0db7acb178490140701977cf4c537f62f789fbc82e4be8ed` |
| 4 | `lemma` | [toReal_rnDeriv_map_ae_eq_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/toreal-rnderiv-map-ae-eq-trim.md) | 127 | `result-track:aca2edb8894d76bf407e1304cffc29f79037b8561dd0269954663241003fdf7d` |
| 5 | `lemma` | [toReal_rnDeriv_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/toreal-rnderiv-trim.md) | 142 | `result-track:9e96767d9a39dade5588c486af7c34e452fbfd0c37327b546fe02835682f9319` |
| 6 | `lemma` | [rnDeriv_trim](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRadonNikodymNamespacedPublic.lean/declarations/rnderiv-trim.md) | 155 | `result-track:c1d980f6c33291cfb09b2638d5b81d3f61576e6c5b75b5cb3b04634240ffc8b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25723509ff93b8a45d26208696843f79c03ee66d0a4471b549e8d646df170190 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/RadonNikodym/Variant0a6f9c60da2b0abca0c924672b5e869b8ea621a8ff1bc2ad969308a1aacc24e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
