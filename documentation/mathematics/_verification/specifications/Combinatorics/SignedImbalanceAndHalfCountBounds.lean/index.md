# Verification target: Signed Imbalance And Half Count Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3d0333ed878a8a25881b16397a1caae994184d28",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Discrepancy/CombinatorialDiscrepancy/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/SignedImbalanceAndHalfCountBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SignedImbalanceAndHalfCountBounds.lean/index.md) · [Full source](../../../../Combinatorics/SignedImbalanceAndHalfCountBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3d0333ed878a8a25881b16397a1caae994184d28`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Discrepancy/CombinatorialDiscrepancy/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/SignedImbalanceAndHalfCountBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Discrepancy/CombinatorialDiscrepancy/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/SignedImbalanceAndHalfCountBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Bitspace.Checkerboard` — import line 19; external provider; requires a separately pinned dependency.
- [Odd Even Cardinality And Matrix Counts](../../../../Combinatorics/OddEvenCardinalityAndMatrixCounts.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [imbalance](../../../../Combinatorics/SignedImbalanceAndHalfCountBounds.lean/declarations/imbalance.md) | 43 | `declaration-track:d91cb10b5aa8a95d3cc4be206754a1d17f07d34bfab9c5cadb02bcaf40c861f2` |
| 2 | `theorem` | [checkerboard_count_imbalance_abs_le_one](../../../../Combinatorics/SignedImbalanceAndHalfCountBounds.lean/declarations/checkerboard-count-imbalance-abs-le-one.md) | 46 | `result-track:78f49a909ad8975c745f1908bb099c5800632e1b6cd15da180e5b6aa48a5d521` |
| 3 | `theorem` | [checkerboard_average_half_bound](../../../../Combinatorics/SignedImbalanceAndHalfCountBounds.lean/declarations/checkerboard-average-half-bound.md) | 68 | `result-track:2788edc75e10753e2d6dbcafaf8f0400ec5a5953c219c66e0b4e4410b119441b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a6dccc2c9145afb2e0578ba4581f96094ea21ab60d71f0854b5d1a7c0c7eca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Discrepancy/CombinatorialDiscrepancy/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/SignedImbalanceAndHalfCountBounds.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Discrepancy/CombinatorialDiscrepancy/FiniteBinaryCarrierMathematics/Variante70264a1b259cd1a/SignedImbalanceAndHalfCountBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
