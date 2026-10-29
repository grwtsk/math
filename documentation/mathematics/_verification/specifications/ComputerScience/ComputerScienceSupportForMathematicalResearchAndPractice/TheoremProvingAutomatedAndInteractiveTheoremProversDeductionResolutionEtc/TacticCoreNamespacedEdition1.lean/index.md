# Verification target: Tactic Core Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "96e70f0e0e7495c90afe7c8eeaee1525a4d69151",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante93e0054c31f12164063664b45b143edbe5cf5356fb19dba182b1515af1c2c04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `96e70f0e0e7495c90afe7c8eeaee1525a4d69151`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante93e0054c31f12164063664b45b143edbe5cf5356fb19dba182b1515af1c2c04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante93e0054c31f12164063664b45b143edbe5cf5356fb19dba182b1515af1c2c04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.PreDefinition.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.ElabTerm` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Util.Paths` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Intro` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Lean.Expr.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.OpenPrivate` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toModifiers](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/tomodifiers.md) | 36 | `declaration-track:8e82da83c73f85078fead73f11260e5622a60e58c5b240a0cc89ef542d159c7e` |
| 2 | `def` | [toPreDefinition](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/topredefinition.md) | 61 | `declaration-track:6612552d60efc51283bcc1413806b560def3cea839abc8abb85968e841ffc22d` |
| 3 | `def` | [setProtected](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/setprotected.md) | 78 | `declaration-track:8e382d67a3c447ce704086b89aad702f5efb01e80d0664733ae8f3b4f2797734` |
| 4 | `def` | [MVarId.introsWithBinderIdents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/mvarid-introswithbinderidents.md) | 82 | `declaration-track:1fac199f262b872fe1280f936d9de06ab50fd6287b02c0241c2383a600c5ce54` |
| 5 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/syntax.md) | 110 | `declaration-track:508c1dab6f7e7e1ac15fc4de270627cd6146942aae71eeefc0edb2a4eb3e297f` |
| 6 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/syntax-source-edition-2.md) | 111 | `declaration-track:88af671111f5d32b14749169667cde867a51ffc04f90597864e11429f079384b` |
| 7 | `def` | [getSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getsimpargs.md) | 116 | `declaration-track:790b29c3b31b90759345d0ce40835d14cebf3566f10af9e0cf4e604c47c24334` |
| 8 | `def` | [getDSimpArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getdsimpargs.md) | 121 | `declaration-track:68d447c533650a294d0985c8f88c71d256043e61c6620f01addd239913f9bc0a` |
| 9 | `def` | [getWithArgs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getwithargs.md) | 126 | `declaration-track:72d837f0c3fbcc808cb6b3b7e69bf942afdf356ce90a40dc150e1bf723d479bd` |
| 10 | `def` | [getUsingArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getusingarg.md) | 131 | `declaration-track:51d55594976164f8afda76a10bb321529cbc5dc76102b1a302436fe538e6f7ba` |
| 11 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/macro.md) | 139 | `declaration-track:53cad2a70a7564a95b50b592a700106e8b68883c52214dc44439f46f7444b778` |
| 12 | `def` | [filterOutImplementationDetails](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/filteroutimplementationdetails.md) | 147 | `declaration-track:fd0f0e359087077a39d19cbb5fa1c18873accd09dadb0e03f4be34d3affdd59e` |
| 13 | `def` | [getFVarIdAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getfvaridat.md) | 151 | `declaration-track:68557cf89d4ff472191b4a9c6a42c353aa57367cbf0c1ea5f76486e87df20f0d` |
| 14 | `def` | [getFVarIdsAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getfvaridsat.md) | 166 | `declaration-track:340fdcb01798a05867cd20a53218007f8607abca002a73c1e0dd4d951ca7a8c4` |
| 15 | `def` | [allGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/allgoals.md) | 185 | `declaration-track:d14a31654c92da5d7f4b0e5b0f21ae9be7a149ac2521eeb2349fa7f71e40f1e3` |
| 16 | `def` | [andThenOnSubgoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/andthenonsubgoals.md) | 205 | `declaration-track:51424f0ddbd65c21c650266d4cd06f98c85885894448bf4deeddc11c8b1ed3fb` |
| 17 | `def` | [iterateAtMost](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iterateatmost.md) | 213 | `declaration-track:bd5616a6335bc4ff4db6b3eb236df8485d85853077ceaed3fa6071bf337e8393` |
| 18 | `def` | [iterateExactly'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iterateexactly.md) | 219 | `declaration-track:1989724419aeb14f6c06e94fc77b80719daafd5d6948c52f12be198e80e5e4cd` |
| 19 | `def` | [iterateRange](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iteraterange.md) | 227 | `declaration-track:d8c592776b617769142000067a2c9089cde03b6473da3af8d0a25144bfc25130` |
| 20 | `def` | [iterateUntilFailure](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iterateuntilfailure.md) | 233 | `declaration-track:03d8e5b565f50398643072c915485e89011848551d48f22e0c577efa550db0b3` |
| 21 | `def` | [iterateUntilFailureWithResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iterateuntilfailurewithresults.md) | 239 | `declaration-track:89e08e92c6b848599819d12ab0e143191a74138d521c25574c1242dbce3f4b1d` |
| 22 | `def` | [iterateUntilFailureCount](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/iterateuntilfailurecount.md) | 249 | `declaration-track:9806169aed6c100626205518e1acb3bb047b45fd6bbd16be796cfcdb0a0d3936` |
| 23 | `def` | [getPackageDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getpackagedir.md) | 259 | `declaration-track:11f0dece123328a070eb10efb0831b2d740a27cfed6f1b22698322768decec71` |
| 24 | `def` | [getMathlibDir](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticCoreNamespacedEdition1.lean/declarations/getmathlibdir.md) | 268 | `declaration-track:99939ffd7f71717bc5cdaa6230e8de30a6a582f0ec4de0d5de7dcd3a35cca829` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=350956b2ae619209c479d49e8fd5f6a97879e19483a9fc0ef675710a1ad5134a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante93e0054c31f12164063664b45b143edbe5cf5356fb19dba182b1515af1c2c04.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variante93e0054c31f12164063664b45b143edbe5cf5356fb19dba182b1515af1c2c04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
