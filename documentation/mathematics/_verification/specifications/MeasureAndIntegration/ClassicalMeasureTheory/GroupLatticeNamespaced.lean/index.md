# Verification target: Group Lattice Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5fbd74628469131c4865cc907fcbd193903b25d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Lattice/Variantada8c09930b050f53928034e6c91aff89e3d48e2bf3787889dd2793cf6c2c1e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5fbd74628469131c4865cc907fcbd193903b25d`.

Source path: `GRWTSK/Analysis/MeasureTheory/Lattice/Variantada8c09930b050f53928034e6c91aff89e3d48e2bf3787889dd2793cf6c2c1e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Lattice/Variantada8c09930b050f53928034e6c91aff89e3d48e2bf3787889dd2793cf6c2c1e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.PosPart` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable_oneLePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-onelepart.md) | 30 | `result-track:8b5e8fc829416f6e0cd1e26b5da52cbe68dd3236720b8882e58bd2336ac88bea` |
| 2 | `theorem` | [Measurable.oneLePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-onelepart-source-edition-2.md) | 34 | `result-track:a64cd26466168d1afb80b65c2f5b92a99d2cd29a4c15735c4374b1cb1d15dfca` |
| 3 | `theorem` | [measurable_leOnePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-leonepart.md) | 41 | `result-track:52d0701f72ad188966b7b1f3ca1750069064323f8c0b2c8a22df24676e161bab` |
| 4 | `theorem` | [Measurable.leOnePart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-leonepart-source-edition-2.md) | 45 | `result-track:d8b2e55855b526de63b98820a2ad810de18969fdbf0c7da16eef3e353f758331` |
| 5 | `theorem` | [measurable_mabs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-mabs.md) | 52 | `result-track:36b28eef22bfb7802abca5bd04b3f740d468bb4e988f9b5c8f8f93068dc3ffc5` |
| 6 | `theorem` | [Measurable.mabs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/measurable-mabs-source-edition-2.md) | 56 | `result-track:403122cc40ead27e259ea5d2c5e555a394bf3d35ddb9f57cabb7da4d8d133104` |
| 7 | `theorem` | [AEMeasurable.mabs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/GroupLatticeNamespaced.lean/declarations/aemeasurable-mabs.md) | 60 | `result-track:cb398d6633b25d12dfcb79982406714e5a9aafd5afe585bcf3e893af53529628` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80c8246a5e729ef99e6377f130424258077256c9b5d278f7ab39b5ccf5241bda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Lattice/Variantada8c09930b050f53928034e6c91aff89e3d48e2bf3787889dd2793cf6c2c1e9.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Lattice/Variantada8c09930b050f53928034e6c91aff89e3d48e2bf3787889dd2793cf6c2c1e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
