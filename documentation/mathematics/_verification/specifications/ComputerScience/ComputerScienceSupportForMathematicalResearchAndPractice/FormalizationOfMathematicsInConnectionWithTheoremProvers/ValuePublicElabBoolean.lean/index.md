# Verification target: Value Public Elab Boolean

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5802cbf9752e1a0b12c1626203e5ed53d7f65ae5",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5802cbf9752e1a0b12c1626203e5ed53d7f65ae5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean.json)

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
| 1 | `def` | [elabLit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elablit.md) | 23 | `declaration-track:67561c31f638a539ca1ff6bef762172e48529207b0d0e4c4b1455d5d5bb0108b` |
| 2 | `def` | [elabBoolean](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabboolean.md) | 28 | `declaration-track:6fc384a85419b6a32d31047f5c3567d3a804953f521a6293e44d56639992ea91` |
| 3 | `def` | [decodeDecNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodedecnum.md) | 38 | `declaration-track:565bba5ab07a5df918e4bb45e79d43698c5c16c435287307026df5d8afb478a6` |
| 4 | `def` | [decodeSign](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodesign.md) | 42 | `declaration-track:810594d4848575e398df3f9601f0355922f5e9ec146df3e853be6559fd8a3197` |
| 5 | `def` | [decodeDecInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodedecint.md) | 50 | `declaration-track:251893a906615bfff14424aed119c7112d829dde4e1283bdd825fa1a81d6708d` |
| 6 | `def` | [elabDecInt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabdecint.md) | 57 | `declaration-track:a1439ca45ba44b7adb9d28504a66a3816731e66fd9f20ee69e6cb7ff610182a7` |
| 7 | `def` | [decodeMantissa](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodemantissa.md) | 60 | `declaration-track:c19a9d17a5707fed6442ada32b4181a8bae741611272a7151d86dfb82cb3604b` |
| 8 | `def` | [decodeFrExp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodefrexp.md) | 68 | `declaration-track:0b111ee6c20e0900b7939a3eb1c039710fa816077edd4cae86a6870018b57547` |
| 9 | `def` | [decodeFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodefloat.md) | 79 | `declaration-track:0c0f7734823e67a773c3099e9f07ddab9e19abfacabd56cb2a3aab3cf0cf37db` |
| 10 | `def` | [elabFloat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabfloat.md) | 90 | `declaration-track:fc394e3b9ee8d4af8a448d61e89ea73c5fb4d384d45f8d9233fd09a2d34be8af` |
| 11 | `def` | [elabBinNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabbinnum.md) | 93 | `declaration-track:84f6d30d290bcd9f4afa49df3ecae229583fd8fbbbfddafd99abcb78ef4d6405` |
| 12 | `def` | [elabOctNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elaboctnum.md) | 98 | `declaration-track:9f7f08815ad128b1cb8729aee0d94935b451d6efd530ab82a7d3db9e789b5162` |
| 13 | `def` | [decodeHexDigit](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodehexdigit.md) | 103 | `declaration-track:c5f11b68232dedcdb193ee1a9e38edd63411ab288a0aed2c3eb3d3f8d62964fa` |
| 14 | `def` | [elabHexNum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabhexnum.md) | 108 | `declaration-track:36d2ec1c4e85853529eee561fa15baaf61dd311d13284e0503dede2dac54205d` |
| 15 | `def` | [elabDateTime](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabdatetime.md) | 113 | `declaration-track:1b9b341d3a175d3d42d3b8816974f012bb8753b323c5cd3bfe73e3ac6145e4d5` |
| 16 | `def` | [elabLiteralString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabliteralstring.md) | 123 | `declaration-track:aaf41658a7237f162d3a423e3d0b610e92a32a6d56c6daa3fc0db9ded93488f7` |
| 17 | `def` | [decodeHexDigits](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/decodehexdigits.md) | 126 | `declaration-track:8af9409fc3318c34a385d0c36b75dc3108edbe252fb9c2c2514baf7773d63928` |
| 18 | `def` | [elabBasicStringCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabbasicstringcore.md) | 129 | `declaration-track:5d87be9ccfcd56851ba0ce2acfab2646a570a457f8ac362f181751993ee62830` |
| 19 | `def` | [elabBasicString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabbasicstring.md) | 164 | `declaration-track:6459735dbd401bfa2b23f6073fd6a37e4bad45ec702515aed7704d897b5e12a7` |
| 20 | `def` | [dropInitialNewline](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/dropinitialnewline.md) | 168 | `declaration-track:7280c5bf321c43dbe9ce11c688483063845c8f0a61986326207a54ffdb36384c` |
| 21 | `def` | [elabMlLiteralString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabmlliteralstring.md) | 176 | `declaration-track:f1ab6b48627b6979ef7ab8194412c88e8242242ed120a4f7ba2aa949a11cdcea` |
| 22 | `def` | [elabMlBasicString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabmlbasicstring.md) | 180 | `declaration-track:566d17bcb05526fd730d56fbc48d92abd4d3946c8f1bcd81d2b0ad758976e1a2` |
| 23 | `def` | [elabString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabstring.md) | 184 | `declaration-track:3d78bc4930beb529d5720c1782ab942c1f16bec65f3956677d1e9a6abd93aeb6` |
| 24 | `def` | [elabUnquotedKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabunquotedkey.md) | 192 | `declaration-track:870849af19b217f4c5b2d1f4cff01c99d14d9c27d21c75c9f76d6c07077ddf68` |
| 25 | `def` | [elabSimpleKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabsimplekey.md) | 195 | `declaration-track:05e0ac6ed192cb4eca933475204eb0e7b5fe501b3e03465f61d887b51c7a3ea5` |
| 26 | `def` | [elabArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabarray.md) | 206 | `declaration-track:3c5b23571283bccb10a8b81d2a5b1ee1c805d55706ddc052d9f5aa41371409bf` |
| 27 | `def` | [elabInlineTable](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabinlinetable.md) | 211 | `declaration-track:c34d28e506bf2db229f555e896faac796cb5e00ae4d0ef4bec0dcbec1dcfb0d4` |
| 28 | `def` | [elabVal](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/ValuePublicElabBoolean.lean/declarations/elabval.md) | 235 | `declaration-track:d7fa690e83e961b73dc2698069f0f5b724719997ae4fe8dc6f12843b86784757` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4e795cb61fb4f856c74f7b1dbabd74f1e56072f33d9c0d26a659c17c021964b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant4347e6a554fc817512dc31f52e36f8f52af99db0a9fd1b7d735a6a24895bce70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
