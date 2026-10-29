# Verification target: Core Public Is Congr Relevant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af42767f692c69e2158ac7e9531b5cacc5371092",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af42767f692c69e2158ac7e9531b5cacc5371092`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Inv` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.PP` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Ctor` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Beta` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Simp` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Internalize` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertTrans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/inverttrans.md) | 26 | `declaration-track:8242ae55a2fa177e549a9b460296aaf7e4ec002b5b3b754c9fa6d3040e791ecf` |
| 2 | `def` | [isCongrRelevant](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/iscongrrelevant.md) | 42 | `declaration-track:02920af3738253a2a967a786f6d999ae9a59b49e8a6419f9c021cdbfa8a31257` |
| 3 | `def` | [removeParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/removeparents.md) | 49 | `declaration-track:889b8014e2fe226b240fb4750bc464b4b2d3794d4f6a50b9670a1edee7b90d3a` |
| 4 | `def` | [reinsertParents](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/reinsertparents.md) | 62 | `declaration-track:9a62c3424cd43c9153ca11939d2701036ab3a28b7b11e963188e5828f25b5773` |
| 5 | `def` | [closeGoalWithTrueEqFalse](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/closegoalwithtrueeqfalse.md) | 69 | `declaration-track:fa07ff2570706c1f166d56baefd13054c7868a4c4422dec06e595d8fed9d0ab9` |
| 6 | `def` | [closeGoalWithValuesEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/closegoalwithvalueseq.md) | 80 | `declaration-track:e9cdc144ca748364fe5d870af2424fa7d901691388985dff542fb210f1cef42c` |
| 7 | `def` | [updateMT](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/updatemt.md) | 92 | `declaration-track:83092bacdceb97e388dbf11ed8d9fafbcd40b8f496e45fc3e38ee9b3a6b5a872` |
| 8 | `def` | [propagateBeta](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/propagatebeta.md) | 104 | `declaration-track:d056e4ade64b20c4c7d3cee8c9ec712576bf15e7b6277f521136fc54558ba29e` |
| 9 | `def` | [getFunWithGivenDomain?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/getfunwithgivendomain.md) | 129 | `declaration-track:ab46df1a4cb4a29d71b1b2b0e40b54d1e2d04bd8bd36dd0183f9d9a20e3e6e7b` |
| 10 | `def` | [propagateUnitConstFuns](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/propagateunitconstfuns.md) | 134 | `declaration-track:d564e0a7d18755596d4ba5dd7d32841ed1388dd8944caa11826d8a029ae8c851` |
| 11 | `def` | [addEqStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addeqstep.md) | 157 | `declaration-track:6e8d548c6731aef39fdcdce2ffa5f77ce8674d86a0ac587cc1e1891d8e5ddef2` |
| 12 | `def` | [resetNewFacts](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/resetnewfacts.md) | 282 | `declaration-track:603c8fc0447029bdb864ad63406140bb9adaa8aaa83489bad0d9789e47427437` |
| 13 | `def` | [popNextFact?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/popnextfact.md) | 286 | `declaration-track:2fcd87a8442a43e7b5becff058611fa7752d734bb4d34a8e96d0510156b67b45` |
| 14 | `def` | [addEqCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addeqcore.md) | 292 | `declaration-track:5c66ea6718bf343e8165945b582c50e65c35b94cdde99128b2c439ed5e885fb9` |
| 15 | `def` | [addEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addeq.md) | 297 | `declaration-track:dc2accbf5ad4bcf6c795435305243e37c1210430feb57adf32cc8c7c593aea81` |
| 16 | `def` | [addHEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addheq.md) | 301 | `declaration-track:a0e6040fea6b07167fa6c131aa01a8b9f8f6f951176cc89618adf8a8f6ed48b4` |
| 17 | `def` | [storeFact](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/storefact.md) | 305 | `declaration-track:273b2a8782ac9609370c76abc74d4a0508e4352eb1fc5a290870db8f5a6817be` |
| 18 | `def` | [addNewEq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addneweq.md) | 309 | `declaration-track:e4738734a0558bc71405ae27c2c9a39ba7d4ef38796a5915688f2f686dad8e8d` |
| 19 | `def` | [addFactStep](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addfactstep.md) | 316 | `declaration-track:2b1838c42c2d4d23b478400fe3a0a1fc6b4ab90bdc275f582f8933db4e5add19` |
| 20 | `def` | [processNewFactsImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/processnewfactsimpl.md) | 365 | `declaration-track:cc31d1fad68b536e41e78f4f6e7b6e95a81eef558aa16d091ec0147a41f34574` |
| 21 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/add.md) | 377 | `declaration-track:adf2401f771278222e0c3bfd2b965e3335dc42968deb594125673a1d33675c37` |
| 22 | `def` | [addHypothesis](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CorePublicIsCongrRelevant.lean/declarations/addhypothesis.md) | 384 | `declaration-track:e9e172204ae176934568f6e4fc4e8fe1cb453ac3e79e24e6125c2615a0cb822d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a8d989ef82e6ed2cce049bfe6c9ecbf26232444f7654300d1899dd9bbc80bf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd7690a08a1bb4dd9ea9d958e9d2c601862641a12dd51e7c4e061afe04fa7a6ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
