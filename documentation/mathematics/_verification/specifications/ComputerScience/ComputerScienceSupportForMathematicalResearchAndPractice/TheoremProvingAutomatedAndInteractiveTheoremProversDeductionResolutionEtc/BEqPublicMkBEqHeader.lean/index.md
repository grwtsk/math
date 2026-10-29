# Verification target: BEq Public Mk BEq Header

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb8c62f19e08aafd7672ed4b86b5f6e611664123",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb8c62f19e08aafd7672ed4b86b5f6e611664123`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Deriving.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Elab.Deriving.Util` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CasesOnSameCtor` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.SameCtorUtils` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.OfFn` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBEqHeader](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqheader.md) | 30 | `declaration-track:a14c43024e90e43ec5f44c8770da65e03b6af8ac4372caf8fddee6744e4c3c90` |
| 2 | `def` | [mkMatchOld](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkmatchold.md) | 33 | `declaration-track:cbf23d0e85de4712c71faa6e3971dcc50ce969dabd66dffebb0158e5315fc9cb` |
| 3 | `def` | [mkMatchNew](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkmatchnew.md) | 112 | `declaration-track:9028a03c389040d8e8ca2ddf93896a3ac549b4e7bd798e50ce5e92aa3e728601` |
| 4 | `def` | [mkMatch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkmatch.md) | 179 | `declaration-track:9add18ba192b0b1a7615949cc08d4fd9bb5874c55de65d845282d0807629556e` |
| 5 | `def` | [mkAuxFunction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkauxfunction.md) | 186 | `declaration-track:c993fa2d7cfcac805cab62d40afc5c01bf261fa10a0bb6c7b415444bda13bfc8` |
| 6 | `def` | [mkMutualBlock](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkmutualblock.md) | 200 | `declaration-track:e616a51352b6f1b5c0ced72a9416e03ea14799f8bf9aeeb30598e78f17085b78` |
| 7 | `def` | [mkBEqInstanceCmds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqinstancecmds.md) | 209 | `declaration-track:b7607daee1fbcd1692643657fbedb0a46c8ecdfacce416479f3522dab4ed032f` |
| 8 | `def` | [mkBEqEnumFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqenumfun.md) | 214 | `declaration-track:23842ca0ca276ffec14998874708a06332057df693db4de56f88bd2c492f5409` |
| 9 | `def` | [mkBEqEnumCmd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqenumcmd.md) | 218 | `declaration-track:18b4bfb997b157f2a782900d14d3dbaeeac7dee5fb1aa523c7fffed5fbc14a0b` |
| 10 | `def` | [mkBEqInstance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqinstance.md) | 225 | `declaration-track:be22de2ed0876f5f89a91657f8584f310c05297cd2c7484ea12af52f0704ecad` |
| 11 | `def` | [mkBEqInstanceHandler](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/mkbeqinstancehandler.md) | 237 | `declaration-track:8b42db1ffd5629407a3f3eaa50afeabe2db29fb7c630ce4d18c7c62ecd4ff319` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BEqPublicMkBEqHeader.lean/declarations/builtin-initialize.md) | 245 | `declaration-track:3831ae1ef5fffdec8607416aa2869c7f2eec2a839007ef6b5d40dccae9fa29a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=596fb503c0b7dfec53ff3cfa00295cb88b97d72760c6a2e89fa79b801d8cc4af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BEq/Variant0840201945d8ae3be4860bbd38c71fd18d7cd9f07dcb5233a725a4da5e097169.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
