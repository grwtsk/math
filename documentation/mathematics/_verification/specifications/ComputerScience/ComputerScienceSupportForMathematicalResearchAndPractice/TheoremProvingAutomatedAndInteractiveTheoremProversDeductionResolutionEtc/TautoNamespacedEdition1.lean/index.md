# Verification target: Tauto Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99c72ed0c781e42371759dd432ee264bbbeaafda",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99c72ed0c781e42371759dd432ee264bbbeaafda`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Logic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Propext` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.CasesM` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Classical` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Core` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SolveByElim` — import line 19; external provider; requires a separately pinned dependency.
- `Qq` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `initialize` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/initialize.md) | 34 | `declaration-track:b7daea05555a8f1ec02e764e52e6e0fd129fb2e56efd5a0402c9039765813d5c` |
| 2 | `def` | [distribNotOnceAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/distribnotonceat.md) | 37 | `declaration-track:863ec7f45adc061e370d98db803d7631d314004cb7719463fec9540481fe445b` |
| 3 | `structure` | [DistribNotState](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/distribnotstate.md) | 90 | `declaration-track:b8bf23c0d6c1d9f701f40188e96f3c3167aed76bace3db8e7c0e05b608001d2d` |
| 4 | `def` | [distribNotAt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/distribnotat.md) | 102 | `declaration-track:1977a2f67960509c329f1fc176e2f35482589c5d240e0fa9d9ae75bd7107797d` |
| 5 | `def` | [distribNotAux](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/distribnotaux.md) | 116 | `declaration-track:c86d77aa3b8bcf82a583b88a902e7201b6fe07c46e58fbd0263759235b38451d` |
| 6 | `def` | [distribNot](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/distribnot.md) | 127 | `declaration-track:bca1ecf03bd4495e31de218b9144337a49ba1242730aa26ab9e93c8bc4a92b7d` |
| 7 | `structure` | [Config](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/config.md) | 135 | `declaration-track:171b4629a6751d888253c533c3a58f5916c47d9e0d9ffca7f90f5986500025e1` |
| 8 | `def` | [coreConstructorMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/coreconstructormatcher.md) | 142 | `declaration-track:ae7e4986a9bbd654205538effc67eb20db2f440c8a113eef533e108c3d514572` |
| 9 | `def` | [casesMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/casesmatcher.md) | 151 | `declaration-track:96d1aa533fb257e7dbb32f9c4e4df56b31f30a77ad290186a8b10f6492449d1c` |
| 10 | `def` | [tautoCore](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/tautocore.md) | 171 | `declaration-track:b9dbee1ef25f74068f050baf3585b38923b64e101f4988ba1b87fd809519bddc` |
| 11 | `def` | [finishingConstructorMatcher](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/finishingconstructormatcher.md) | 192 | `declaration-track:bae7476fcdfb0536902491160fccf0bf70268933a9929eb5cd6f9e75863673b6` |
| 12 | `def` | [tautology](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/tautology.md) | 201 | `declaration-track:f8a86cb25dfb159b4be7cf460d4a40c1296b9b2d6307c8d3141b85482abd38f7` |
| 13 | `syntax` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/syntax.md) | 219 | `declaration-track:5140fdaa3a55eb7ee0845b2c3f730b26225e1ef9a5280f164e7c919a27e315cd` |
| 14 | `elab_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TautoNamespacedEdition1.lean/declarations/elab-rules.md) | 221 | `declaration-track:679b089996cc36ab9dfbeacfcb6a09e7a10ddd36c484b385e88a631df5634dfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=86c00b0c66d40e9ad87c3ab287fca11f8f51ad53af69dfb08b9a6f6df9c18f3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Tauto/Variantf0147e5106f68588f4be7febc1352172f4603a860099b8432760836abbd6c109.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
