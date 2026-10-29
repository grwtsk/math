# Verification target: To Impure Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0377ec665f828461c8bfa34ccaf7171754336330",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0377ec665f828461c8bfa34ccaf7171754336330`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Compiler.LCNF.ToImpureType` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.PhaseExt` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Format.Macro` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/builtin-initialize.md) | 31 | `declaration-track:41982775abc5ebce80aa6c9f45e6a2a2d20ca5264c27359eb188109bda36d721` |
| 2 | `structure` | [BuilderState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/builderstate.md) | 34 | `declaration-track:70fa15e4099632606c2541285986ebceec17add5624b201e3d85541bed7261e0` |
| 3 | `abbrev` | [ToImpureM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/toimpurem.md) | 50 | `declaration-track:fc43e3eb76100cee270cb69a817aab3c935738dc73798b7b69407b3d70e22b36` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:6ed87dbb88b42114514893620eaaec8eb43c99f3b4445d1d2c792260ba10dda9` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/instance.md) | 55 | `declaration-track:005bebe685b3baf2cbb4460062e8578b334734815430bb9bc5d12dcbf490bb59` |
| 6 | `def` | [Param.toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/param-toimpure.md) | 58 | `declaration-track:44492c97f0aa4272242732654ae19bddcb98506ef8f4d0cfe8a9d02189019007` |
| 7 | `def` | [lowerProj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/lowerproj.md) | 67 | `declaration-track:c2de9e3250af4c71ee58f92b5ef715cdb1b3b38ad430e550e81476b963faa5f3` |
| 8 | `def` | [Arg.toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/arg-toimpure.md) | 76 | `declaration-track:6ae1b3eba25529d1c5dc3b5014ff2c8649f17c03794dff634a1f84060bc6dbfb` |
| 9 | `def` | [lowerResultType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/lowerresulttype.md) | 82 | `declaration-track:61d18533c2d6e47df4aec8966de105362ed665eedc34dff319dd6cb1204b9b64` |
| 10 | `def` | [litValueImpureType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/litvalueimpuretype.md) | 93 | `declaration-track:d4648d758f124272fd9a38c3f70f0b9557b1ec62aa5b9a942907392fa4f7e492` |
| 11 | `def` | [lowerLet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/lowerlet.md) | 106 | `declaration-track:3bc3a8eb26a1255fe1a455ddfb8cd459a63ad3332cf3be0c33c1d91b0742852b` |
| 12 | `def` | [Code.toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/code-toimpure.md) | 237 | `declaration-track:1e7d9e345d56c54b8e062c8d4e5774956be499b685c86c96af8499c1a1dd1aaf` |
| 13 | `def` | [Alt.toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/alt-toimpure.md) | 282 | `declaration-track:1c870ac71776dbb87b07c1e9d62a41deaea1a606a06c8273f7d6ac65ba2cb115` |
| 14 | `def` | [Decl.toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/decl-toimpure.md) | 309 | `declaration-track:ca3d0b9077ab38e428f18766fb6686f97841eb3c0d40c50694752ce0f45de65a` |
| 15 | `def` | [toImpure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/toimpure.md) | 336 | `declaration-track:cae667ebffa4bae06663e0009540871ad91e4624ff0c1dd2db1c758297cdf57c` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToImpureNamespacedPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 343 | `declaration-track:4911a16e8e68a08efb254f4431e2dc249ee15b327c489c437bae4c7243e25f39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d71177606036652b721a0879ece5208fe4c5ba0c805124e51aac0cc267ab54af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToImpure/Variant6d1b104245406c1b7cccec9e5223b5eb205cf8aa65d69855f198498683fdab49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
