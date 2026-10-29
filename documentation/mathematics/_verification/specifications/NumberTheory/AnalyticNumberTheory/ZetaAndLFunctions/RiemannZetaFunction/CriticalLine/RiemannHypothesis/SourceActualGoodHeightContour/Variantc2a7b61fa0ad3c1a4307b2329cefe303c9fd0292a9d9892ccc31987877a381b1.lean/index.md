# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualGoodHeightContour.Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bacd5601a20e6f79948af2af8a64e4bf310dd817",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/index.md) · [Full source](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bacd5601a20e6f79948af2af8a64e4bf310dd817`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualPrimeBumpDictionary` — import line 6; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.Contour` — import line 7; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.GoodHeights` — import line 8; external provider; requires a separately pinned dependency.
- `Zeta23.WeilEF.FullLine` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualGoodHeightIndex](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/declarations/actualgoodheightindex--48a240ae61726f1ff4ef3990.md) | 30 | `declaration-track:48a240ae61726f1ff4ef3990cd40214eeef0aee28e51ed54d942ea6511106188` |
| 2 | `theorem` | [actualGoodHeightIndex_bounds](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/declarations/actualgoodheightindex-bounds--34ad5318c07507613d280763.md) | 33 | `result-track:34ad5318c07507613d2807638bd2f0110dc1b90cf66e3194e1666136261b24fa` |
| 3 | `theorem` | [actualInitialPrimeMellin_poles_zero](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/declarations/actualinitialprimemellin-poles-zero--675c229f217a64f454cb6f48.md) | 45 | `result-track:675c229f217a64f454cb6f4837116d02813fa32fa8eebc4be0aef385ce4c278c` |
| 4 | `theorem` | [actualInitialPrimeTwoTail_above_movingHeight_norm_le](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/declarations/actualinitialprimetwotail-above-movingheight-norm-le--a79dc7933d76156e180ec269.md) | 51 | `result-track:a79dc7933d76156e180ec269b40632cb7d2bd999a0069d13722ba32c36795add` |
| 5 | `theorem` | [actual_source_growing_goodheight_residue_ledger](../../../../../../../../../../NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean/declarations/actual-source-growing-goodheight-residue-ledger--1ac90fce18e449583dd5af57.md) | 92 | `result-track:1ac90fce18e449583dd5af57064bde56bea4e9f284e3c4c433abb73f71b027c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=10555beb2fec0dac645fb98ae6f2ff4e338e51643e8cddfcf2d35bd123b316f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualGoodHeightContour/Variantc2a7b61fa0ad3c1a4307b2329cefe303c9fd0292a9d9892ccc31987877a381b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
