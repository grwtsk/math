# Verification target: Preorder Restrict Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a364d46ba6c2fb7b7e6f94d62a61f86f03ff14e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PreorderRestrict/Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a364d46ba6c2fb7b7e6f94d62a61f86f03ff14e`.

Source path: `GRWTSK/Analysis/MeasureTheory/PreorderRestrict/Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PreorderRestrict/Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Restriction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_restrictLe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/declarations/measurable-restrictle-source-edition-2.md) | 31 | `result-track:1e5429801ad3d104ed9c3c07c617914dac824d528dc65d1aa9a2959be5c2fe15` |
| 2 | `theorem` | [measurable_restrictLe₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/declarations/measurable-restrictle.md) | 35 | `result-track:0affc98e92628c50dde224040af08960ad00296ab88145e2e6684799f15d0663` |
| 3 | `theorem` | [measurable_frestrictLe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/declarations/measurable-frestrictle-source-edition-2.md) | 41 | `result-track:d18d0e49b26ec707c122433fada37e4c7b71ae386dd0435846a038fb40e11fb8` |
| 4 | `theorem` | [measurable_frestrictLe₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PreorderRestrictNamespaced.lean/declarations/measurable-frestrictle.md) | 45 | `result-track:9bbc9197bca0ec21eb402d907df75cc328435a41f8dafc9b59254e702afa9d28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9913ce3a79e2fd55eaa8f2d99703ee47fc75b846534e1d950021924abe27a36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/PreorderRestrict/Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/PreorderRestrict/Variant6a001b838b786bc65a03dc5e4dbbb6b6e5f158c95c2708f6adccb52caa32c868.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
