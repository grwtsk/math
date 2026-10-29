# Verification target: Core Types Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1645ea9e54b6c0c6bd1682e1d13db4feaa0d601c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf494c1a8f36fd028282270372884529c02503a1bbd8717a8f84a63810c43b941.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1645ea9e54b6c0c6bd1682e1d13db4feaa0d601c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf494c1a8f36fd028282270372884529c02503a1bbd8717a8f84a63810c43b941.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf494c1a8f36fd028282270372884529c02503a1bbd8717a8f84a63810c43b941.lean.json)

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
| 1 | `structure` | [IType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/itype.md) | 26 | `declaration-track:518dc493e47ae6fecb22f8bcec6926c1e18643816724fa53cec724bab9abab7d` |
| 2 | `structure` | [IExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/iexpr.md) | 37 | `declaration-track:edae9bafa39a0bfa0f93af17f249ae4159fd69b10dfb69ad60b04666f55638a3` |
| 3 | `structure` | [IVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/ivar.md) | 48 | `declaration-track:a48a81b9ac6d25cd163c715b10437fda053895c0b178a3bb04f29a11f9ade41a` |
| 4 | `def` | [IVar.type](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/ivar-type.md) | 60 | `declaration-track:a880dc8ea917e3c18a7b4ec1bec794fa1b935d26aa8a92cb39305dcc0d0658b8` |
| 5 | `def` | [IVar.expr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/ivar-expr.md) | 63 | `declaration-track:34d08f9fee3223cfb9a2d0ad22b2729cf76d8b781669666bedb6fd6f58a96dc5` |
| 6 | `structure` | [ExprInclusion](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/exprinclusion.md) | 67 | `declaration-track:5777b99e69e50fabf8193a953c3b9eaef4480f4a23e7a64355200757ae0b61cc` |
| 7 | `structure` | [ExprInclusionBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/exprinclusionbody.md) | 78 | `declaration-track:7c30458a9a0b79e1289c476259b1697480e9a23318bc9a096fc39651c825e59b` |
| 8 | `def` | [IVar.toExprInclusionBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/ivar-toexprinclusionbody.md) | 86 | `declaration-track:3054b7dd97398cdd394f937785841094d27f2d0f3d8b122ba448a73818156a96` |
| 9 | `structure` | [InclusionM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/inclusionm-context.md) | 91 | `declaration-track:77f4fecbdf50170ffbfe2f22424247687193f1e0ffb1ffde9693892e561e0abf` |
| 10 | `structure` | [InclusionM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/inclusionm-state.md) | 104 | `declaration-track:b74119a20e10e4d5770e47602d5c51481751aa6d09e1b35c63dacf2820132716` |
| 11 | `abbrev` | [InclusionM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/inclusionm.md) | 111 | `declaration-track:15190583176c21ad5d74f56c3b82a068a6896b4091f1a490eaf8a82a5b04f091` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:882024d5f081cfbb3849d74861e7c93a5fdc1f211bd9277044dca14bb6a869d1` |
| 13 | `def` | [InclusionM.runWith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/inclusionm-runwith.md) | 120 | `declaration-track:edd7a06089c8b64e2a6fcf181bc7a4532d3fb8fdd8f69315928e0421b8203067` |
| 14 | `def` | [InclusionM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/inclusionm-run.md) | 125 | `declaration-track:4fb2090b4fa57d778950b2b657c698764fa20e6ccfad10cb9ba87679d52013fd` |
| 15 | `structure` | [HypothesisM.Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/hypothesism-context.md) | 136 | `declaration-track:cbbc44c0ab9672df77bc99b17c60af927be1bdb9e52ac3eb2687e42d557e59cb` |
| 16 | `structure` | [HypothesisM.State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/hypothesism-state.md) | 143 | `declaration-track:d079c71d7d9c0985f05165382566485909f1b439c73c3ca17f2a218a6c5383c6` |
| 17 | `abbrev` | [HypothesisM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/hypothesism.md) | 148 | `declaration-track:d1463fcb9a6a590d66d9abf737c709baedc9fdb83329f37a990b1d48be659148` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/instance.md) | 150 | `declaration-track:867fa86ffb0f67234580df186eca6cfd2d7d7f0aca9574d85bad0567540958de` |
| 19 | `def` | [HypothesisM.run](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/CoreTypesPublic.lean/declarations/hypothesism-run.md) | 158 | `declaration-track:72ed27247a126c6cb2116eee7f741684f2e031d6439509f48648c6abe33f5263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48a241aabcb1180b6004b69273b24280b55ca34c4d40d060aae7af4e830c4220 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf494c1a8f36fd028282270372884529c02503a1bbd8717a8f84a63810c43b941.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variantf494c1a8f36fd028282270372884529c02503a1bbd8717a8f84a63810c43b941.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
