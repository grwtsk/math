# Verification target: Attempt01 Source Namespaced Actual Centered Half Zeta Main

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346dd4667ca102db0e97f551ac007d919898c4db",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346dd4667ca102db0e97f551ac007d919898c4db`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualHalfHarmonicZeta` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualVaughanMeanBound` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCenteredHalfZetaMain](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/actualcenteredhalfzetamain.md) | 31 | `declaration-track:a61a91007f05bd4584fa5fbeeb6937590017f12c80a39d55839a6894aa5775e8` |
| 2 | `def` | [halfHarmonicQuotientDefect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/halfharmonicquotientdefect.md) | 36 | `declaration-track:38cefff43c40d0696c0b0c4e126614c85a95fdfb098b5355cad7d6bae4d8a29b` |
| 3 | `theorem` | [halfHarmonicQuotientDefect_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/halfharmonicquotientdefect-abs-le.md) | 42 | `result-track:c0f50ce6a896bb616954685ee9093e6300caf78170bc25f9b5598478ff705803` |
| 4 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/closedcenteredhalfinventory-sub-zetamain-eq.md) | 111 | `result-track:7db7aa3662bf0f15fc1c9df6661f828ea8b18e5ebfed46e37e6391d53264e715` |
| 5 | `theorem` | [closedCenteredHalfInventory_sub_zetaMain_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/closedcenteredhalfinventory-sub-zetamain-abs-le.md) | 136 | `result-track:8fcd57bf94ef7643953999d9591bc17b4cad99899d42c2bfc66aa753b1ec6185` |
| 6 | `theorem` | [actualCenteredColumnHalfInventory_sub_zetaMain_abs_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt01SourceNamespacedActualCenteredHalfZetaMain.lean/declarations/actualcenteredcolumnhalfinventory-sub-zetamain-abs-le.md) | 171 | `result-track:3ad8bc51d4d6201c7fb444c01e45683c6141fc35f5d19415c1b7b83978d4cedf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea75783bcfdb7b80c56c2f7bb83ef2940e9c13f6e21b3ce9ce958b4e5a3b3b66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8753e7f94dc4774a574aa9d4e0ce89ad8c63ae1cde397fe558e0427d084e87c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
