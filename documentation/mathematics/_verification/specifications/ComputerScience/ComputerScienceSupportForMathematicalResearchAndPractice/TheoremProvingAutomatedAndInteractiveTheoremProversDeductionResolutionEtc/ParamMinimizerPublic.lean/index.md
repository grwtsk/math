# Verification target: Param Minimizer Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b22aff0ada278bec30e634a13128237a8bb1298b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b22aff0ada278bec30e634a13128237a8bb1298b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean.json)

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
| 1 | `inductive` | [Status](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/status.md) | 16 | `declaration-track:1ea537ceb08df633b22b43957a04cce997c039e9ab52f459cc4987d9b1397ca5` |
| 2 | `structure` | [Result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/result.md) | 28 | `declaration-track:cdcc270d63b01abebaf7378e21a0e46ffe676b7e569086b363756b44db05f386` |
| 3 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/context.md) | 36 | `declaration-track:b0d3e632016099c08430cb827f970de3da3eb8d2ee4b48b3385944fed9f7ab29` |
| 4 | `structure` | [State](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/state.md) | 50 | `declaration-track:01f577894e866db950f598f95a2aad4db7f6877cbb41e58a167fb3be01087bd0` |
| 5 | `abbrev` | [M](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/m.md) | 60 | `declaration-track:91e2871416cf1e7afc3ee64975f3632242733d718de73e07935fdd4eaa6e0e1c` |
| 6 | `def` | [markFound](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/markfound.md) | 66 | `declaration-track:38b710c88f333241ca7de4390915e2b5dcb9cd07d1a11b7c0d03f978154021c9` |
| 7 | `def` | [incNumCalls](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/incnumcalls.md) | 69 | `declaration-track:781c5f37460befb23ea6be9fd99b9249cf90715a341f3714e6127095ccfd38ff` |
| 8 | `def` | [add](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/add.md) | 76 | `declaration-track:412436c53a37533852229d410740e07755df2f5ad55c0b9c89ad123a31a64af7` |
| 9 | `def` | [erase](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/erase.md) | 86 | `declaration-track:5b6185c05fde1b5122993a7d963e536d46cf6a07fbb21ed6bde77d7a228a8926` |
| 10 | `def` | [restore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/restore.md) | 95 | `declaration-track:df6478a4e7bbdae16f9e4c1ba8afc7af217598a1d2e4102698fa43644cf7dd88` |
| 11 | `def` | [tryCur](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/trycur.md) | 100 | `declaration-track:88d15fb2af4c78f0dc844c5c516a1a0203afb78a7c7c607fead0b939df794089` |
| 12 | `def` | [init](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/init.md) | 127 | `declaration-track:e68170a3cd81998d4fb3ac7328599e95ec9cf0e71d6f63fe90c2196de2241b97` |
| 13 | `def` | [prune](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/prune.md) | 152 | `declaration-track:ef535815df8ee0c1a538f62dd3be8b30787ac90d8df6688436f4455599d3f2c9` |
| 14 | `def` | [main](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/main.md) | 163 | `declaration-track:a5dd0aa9045e9eda26728c6442e06923b88cae92060b75d6398efadaeb439e39` |
| 15 | `def` | [search](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParamMinimizerPublic.lean/declarations/search.md) | 187 | `declaration-track:d7f886a89e7f0dbb33c3f6deed23c4cf1726d5a7187c15e30da6e93d5d240aec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91ed156785eae5184467cebc5117deba45209882fb4b1d1443d7588894c54b44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ParamMinimizer/Variant51ccae6fd84db21bc9e7eb294d237e3ea2250c84ca39b54e15b717f1f2a38b2f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
