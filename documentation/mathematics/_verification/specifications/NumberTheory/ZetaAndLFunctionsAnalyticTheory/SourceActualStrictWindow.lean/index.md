# Verification target: Source Actual Strict Window

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d14ba0f3a121582c429602d6277e23565b1af2f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d14ba0f3a121582c429602d6277e23565b1af2f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_upper_polynomial_gap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/source-upper-polynomial-gap.md) | 18 | `result-track:f78d6ffd26b2c20577936e330a5ba841951097b0647c02c3d6088dec7fd58f31` |
| 2 | `theorem` | [actual_strict_cutoff_square_gap](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-cutoff-square-gap.md) | 31 | `result-track:8e6f3da96c5c4dcf7bb475c132335200005b8cb2833db00bdbddde5f4002ac47` |
| 3 | `theorem` | [actual_strict_quotient_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-quotient-lower.md) | 41 | `result-track:90f683f0d93312adc4276ae60e04a954f810a79f5aa943e6929b9a8f4865e68b` |
| 4 | `theorem` | [actual_first_strict_cell_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-first-strict-cell-mem.md) | 49 | `result-track:ed2dcdc73eebb38b4c439940a41f33aa344efe9c09edee95314c7759906d7eac` |
| 5 | `theorem` | [actual_strict_integer_box_mem](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-integer-box-mem.md) | 56 | `result-track:d1e18a7a1b475ae1d2ba4dc3654480d24727be5bebfbc16fc9efd1134f4e06e7` |
| 6 | `theorem` | [actual_strict_log_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-log-window.md) | 65 | `result-track:3956e0a3d5880d007ea89b245f23587a27fa9a5a1493896023178598c51016ec` |
| 7 | `theorem` | [actual_strict_real_rectangle](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-real-rectangle.md) | 81 | `result-track:c1a20e86b3d1997e81bf8ff8cf8d01ac3a1fba114f4e4fb544f1b27875ca461b` |
| 8 | `theorem` | [actual_strict_rectangle_source_support](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualStrictWindow.lean/declarations/actual-strict-rectangle-source-support.md) | 105 | `result-track:9011c03df7834c53be9a2f5ed7db9a35c94d977b999f0d558b1d2d2c9e740606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0742e61ab83925cb51c3fdfd79a9744d44a5a293bb9052de7d75c0472d4926d4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/316fd9b25a62bbdb5a62SourceActualStrictWindow/Variant19b2fd70885115184edf9e71c4fc18808c09ad8ba82a7f3ea07f96bab34fd45b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
