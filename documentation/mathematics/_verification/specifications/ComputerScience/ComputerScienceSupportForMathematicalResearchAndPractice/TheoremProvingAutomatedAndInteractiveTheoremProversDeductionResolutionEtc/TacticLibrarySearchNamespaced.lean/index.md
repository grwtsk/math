# Verification target: Tactic Library Search Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9526a4826dc2d07f7a058e26812a74db8a681f87",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9526a4826dc2d07f7a058e26812a74db8a681f87`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Util.Pickle` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Cache` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 13; external provider; requires a separately pinned dependency.
- `Std.Data.MLList.Heartbeats` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/initialize-source-edition-2.md) | 39 | `declaration-track:7fa9fa339b32ae45be0edd3336cac0437e2d0308cfbd02088a80e871a4e65616` |
| 2 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/initialize-source-edition-3.md) | 40 | `declaration-track:c926685d16050f9e4db9361dfb64b55ea8c5214304e17e069c5d94c353da99c8` |
| 3 | `inductive` | [DeclMod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/declmod.md) | 49 | `declaration-track:49627c584de9f3ef8c7a96e674abe6825fc128f760b4d219a3ec20a409aa4239` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/instance.md) | 53 | `declaration-track:3b57ca11aa0f0b15873d8cc910fb4de74849371916b9cf668986cecf44ae24dc` |
| 5 | `def` | [processLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/processlemma.md) | 57 | `declaration-track:657caff27a98744acf5a8284ddf94bc1d3ca2d714832dcdf7cc3f9b387b5be22` |
| 6 | `def` | [addLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/addlemma.md) | 76 | `declaration-track:de6f0f2689c306c3250e56d902c0c0c4de863c02c750f35ecae0d4f26da6f5bd` |
| 7 | `def` | [buildDiscrTree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/builddiscrtree.md) | 84 | `declaration-track:629a68d03a6f230cbdf135de78d8a375a24557a860698f76f6264c642abcc9e5` |
| 8 | `def` | [cachePath](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/cachepath.md) | 97 | `declaration-track:47dfac1db5cd4873060e804383c3841b997d1fce804eff66b12ac808a6052d6a` |
| 9 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/initialize.md) | 103 | `declaration-track:26e64dc707c0523c0973ae7e9317a35ed0db0fe2ccfced918938d1eecc83775b` |
| 10 | `def` | [librarySearchLemmas](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/librarysearchlemmas.md) | 114 | `declaration-track:137cbbe0dd82577b786273eb357240918b2cc2dbda687b4974546c7d2f101bfa` |
| 11 | `def` | [solveByElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/solvebyelim.md) | 117 | `declaration-track:d24e602cf842529b8ec7cae7356752ed24174b000c0112a6f6affe1b9de2bd17` |
| 12 | `def` | [librarySearchLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/librarysearchlemma.md) | 135 | `declaration-track:a613015da7fcf53858c3f6263ee50a8d9fc8e911675b6df8f5d9ae0f9a48d81a` |
| 13 | `def` | [librarySearchCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/librarysearchcore.md) | 158 | `declaration-track:8e65a06e58d60c122d9b50e87389c6ad99f72983990f51df5747f29f017ba67c` |
| 14 | `def` | [librarySearchSymm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/librarysearchsymm.md) | 170 | `declaration-track:b6145ed537dc28bc980c5162b81739cf76965ec9f23f54ff262a194aba7bdc6a` |
| 15 | `def` | [subgoalRankType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/subgoalranktype.md) | 180 | `declaration-track:b3c0e1d92d12e9661cbefa0e763412b7ee5ef6c0fa6b57a2abe332e3d07f7887` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/instance-source-edition-2.md) | 183 | `declaration-track:b57203c14fcf6cd4a9923bde413840071bed37706291600d2bf121fdeace247d` |
| 17 | `def` | [subgoalRanking](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/subgoalranking.md) | 195 | `declaration-track:ebc749bba75ddafecc60876e54c8a0816c4e35cc7136a2a84e5e82c182f1d93c` |
| 18 | `def` | [sortResults](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/sortresults.md) | 202 | `declaration-track:bd8d7b3421af949685faf240a6e46b31ac7313512d97b9d6be46fed2b6394d87` |
| 19 | `def` | [librarySearch](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/librarysearch.md) | 225 | `declaration-track:a60a912eee5c58d261e85762ecaa27db81fa452f6be1ac701e97e930278cb18b` |
| 20 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/syntax-source-edition-4.md) | 255 | `declaration-track:d7ab8aabae147546728ab22d98c2e32e935d96eb8191b9c2271489a54f551cf5` |
| 21 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/syntax.md) | 257 | `declaration-track:33ddfe737ba46dc7b62f5f2cd601f024ead89eaecbce877dbba0624b060e6f2c` |
| 22 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/syntax-source-edition-3.md) | 259 | `declaration-track:8f04922e9eae248b013a44e099aac5b2ec4e184ed102b0e98df5441200d9f52e` |
| 23 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/syntax-source-edition-2.md) | 262 | `declaration-track:72fcaa9af14a54a514698cbbb723c659551d967341ff0767ff5214202f3a90d3` |
| 24 | `def` | [exact?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/exact.md) | 270 | `declaration-track:b1d559b3975158a0e262f7dded49c16844872d1e26366c6dbeedc8effad5bfe5` |
| 25 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/elab-rules.md) | 288 | `declaration-track:9634eee4b9865ea9dbe8dcfc85c1561f67bd40a2bbe57de10295b92d608e3e9b` |
| 26 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/elab-rules-source-edition-2.md) | 291 | `declaration-track:abda0c3a6dff27323896a5a691e1464b3f772358b62fcbb892fd9b28ec26cdc1` |
| 27 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/elab.md) | 294 | `declaration-track:a5a0b2aad72da8c95f4209874110516277e07d0ab4b39af66af13c9dba55c12e` |
| 28 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticLibrarySearchNamespaced.lean/declarations/elab-source-edition-2.md) | 300 | `declaration-track:cdc9ca7329ecdb2450f47e1bb5cfcd5bcc704cea3bf80e882362df7fcfbfe544` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d1cfdabec355e85bc549ebe5f82a71bfd40b76927f0f166e59f88de247d08a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant6e3d5769b7cbf433d8f6b21a506abaa6fa985dd239b685dc99d1dc2b2a844aa0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
