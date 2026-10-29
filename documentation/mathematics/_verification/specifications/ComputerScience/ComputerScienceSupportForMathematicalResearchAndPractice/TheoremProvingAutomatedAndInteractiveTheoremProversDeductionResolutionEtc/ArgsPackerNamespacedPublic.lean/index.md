# Verification target: Args Packer Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bec39ccc6f59bf587136e77b930d3be1ddc2e516",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bec39ccc6f59bf587136e77b930d3be1ddc2e516`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.
- `Init.While` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [packType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/packtype-source-edition-2.md) | 72 | `declaration-track:d299ea3490df1541dbd15bca63c9cd94e195187dd862df960a1056faf2852d7b` |
| 2 | `def` | [pack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/pack-source-edition-3.md) | 85 | `declaration-track:ca79855fe8b2725cdac30ac541dbce53c2c1747e3a7a6ce517f31896bad72b70` |
| 3 | `def` | [unpack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/unpack.md) | 110 | `declaration-track:8e541d3f0ccf2fc905048b7206b930b305fbc73d76e678f7277953257b2aa80d` |
| 4 | `def` | [mkTupleElems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/mktupleelems.md) | 128 | `declaration-track:355a0a08c8a912b3237d476fb2451aaa745318a1612aa11c1540989a10c66ed3` |
| 5 | `def` | [uncurryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrytype-source-edition-3.md) | 141 | `declaration-track:7427d9c88d5c01cc2b0c3eda399dab07b50a6edc482bbd0f24958b4404c2e586` |
| 6 | `def` | [casesOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/caseson.md) | 159 | `declaration-track:dc8ae58b619cb9b29e14da63d24ca3da555efe38bfaf8bf8f50d12c696a842d4` |
| 7 | `def` | [uncurry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurry-source-edition-3.md) | 181 | `declaration-track:f9b78584931bb3d801b45f7f75da24b89f96356cad898688978a2a3ea32a107a` |
| 8 | `def` | [curryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/currytype-source-edition-2.md) | 197 | `declaration-track:8342f07bc0353351fd0d89ffe84672ab827fdf22aef5957b31cc7edc5bbeeff0` |
| 9 | `def` | [curry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/curry-source-edition-2.md) | 223 | `declaration-track:8a6d684788158d5c38c86393d75c301fad6545d6e1ce55180794d4f1e640b997` |
| 10 | `def` | [packType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/packtype.md) | 257 | `declaration-track:83335a5ce1f41326618c6d7f8eb2d6477f2bd694132829d3ff8f803cc811dd50` |
| 11 | `def` | [unpackType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/unpacktype.md) | 264 | `declaration-track:8b52d709891568608cb787b6c9d6bc1149bb88f2df49cb9ece9480bff30c83bb` |
| 12 | `def` | [pack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/pack.md) | 278 | `declaration-track:08f39992133c4f6ab6a312b88bf0629c0e109c61de03334d8811fa87a0769bf9` |
| 13 | `def` | [unpack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/unpack-source-edition-3.md) | 299 | `declaration-track:a6adc2d45d4ea78b35fee1f18897c094cd6c4c677205c633fc9acfe69927eca4` |
| 14 | `def` | [mkCodomain](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/mkcodomain.md) | 321 | `declaration-track:377eb6fe7f7dcfba9b1ba79f30a6e901349c05feb333c97e2f9ce6a767809c1f` |
| 15 | `def` | [uncurryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrytype-source-edition-2.md) | 354 | `declaration-track:5ccf194580ace18207600b250d116696a5d77873e229d1919983ccbf40521089` |
| 16 | `def` | [uncurryTypeND](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrytypend.md) | 372 | `declaration-track:d940e121920dc76567a7001db1323a611024b8cdd872ef5896973089937df8c2` |
| 17 | `def` | [casesOn](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/caseson-source-edition-2.md) | 394 | `declaration-track:ef33ebcf35665087cdaf2f1554fbfeb8b8e062c57561f9f8f6f5419fc40d0d51` |
| 18 | `def` | [uncurryWithType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrywithtype-source-edition-2.md) | 420 | `declaration-track:90bdac7480ad34b24b14d7c1564359b7359bc53fa953cbed34dd57f2ef81349d` |
| 19 | `def` | [uncurry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurry-source-edition-2.md) | 426 | `declaration-track:c8407638c4918d7488645e7a7b60deef49ead3865da2f405659b14885cb2b599` |
| 20 | `def` | [uncurryND](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrynd-source-edition-2.md) | 438 | `declaration-track:ebd467ce9f07c5cd450b2a1e56cb095501c82fbbfbcf61c5783ceda005e71b6d` |
| 21 | `def` | [curryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/currytype.md) | 452 | `declaration-track:76d09771ee336bd02aeed977bf5a70117e6cc3ade68f5a7fcaccb84298e88167` |
| 22 | `def` | [numFuncs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/numfuncs.md) | 466 | `declaration-track:1078e1c73b58ab99a79feb5caac164a6a71edff6c942a80f2462dcbe2b197096` |
| 23 | `def` | [arities](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/arities.md) | 469 | `declaration-track:3b80016cf90e64f8c89e46a3cbd64d516fd6f7c9213632c60c569c060706de00` |
| 24 | `def` | [onlyOneUnary](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/onlyoneunary.md) | 471 | `declaration-track:a0cd70fbb0c144aa04e47397e336bc056ca43ef0a95d4f495bc2cc0967c51451` |
| 25 | `def` | [pack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/pack-source-edition-2.md) | 475 | `declaration-track:7f8d2c28556a6cb96ea7395cb0e01da0713847d08a9ec2a5cb35d9f2b95f9650` |
| 26 | `def` | [unpack](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/unpack-source-edition-2.md) | 491 | `declaration-track:a38ba9fb6df7da5dcac33b7e9e5f0ff52e1b73ce323ee1a6809fdf88337abc46` |
| 27 | `def` | [uncurryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrytype.md) | 502 | `declaration-track:309afe2b1b49f138ba75293c2a6926b7a4dc07ecd4ce4fd9ed5949b9c680f404` |
| 28 | `def` | [uncurry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurry.md) | 513 | `declaration-track:83f7fe7d8aa6c02f29d31d1feb895d2ca6a01fa397bc5be63154a594067251b0` |
| 29 | `def` | [uncurryWithType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrywithtype.md) | 517 | `declaration-track:75795660251c2b9d217193232279aab3eb3808e64452c60a589dd2478b543460` |
| 30 | `def` | [uncurryND](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/uncurrynd.md) | 528 | `declaration-track:438a8c23db9d503cdc2168f6f85ea03afd62574846389753144f04c4e5272938` |
| 31 | `def` | [curryProj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/curryproj.md) | 539 | `declaration-track:06bc5cc01753dbe3cab46842dcd290bb1ed1c4845cb15dd19e0cb9f1c1c0ff53` |
| 32 | `def` | [curryType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/currytype-source-edition-3.md) | 563 | `declaration-track:f7fb0e4ebcef75343b3fa0a97aac2838908e8aba864474ebc8d2f540962e3fc8` |
| 33 | `def` | [curry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/curry.md) | 574 | `declaration-track:29feed27886dd1c7a73039a1cff9afac36a5581ea74c21bebeff8f6c58ac9c13` |
| 34 | `def` | [withCurriedDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/withcurrieddecl.md) | 585 | `declaration-track:14f868d382388214a46ff181bd3298829a9e66b950c0d8a99a14225f12878c26` |
| 35 | `def` | [curryParam](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ArgsPackerNamespacedPublic.lean/declarations/curryparam.md) | 612 | `declaration-track:dc0fa9247830b431c5a571a9cfa545cf9849baaea84a79d59a4b18fa278a6a7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29956c645116f2218947ac1f4983e95705550ae80a5b06c49546a4c8a69ff9af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
