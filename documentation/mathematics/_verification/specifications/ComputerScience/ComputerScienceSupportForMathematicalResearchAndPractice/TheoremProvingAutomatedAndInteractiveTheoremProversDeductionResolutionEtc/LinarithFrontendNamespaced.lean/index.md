# Verification target: Linarith Frontend Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0c2f17b058b2c932d97154439f265bdb31c646a",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0c2f17b058b2c932d97154439f265bdb31c646a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.HashMap` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Verification` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Preprocessing` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getContrLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/getcontrlemma.md) | 145 | `declaration-track:5b3061ff0122fcdc67cce1ea252eba24ad464cde6f47053cae1c6b6ca61b9738` |
| 2 | `def` | [applyContrLemma](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/applycontrlemma.md) | 170 | `declaration-track:1831691543e92cc2a688de6e9cacf2a397cf171229792275a16a6c0f7d52809c` |
| 3 | `abbrev` | [ExprMultiMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/exprmultimap.md) | 180 | `declaration-track:db34fa140f796294855e26d6420870796ab27fa9be95ea81b9cc51b46a8a8d4a` |
| 4 | `def` | [ExprMultiMap.find](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/exprmultimap-find.md) | 184 | `declaration-track:119c7ebf6655555571413b21d7e814d7588a956b12fdd9fc9d9f0a6130f3f097` |
| 5 | `def` | [ExprMultiMap.insert](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/exprmultimap-insert.md) | 193 | `declaration-track:709028a6b0b1d8c46569aa9489fe2b7de1bcb5e4aa7f8c4f6c3b746263b9151f` |
| 6 | `def` | [partitionByType](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/partitionbytype.md) | 204 | `declaration-track:7c9472fcdbf8f1996acb13a0e2c352c04dd6782936af2a07d079f86aef8b123e` |
| 7 | `def` | [findLinarithContradiction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/findlinarithcontradiction.md) | 212 | `declaration-track:b5620f83f9b4dfacd4d5b4dec4ac0ab32fa0a7bdfa6e52e2bf8c42622b02f2d1` |
| 8 | `def` | [runLinarith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/runlinarith.md) | 230 | `declaration-track:412d64ace1e824da685d349c277278cc485756d854bb1af63f7d06e858bc9dc1` |
| 9 | `def` | [linarith](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/linarith.md) | 273 | `declaration-track:f3fa30c5c8a576a50494d53aa09c94bfcde0644caa2d91e82da17fa3ca9b3b82` |
| 10 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/syntax.md) | 319 | `declaration-track:6cc1d3020389af1ee587283173aa6fad5cfef81b71233accd5a6317e488fc559` |
| 11 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/syntax-source-edition-3.md) | 373 | `declaration-track:faf947dc7b177d590e263edd1c00244591ee244c96c9a66b5bf7fbe81561a716` |
| 12 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/macro-source-edition-2.md) | 375 | `declaration-track:dde517ccdda4ca6b5a3b4fa9c655b0e7f734cba313c5006b22197b07c3a4236e` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/syntax-source-edition-2.md) | 390 | `declaration-track:c93afac8a82817304ddd7b6d53aafc7f802e078afb53ffa9dd1dc2425f88a57e` |
| 14 | `macro` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/macro.md) | 391 | `declaration-track:1995a20ac259aff10e8e27b8b7140c42ff61fb5bd422461f9534757b9b5ded05` |
| 15 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/elab-rules.md) | 399 | `declaration-track:451af603e885601a69c424ebeba4cc3b7d3ace733643c25968b53291d86c2ec8` |
| 16 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/LinarithFrontendNamespaced.lean/declarations/elab-rules-source-edition-2.md) | 418 | `declaration-track:c71f50029348a9835785cca5a1913573b630b0b5ca30978b1988c7885c148daf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9e6336194c0aa02e85d62f64417a1efb41a8a7c0d04007e69ebc6c84e0f96f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Frontend/Variante84ccd148b7f5cd85a2578305b554ac548317193bd7f61823ab53c62206cf136.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
