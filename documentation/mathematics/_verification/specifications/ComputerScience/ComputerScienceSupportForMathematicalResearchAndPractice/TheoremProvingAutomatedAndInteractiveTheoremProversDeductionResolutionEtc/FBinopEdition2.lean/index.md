# Verification target: FBinop Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31ed7c8255ce4e4d79e7263d372656bc236f8b16",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31ed7c8255ce4e4d79e7263d372656bc236f8b16`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FBinop/Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.FBinop` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Prod` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/test-sorry.md) | 6 | `declaration-track:642dfb8a4d109f2905a1d3d840521797cbe89f5e86672359d5bdd90c61a21a22` |
| 2 | `class` | [SProd'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/sprod.md) | 13 | `declaration-track:062a4a8cd9ff801302413de33d3baed824549eb0e77b78bd74353d192cb95e36` |
| 3 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/macro-rules.md) | 19 | `declaration-track:d3a75ad7308672726ba34a548b3989e5771653201f8a3ea3b698f32d9ac40fba` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/instance-source-edition-2.md) | 22 | `declaration-track:85824f5c486df59ce07289fc2caeee709140a3520604b6c55da065c19e822fa0` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/instance.md) | 23 | `declaration-track:674a34afb57eb214302ea625f06f2aa5a2aa314774856f6c67e5ce7860779052` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-3.md) | 29 | `declaration-track:141eb30dc2ff72470782cfe1ab3008f0350ad564d9d51200826aa4938bc710b3` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-15.md) | 30 | `declaration-track:c1ff95692089077e8bf8b4f4d050a30c822b61c8e897c3b5d13c6fe4229b3c83` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-12.md) | 32 | `declaration-track:9cc16bb9087b8a0236e20bb4ff4b5a9b26e4ecfb36b1c2cc7adf0a3640460393` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-14.md) | 33 | `declaration-track:b8fcab944939626b9eef6687e5625a347eff60c1a89a8d0f120942329d7a1aa7` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-6.md) | 34 | `declaration-track:3b93edc9bb7f3490026c03c031696d84c73ec509ed31ab8ff5124a31b41d4419` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-16.md) | 35 | `declaration-track:c237d8e3308ee3473307a6aa1bda75d23f0ca02b8253305888b5c5c4a4258e14` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-18.md) | 36 | `declaration-track:e4195fc3c3b29ee19f94e783282e80bfb2bb8b63b09d9653e517f273716bf60e` |
| 13 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-19.md) | 37 | `declaration-track:e598dc412ab55be18e7ea21253bc782dc7a9dca81179fa15a304e22fcd03c919` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-13.md) | 38 | `declaration-track:a0f92eb766a6119415afe4930cf2f5c6d0008ebfe852e09f0e90c2b4f4603f27` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-17.md) | 39 | `declaration-track:d511fdcc4106e12af685830509527bc43a027689f8e8a752742f4290b040f54a` |
| 16 | `axiom` | [Nat.card](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/nat-card.md) | 41 | `declaration-track:ea16bc2783287d4eb8be492afefdc767d8c9e7fe72687f958503e445d33c3854` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-4.md) | 42 | `declaration-track:210652f257f2f280409fbc3b6518224d0c0ca92d3a0e625a604e2dc065dce217` |
| 18 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-8.md) | 44 | `declaration-track:5f3997684613d875d1f775c5c8578d25683326ce5541df2b52b78633339af94d` |
| 19 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-10.md) | 45 | `declaration-track:6eeedfdf192f71fa843e01127c5c4154f47f9747fa78db3646c05131a7a56e76` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-20.md) | 46 | `declaration-track:e8f33780e8607046b3e555ee6f8142fc013a3eef3a0686d125a2211927d0ae98` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example.md) | 50 | `declaration-track:109d4c85eac79a42ee8b257eedc8f6d4dfe461625929c4827d152d731cffd4cc` |
| 22 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-5.md) | 51 | `declaration-track:23b28d5d95bca9ff3a933ecdd2b38a9a9b5b0e3e9287b25593e68238fb2a2d22` |
| 23 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-7.md) | 52 | `declaration-track:57c22bdfc5a39de789e7fab336503c949f5597d8db6d96c64d2f0542634faf98` |
| 24 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-2.md) | 53 | `declaration-track:115132176da4ecf76b65e1b8847de411a6155e3f224b6555aa6a014a420860dc` |
| 25 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-11.md) | 61 | `declaration-track:707a8218b0534501fb782d800716df752ad849170db6bd7325ca57540acfb7a9` |
| 26 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/example-source-edition-9.md) | 63 | `declaration-track:6ec335bdbe5679d95b95ba7e78215c7aa36b1449327a085963541c8e0222a32d` |
| 27 | `structure` | [SubObj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/subobj.md) | 66 | `declaration-track:892c1f302650b74854beb5f104aef331fcdad50e07ca1b2ff3030dca0507820f` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/instance-source-edition-3.md) | 69 | `declaration-track:8ad80c959b7c39ab8870732db8d6ce2dc31d4e79f31af798c0742fb3574e2571` |
| 29 | `def` | [SubObj.prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/subobj-prod.md) | 74 | `declaration-track:ceac5c19854eb27ddae2b200e7270a659e92cf2287b19096b64909c9d8d3591f` |
| 30 | `structure` | [DecSubObj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/decsubobj.md) | 78 | `declaration-track:9f1088fca4a17ea1d6a14edde65919966d63a181f16eafa2cb64c0173c053b61` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/instance-source-edition-4.md) | 81 | `declaration-track:d8c3b3d56a130d7e14ac643756dbaad96da7ae66b87a0f05a18a7152a23f80a5` |
| 32 | `def` | [DecSubObj.prod](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FBinopEdition2.lean/declarations/decsubobj-prod.md) | 86 | `declaration-track:188742f3739e92124615db9821072c649aee91cdf8c62c7173c53d422fb7ac3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08aedeb5102437bdd45c7f7431185f2c5e8dc1b4bba8afb744567c8265186142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FBinop/Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FBinop/Variant4bc19be5f2b04d7eebb8785659d8f5585169a97ab516db843f94ffb478eabdab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
