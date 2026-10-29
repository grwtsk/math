# Verification target: Tactic TFAE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9af60ef447325987c48e54a415d187f5ba1a661d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9af60ef447325987c48e54a415d187f5ba1a661d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Qq` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Notation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AtomM` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ExtendDoc` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [impTo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/impto.md) | 32 | `declaration-track:a0cd45618c603810774023add699af2412679a3c3c75e9dca438a9d707cdbad9` |
| 2 | `def` | [impFrom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/impfrom.md) | 33 | `declaration-track:3adcf842ebd30aecdb7f73500c0083ba64349b63e7bac4f556c3e4eccdb33d58` |
| 3 | `def` | [impIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/impiff.md) | 34 | `declaration-track:dda0822db09031b18fcf8352c78be6bd344733d23472a53ccf2274959338abc3` |
| 4 | `def` | [impArrow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/imparrow.md) | 35 | `declaration-track:162c46d7880a7bf34291f1072d3e86d247274812603339dba25f02444071a489` |
| 5 | `def` | [tfaeType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaetype.md) | 39 | `declaration-track:679ce9b21d454fcbd2c698e7e73346f9255aad246296e7b55027c149eceeeb45` |
| 6 | `def` | [binder](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/binder.md) | 51 | `declaration-track:1fdb24651517bd0c55f38d7989e8167289589b078aa8aa93a9b04c640d55f9a8` |
| 7 | `def` | [tfaeHaveIdLhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaehaveidlhs.md) | 56 | `declaration-track:8de366cfed69cf2d97abed482388d76708b2799f033c72ed488a4b5992f884cb` |
| 8 | `def` | [tfaeHaveIdDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaehaveiddecl.md) | 59 | `declaration-track:25069333be4bbe3517cdd92e38ea972a0667bec753d94159d9934bd8f0ce4983` |
| 9 | `def` | [tfaeHaveEqnsDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaehaveeqnsdecl.md) | 62 | `declaration-track:648e321bb88cbf2ae11cb6cc6f877674beaaf5ab284df0397073e86c2226a1e2` |
| 10 | `def` | [tfaeHavePatDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaehavepatdecl.md) | 65 | `declaration-track:5ae4ddb7e50686e82c490b5bca22317e613720e393c1dd404cefe5a3879ea7c1` |
| 11 | `def` | [tfaeHaveDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/tfaehavedecl.md) | 68 | `declaration-track:e97411fe10568ce5d954c45cbb42e8230294f805701f4613a4dd363cf330d6de` |
| 12 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/syntax.md) | 122 | `declaration-track:8d54416b2d92962e77c6ebe86c28d0749925993f95061144b20453d1c1532fd4` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/syntax-source-edition-2.md) | 139 | `declaration-track:8e7c44d98c24ba4490242f9b18e5802f6ba5fb78305c819436e2daa46346b56f` |
| 14 | `def` | [getTFAEList](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/gettfaelist.md) | 148 | `declaration-track:b47d633748ee549e178cc3093af7f5f8d3cb2cc88da97b005793b1613380e0ac` |
| 15 | `def` | [dfs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/dfs.md) | 167 | `declaration-track:a2cbe8dba69fe6cf149d78ecbcd09a01676de048de97f0aa941e42e8d94714ef` |
| 16 | `def` | [proveImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/proveimpl.md) | 180 | `declaration-track:f1458d4a65bc4814b0caccd58de11c10d217049636f5e3debffdd9436a869e25` |
| 17 | `def` | [proveChain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/provechain.md) | 189 | `declaration-track:d061f38a936df63840df8c05f2d962ae446a8cbd2dc1241e289a6dc9a4c089d7` |
| 18 | `def` | [proveGetLastDImpl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/provegetlastdimpl.md) | 201 | `declaration-track:b080356bf2472ba3379682caefb8fbc1ad9bbb80d0dda3116b5a52f3bb90bc42` |
| 19 | `def` | [proveTFAE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/provetfae.md) | 211 | `declaration-track:222a0384020ebc6dde324b641dca3422e6076abacd5106dc4a871768db8f37bf` |
| 20 | `def` | [mkTFAEId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/mktfaeid.md) | 225 | `declaration-track:25e2943e1c417241076805d7c0c853964bcf0ee27ad4904cc4df76d1c4af5bbb` |
| 21 | `def` | [elabIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/elabindex.md) | 237 | `declaration-track:76a74adaa1cb1b2b379eae2223ec0b7f2f13fd31416ac6ea0ef28ab2fa4d0a58` |
| 22 | `def` | [elabTFAEType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/elabtfaetype.md) | 247 | `declaration-track:f11b67d2aefeb7ec15836413c72a140ab953293417bf79008dfa1fb7a9ef397b` |
| 23 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/macro-rules.md) | 268 | `declaration-track:774eccef12523fb29b291ca7aba1b41d64415cc330515bd9cab3cab393ce1010` |
| 24 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/elab-rules-source-edition-2.md) | 278 | `declaration-track:adfbd9c4306f5e1804f0827bbfb07699e20967cf31496dc65c287cab06789793` |
| 25 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/elab-rules-source-edition-3.md) | 295 | `declaration-track:f39c4c6911433b6d5122273a22c6fe05dfc382845642a9055ff3cc80bfbd0df5` |
| 26 | `register_option` | [Mathlib.Tactic.TFAE.useDeprecated](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/mathlib-tactic-tfae-usedeprecated.md) | 328 | `declaration-track:5d91331245440dd9a36baab3ba406a6ac1bd30c955f037c7c556b1112796a403` |
| 27 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/syntax-source-edition-3.md) | 338 | `declaration-track:b4f2f1334d221bdd25bef4bca87102719b512e8aca82c5024bff9cc71af80883` |
| 28 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTFAE.lean/declarations/elab-rules.md) | 345 | `declaration-track:8322106d7427e0ae337355f939bb4bdb2e8cec77fa41068ac54ce1530f986350` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a7dd5c5c4553370de83d25194b347a143360ffde3ee4a7d0120fa8759474696 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TFAE/Variantb18034af770ed6b970de6fcf0c225c1970eec792379637998faceb97405f827a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
