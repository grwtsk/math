# Verification target: ACountable Sequence Of Finite Frames Has ASeparable Closed Carrier Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0cf8b55add2fa05eb89f0462b87f2850a24f073",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0cf8b55add2fa05eb89f0462b87f2850a24f073`.

Source path: `GRWTSK/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CountableDetails` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FrameIndex](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/frameindex.md) | 24 | `declaration-track:b26b887376a73b2cb76b02c6c5099d5d53933c49d74d35ad7adc80113159a30d` |
| 2 | `def` | [carrier](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/carrier.md) | 27 | `declaration-track:d064033a5c4007da1a870c4cefd6dc8e6eaee23f229b1b62292080f9736002aa` |
| 3 | `theorem` | [every_frame_vector_belongs](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/every-frame-vector-belongs.md) | 30 | `result-track:25d5a3325b3e7ea98f3bb99947b807c7d6a7e68f77cde4152bb2c2575216f9b5` |
| 4 | `theorem` | [completed_carrier_is_closed](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/completed-carrier-is-closed.md) | 34 | `result-track:31d08c626691330a81b311bb078e2c597e74f7e763fb647b9692dfbb91a827eb` |
| 5 | `theorem` | [completed_carrier_is_separable](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/completed-carrier-is-separable.md) | 38 | `result-track:3a52e0f47f0a6e40325aa81720828506844acf4a023435a7a1c37215d50ab911` |
| 6 | `theorem` | [completed_carrier_is_complete](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/completed-carrier-is-complete.md) | 44 | `result-track:555f07336a59363afed5843da1d11dc6a3bfce1e6daf54fd93e8212347f46550` |
| 7 | `theorem` | [continuous_readout_of_strong_approximants](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/continuous-readout-of-strong-approximants.md) | 48 | `result-track:36b0cd579d76bc01b873d8ca69f84072c8c558f661a2bc464e02dd4c0d08f44e` |
| 8 | `theorem` | [common_finite_readout_bound_survives_completion](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/common-finite-readout-bound-survives-completion.md) | 54 | `result-track:e2a0be559ab67579888f21977696cd7d69d0089ab57430b97fcad08c6785db9e` |
| 9 | `theorem` | [completed_carrier_does_not_bound_a_readout](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/ACountableSequenceOfFiniteFramesHasASeparableClosedCarrierEdition1.lean/declarations/completed-carrier-does-not-bound-a-readout.md) | 60 | `result-track:ee7d2355ff01e557b000bd59746e0d9fd8e7f971becc715e93132b443c8cb4e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0c77244fc0558c2a8f29a8e346724a919a35a74562780be5a309b760a60d100 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean","GRWTSK/_verification/specifications/Topology/DirectedHilbertCarrier/Variant04487e0102619ea44c8b931ab07cde6affaa8426a6e7a847ff6efb8628fed2f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
