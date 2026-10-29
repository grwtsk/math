# Verification target: Dec Eq Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfde032e1a5f9fefe9fba42668d3d328e73cd18b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfde032e1a5f9fefe9fba42668d3d328e73cd18b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Inductive` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatTable` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkDecEqHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceqheader.md) | 39 | `declaration-track:bedb184ac21c6294516a92ca8afc767c9cfbd873b57ee3b7ab7501a19e63bddc` |
| 2 | `def` | [mkMatchOld](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkmatchold.md) | 42 | `declaration-track:06ceca10edabca2ba7658acf1ec5ffee195b507f03cde8265d0e11fff01f11c6` |
| 3 | `def` | [mkMatchNew](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkmatchnew.md) | 116 | `declaration-track:aa064527e52f3a7c41ad91d90857fa09d86c22a4c83c309f7c9aabe9123c5538` |
| 4 | `def` | [mkMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkmatch.md) | 182 | `declaration-track:d8ba5c22d852959894dd68583f90f367aea90bf89de13c9aeece2c3cdf29256e` |
| 5 | `def` | [mkAuxFunction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkauxfunction.md) | 188 | `declaration-track:3d9e0eb3df366bd5d575db5974589b36e24194a0de0bb9b839ba904e4d8723b0` |
| 6 | `def` | [mkAuxFunctions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkauxfunctions.md) | 201 | `declaration-track:cca010cab2be4df8d1d56952f2da7a1bf158d6e021f6e73dd5c649d46fe5ee5f` |
| 7 | `def` | [mkDecEqCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceqcmds.md) | 209 | `declaration-track:90432574528a78bf8039e0af4a73a3dabece3b200ada8ea630a599b058ce3088` |
| 8 | `def` | [mkDecEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceq.md) | 217 | `declaration-track:fa2df7740cdca43a06ef91a3d6b3a754c53083cb651ce67e6756caad904fbb65` |
| 9 | `def` | [mkEnumOfNat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkenumofnat.md) | 230 | `declaration-track:02d73e2db940f49201ef87c6409449df8b114b169fd395f24de343ac33827a69` |
| 10 | `def` | [mkEnumOfNatThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkenumofnatthm.md) | 247 | `declaration-track:e190741bb4c8db3fb91f8dfe101d54ba2d502f3f66bed11f7d43a060e3a3bf28` |
| 11 | `def` | [mkDecEqEnum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceqenum.md) | 272 | `declaration-track:f84b03703bf6fd930d9c7b2e89e911c9c82a44fa9707b5dd92786c0751900781` |
| 12 | `def` | [mkDecEqInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceqinstance.md) | 288 | `declaration-track:438d9b57496b7233c1d24476c391c539c54ebbc24c878e9923708c136ead3642` |
| 13 | `def` | [mkDecEqInstanceHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/mkdeceqinstancehandler.md) | 296 | `declaration-track:f31f59bfe00ce0e49d55c781bba5626219970fc82b51957c673e866eea4d39b6` |
| 14 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DecEqNamespacedPublic.lean/declarations/builtin-initialize.md) | 299 | `declaration-track:ec29eaf25c9fd860d4f54816aefd17dee2009fc95d5ece2598f025209c9eaf1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec2304019f1e2f297f860c591f0d2f141f9c8f278051c94789143c9395f6b697 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecEq/Variant2d60c1d620142e69e91c916a62f9ac105bb0aae652c8ae5e6f86441d4ead1ff4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
