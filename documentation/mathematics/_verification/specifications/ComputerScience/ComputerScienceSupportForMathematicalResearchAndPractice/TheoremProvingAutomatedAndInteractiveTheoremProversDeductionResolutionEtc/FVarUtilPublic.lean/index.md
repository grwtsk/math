# Verification target: FVar Util Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6748bd84ebf1f88fe1c3a1d72853d73cb600c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [TraverseFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/traversefvar.md) | 15 | `declaration-track:2ca802b31917cde7e7d0c30ef1598f168043b32355ac61e396b64e34e4b1d415` |
| 2 | `def` | [Expr.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/expr-mapfvarm.md) | 21 | `declaration-track:b92afad406ae7afd7659e3c54e902f91ec4ea7ce25d5d267427b43a1588ea5c4` |
| 3 | `def` | [Expr.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/expr-forfvarm.md) | 34 | `declaration-track:0174eb5e0bf58cfbbb1663d807ca1739ca4a0cfebcf5697f0aab5e29016da67d` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-3.md) | 53 | `declaration-track:3f34be76a0f39fb09519c2919d41c50ffe9ba64c082a4e8636b86b06a4594515` |
| 5 | `def` | [Arg.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/arg-mapfvarm.md) | 57 | `declaration-track:5a79ee3e825a040c006348a746cbb34bc7470ef07f1d4594e9be35656d518e9b` |
| 6 | `def` | [Arg.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/arg-forfvarm.md) | 63 | `declaration-track:2d80a36363dc9ef9bc343298a4a21ef9df44b713902c67c8fb6dd494219de1b4` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-6.md) | 69 | `declaration-track:cfcd88a6115c2267274b2f376c0321dde0ae6a42365cb56bde4f8654a036d5aa` |
| 8 | `def` | [LetValue.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/letvalue-mapfvarm.md) | 73 | `declaration-track:cb75c7c16398f526307ba0b1748f5b7b359070ee7b37d6224e776b3e6b584068` |
| 9 | `def` | [LetValue.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/letvalue-forfvarm.md) | 88 | `declaration-track:d6c30570cb2b6213270f559c18d723c38a8621c1ef26cc6763361b2ad3736b87` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance.md) | 97 | `declaration-track:05c0373c6a899c4f1db5e0bc2e7464da1a45ea95fdb39961a11a3913876e868a` |
| 11 | `def` | [LetDecl.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/letdecl-mapfvarm.md) | 101 | `declaration-track:e39c33e0dab61104602b366a847003e022104aec4feb95a29dbbc28564281672` |
| 12 | `def` | [LetDecl.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/letdecl-forfvarm.md) | 104 | `declaration-track:f6d384a95389c0bc6d7de25da0829051f3e7e561aa1c5c72c93975633db06189` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-7.md) | 108 | `declaration-track:db00fa9efa9789c0c0e93f9d8bf7607772f7b88517ed223a2a6dca22a22ad120` |
| 14 | `def` | [Param.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/param-mapfvarm.md) | 112 | `declaration-track:a6f33550181b622f5abd00736c2a08d1521f76e0807b9f34804242ebc0b4c872` |
| 15 | `def` | [Param.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/param-forfvarm.md) | 115 | `declaration-track:5c095a7684ee6b997b11bb89223b9a5a97743ec86cd837940f9f3655346d86ab` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-9.md) | 118 | `declaration-track:ec9176176593f90344be7f86b91695febd8ede0088cc67bfd1c66cf2e9669c77` |
| 17 | `def` | [Code.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/code-mapfvarm.md) | 122 | `declaration-track:91e8f00e4ea82c02aede14ec42521477253df711c11af952807d07e4c2d440f9` |
| 18 | `def` | [Code.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/code-forfvarm.md) | 158 | `declaration-track:088ec36968e5c69043d4ad72d5802503d751f2b62ef8a50be0ab2761d1f583ed` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-8.md) | 201 | `declaration-track:e174512703776c065875044682d0b84a0c5d715c659b60faf2cab57759ab5a99` |
| 20 | `def` | [FunDecl.mapFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/fundecl-mapfvarm.md) | 205 | `declaration-track:4969a06daa0e1cd8807b4f0e5fbdf482f7de36af2745d2857dd657609995dab9` |
| 21 | `def` | [FunDecl.forFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/fundecl-forfvarm.md) | 209 | `declaration-track:ea8c4ed2ad58a3a6e207b0c4f1de38a9e4e105a93aab04ffe156c510fbca1051` |
| 22 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-5.md) | 214 | `declaration-track:8f51d54dc3de0eeabdbc699a74013f08129b65ea98c7a9fd184b39f181483206` |
| 23 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-2.md) | 218 | `declaration-track:38bd7fcb5fe6a6ff7b9542a60e26b150f2ac68b827b4c5252f0672895768eab1` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/instance-source-edition-4.md) | 242 | `declaration-track:49e1d8c099ead7a7230d97bf1b09325b2eef239e73c86087f28def8af12beaa2` |
| 25 | `def` | [anyFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/anyfvarm.md) | 258 | `declaration-track:d73196f52ea1a636e9594576ff158072c551b1c104cc5d4cf624ac34083aaff8` |
| 26 | `def` | [allFVarM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/allfvarm.md) | 264 | `declaration-track:42c24ea28153f2a8d23da3bdaa3bb62a2bbdad5b24171de5d80fd7e5599bf6a7` |
| 27 | `def` | [anyFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/anyfvar.md) | 270 | `declaration-track:54007f265529e3512db90eef3df38621304460e4851c5a8c25abda4b0fef0a42` |
| 28 | `def` | [allFVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/FVarUtilPublic.lean/declarations/allfvar.md) | 273 | `declaration-track:5906400d093a0b9f74272affc42108e129e474aec7f943355daa7d609ff96b87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45ec93d8f903cdc87e6209f9efee06a964dad48edbce90b97ab342b5479c26a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FVarUtil/Variantfd1bbd9ed098c1f5e198708c6d7035b66dd07f536a264d187d75c3ce79a19d11.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
