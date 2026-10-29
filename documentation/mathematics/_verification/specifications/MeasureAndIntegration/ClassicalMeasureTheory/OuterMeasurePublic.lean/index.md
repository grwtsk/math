# Verification target: Outer Measure Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "792e648c1a89c8606456050408522b450da6deea",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `792e648c1a89c8606456050408522b450da6deea`.

Source path: `GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/OuterMeasure/Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OuterMeasure.toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/outermeasure-tomeasure.md) | 32 | `declaration-track:0f2dd4b89e2e2f2b0d135e0c78a35c836f1c6dbef34d7f402239f05514e54c63` |
| 2 | `theorem` | [le_toOuterMeasure_caratheodory](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/le-tooutermeasure-caratheodory.md) | 37 | `result-track:f26c88edeefcf1d7d806df4b3537cef301f9cdbce90149fd4cfce86a57b6669d` |
| 3 | `theorem` | [toMeasure_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/tomeasure-tooutermeasure.md) | 41 | `result-track:bbe900adfc149aa627665baedbddb2ae329774ba72ec6f6a4ac7918d67ca3f79` |
| 4 | `theorem` | [toMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/tomeasure-apply.md) | 46 | `result-track:4f6e16e9ccdc3e4ccb81e1c77ef52b01a75cf436da8ec312d82bbc3dbfeb7e93` |
| 5 | `theorem` | [le_toMeasure_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/le-tomeasure-apply.md) | 50 | `result-track:ade2b8c0fff36c3e3bb1ee1315ad91ba6b6eaa3d5095928cb35403b16c7ff0ef` |
| 6 | `theorem` | [toMeasure_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/tomeasure-apply-source-edition-2.md) | 54 | `result-track:7ea9fd0b7f9c3cad0b321a6db2568d3e8189676c44d310cf3c2e6770fa896932` |
| 7 | `theorem` | [toOuterMeasure_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/tooutermeasure-tomeasure.md) | 64 | `result-track:a853ffd4f57111b322c2d2f736f3cece73e3ca0fc21ba7b8bdf486c9a3b7d049` |
| 8 | `theorem` | [boundedBy_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/OuterMeasurePublic.lean/declarations/boundedby-measure.md) | 69 | `result-track:c69f1d8628344826294a67c5024f747c62f6f436854843a8e59a4a01d7556468` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=293afb98eedd15ce7e35cb885effb8e91b383b84a5a8b674342c8e6ffe0d3291 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/OuterMeasure/Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/OuterMeasure/Variantb4616a92f93cfe77af0078a4e0e6970bf795241ff0818288f51cd69d4a61d47d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
