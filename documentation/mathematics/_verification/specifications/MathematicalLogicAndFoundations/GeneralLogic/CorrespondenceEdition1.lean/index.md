# Verification target: Correspondence Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73f11912faeadb494e9f7382316d545ac70b618d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73f11912faeadb494e9f7382316d545ac70b618d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 1; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/gridcellrecord.md) | 24 | `declaration-track:2c6e0ef8120e0e74c1f2551f83014ba2ab55d04594cc220675bde85b5516495c` |
| 2 | `def` | [abstractGridCell](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/abstractgridcell.md) | 31 | `declaration-track:69fe3928146282eb579beb443fd9ae0f25bf9f29ad170e38f46f14a75c4aa80d` |
| 3 | `def` | [gridCellRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/gridcellrepresentation.md) | 36 | `declaration-track:3cd95384f5915bf3c8f4be14a55e435754a466a18ae684a53bfa5270ea024421` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/abstractgridcell-rowmajorindex.md) | 44 | `result-track:b59eb59af62805b7a9313b1cf56de7eef6450b6df97d6dc1aeda0a9c6586925a` |
| 5 | `structure` | [CarrierIndexedState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierindexedstate.md) | 54 | `declaration-track:3a7b0ab90a2ede73c32654fa4d21c656dabd9b279830aa6469780cb0a4cf048e` |
| 6 | `structure` | [CarrierStateRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierstaterecord.md) | 65 | `declaration-track:4d65c66ae96e0fc551ba477d13360984e2ff0cef04f4b9ca0de59a81f59a9f2f` |
| 7 | `def` | [abstractCarrierState](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/abstractcarrierstate.md) | 77 | `declaration-track:5327cc69202279bd26587cd6ed10a49fb952856863f640a8ff0758c5d59f432c` |
| 8 | `def` | [carrierStateRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierstaterepresentation.md) | 89 | `declaration-track:8465c9221086c3eb6e44777bd84f4b716fe85abd5c594628fd34d2fb37636454` |
| 9 | `theorem` | [abstractCarrierState_weight](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/abstractcarrierstate-weight.md) | 98 | `result-track:724a523fb8b1b7e626a7bd2472fcb427fd1592b01cfdd1ad52d8468bd8d62bd8` |
| 10 | `theorem` | [carrierStateRecord_support_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierstaterecord-support-sound.md) | 106 | `result-track:46f0048b6d976b79fa93332ebffa94ec482934290c4b59a161985404006c81de` |
| 11 | `theorem` | [carrierStateRecord_support_complete](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierstaterecord-support-complete.md) | 114 | `result-track:c87797a49fdd09434482d86d4ba731909a106c8cca036a6512bc4eaf59dae74e` |
| 12 | `def` | [CarrierIndexedState.carrierEquivExactCarrier](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierindexedstate-carrierequivexactcarrier.md) | 125 | `declaration-track:c09ea73b94f724022cee8ff22185d0b537e0309f6444355e547ca2afa725f9c1` |
| 13 | `theorem` | [CarrierIndexedState.carrierCount_eq_carrierMultiplicity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierindexedstate-carriercount-eq-carriermultiplicity.md) | 144 | `result-track:25bb6029019b9b3b54ccb708e2ceba849f8f6716d4dcdca5cc416dd2ce5caa24` |
| 14 | `theorem` | [carrierStateRecord_count_eq_carrierMultiplicity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/carrierstaterecord-count-eq-carriermultiplicity.md) | 158 | `result-track:1143d60c01c0dbda1a1be7544a0492587d3555735fbf14b4497f010a1037aee8` |
| 15 | `structure` | [CodecInvocationRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/codecinvocationrecord.md) | 167 | `declaration-track:9055e24d9cafde9a66d47d239bbcde32197f35c93ef9392ac4b86917c66ea6a7` |
| 16 | `def` | [executeCodecInvocation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/executecodecinvocation.md) | 178 | `declaration-track:5a648aabd38d3559e2395910af039d3c703ceac7cb665717039755bf478198f8` |
| 17 | `def` | [codecDocumentRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/codecdocumentrepresentation.md) | 190 | `declaration-track:f16b8a0c20ceb24b04c7fbf34f004e7eee1ae944044ad46959325c33e2db7113` |
| 18 | `theorem` | [executeCodecInvocation_represents](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/executecodecinvocation-represents.md) | 197 | `result-track:8e9c8a1e2cdab3054e6e65aead6a0ed15eaefedcc6d59bd7f39c58a967b5f374` |
| 19 | `theorem` | [codecInvocation_encodeDecodeRelation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/codecinvocation-encodedecoderelation.md) | 208 | `result-track:a45c1708ceb4024a600b80118e3c053b9a341dfcbf1f2602d13d71ce3cd9ca1f` |
| 20 | `theorem` | [codecInvocation_serialize_preserved](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/codecinvocation-serialize-preserved.md) | 217 | `result-track:9f862a93fe475b509319700e83c426e4299532a528468dda8ebbf8565aed58d8` |
| 21 | `structure` | [GraphPointRecord](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/graphpointrecord.md) | 226 | `declaration-track:b6d4c612a651b28ca6525c00dcd8922f60a7b0d8d8ce0cb614cdc2de248b6a24` |
| 22 | `def` | [graphPointRepresentation](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/graphpointrepresentation.md) | 231 | `declaration-track:c52be307b2ac73ce7f83aeef5a7fe0f575a394ffee6c98cad0b4be268f61458d` |
| 23 | `def` | [executeGraphPoint](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/executegraphpoint.md) | 238 | `declaration-track:574aa7411d998ec7cd5b2863a78d589b2aa37a3a67b46da685d79a93a7031f94` |
| 24 | `theorem` | [executeGraphPoint_represents](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/executegraphpoint-represents.md) | 243 | `result-track:4a19192d1b538d9197f404a724b4a75b699b0b38a76af48029ef0c1991e0a848` |
| 25 | `theorem` | [executeGraphPoint_liesOnDiagonal_iff_fixed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/CorrespondenceEdition1.lean/declarations/executegraphpoint-liesondiagonal-iff-fixed.md) | 251 | `result-track:3478518346b4b91f632315bfeffba275e5f124d56aba7372bd670a8b8f5d17c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e89ee531da85dd3d40bc85bf9810ec68d0304f0ca8b025fb9e914ddd44d30512 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Correspondence/Variant112535e36ae332824f0f10321ff323143f087c646dd76860dbada140870e7cdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
