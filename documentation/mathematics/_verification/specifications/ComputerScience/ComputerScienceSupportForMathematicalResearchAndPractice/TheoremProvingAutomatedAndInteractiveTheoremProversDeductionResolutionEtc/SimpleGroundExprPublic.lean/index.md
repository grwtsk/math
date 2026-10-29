# Verification target: Simple Ground Expr Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a4553ccb6158850ca6d9e8653961e6cf94c0274",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a4553ccb6158850ca6d9e8653961e6cf94c0274`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.While` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SimpleGroundArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/simplegroundarg.md) | 29 | `declaration-track:89caa5618646a943d0b8a7b85167555db5f96a4a9d507dc2a9da9555307e70d2` |
| 2 | `inductive` | [SimpleGroundExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/simplegroundexpr.md) | 48 | `declaration-track:ad88709e302b51ca2cb0c49938e6b92c5c10d8bb0f8654fcadf73b26645207b2` |
| 3 | `structure` | [SimpleGroundExtState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/simplegroundextstate.md) | 84 | `declaration-track:f085ce22de67119681841272e393785ab52b00a03991b9a6afae1d82ce4a4884` |
| 4 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/builtin-initialize-source-edition-2.md) | 89 | `declaration-track:2c355de02cf77358e0adcd09ead2e6d61e1e70007dfec2b58a1c05e70bd5ed51` |
| 5 | `def` | [addSimpleGroundDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/addsimplegrounddecl.md) | 101 | `declaration-track:96407cbc6fa0ca63c6ca0bc96ae2195b3145b0b9e2475a3896085c4a476eba6a` |
| 6 | `def` | [getSimpleGroundExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/getsimplegroundexpr.md) | 109 | `declaration-track:338cd62c77406c3eaba2a16f69b86968967fb1be02fd12a8d3c0fa8a9779efaa` |
| 7 | `def` | [getSimpleGroundExprWithResolvedRefs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/getsimplegroundexprwithresolvedrefs.md) | 116 | `declaration-track:c862ea50de9d127743c8a3401efc5077775183565fa72f0f604a2c3cb9cefc79` |
| 8 | `def` | [isSimpleGroundDecl](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/issimplegrounddecl.md) | 129 | `declaration-track:e20d607b299adbcea2af80f7b0e3481829454c59b11af56b216dd48423f1d554` |
| 9 | `def` | [uint64ToByteArrayLE](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/uint64tobytearrayle.md) | 132 | `declaration-track:b171ea6fa9f87493f1586933c9faf1b451a10ba25c4df17bd34f7eca36cbaab9` |
| 10 | `inductive` | [SimpleGroundValue](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/simplegroundvalue.md) | 145 | `declaration-track:61474f736d1a772c3c8f8bbdfc6cf852214931fbbad7bb4daae7052123ac3634` |
| 11 | `structure` | [DetectState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/detectstate.md) | 159 | `declaration-track:841997f2a0c991c9e992b9cd2c83d10f3fd4287eb377bc8035e7cfd08e5d9938` |
| 12 | `abbrev` | [DetectM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/detectm.md) | 162 | `declaration-track:3ec3b4be63798657795a1eb09af8fd6dcd819687bdc98e91242faa0b9f4cf57d` |
| 13 | `def` | [compileToSimpleGroundExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/compiletosimplegroundexpr.md) | 176 | `declaration-track:3da07ada9368a6703079e1b501520b280ebe9d4ea529989fefbf8be7ea7f37fd` |
| 14 | `def` | [Decl.detectSimpleGround](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/decl-detectsimpleground.md) | 411 | `declaration-track:411d27f5f3d8151f7b3d47bce8eae23c88e68bcb0c2ab4db416845ff2facce56` |
| 15 | `def` | [detectSimpleGround](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/detectsimpleground.md) | 418 | `declaration-track:71ad23ea90f8089f1548d9a2c000121aae47ecc5a4336d8d9f18952d4197e04f` |
| 16 | `builtin_initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/SimpleGroundExprPublic.lean/declarations/builtin-initialize.md) | 425 | `declaration-track:21efe14812e15239e4a967fe1ce817906b78d55f60718f5f565588423654753d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80ded45f7c5244867cc6da2984178373271e77e946ae3ac39498a36198bf2df4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SimpleGroundExpr/Variantbea06d50da41c2c3e9dee75a20bafb4966ee9f400f871a8ee1431b2279a3607d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
