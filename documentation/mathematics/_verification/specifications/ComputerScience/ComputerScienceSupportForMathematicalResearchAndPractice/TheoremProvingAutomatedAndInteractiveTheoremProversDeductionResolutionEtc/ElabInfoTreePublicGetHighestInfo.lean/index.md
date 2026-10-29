# Verification target: Elab Info Tree Public Get Highest Info

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d68d26f2dd01c78764825f4377a7b1962f8c1c79",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d68d26f2dd01c78764825f4377a7b1962f8c1c79`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.Linter.Header` — import line 13; external provider; requires a separately pinned dependency.
- `Lean.Elab.Term.TermElabM` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [collectTryThisSuggestions](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/collecttrythissuggestions.md) | 31 | `declaration-track:06777a749be7086ebee1d48c79a6aa04552affd91b837b839b326b6a6e490e31` |
| 2 | `def` | [findSomeM?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/findsomem.md) | 58 | `declaration-track:6b19d74d3ef89883637cfcdcdba1cc98139225c5208af77d8f9afdb1ac570284` |
| 3 | `def` | [findSome?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/findsome.md) | 84 | `declaration-track:e2f29813454ccac2482181d58a9b2212146dac87315e46f30f29921ec9656675` |
| 4 | `def` | [onHighestNode?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/onhighestnode.md) | 96 | `declaration-track:1e98b5d695ec974edd7d34b6eb81551e5a7cc9961a75b9647ebc0172353a2e6a` |
| 5 | `def` | [getHighestInfo?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/gethighestinfo.md) | 108 | `declaration-track:0feae87f48222d7545254ff73cdd50e5e04e7ae2a718918d0f8e87041e9e04c5` |
| 6 | `def` | [getDeclsByBody](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/getdeclsbybody.md) | 120 | `declaration-track:9dde76cd4e399859553b930f5cbaf6d203f63732d361cc709472e30ff0d82660` |
| 7 | `def` | [getDeclBodyInfos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/getdeclbodyinfos.md) | 134 | `declaration-track:a68fec5dfe2ec8a2d666031bbd9be84682ebbbf470472a0037d9792ea9ffaca2` |
| 8 | `def` | [getTheorems](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/gettheorems.md) | 152 | `declaration-track:048d31b6f91cb81f501bd6c743924fd6107b4d2bb08a2aa74313b6d6bf7247d2` |
| 9 | `def` | [getLCtx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ElabInfoTreePublicGetHighestInfo.lean/declarations/getlctx.md) | 163 | `declaration-track:acc8b9de09315f558732786ae1ecb1bdcd2cd1c48bb9bb637e630402f0ea0226` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1668abc6459259c205a045c7b4b2de688e05bead09aca29466dd006793d82fc9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/InfoTree/Varianta09d1cc4ff0e5652c1346b62cc8cecfec1ed61e3d3f51e222b7e60af74916750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
