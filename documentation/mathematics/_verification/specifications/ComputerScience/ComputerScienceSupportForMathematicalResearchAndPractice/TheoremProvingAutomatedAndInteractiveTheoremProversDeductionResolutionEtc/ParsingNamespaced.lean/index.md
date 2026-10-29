# Verification target: Parsing Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efccfea4bde182336a840dee7731d1a7f61b67af",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efccfea4bde182336a840dee7731d1a7f61b67af`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.RBMap.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith.Datatypes` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [List.findDefeq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/list-finddefeq.md) | 52 | `declaration-track:2a15610150ec87552710de69d9b058c42556caf6fc6c6dc86a63966737d2f4fb` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/instance.md) | 64 | `declaration-track:4ab3f413fbc451993b9819d97f67c3fdfbfb92311a0ec8b45f90cd00949011fe` |
| 3 | `abbrev` | [Map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/map.md) | 70 | `declaration-track:9d50b8cc954a1274215718d6c22519dfb72a2dc63c5f6b35628bea027508bdd0` |
| 4 | `def` | [Monom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/monom.md) | 75 | `declaration-track:4f21ef7c1e1ed5908815474418de61699c1f81904a8cdc1d125ee7637ca3c78e` |
| 5 | `def` | [Monom.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/monom-one.md) | 78 | `declaration-track:7689f94993f166629a72c5bea66db72da7257c293db4ff734a1f1d4e39d12de1` |
| 6 | `def` | [Monom.lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/monom-lt.md) | 81 | `declaration-track:661a1575f1bf80d95f312dbd834041b25cea2603954e4091989f73d153be77e4` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/instance-source-edition-2.md) | 86 | `declaration-track:ba7609fb085d602efcdac08c58ec56ee7fcf16ba750ade4b471636b790f394e6` |
| 8 | `def` | [Sum](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sum.md) | 90 | `declaration-track:9111ecce07fa40c84e4a5398b0e1897e9fc1ca3e3e5c70fc69607561e8941bda` |
| 9 | `def` | [Sum.one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sum-one.md) | 93 | `declaration-track:1899efb7ff5ae3d334ae01749050b80d267d48b08098526fe681168f435a69ca` |
| 10 | `def` | [Sum.scaleByMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sum-scalebymonom.md) | 96 | `declaration-track:29b606912f34024a0c6075cc0ae5c359645855d1d2bf7e42d238be626d93fc1b` |
| 11 | `def` | [Sum.mul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sum-mul.md) | 100 | `declaration-track:ca0efa0321b4ceca225615695003a8c935e2fbdf3e1dbd48e5725259b466f503` |
| 12 | `def` | [Sum.pow](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sum-pow.md) | 105 | `declaration-track:77f779d83313244a1852cfeb2cf638f3460b4b05d565ed5e7d7903ad684da18c` |
| 13 | `def` | [SumOfMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/sumofmonom.md) | 110 | `declaration-track:7523fe8b1b1e3f9384f71498d4a3997fb7789407c7c9e6662296a1e93e63ecee` |
| 14 | `def` | [one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/one.md) | 114 | `declaration-track:a395ba116570840c0982c1ff7915c4a36974f80b58f35f8e39afe40c4499a1ae` |
| 15 | `def` | [scalar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/scalar.md) | 117 | `declaration-track:37fc6ef458fa154424c71ba456ff72bd0e4e3f6c68a87ea772cb697e3d86e45a` |
| 16 | `def` | [var](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/var.md) | 121 | `declaration-track:303310f3163ac9d197c1a08cadbda2eb5c59f3b6f9a02879c017a073411a371f` |
| 17 | `abbrev` | [ExprMap](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/exprmap.md) | 135 | `declaration-track:ba91e0fe0e7d0ec8c417f46d0b893a89191e9554e3f66dcb2c35c9d63a8fe425` |
| 18 | `def` | [linearFormOfAtom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/linearformofatom.md) | 142 | `declaration-track:8c79609b83ca56e2092cf72bbda114e60b04f4d62ff6be0498ccdcf0b7e9099c` |
| 19 | `def` | [linearFormOfExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/linearformofexpr.md) | 161 | `declaration-track:a5a79a3337a3cd09013bde6f8c1001eee0406e6306a808b92a9819c004c7848c` |
| 20 | `def` | [elimMonom](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/elimmonom.md) | 199 | `declaration-track:3e24e4ca940609d3bb2b4baca85402f77a5476e2aeb73b29237614bf953d0980` |
| 21 | `def` | [toComp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/tocomp.md) | 215 | `declaration-track:4a22bb14db54701eb32444d30d2f619bc9e2b261cd15a62be906b720ad6597fa` |
| 22 | `def` | [toCompFold](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/tocompfold.md) | 227 | `declaration-track:b683bea999125cd194213a9971bb25d0f8edfa8dd76c7f9d5d9e638aba86dfc3` |
| 23 | `def` | [linearFormsAndMaxVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ParsingNamespaced.lean/declarations/linearformsandmaxvar.md) | 242 | `declaration-track:2b92ae9ed7477297cd2c120c1c7a8fd767e24510983e31f02835ca10d9602fa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ff3a649ff513ddcad6bfb0cece911d9d082b7818e4fc3016065c8ff7a661f96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Parsing/Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
