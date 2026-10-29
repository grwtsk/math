# Verification target: Ctor Elim Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "307f49c25a891932c543d1df191c71a60b38a69e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `307f49c25a891932c543d1df191c71a60b38a69e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.CompletionName` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Meta.Constructions.CtorIdx` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Meta.NatTable` — import line 18; external provider; requires a separately pinned dependency.
- `Lean.Elab.App` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reassocMax](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/reassocmax.md) | 29 | `declaration-track:b405c48712fe9908b8dd8352e2bb12efac641cc846dd5397f06e28e7c1f2ba66` |
| 2 | `def` | [maxLevels](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/maxlevels.md) | 39 | `declaration-track:f1567526040005fa80f194e0040e747d7ecb6ecf0754bc869f5c351196d5f62e` |
| 3 | `def` | [mkPULift](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkpulift.md) | 47 | `declaration-track:3f4a25e2c6e64ab27a0b2b33623194458d2d77f18b845f3a7857b44e61b8edb4` |
| 4 | `def` | [withMkPULiftUp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/withmkpuliftup.md) | 51 | `declaration-track:11249e7b1bdf106bbb3aba975c9b8eefd483a8add0df08b88fad12e97e8519de` |
| 5 | `def` | [mkPULiftDown](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkpuliftdown.md) | 60 | `declaration-track:46b0a20c50acb6b1cf1482e36e4ae36fce5cf4083e0c126cd03cd69ad1e060eb` |
| 6 | `def` | [mkNatLookupTableLifting](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mknatlookuptablelifting.md) | 68 | `declaration-track:de3a0a56305e1cf4173b3dde3bd94d12fc79d9d6249dafa30ad0f6c2cdccbbe2` |
| 7 | `def` | [mkCtorElimTypeName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkctorelimtypename.md) | 74 | `declaration-track:b4be10160e6abbb9bf62fd6414da92c45291e1e2973ad9b8e9eb5e1eeb09725f` |
| 8 | `def` | [mkCtorElimName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkctorelimname.md) | 77 | `declaration-track:c93df90aa9ffa631ff23bf910253ed5489d7bdfc6ba97e6b1037c5115d60d936` |
| 9 | `def` | [asPrivateAs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/asprivateas.md) | 80 | `declaration-track:1b7538e4d349c0a37728d41658148a2bdbeea1c55331275a39d2d1d4a0acb188` |
| 10 | `def` | [mkConstructorElimName](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkconstructorelimname.md) | 85 | `declaration-track:9365ddd7d4d05e068f1894fdd18fe13b8a6690bceaca37609d102bf27c0cdc95` |
| 11 | `def` | [mkCtorElimType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkctorelimtype.md) | 88 | `declaration-track:0e688081583bd38587b80a8077cfac3d8e98317fb44a59088e4676be397b5a8a` |
| 12 | `def` | [mkIndCtorElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkindctorelim.md) | 116 | `declaration-track:47debdc6b35ad7107b6256023bd429134c09f9283140067ffbae359e74477553` |
| 13 | `def` | [mkConstructorElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkconstructorelim.md) | 173 | `declaration-track:4940bf40426b42e8557c6038c4d1bbcd36db5806aff1fa3fe53882cceb8d3d59` |
| 14 | `def` | [mkCtorElim](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/mkctorelim.md) | 220 | `declaration-track:fbb3827b4435dbb1380313e70d40d0ab949f90c4c0f34a554b7a4339bd56b9c3` |
| 15 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CtorElimNamespacedPublic.lean/declarations/builtin-initialize.md) | 245 | `declaration-track:afe30c10dd699727954cd42b9560a18b9eda706e40818dfc7baa3432dca75584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c7009a775e08fa982f2042b488cc60fbc227c01fefc19f968af92dd91336ea7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CtorElim/Variante681aada621bdb09a179e9433ec31e223a12bb07f836af08b31420bff08db1e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
