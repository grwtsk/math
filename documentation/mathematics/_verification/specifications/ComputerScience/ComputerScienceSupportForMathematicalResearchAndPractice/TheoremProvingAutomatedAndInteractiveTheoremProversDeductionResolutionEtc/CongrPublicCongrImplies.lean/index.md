# Verification target: Congr Public Congr Implies

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5fa1888f30facbffc81cc82d5a4ac111abafc83",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantcc30d2e858d0c87e023cb09baca434e69c06c31fa65edd56b09e2c2c6cef098a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5fa1888f30facbffc81cc82d5a4ac111abafc83`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantcc30d2e858d0c87e023cb09baca434e69c06c31fa65edd56b09e2c2c6cef098a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantcc30d2e858d0c87e023cb09baca434e69c06c31fa65edd56b09e2c2c6cef098a.lean.json)

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
| 1 | `def` | [evalSkip](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalskip.md) | 18 | `declaration-track:536e2e53f4fae21f208ebca834a44f8c781f15241cb61a9be0338c8f81f0151f` |
| 2 | `def` | [congrImplies](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/congrimplies.md) | 20 | `declaration-track:e95d97e5033a167c28e31c98627160e1b46b7a5d4c6907246873d877271f40ad` |
| 3 | `def` | [isImplies](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/isimplies.md) | 26 | `declaration-track:eec8dd988ed05b19632a41db9790aaebf74a11d8693683f5a8cd110a526f0461` |
| 4 | `def` | [mkCongrThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/mkcongrthm.md) | 32 | `declaration-track:1f0a9d548f7d1970a1a5ec375f26a976df2175b088d202e033acf0c7d42afc64` |
| 5 | `def` | [resolveRhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/resolverhs.md) | 81 | `declaration-track:c00fde2f996c877b7eb0c69c1c2dd2da481f6c935c78a8e2d35b7fdbe79eccfb` |
| 6 | `def` | [resolveRhsFromProof](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/resolverhsfromproof.md) | 85 | `declaration-track:6412c33c7780f5e5c02f761530a43cc0dd8cf0164a4f0378bd121aed76a5dd98` |
| 7 | `def` | [congr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/congr.md) | 89 | `declaration-track:f544cc28c72af14fc2afde36a43a94b1614957b71014c1a0473195a7bfc86edd` |
| 8 | `def` | [evalCongr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalcongr.md) | 105 | `declaration-track:40896cadd0f6f8afee29c65c2c39b8cf2921c82fe9d90188918dad717597b8b9` |
| 9 | `def` | [congrFunN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/congrfunn.md) | 109 | `declaration-track:3ffd8bb7fbee5f68ade8fef0ccd103972666f2b61952668887ae740d079cacfc` |
| 10 | `def` | [mkCongrArgZeroThm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/mkcongrargzerothm.md) | 120 | `declaration-track:027bd34ac86489c585af36952f5f51bedd082f00461ed3050d9deaec34c2f1cf` |
| 11 | `def` | [congrArgForall](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/congrargforall.md) | 157 | `declaration-track:5d12ff21adefc232fbc1ae93790cfe85210eeb956bc208e41b2ca040dcf63c29` |
| 12 | `def` | [congrArgN](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/congrargn.md) | 186 | `declaration-track:b0615354faeef2b8b8716688e383412f1cb8f89cbfa820fa1b95d94cd21e0031` |
| 13 | `def` | [evalArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalarg.md) | 228 | `declaration-track:638065bfe4576a18cd38e83ddc8566b7455e18484670b2f3b8cb08c339f67a82` |
| 14 | `def` | [elabArg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/elabarg.md) | 234 | `declaration-track:dcf3ce21439b09d06c7a18ead7c1e6b24dd81e169b4ca7cef0076cf98701066a` |
| 15 | `def` | [evalLhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evallhs.md) | 241 | `declaration-track:0009ad3d463d12d828d448a413b4013475ae9b95452866c790e5785fc9bb8927` |
| 16 | `def` | [evalRhs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalrhs.md) | 244 | `declaration-track:aa7759581f253e54d7ecedb7bb8975c05452512499a17eac1b116aae3f0eae7b` |
| 17 | `def` | [evalFun](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalfun.md) | 247 | `declaration-track:933e5d73cf9294413142bbab6fb6c953f7527ea4d1f08ec483da9269b424c034` |
| 18 | `def` | [extLetBodyCongr?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/extletbodycongr.md) | 259 | `declaration-track:59b9192d7f107a93be661e76715d6531fcc2cafdc46518ac14941f2dce629d06` |
| 19 | `def` | [extCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/extcore.md) | 287 | `declaration-track:9036cfa937f675275ae16be0c7f419ba81d4e3711d8b20cb0093b5382dc977ca` |
| 20 | `def` | [ext](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/ext.md) | 316 | `declaration-track:73d6888225e7ebf670df09a8a960360ce008dc661e492d53cc66ff46bd948fcd` |
| 21 | `def` | [evalExt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalext.md) | 319 | `declaration-track:3dce6779ae73276a6980a21d198881e7a19110f21c4a22addf61f9eda4e5fd8e` |
| 22 | `def` | [evalEnter](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CongrPublicCongrImplies.lean/declarations/evalenter.md) | 332 | `declaration-track:25a3d76ee2231f5e82c5eb7968e77d589170ed8cec23eceb99f2893596e0e0d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e9e17f036abaf55eada9001f7d692190e5f446a60b590c1991e05c2587157d21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantcc30d2e858d0c87e023cb09baca434e69c06c31fa65edd56b09e2c2c6cef098a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantcc30d2e858d0c87e023cb09baca434e69c06c31fa65edd56b09e2c2c6cef098a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
