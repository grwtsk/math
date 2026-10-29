# Verification target: PPNamespaced Public Goal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0fa7b056c34b81d2441d78ef8cda8fd3719882a",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0fa7b056c34b81d2441d78ef8cda8fd3719882a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Grind.Injective` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.PP` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.PP` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Linear.PP` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.AC.PP` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.CastLike` — import line 20; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Cutsat.Model` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Goal.ppENodeRef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goal-ppenoderef.md) | 30 | `declaration-track:06a1f5464d10ba82ec512306277a201cac89af7e020bc785e816bfda35039a86` |
| 2 | `def` | [ppENodeRef](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppenoderef.md) | 38 | `declaration-track:92806ca57da33566dc8aba1585b9376aef52a4e9639e3afbb7ecdbc0a33696c2` |
| 3 | `def` | [Goal.ppENodeDeclValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goal-ppenodedeclvalue.md) | 42 | `declaration-track:a77b4cc4c6e5a234d52b8b8266aa9684ce784c415109b4a883cf3f9c90812e71` |
| 4 | `def` | [Goal.ppENodeDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goal-ppenodedecl.md) | 57 | `declaration-track:3fe93cfbf2964cc42477a417200f2187bd7be658aee2f3e7afe9f5f90f220212` |
| 5 | `def` | [Goal.ppState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goal-ppstate.md) | 72 | `declaration-track:4f961f591be1ae9e99afcb8573c2837dd7daba9c79cdf1bca171c05f82ef829b` |
| 6 | `def` | [ppGoals](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppgoals.md) | 83 | `declaration-track:a7bea91f929ecf816b47078b51f813757037b3a3681a4eb7074e4c42b62103db` |
| 7 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/m.md) | 90 | `declaration-track:b7911854ded6dd1fc9c4c87ea44d616ed0fa1db6d1b015d47f4009c65f8d838b` |
| 8 | `def` | [pushMsg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/pushmsg.md) | 92 | `declaration-track:ca205da60fa972912806f891c3503af6bd722ea4cbec45fe2d4f6566ba728fc6` |
| 9 | `def` | [ppExprArray](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppexprarray.md) | 95 | `declaration-track:d4c7d31201b65b7f686d5fccaf585bd405c7679c4b6cfa623ad9fce541ac668b` |
| 10 | `def` | [isGadget](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/isgadget.md) | 105 | `declaration-track:45c11faca1f3f54c7fcf7152d9624c6c2675fc09306cc6411e09978475e1be52` |
| 11 | `def` | [isBuiltin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/isbuiltin.md) | 108 | `declaration-track:eaa57cc8d8f2dec71d5a5ad3f2df2d83d27fba7a67a327e9d4450ee4ca1cc723` |
| 12 | `inductive` | [Result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/result.md) | 112 | `declaration-track:324b6a7bed35d844cfd8751a06d4ca67f78c093e354a775a67d9285dc2fd5f6f` |
| 13 | `def` | [Result.and](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/result-and.md) | 116 | `declaration-track:54501b28eb481fe410ea3904b0dfa40f8ae0df502da705cd485e3e2bb03efc72` |
| 14 | `def` | [isArithOfCastLike](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/isarithofcastlike.md) | 127 | `declaration-track:084d0b0842e761c70c939c81185998547eca1193a18d401123b41d9b47087ba6` |
| 15 | `def` | [isSupportApp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/issupportapp.md) | 146 | `declaration-track:2f0cc425e8bb885e55d9333f4e013435bdfc646522de7d44bc8dfe5a62385f06` |
| 16 | `def` | [ppEqc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppeqc.md) | 158 | `declaration-track:507cac9be57b8a823363b0ff978eb0415f4cc0efd6649f426e1f88bc77934487` |
| 17 | `def` | [ppEqcs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppeqcs.md) | 161 | `declaration-track:d60d3852a85f1028ffe9c6c8e447ae609f6cb19f6248e94f23ec7791d7778bf6` |
| 18 | `def` | [ppEMatchTheorem](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppematchtheorem.md) | 196 | `declaration-track:8bb8b26f0b63478f1fd4b82a47ea156e33e26dde12fabc3fb3eb6888ba7b6f65` |
| 19 | `def` | [ppActiveTheoremPatterns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppactivetheorempatterns.md) | 200 | `declaration-track:e8912ff374661a5c389f0b94e12be7db93d7c51ef6f3bfb38cda02588e98f6d6` |
| 20 | `def` | [Arith.Cutsat.pp?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/arith-cutsat-pp.md) | 207 | `declaration-track:b18e2397b2d69bbbf29ed02830be4518c6d99826ff6340d6f10f98f4c13228a8` |
| 21 | `def` | [ppCutsat](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppcutsat.md) | 221 | `declaration-track:f7bcad437be8347ebb18bcc0436dcb63f1b38d51fae49636420bca489da86949` |
| 22 | `def` | [ppCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppcommring.md) | 225 | `declaration-track:f2f45be9a91e45e534b67de6d6fd57e1902848f4dc88781ec5aa177bcb262eeb` |
| 23 | `def` | [ppLinarith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/pplinarith.md) | 229 | `declaration-track:d45c427b4beaddf04d3f151fb4d3a16629e26b25a1e9b39941a234e4574130a2` |
| 24 | `def` | [ppAC](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppac.md) | 233 | `declaration-track:724d60d1b112a48721183706ba95af389e3284ae3cc9b6460cb3663497fd5551` |
| 25 | `def` | [ppThresholds](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppthresholds.md) | 237 | `declaration-track:d605ba5d3f8bb107f86ca29007ba4152fe74400b022f66fc9618439d5af5dd39` |
| 26 | `def` | [ppCasesTrace](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/ppcasestrace.md) | 260 | `declaration-track:87276a4353eaeb0225435eebad48c1137ef8553bf1e4bfc9a1a019c27ad9043e` |
| 27 | `def` | [goalDiagToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goaldiagtomessagedata.md) | 270 | `declaration-track:1776c19124d81ddddd31fa585e454cfdc7cb1c081a3aa829b8854f6332dfa7d3` |
| 28 | `def` | [goalToMessageData](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PPNamespacedPublicGoal.lean/declarations/goaltomessagedata.md) | 287 | `declaration-track:809b28e46ae58c8c17e35a9d3fa2316ca52136ac47c697964976338dfeac1df2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee7af233d3c15dd0f93c57850d7e6343cf14adb9889fdefe87065148626ffdcc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PP/Variant8373f33762bda466f36cd6191e3508081f541d0e182602bcc31a62787e88aac3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
