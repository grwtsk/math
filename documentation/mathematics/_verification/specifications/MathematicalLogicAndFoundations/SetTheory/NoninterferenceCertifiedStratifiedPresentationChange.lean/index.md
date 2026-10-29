# Verification target: Noninterference Certified Stratified Presentation Change

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e2a3c06e58415237909b6f4b79a649d8ffedec7",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/NoninterferenceCertifiedStratifiedPresentationChange.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/NoninterferenceCertifiedStratifiedPresentationChange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e2a3c06e58415237909b6f4b79a649d8ffedec7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.StratifiedBoundary.Presentation.StratifiedNode` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedStratifiedPresentationChange](../../../../../MathematicalLogicAndFoundations/SetTheory/NoninterferenceCertifiedStratifiedPresentationChange.lean/declarations/certifiedstratifiedpresentationchange.md) | 9 | `declaration-track:d45f44d0df3489841842e08143f56285578d376acac0aa467294704335d293a2` |
| 2 | `theorem` | [presentation_change_does_not_change_ordinal_semantics](../../../../../MathematicalLogicAndFoundations/SetTheory/NoninterferenceCertifiedStratifiedPresentationChange.lean/declarations/presentation-change-does-not-change-ordinal-semantics.md) | 20 | `result-track:6fd030a11b620d4d95ed15e61f9003eda61a70b4786e32be1cb317f5c5d0610c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c9406950d306c6becd67bb2af48fe0d77e58b1b07354a117b4075e3d3415530 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Noninterference/Variant45f3c5919d9788c8e90f1bdfee9c5f66ba0a8238b79328cfaef93e1dd6440d54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
