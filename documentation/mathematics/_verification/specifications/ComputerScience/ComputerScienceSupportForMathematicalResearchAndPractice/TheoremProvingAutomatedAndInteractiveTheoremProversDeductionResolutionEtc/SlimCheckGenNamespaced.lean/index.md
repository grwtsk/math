# Verification target: Slim Check Gen Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e029bbde87cdc761b663137d71f14e8b1d0993c6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant9510719a7cbd0d7bc73473de11d15b17154a84620de4ba952fd275bac896ce37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e029bbde87cdc761b663137d71f14e8b1d0993c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant9510719a7cbd0d7bc73473de11d15b17154a84620de4ba952fd275bac896ce37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant9510719a7cbd0d7bc73473de11d15b17154a84620de4ba952fd275bac896ce37.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Random` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.ULiftable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Gen](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/gen.md) | 51 | `declaration-track:449f14a8cc4da6015de0d4a9d79c08042655f27b4b367fb70f06c1dead39fe63` |
| 2 | `def` | [chooseAny](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/chooseany.md) | 56 | `declaration-track:adfe259e8107a5647b36b5ce3442f35ff15a5fa827ded207d7e9864112a8e1e7` |
| 3 | `def` | [choose](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/choose.md) | 60 | `declaration-track:ec823827567a5dc393908fee37f636e7bc2c4ab67c39c94a04639cc121c46f52` |
| 4 | `lemma` | [chooseNatLt_aux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/choosenatlt-aux.md) | 64 | `result-track:bf392bb3ebeb709bbf2babfffabee3a07647d84deb137730069ae5eb1e73e4c2` |
| 5 | `def` | [chooseNatLt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/choosenatlt.md) | 73 | `declaration-track:da6957eb5df58b94deb805500a4fb8192e3e38e0fb58967c836f020592b44f0f` |
| 6 | `def` | [getSize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/getsize.md) | 77 | `declaration-track:e1a907e38a531075bc1c0fe0ea967067fb83ff6916efee03e7f6046af2d49574` |
| 7 | `def` | [resize](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/resize.md) | 81 | `declaration-track:324f5e3fe8fee474af3037e7614217ebb9ed44154e7402ec53bf87bedcee5ddb` |
| 8 | `def` | [arrayOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/arrayof.md) | 88 | `declaration-track:270c34d74cda74eebbe3d8bf30d02b8d3d68a82d65f000bbf79f0e75a3a44219` |
| 9 | `def` | [listOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/listof.md) | 97 | `declaration-track:4ceac91695bb9eb6fdc09200231b38f51834d45b97d012385a9f66d0bc9c0c94` |
| 10 | `def` | [oneOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/oneof.md) | 101 | `declaration-track:77c6a930b27ecbd0ad41f89eff07a787f07f070d1650a1f7440c21209c31d6e0` |
| 11 | `def` | [elements](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/elements.md) | 106 | `declaration-track:7996163ba38703e89fb6896c53339e4a4767d2f714c526c69a1db8e487da5f2e` |
| 12 | `def` | [permutationOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/permutationof.md) | 112 | `declaration-track:972a8bf7fc790b0923015b2c06bd2513ab7d7a99be54da3720e46b7e8fdde963` |
| 13 | `def` | [prodOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/prodof.md) | 120 | `declaration-track:4db16806d89c2c91b070a1cd296ac9403b8c2ee34d79d887ac83663da2c9eb6e` |
| 14 | `def` | [Gen.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SlimCheckGenNamespaced.lean/declarations/gen-run.md) | 128 | `declaration-track:f9bd0f3229ebec47b27120b1a83c7caec55be737c4806d815509d5e78d7cbf49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0038f98f2d25e06841b177052603f71fa384f98d26702b97e48f32dfae7eefc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant9510719a7cbd0d7bc73473de11d15b17154a84620de4ba952fd275bac896ce37.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gen/Variant9510719a7cbd0d7bc73473de11d15b17154a84620de4ba952fd275bac896ce37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
