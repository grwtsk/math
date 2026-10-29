# Verification target: Json Object Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df4ac63fb7413c8111d0535eac0717929201098b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonObject/Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df4ac63fb7413c8111d0535eac0717929201098b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonObject/Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonObject/Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [JsonObject](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/jsonobject.md) | 21 | `declaration-track:1c725ed177f0fdaa5898474eeb18f84a6d0e448e981a973cc1c98346e4919f7a` |
| 2 | `def` | [mk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/mk.md) | 26 | `declaration-track:58a799d4d3c204261dbb6ee9dc4adf1fd4b7667939ee1617303086af0c550c25` |
| 3 | `def` | [empty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/empty.md) | 29 | `declaration-track:e1e8279884b05c71d02c7dd21e8596395a4085dc2fe4a4700388f0b765ea6ad7` |
| 4 | `def` | [toJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/tojson.md) | 32 | `declaration-track:cc95708a9820e526800b4912872c4b5eea86e9262287d1a698b20bf6acfe9c26` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/instance.md) | 35 | `declaration-track:227184c6b6e3ab0a60c83a1295a7b352c8fef1434a97af31ac0e5ea56300ccf6` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:f8893fba4b2a0b57c1bdc3f73080d1c73379a808e4aebe739eeca2d9325577eb` |
| 7 | `def` | [fromJson?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/fromjson.md) | 38 | `declaration-track:c83cb9839d737654179db93692d8b1063fb465d47de00c7dfc58b4c9e639b205` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/instance-source-edition-2.md) | 41 | `declaration-track:b596c94160bcc10183081472a98066d44070b8c49dac0d4193265fc31558c6da` |
| 9 | `def` | [contains](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/contains.md) | 43 | `declaration-track:f39ed9fdd400da2c5c3961fecd26068b23c2a6934ee77ad59c6becebb966a9fd` |
| 10 | `def` | [insertJson](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/insertjson.md) | 46 | `declaration-track:6f69b8187a2200a46fe32894409294ae17585ae21dbd234f7c8f01e01639507b` |
| 11 | `def` | [insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/insert.md) | 49 | `declaration-track:0d49bbbbcbcd1143fa4519c29b71e44f907bdad0c04fce03efa518df1a49e50b` |
| 12 | `def` | [insertSome](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/insertsome.md) | 52 | `declaration-track:f6aa5c37bb55a5a4d80ade42c17581d560fe1ede920b67ad7b2ee9525fba1146` |
| 13 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/erase.md) | 55 | `declaration-track:70052b27688985a76ce4d3a8e622481922f5b1a2d1b6f1892271910c2f41af4a` |
| 14 | `def` | [getJson?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/getjson.md) | 58 | `declaration-track:b726d33bbdf7de58590a8c842521825471b1828f2f7172e289b0c5c24036df01` |
| 15 | `def` | [get](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/get.md) | 61 | `declaration-track:a734fc289602e28de6f3ce6bbc68eca97a2f1210f5c13bda0ad4190d18f41088` |
| 16 | `def` | [getAs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/getas.md) | 66 | `declaration-track:8677b759ca1fadf571b19f847e09233398a26026f137e617e1f152eb55087b88` |
| 17 | `def` | [get?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/get-source-edition-2.md) | 69 | `declaration-track:ca4022a368bb11b9cb935e949a771405da1955ae046a60ebf355ab5f68469ccc` |
| 18 | `def` | [getAs?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/getas-source-edition-2.md) | 74 | `declaration-track:b80d492b56c3f138ce9212c0731e3ee988bde1b7f475fed6e764fb4a40fdb956` |
| 19 | `def` | [getD](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/JsonObjectPublic.lean/declarations/getd.md) | 77 | `declaration-track:bd71d6f9ed5d5e3af5f2dca097b0b3d600d8574facef25632d9c824037132ef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d738ac21a73927c03c3661f067328d5fa6b3c45632e773a29de5c7a21cac675 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonObject/Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonObject/Variant0dce706c4b7333d1f60888d5440bc943279db4dd40ebc7c73bfae10c7c952edf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
