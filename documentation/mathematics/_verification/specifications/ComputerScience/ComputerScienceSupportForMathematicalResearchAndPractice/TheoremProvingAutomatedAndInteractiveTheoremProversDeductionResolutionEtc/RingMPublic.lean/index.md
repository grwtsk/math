# Verification target: Ring MPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f4ac76550a96467f5018b0a00f874db409d000",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f4ac76550a96467f5018b0a00f874db409d000`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Sym.Arith.Poly` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [checkMaxSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/checkmaxsteps.md) | 15 | `declaration-track:672a0ac488da16d0a430da333b9c03665c89a4aeda21164e99e39c660e769859` |
| 2 | `def` | [checkMaxDegree](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/checkmaxdegree.md) | 18 | `declaration-track:a9f0b13d61699746fab9b49722eb5edbefc2f93b80f6cd7ef4e603e56a00c0c8` |
| 3 | `def` | [incSteps](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/incsteps.md) | 27 | `declaration-track:82b61dcd4600d0b49667ee8e92c2eab41a2c06d4cb173528036b26d93759b280` |
| 4 | `structure` | [RingM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/ringm-context.md) | 30 | `declaration-track:0bd11935a9d9d6380f77c4e2b2cca872ded0ed203b6ac714700eef4a7ff739c4` |
| 5 | `abbrev` | [RingM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/ringm.md) | 51 | `declaration-track:be55b722148fc184b17caaa8c833c8657a4cfeddc0138be0798b62569e3640ea` |
| 6 | `abbrev` | [RingM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/ringm-run.md) | 53 | `declaration-track:7e48453c50efe460ce11566fd47b5b8fe56a4136a13280b7df523bd811eb5d8a` |
| 7 | `abbrev` | [getRingId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/getringid.md) | 56 | `declaration-track:3f133e91953797545516169172aadc0cf9c9b865ca1a228902d197c28849e0d6` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/instance.md) | 59 | `declaration-track:20bf11438afaec7d887c65e42c01d65fb00c0bba7151e1ddbeaae40bac91fa92` |
| 9 | `def` | [RingM.getCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/ringm-getcommring.md) | 63 | `declaration-track:fbb2638b39ef4936a22e7bd2a7004966ad26e053d387988082d34535613bd29e` |
| 10 | `def` | [RingM.modifyCommRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/ringm-modifycommring.md) | 71 | `declaration-track:739b4183877b6dc98874039cc04ef81400d82dd9764c5eb6766a3dd58d784dc5` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/instance-source-edition-3.md) | 75 | `declaration-track:cd2590fc6140f261eacfea05f96f58984204ebe754833652a8439247600c6d2f` |
| 12 | `abbrev` | [withCheckCoeffDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/withcheckcoeffdvd.md) | 79 | `declaration-track:9ab219ae6372a38b8f2881e4e68383d6d71cb26e4458068786a137256cec17d6` |
| 13 | `def` | [checkCoeffDvd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/checkcoeffdvd.md) | 82 | `declaration-track:d504c214b48a74d9778a06e0951bf03b7de40d13181696d19fe9e1b5d06a2e4a` |
| 14 | `def` | [getTermRingId?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/gettermringid.md) | 85 | `declaration-track:9ce9fe502628d95ee24c0a329745960ae2baa9b9d57aa755d367c6eaf0cac4c2` |
| 15 | `def` | [nonzeroChar?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/nonzerochar.md) | 89 | `declaration-track:34c9dc83db5df22e510ed91f18f5f98a70c176866d042cb2f7f5c024b6388a9f` |
| 16 | `def` | [nonzeroCharInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/nonzerocharinst.md) | 96 | `declaration-track:61163baabd0d87cc6d495771b23d179b9bb420c77e4a1c95a42fb6455a8b7bd6` |
| 17 | `def` | [noZeroDivisorsInst?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/nozerodivisorsinst.md) | 102 | `declaration-track:bc9251d779d7afdab284fee3997c8f9986883b42e91f2ddac0c574eb46df3952` |
| 18 | `def` | [noZeroDivisors](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/nozerodivisors.md) | 111 | `declaration-track:7bfa3bf0be42033c2a7326c5964ddaa834bc093c44faed99455e0e880bf39151` |
| 19 | `def` | [hasChar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/haschar.md) | 115 | `declaration-track:459b077be659fadb6001c92c87fa9af6028172d257f124e29cb6e196400ea3ee` |
| 20 | `def` | [getCharInst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/getcharinst.md) | 121 | `declaration-track:a741ca659c4ae64e4364f790e0b39490e2a1b7656a5d189f7ef445fca8fdfffb` |
| 21 | `def` | [isField](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/isfield.md) | 126 | `declaration-track:d014dc2c6ee3c3ce47daf54e1c757df7df64e928b6878e1ac167fbf873a572e5` |
| 22 | `def` | [isQueueEmpty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/isqueueempty.md) | 129 | `declaration-track:d559cc622a7ca618949f8e0d2c5aa2b41a8af0b183b7ce0f228f4fa312254470` |
| 23 | `def` | [getNext?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/getnext.md) | 132 | `declaration-track:a4e1d3f0ba2406be1ebb8f79c42db5eb72fb4f412b9df24ed6d09c6165dfc136` |
| 24 | `class` | [MonadSetTermId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/monadsettermid.md) | 138 | `declaration-track:badd7578ae6df71d0cdf6eff0beae7628db9be8c13b8da54df467e3298977218` |
| 25 | `def` | [setTermRingId](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/settermringid.md) | 141 | `declaration-track:a691328241cafb1aa45fd49eca85db8c2cfd59dc80647ac14756a7bc91967db3` |
| 26 | `def` | [mkVarCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/mkvarcore.md) | 149 | `declaration-track:f2013cf6362f3def75b767a6d22eb0b521d3154aced1f6a5d49f72f799bad7fb` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:7c6d8b0d66520d8b53bf99a7c9d22845b85ac4647e0d06496a91bbb2d37438b7` |
| 28 | `def` | [mkVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/RingMPublic.lean/declarations/mkvar.md) | 165 | `declaration-track:b76191c0c4a7b3375a888962fbf79616d61375d5513d990eff6f2e19c5108c03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ea68b5c1ae49d5576a06e2a5dff0dd3ff2f4d52ca9e37173b0de83f7e9b6dc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RingM/Variantc291cb8d50b243a4ff76e9de7ea0d0f1389e9b541bee9fa9e2a9f3f616c41ec9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
