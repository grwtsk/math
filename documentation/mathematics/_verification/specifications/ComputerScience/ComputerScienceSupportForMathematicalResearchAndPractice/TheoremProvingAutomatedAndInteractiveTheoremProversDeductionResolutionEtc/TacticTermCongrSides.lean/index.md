# Verification target: Tactic Term Congr Sides

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/initialize.md) | 53 | `declaration-track:ebf5c6e5af3ddbf1e81bd8d06758ffced890b8abbafa746fa3e3af5bc6e5762f` |
| 2 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/syntax.md) | 77 | `declaration-track:2901dcd9ed54d7c2acdc4449b83490c3ee23c99c695b62724b6d64fa79830394` |
| 3 | `def` | [congrHoleForLhsKey](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrholeforlhskey.md) | 89 | `declaration-track:5a4d5817d8f0738320d3e4ba6eb1205c4d921078c779b5f78e66c28e71fd6a15` |
| 4 | `def` | [congrHoleIndex](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrholeindex.md) | 94 | `declaration-track:2a3a3aeec89f9342c1f3aa0c1a110b401edb1f5ae8d8cc0a51da3429b3368a93` |
| 5 | `def` | [cHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/chole.md) | 107 | `declaration-track:17157367f808200bfd44789780da15cc0758943025082b228c09bb9222b5809c` |
| 6 | `def` | [unexpandCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/unexpandchole.md) | 111 | `declaration-track:b6fba0ab850b4295dc8496434317a42ba8f138eb0a8b89f9c94587677261b3f7` |
| 7 | `def` | [sides?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/sides.md) | 116 | `declaration-track:bba14c156d6eb5c1550a43ff94758f5f863b784b502bbaad7490010f6e9b4ce3` |
| 8 | `def` | [mkCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkchole.md) | 131 | `declaration-track:0c9b2191c5f2c24dd44ebefbc838c4ff321a71912fcc2699bd28f1bc91e7d31a` |
| 9 | `def` | [cHole?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/chole-source-edition-2.md) | 141 | `declaration-track:2dc2cd9f5de6f632cd3d74a57c7848e22ba8a5787f1dca573a504da93f1165eb` |
| 10 | `def` | [hasCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/haschole.md) | 153 | `declaration-track:6e7995f09e3d4633243bcdf4b1d9f1aad3dae9a597d8cb71124e52b76b5aa86a` |
| 11 | `def` | [removeCHoles](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/removecholes.md) | 157 | `declaration-track:3661d8d8f8481645d4f4033403e92136ddebb727ee6dce257bf4979a32b6b184` |
| 12 | `def` | [elabCHole](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/elabchole.md) | 162 | `declaration-track:7a3ff714cf28a9a955ae44e0750b72a36349f21f5b68cc7ec4c4bb24726c68d3` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/syntax-source-edition-2.md) | 182 | `declaration-track:705e97d6b00828e239e59eb8951e71af98c661bff6a815ff472e0ae18bd19a21` |
| 14 | `def` | [elabCHoleExpand](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/elabcholeexpand.md) | 185 | `declaration-track:5d679521dc594462deb356e10c75925963bb72a8319b2f6586d6735e6d9f4e91` |
| 15 | `def` | [processAntiquot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/processantiquot.md) | 192 | `declaration-track:36c8471e32eb45372072caa901ba6f1cabc27f01bc3c8434194e83cd1cd088c7` |
| 16 | `def` | [elaboratePattern](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/elaboratepattern.md) | 207 | `declaration-track:75a963f699380e1f80cb8fea1b6f2470d1859645266c8cba43db1b5180c176f8` |
| 17 | `def` | [mkHCongrWithArity'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkhcongrwitharity.md) | 228 | `declaration-track:70836bd95f72f89c7c223acd115f1d1bb65ee09024b1fd4a040526cfbb789897` |
| 18 | `def` | [mkEqForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkeqforexpectedtype.md) | 276 | `declaration-track:bf65d1339c404e99e4af53b10e9fcc94c6414cd001f7acdd62526e6fd26ffa00` |
| 19 | `def` | [mkHEqForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkheqforexpectedtype.md) | 287 | `declaration-track:6a373806eeb4a3671623b4cf36c3e12cc8374b84039a1205e45db32044137f61` |
| 20 | `def` | [mkIffForExpectedType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkiffforexpectedtype.md) | 299 | `declaration-track:53743aa82978ca9cb2ded7bcb741e81c81d35a2e65c50c8c1853917b0769103b` |
| 21 | `def` | [ensureIff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/ensureiff.md) | 309 | `declaration-track:c36c5a5ead5da4fa209c45689958c74ec40ad55add1ed702828d1699597aa3e3` |
| 22 | `inductive` | [CongrType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrtype.md) | 314 | `declaration-track:b76d46a9a0653092ceefdc5b9a8ddb56323e1d5cd6579362a718e26e1f4e11ec` |
| 23 | `structure` | [CongrResult](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult.md) | 332 | `declaration-track:00a2e6964eb08068cc0fe75090741de76a8e580f3ec8371a86a8d67769b7dc8c` |
| 24 | `def` | [CongrResult.isRfl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-isrfl.md) | 347 | `declaration-track:9a0119467c9b36bcc745e2568e92bb9881a0273ff62e5eb8781017de67da9917` |
| 25 | `def` | [CongrResult.eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-eq.md) | 352 | `declaration-track:729fb935ccdc8bb7498731ac9c1c0e8dc0327af2fb336ad371bf357fad1ed531` |
| 26 | `def` | [CongrResult.heq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-heq.md) | 362 | `declaration-track:e0a67a76ead1df76e79992c7292934281402bab748827f483cbe6dd6c1940804` |
| 27 | `def` | [CongrResult.iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-iff.md) | 368 | `declaration-track:3a6fd55fcaf2360d94a3ae39c3fe0ecf2a0fea48d4bc3d1acd6836931c9b1e1f` |
| 28 | `def` | [CongrResult.trans](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-trans.md) | 376 | `declaration-track:d03e704d6c5112fa9f6a1e52cb68fc9b60eee5a70e23617f02d1597a653368f5` |
| 29 | `def` | [CongrResult.mk'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-mk.md) | 394 | `declaration-track:c332e5dde3b2776b093a9b7941a4f673b1cdc9f905a9cf39b16705bbb9ea66f8` |
| 30 | `def` | [CongrResult.defeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-defeq.md) | 450 | `declaration-track:3d2ce7603d670c717a83b4c693917ed9273588dc598d4d5ac3645899cd60349b` |
| 31 | `def` | [CongrResult.mkDefault](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-mkdefault.md) | 470 | `declaration-track:865f463a293ff0ffcd3aed5298a9554bbe867153069199b70230a02cf21835a4` |
| 32 | `def` | [CongrResult.mkDefault'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/congrresult-mkdefault-source-edition-2.md) | 480 | `declaration-track:d1e612a38a5059abf314468089786acfcedc3fd70376a384e34b8bfdb3b4af78` |
| 33 | `def` | [throwCongrEx](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/throwcongrex.md) | 488 | `declaration-track:a0bf1d3b254328675be4989ec43fb06cdfceaf633bd873df1d4cc561c83708b0` |
| 34 | `def` | [mkCongrOfCHole?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkcongrofchole.md) | 495 | `declaration-track:787f027db98e994ed45ac0e88930dde0ae96e21d0cb01afec70b861efe688f02` |
| 35 | `def` | [mkCongrOf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/mkcongrof.md) | 525 | `declaration-track:de6122ed2e70154c11074876696e46315c6c1b96bb660241c909865130c65a52` |
| 36 | `def` | [elabTermCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticTermCongrSides.lean/declarations/elabtermcongr.md) | 676 | `declaration-track:24e3131708e7f8ed0fdde03de3ce5db56e44cf6e4b479297cb9a22e1a639bd7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=505bc31238f0407742495adaf8e9ac503d1665ab3dc0af24e2bcb6e3a706e375 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
