# Verification target: Diff Public Action

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e0d1db5d1ddbef894bb3fea4b6a2171bd89560",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e0d1db5d1ddbef894bb3fea4b6a2171bd89560`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Range.Polymorphic.Iterators` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Range.Polymorphic.Nat` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Action](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/action.md) | 27 | `declaration-track:196df62845a3a147c81e9a25bcf5e7b1d3892ace7513efb52a86c751d5bb22de` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/instance.md) | 36 | `declaration-track:e48f195909438611f809e8b5578f18529d9b35a2e50925f026e6c6de60e9173b` |
| 3 | `def` | [Action.linePrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/action-lineprefix.md) | 47 | `declaration-track:e745592c255ed745801331cc8af38e13715a97718101665c5651bd12134c962f` |
| 4 | `structure` | [Histogram.Entry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/histogram-entry.md) | 56 | `declaration-track:f7bb5047dfa3962537d7f601f1d0822741f428e7877856cd306d0dc2a644a0ad` |
| 5 | `def` | [Histogram](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/histogram.md) | 71 | `declaration-track:0abd70ec6df82f2cabe853b1de3cf1f78b3cb156d31d3f5cf958d5a56dcb6ee2` |
| 6 | `def` | [Histogram.addLeft](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/histogram-addleft.md) | 80 | `declaration-track:37f189d6698a664debecc87587b6fe4294e16c2118681fea08dbfe3b9a0524ed` |
| 7 | `def` | [Histogram.addRight](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/histogram-addright.md) | 94 | `declaration-track:460130fc56b32f846544e03d86be8293cdcea88382b1a2a09701cb2bb3932a14` |
| 8 | `def` | [matchPrefix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/matchprefix.md) | 109 | `declaration-track:94c0c55b8756ff989bcc996db595bacbed751397eaa971d8ecddbb95c6af22a7` |
| 9 | `def` | [matchSuffix](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/matchsuffix.md) | 121 | `declaration-track:9587a31c06e77ad64fcebc89009c9efd636c2e5078f59e6503b2ff544cac1fe1` |
| 10 | `def` | [lcs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/lcs.md) | 142 | `declaration-track:fa15b403d15bb3d3c86803afa2b2818a7daa89e48791a8befda9b4086ee5bc7e` |
| 11 | `def` | [diff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/diff.md) | 170 | `declaration-track:e63fab1d47d1249417d688cf9eade9b80dbfb20f9c4f74cec2d0cba6407a903f` |
| 12 | `def` | [linesToString](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/DiffPublicAction.lean/declarations/linestostring.md) | 201 | `declaration-track:31c562bb84d5b7ea232c96cd5d91e3a9b49b6a0748700bfccd009e77e25c64e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76759f55946b501444ee4377620d1bc130571ef4e81d0aa7a2a02a4c7e6be07d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diff/Variantd4f1aa22d5c10548ccb9b68f373721fbe6719c87721e7d8cc873e70090a088a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
