# Verification target: Invariants Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c60029a276f34d8933e5f61a904332a9068124",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c60029a276f34d8933e5f61a904332a9068124`.

Source path: `GRWTSK/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invariants](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/invariants.md) | 36 | `declaration-track:b5402f32dd06e827ef6b1740bc0d0bd342f6844bae25e96344bc8cb9f0185615` |
| 2 | `theorem` | [measurableSet_invariants](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/measurableset-invariants.md) | 44 | `result-track:0a9d47d5fe60f5f2a212874fc3ff55d9593478f0bd6d61880729c95a4ecdfce6` |
| 3 | `theorem` | [invariants_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/invariants-id.md) | 49 | `result-track:c2db773278908afc2e1aa0b45a4842b7f181856d951bc3361d607994b384072d` |
| 4 | `theorem` | [invariants_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/invariants-le.md) | 52 | `result-track:d0c6b5a702520912326d4f1b7cdf85e2863db6e30b85346942e4fa9725a869be` |
| 5 | `theorem` | [inf_le_invariants_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/inf-le-invariants-comp.md) | 54 | `result-track:67a106b3b03a365b36ca15ce9fc7dfe4ca0298007c4897c77948a776a8eb4bb1` |
| 6 | `theorem` | [le_invariants_iterate](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/le-invariants-iterate.md) | 58 | `result-track:a6e8ff939abc2cc39e896c418f43dfb99bf7b39afd47f71e21662d6fff954038` |
| 7 | `theorem` | [measurable_invariants_dom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/measurable-invariants-dom.md) | 66 | `result-track:ed83e4f9e76db1ede9eba78634dfb77cd0bbd2566c4643cd81b1a5e9a453286c` |
| 8 | `theorem` | [measurable_invariants_of_semiconj](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/InvariantsNamespaced.lean/declarations/measurable-invariants-of-semiconj.md) | 70 | `result-track:1e3296b49d614a8981c3c481701366944f24c4aec6174937fabf5ce061d7d554` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c9f1ae14d02162c72b3dc9acf2ebb899902134ddfc246a8bd692c52c51bdd8ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Invariants/Variantc63f36cdcd8dca2ca9056dfbcd8f5af3cdd632c6661bcfea63be1f3fba15e0d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
