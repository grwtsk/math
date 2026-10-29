# Verification target: GRWTSK.Analysis.InnerProductSpace.Checks.Negative.ClosedOperatorMissingPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5757b883352a0f1b4eb5466bc8e1cbb6b289b82",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/Checks/Negative/ClosedOperatorMissingPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5757b883352a0f1b4eb5466bc8e1cbb6b289b82`.

Source path: `GRWTSK/Analysis/InnerProductSpace/Checks/Negative/ClosedOperatorMissingPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/Checks/Negative/ClosedOperatorMissingPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.ClosedOperatorSolvability`](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/InnerProductSpaceClosedOperatorSolvability.lean/index.md) — import line 9; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_dense](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/zero-dense.md) | 17 | `result-track:eb3b24e9b789ba281d662df06c34663cab83aa318be7a547b566627807662bb0` |
| 2 | `theorem` | [zero_closed](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/zero-closed.md) | 21 | `result-track:74ea8c55b7381258ad75c9d3b81e17e5a73eac99d724e8ecbd462d71ee1fa0ee` |
| 3 | `theorem` | [zero_target_not_mem_graph](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/zero-target-not-mem-graph.md) | 35 | `result-track:2b9f5b3aaefbe7b6d76967bdb5e5312a8581d6c2271213fd526a732611022dfe` |
| 4 | `theorem` | [zero_has_no_unit_solution](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/zero-has-no-unit-solution.md) | 41 | `result-track:5f5ead7d09808c3cd2f8d567e0d22aa752936541610695b2d61f170423cc1f76` |
| 5 | `theorem` | [zero_pairing_fails](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/zero-pairing-fails.md) | 46 | `result-track:64140546ccb7c62f5a55e0f3d871bf5b8e270854d1afb5b2ff4f326560bf9579` |
| 6 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ClosedOperatorMissingPairing.lean/declarations/example.md) | 59 | `declaration-track:a72a1f6038870185c45ff95957adc2d746e48044c73ee5a2d1eb821a30abe3f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec409298689311cc5495d868cbc99c90690ce3f00d4dbbbd5eb7b0329d6a2961 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/InnerProductSpace/Checks/Negative/ClosedOperatorMissingPairing.lean","GRWTSK/_verification/specifications/Analysis/InnerProductSpace/Checks/Negative/ClosedOperatorMissingPairing.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
