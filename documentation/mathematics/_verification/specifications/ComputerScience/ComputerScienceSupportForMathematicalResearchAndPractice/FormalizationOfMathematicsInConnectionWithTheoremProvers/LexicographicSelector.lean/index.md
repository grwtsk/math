# Verification target: Lexicographic Selector

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "290ee11c4847bfc615f8af9fe4fc914b7df0eb47",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `290ee11c4847bfc615f8af9fe4fc914b7df0eb47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SelectorWeightComponent](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorweightcomponent.md) | 10 | `declaration-track:5ed61933bb31c1d60d98c271ef50685c9aa748fcf4e95c1a445eefcf8a7a53b1` |
| 2 | `def` | [selectorWeightComponents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorweightcomponents.md) | 21 | `declaration-track:1b25464fca97de0b149170d322916e6c8ef5840c0ffb9048b91bb87521c2df6c` |
| 3 | `theorem` | [selector_weight_component_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selector-weight-component-count-declared.md) | 32 | `result-track:27dfb20857fa55ae25eb2390f9e67c68a41cd3b29061204f468021700557ab01` |
| 4 | `inductive` | [SelectorProofStatus](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorproofstatus.md) | 36 | `declaration-track:f5f2571c632d023c5b46d66064c7219a492306e2cf93c7ec8724b2ec71dcd114` |
| 5 | `def` | [selectorAuthorityRank](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorauthorityrank.md) | 47 | `declaration-track:d8b199b72dbe6d1d7804ee7320e661327af67154f5d49622a16451cb1b599af8` |
| 6 | `def` | [selectorAuthorityStatuses](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorauthoritystatuses.md) | 57 | `declaration-track:80f53554c9211fceb03027633efab19f2dea1d75818745f478e26bfef45c7a7c` |
| 7 | `theorem` | [selector_authority_status_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selector-authority-status-count-declared.md) | 68 | `result-track:86a1a1c45e5af3abc00ec187531b6d9a342088fcebdbcd9e45c25ff51f511dd8` |
| 8 | `theorem` | [checked_lean_rank_beats_checked_rust](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/checked-lean-rank-beats-checked-rust.md) | 72 | `result-track:cfc27d602116d19476c61bc4a92573c6b24f920d69c108dd84e696c223138a07` |
| 9 | `theorem` | [checked_rust_rank_beats_referee_task](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/checked-rust-rank-beats-referee-task.md) | 77 | `result-track:65da1ef0342c175ecfa3d1f00c8af49d7271da2ae514ee65ba60e6e8f62fcbd9` |
| 10 | `theorem` | [referee_task_rank_beats_residue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/referee-task-rank-beats-residue.md) | 82 | `result-track:6332767545cf21fb8d9d19425c3eccb78d1983c6e150f381e8dd74ede6256e8d` |
| 11 | `inductive` | [SelectorAuthorityRung](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorauthorityrung.md) | 87 | `declaration-track:71be03c551aac896840280af1aac1f2729e1b285a64a7be2c45b8edafe9a5a2c` |
| 12 | `def` | [selectorAuthorityLadder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorauthorityladder.md) | 99 | `declaration-track:b0d209e6f22077066f4a17efcf760c35a9d2505b0dd6249558503c6a1624f113` |
| 13 | `theorem` | [selector_authority_ladder_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selector-authority-ladder-count-declared.md) | 111 | `result-track:38ef8a34cf210a39bae1c27146626a5e21c53c69ec007e9e6f3f3c4f615c0017` |
| 14 | `inductive` | [SelectorStallRecoveryPacket](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorstallrecoverypacket.md) | 115 | `declaration-track:1356f4049a1680e5dd76917889a6c0a707af701ead9392746ff113b9e501ddff` |
| 15 | `def` | [selectorStallRecoveryPackets](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selectorstallrecoverypackets.md) | 129 | `declaration-track:dccffe3780d39807f07919475917cdb6ab0a94a0513d0a4e811b6415fef80ad3` |
| 16 | `theorem` | [selector_stall_recovery_packet_count_declared](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/selector-stall-recovery-packet-count-declared.md) | 143 | `result-track:0a3f977e5a164689d44dd410ba880433b024d4dbd446135cb4b0d3590e6675ca` |
| 17 | `structure` | [PipelineLexicographicSelectorBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/pipelinelexicographicselectorboundary.md) | 147 | `declaration-track:b91e030bfae4f0fdaeb477de409df760e0471662038549493ba69966daab77df` |
| 18 | `def` | [finitePipelineLexicographicSelectorBoundary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/finitepipelinelexicographicselectorboundary.md) | 168 | `declaration-track:17860d5a184c172c29e43b987fa169a131c0b3855dc1bc76dbae2d17c0c998b8` |
| 19 | `def` | [PipelineLexicographicSelectorFiniteWitness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/pipelinelexicographicselectorfinitewitness.md) | 189 | `declaration-track:6a5a40262d4ffa81d3e2ab712ccfff33ca9b3292c1a7bc0b56b78d073de3be04` |
| 20 | `theorem` | [pipeline_lexicographic_selector_finite_witness](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/LexicographicSelector.lean/declarations/pipeline-lexicographic-selector-finite-witness.md) | 220 | `result-track:89ca059db97d3c76106cc6b5897e8ca5219cb0a9ec7ec2f15fbed8ab968b1ffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1cf89515539bdac6ffcf4cf4b4b0dc34898366f65cf5047253bebf789697b0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M506970656c696e652f56616c69646174696f6e2f4c657869636f6772617068696353656c6563746/Variant9bce04b89e8b96866eeb6855e9b5fe86151dc8c087371929675d9a535b160d6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
