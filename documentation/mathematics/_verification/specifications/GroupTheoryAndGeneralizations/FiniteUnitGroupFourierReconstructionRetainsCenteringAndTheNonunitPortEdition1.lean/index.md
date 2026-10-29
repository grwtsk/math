# Verification target: Finite Unit Group Fourier Reconstruction Retains Centering And The Nonunit Port Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba997b48a4d59ce1d47128081d0f743ed73d3e34",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba997b48a4d59ce1d47128081d0f743ed73d3e34`.

Source path: `GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PortBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coefficient](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/coefficient.md) | 25 | `declaration-track:7dc0ede0b3f8fe79fe3939ab4d900bf455db7d60c8c48a8a3ce219e2d7da4cbe` |
| 2 | `def` | [packetMean](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/packetmean.md) | 27 | `declaration-track:861a34b753c4dfffd9af66970e0cfbbd151ba7ddc5e7661cad93964757cffdea` |
| 3 | `def` | [centered](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/centered.md) | 28 | `declaration-track:ce7edf4c294e324a764ccb48179ea3147bfda969b560e15c23daf453c33a9eee` |
| 4 | `theorem` | [complete_character_reconstruction](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/complete-character-reconstruction.md) | 30 | `result-track:8dc6053e2c8ea2fb73cdd5f946566ad7b6b214d903988ddcc63b48db936295c3` |
| 5 | `theorem` | [principal_coordinate_is_mean](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/principal-coordinate-is-mean.md) | 35 | `result-track:68126b80ee9a5e2e3475e8600dd4ecab2e0c6416ef9d8f3c8588366234f4f89a` |
| 6 | `theorem` | [constant_packet_coordinates](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/constant-packet-coordinates.md) | 52 | `result-track:f11d6e02c95e2ef2853393386cced2634be4991e833493200bed4693ade02a62` |
| 7 | `theorem` | [centered_coordinates](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/centered-coordinates.md) | 63 | `result-track:b7c492b7e3134b3c7e9aa27a7347a6c48f439fe91aa5a924fb5e229511c7b2d0` |
| 8 | `theorem` | [centered_principal_zero](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/centered-principal-zero.md) | 72 | `result-track:049cc8374f743c6acac0c00669d635be836af7f5cde25fcf0607f134e70b312c` |
| 9 | `theorem` | [nontrivial_coordinate_unchanged](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/nontrivial-coordinate-unchanged.md) | 76 | `result-track:b0039bc49801b27a4528ea41b6071476ea10b7c6c54c48ede0c0de3c183b9e1b` |
| 10 | `theorem` | [complete_nontrivial_reconstruction](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/complete-nontrivial-reconstruction.md) | 81 | `result-track:329bb70923d2baa23a2bd84759b3dcfc2c7419bf55c324da55943f8c7e24828f` |
| 11 | `def` | [unitPacket](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/unitpacket.md) | 93 | `declaration-track:7ebc020f39ff9ad384225a73b5bb75e58aa44c6a3ae4c540ec69f1420abf2e17` |
| 12 | `def` | [nonunitPort](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/nonunitport.md) | 95 | `declaration-track:8f74128089d0f7f6d22259ea33f903966488ecd6b5604a177af41b0585c043f2` |
| 13 | `theorem` | [complete_unit_nonunit_ledger](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/complete-unit-nonunit-ledger.md) | 98 | `result-track:6eb60e99a212351f7eb7f632972dd6c1c9fb4588d1ae011b147c7dce936c2f8d` |
| 14 | `def` | [arithmeticLabel](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/arithmeticlabel.md) | 110 | `declaration-track:870d46faf257653374de7789bdd1e24395f2fcb4e6d8056cdbe195cfbab3ca4c` |
| 15 | `theorem` | [arithmetic_label_nonunit_iff](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/arithmetic-label-nonunit-iff.md) | 114 | `result-track:d7ca48262c628e926b5e2c6851be43f2eaa7a03c1caf24370165a251bc055b53` |
| 16 | `def` | [actualRow](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/actualrow.md) | 120 | `declaration-track:68147e3ac861886db3cecfee0e519a6e082781393bddad3ff386ea2dc454c6f3` |
| 17 | `def` | [actualUnitPacket](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/actualunitpacket.md) | 123 | `declaration-track:a0dd94586995f26bc6a7c54918d5b38e5d2594a98f7026568f234cccedd5fe5e` |
| 18 | `def` | [actualNonunitPort](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/actualnonunitport.md) | 127 | `declaration-track:6166143fe12d28884575d8971b0df327ccd6fa6122f4d3ff60b92c43a5515e61` |
| 19 | `theorem` | [actual_mangoldt_complete_port_ledger](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/actual-mangoldt-complete-port-ledger.md) | 131 | `result-track:29b5f28c9b20729b96024f6ee36abdabd9ed433c3e86b334b4806f6c4b0fb86a` |
| 20 | `theorem` | [actual_mangoldt_centered_unit_reconstruction](../../../../GroupTheoryAndGeneralizations/FiniteUnitGroupFourierReconstructionRetainsCenteringAndTheNonunitPortEdition1.lean/declarations/actual-mangoldt-centered-unit-reconstruction.md) | 140 | `result-track:fc6b27a7aca15b570166c57a4fccc058781b131979fab4aff5df7df3975880c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6b8558feed811ba81dc1c8af58aabcaf639b23108af5e29ada956771197e3f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean","GRWTSK/_verification/specifications/Analysis/UnitPacketFourier/Variant6e782612dbd53beb6c0b45b3d368023c5c11a468663b3013913521a184272383.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
