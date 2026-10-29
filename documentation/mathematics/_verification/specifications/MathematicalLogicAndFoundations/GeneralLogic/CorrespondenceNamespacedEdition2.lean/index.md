# Verification target: Correspondence Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85fd27fbb968fa40ba7285ca6846083053d6dd94",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85fd27fbb968fa40ba7285ca6846083053d6dd94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/gridcellrecord.md) | 32 | `declaration-track:70955ad9cac35de7a11bfe1fe2c9701a2b75002bc5f88b30f214cbfa38f7ead7` |
| 2 | `def` | [abstractGridCell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/abstractgridcell.md) | 39 | `declaration-track:226ea6501bb51e2ab038a698de35c3a6bbd24d87cd953fe81123b2b5c898f8a2` |
| 3 | `def` | [gridCellRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/gridcellrepresentation.md) | 44 | `declaration-track:51877b387aa0a0c9db7570ac091f3a81539786aabeff192e3c828bd9a5805753` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/abstractgridcell-rowmajorindex.md) | 52 | `result-track:60df977a0fd1215f4cfcc0ea19e67930d9951c50d1980a248cedf18d03983a4b` |
| 5 | `structure` | [CarrierIndexedState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierindexedstate.md) | 62 | `declaration-track:1204828541bc0ea9254dcf944c465a6c5f4dca1973ffee0d009053908e085160` |
| 6 | `structure` | [CarrierStateRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierstaterecord.md) | 73 | `declaration-track:bcff717c42bb6e12ed83e00143d41af8de21153437ce96d9d0becb933a06ef62` |
| 7 | `def` | [abstractCarrierState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/abstractcarrierstate.md) | 85 | `declaration-track:37af553b61d9904778978913c7d24bcfb122966ccbdd3606998dd8c6c37210fb` |
| 8 | `def` | [carrierStateRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierstaterepresentation.md) | 97 | `declaration-track:387163c8f5948fbdea93fdf9d7a722b1a6707613196d527102b2e287edeab59c` |
| 9 | `theorem` | [abstractCarrierState_weight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/abstractcarrierstate-weight.md) | 106 | `result-track:0f9a93e8183d2aa6214789ee8ca18808f2f0ad13190821b723ea196de46a1d55` |
| 10 | `theorem` | [carrierStateRecord_support_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierstaterecord-support-sound.md) | 114 | `result-track:6f2845a1b1fe5335d56e1f2e190df01a2b9dd8962bc423855b48d7c90553ce2a` |
| 11 | `theorem` | [carrierStateRecord_support_complete](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierstaterecord-support-complete.md) | 122 | `result-track:b42af75f37f719cc3c7e483a033d4ff38c22c6544ecfe2c237a3b990458fb645` |
| 12 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierindexedstate-carrierequivexactcarrier.md) | 133 | `declaration-track:860b3dc4e74c1a4c612c13955e4ca64c01a287bbd10d9a333102bad85b0f2e1a` |
| 13 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 152 | `result-track:c86f3b11d9bfda733385241ef1600819217b2300fcb77a02aa04bef035b75ff2` |
| 14 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 166 | `result-track:71fff1d9f1d7dac871b7fe844b8c41891a323459cdd9899a75b43f1b67e5797c` |
| 15 | `structure` | [CodecInvocationRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/codecinvocationrecord.md) | 175 | `declaration-track:7414d54c9d7f3a71eb97dc7292297d86fdd4d861791fed292405a7c17118e8f2` |
| 16 | `def` | [executeCodecInvocation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/executecodecinvocation.md) | 186 | `declaration-track:c884b3237fbb4470909e456643ced12a906eac0ac853d6eec2244da4cd2cfdc0` |
| 17 | `def` | [codecDocumentRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/codecdocumentrepresentation.md) | 198 | `declaration-track:30b10a7c085333cab2a15edeb3a14974dd24c0ec6e0ef2cfcadc3babb286018b` |
| 18 | `theorem` | [executeCodecInvocation_represents](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/executecodecinvocation-represents.md) | 205 | `result-track:65541939143105e1a3c1940ad4b9da00fe54528e463e85bc2d86e2c92206ea67` |
| 19 | `theorem` | [codecInvocation_encodeDecodeRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/codecinvocation-encodedecoderelation.md) | 216 | `result-track:9124d71bee688764bf493dd71a441eca6c469a115ff55bfb46257825c5fb2a4b` |
| 20 | `theorem` | [codecInvocation_serialize_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/codecinvocation-serialize-preserved.md) | 225 | `result-track:ce0c51a4be4ece54b40c7a9c8e00a90ae10c7524a98c543e423c6a657d2e7ddf` |
| 21 | `structure` | [GraphPointRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/graphpointrecord.md) | 234 | `declaration-track:4cfcffa909225c7cb7f55402467546beccc7c17379881abb35f5f42f1160b6c6` |
| 22 | `def` | [graphPointRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/graphpointrepresentation.md) | 239 | `declaration-track:1f626d26b19cfcd414dca94ef01c11df62fa8a4e53ce1511b93838d56146dadf` |
| 23 | `def` | [executeGraphPoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/executegraphpoint.md) | 246 | `declaration-track:cf05a0215b9925792fd1bbb1e24241bc6fd7059c154cbdc52b7d5a6f072e1df8` |
| 24 | `theorem` | [executeGraphPoint_represents](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/executegraphpoint-represents.md) | 251 | `result-track:74ab6d5dff068683ebf6083a4d0e582b1b699da6969afaa81ad671cc8b0a609f` |
| 25 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceNamespacedEdition2.lean/declarations/executegraphpoint-liesondiagonal-iff-fixed.md) | 259 | `result-track:65e22e54585b9a66b7d12a48ebfa07c553f054bd47f28f89847c112d73af45b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b78a6f5547154c2dd7f43555ac07e692269053f4c8a4b00df8f0af768f53d03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variante09ea3ea4913de6750c8cc07e17f5fd4219a86b6a7cd1159c0925233400759ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
