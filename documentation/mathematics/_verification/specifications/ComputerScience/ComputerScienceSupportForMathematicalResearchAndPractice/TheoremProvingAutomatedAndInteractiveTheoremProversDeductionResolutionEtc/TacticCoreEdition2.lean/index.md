# Verification target: Tactic Core Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3b7be3bc22e265d8ff9eaa89d4afdf7e137c2e7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3b7be3bc22e265d8ff9eaa89d4afdf7e137c2e7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 7; external provider; requires a separately pinned dependency.
- `Lean.Util.Paths` — import line 8; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Intro` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toModifiers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/tomodifiers.md) | 28 | `declaration-track:a39cdd09ef02ca023690c78e4da3fca08c50e5e96eea1bc02fdbe1fd9cdec593` |
| 2 | `def` | [toPreDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/topredefinition.md) | 53 | `declaration-track:431dcf6d48eb867bde3e107ed6981993e74ce20d219a6aa6e5313b1ace94b3fe` |
| 3 | `def` | [setProtected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/setprotected.md) | 70 | `declaration-track:674debd6d1bd75c155dbfd8e3a35c207837f5b95af5be1c6a702e7dabd330eea` |
| 4 | `def` | [MVarId.introsWithBinderIdents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/mvarid-introswithbinderidents.md) | 74 | `declaration-track:772e70a4749d4bca1b87327f5f9efa925c2bb094f6bc460fde4c0ea86096cf04` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/syntax.md) | 102 | `declaration-track:59162cc9f5c183bc6323fe8a4960e4a478efdb10329af48896e3c4238f3671e8` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/syntax-source-edition-2.md) | 103 | `declaration-track:5f444cfa218d22ca951c2898c34b7399b1a5469248a85045040d96b00b3561c1` |
| 7 | `def` | [getSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getsimpargs.md) | 108 | `declaration-track:df5ea047b2c177961b29f26669e6e371ce546b616942ec9e1d016200a0b4990a` |
| 8 | `def` | [getDSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getdsimpargs.md) | 113 | `declaration-track:a0ed5787300a03f26668ab2e41b333d310a9c1be5061f5f96866f2488fe1191e` |
| 9 | `def` | [getWithArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getwithargs.md) | 118 | `declaration-track:fde4687c0717d941e5115bb109286093bac9c532f2a08be74cab1a1836ef220c` |
| 10 | `def` | [getUsingArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getusingarg.md) | 123 | `declaration-track:f070f36b3d1276cc9297f720562d5d4e79d2babfe82888ee3416c17a020aac5b` |
| 11 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/macro.md) | 131 | `declaration-track:55dd034227793bc3e583bc70582039d2a1a3c83cfa92aac05fe084f914fcbad9` |
| 12 | `def` | [filterOutImplementationDetails](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/filteroutimplementationdetails.md) | 139 | `declaration-track:d7c6c107b0e5cf8e449de493a739487a437d5684481dd790a4d8a8cd42fb884e` |
| 13 | `def` | [getFVarIdAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getfvaridat.md) | 143 | `declaration-track:3fd65dfe8ef6640e752a907cc2528e4950026fc113f3871582046d3903f30c6f` |
| 14 | `def` | [getFVarIdsAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getfvaridsat.md) | 158 | `declaration-track:b8575d9dfce9f772665a64ea2a6d23656205734a2d400de56ebadfd535601f4f` |
| 15 | `def` | [allGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/allgoals.md) | 177 | `declaration-track:57be349f38f8e3b43041f5c48cf9055589f96ff12b94e4b0e1e0bfc93b784fd8` |
| 16 | `def` | [andThenOnSubgoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/andthenonsubgoals.md) | 197 | `declaration-track:4b27aedd80a6f9801b08a3f1e5707ec2288abdbe316e21b4f1d7828dc9d6855a` |
| 17 | `def` | [iterateAtMost](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iterateatmost.md) | 205 | `declaration-track:bca90282ef8d7b98b433fdb32d41a97b0703f6eda720ea8c51f947a3c70b593b` |
| 18 | `def` | [iterateExactly'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iterateexactly.md) | 211 | `declaration-track:e7fefde314f8d8e88486b0d2ff45688230fb2f9fcacbeb16365690e2ce7807eb` |
| 19 | `def` | [iterateRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iteraterange.md) | 219 | `declaration-track:68c3c11c39bdc5e3c9080cda27184d34b26b7eaffa820d93e9b6d89933810536` |
| 20 | `def` | [iterateUntilFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iterateuntilfailure.md) | 225 | `declaration-track:b7ce684cdfbed85ebad80b7332f5f1bb72d87acea71de540261ab685b003f58c` |
| 21 | `def` | [iterateUntilFailureWithResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iterateuntilfailurewithresults.md) | 231 | `declaration-track:54d3239d9cf4eecdb5bd498a45bdc49f7cb1884bd6451e7c83ec7a6f7851e6df` |
| 22 | `def` | [iterateUntilFailureCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/iterateuntilfailurecount.md) | 241 | `declaration-track:766b4db32b95cfbedbf95f5897256e0d2d53b655ea6886131297f70d8f7e009e` |
| 23 | `def` | [getPackageDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getpackagedir.md) | 251 | `declaration-track:f6ef0e97b4379b4e4a3586259e0b30979eb24a22ed4b4130e2734cba99741427` |
| 24 | `def` | [getMathlibDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreEdition2.lean/declarations/getmathlibdir.md) | 260 | `declaration-track:883d0995650012154b108b7f407c9115c873aae8b15ce51d04c2d23c597504b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0318bff0b0f131cbce2c8067d0b9ec846ce093f53b18d8ba16171f14b804378 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante9ea4ad500d479df8a428500e8664299e8c59731f6f72fd7b8802e4edc101fe5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
