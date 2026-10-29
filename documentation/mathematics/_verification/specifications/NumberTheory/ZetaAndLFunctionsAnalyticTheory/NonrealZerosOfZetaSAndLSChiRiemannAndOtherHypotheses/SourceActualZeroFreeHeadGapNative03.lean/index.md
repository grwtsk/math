# Verification target: Source Actual Zero Free Head Gap Native03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ddcb44850d4033e0128464c582f9346e602aa2b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ddcb44850d4033e0128464c582f9346e602aa2b`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualCriticalZeroHead` — import line 1; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_zero_upper_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actual-zero-upper-gap.md) | 19 | `result-track:ef1d90cd382f01dfebcf6638528173cd470fe2c819df59bd827f6785d86eb610` |
| 2 | `theorem` | [actualCarrier_zero_free_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actualcarrier-zero-free-gap.md) | 33 | `result-track:8a7dbe21aafc0097983d0e98f8032d1f374c9fc09683053ff144371e43c8b5a9` |
| 3 | `theorem` | [actualCarrier_below_height_gap](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actualcarrier-below-height-gap.md) | 50 | `result-track:16facb74b29587cb4fc86160e49a6dc9b34512d82dabfced1d6e80e7214fad10` |
| 4 | `theorem` | [actualZeroFreeMovingExponent_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actualzerofreemovingexponent-eq.md) | 70 | `result-track:089dcdbf673284c5ff18b861b037131aa90fc93cdc9cf2d95c4b0d95de371473` |
| 5 | `theorem` | [actualZeroFreeMovingCorrection_tendsto_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actualzerofreemovingcorrection-tendsto-zero.md) | 80 | `result-track:cd61c0c889f519df96c9d057ac6919e323bf360da084b396ce2973eac3696009` |
| 6 | `theorem` | [actualZeroFreeMovingAllowance_tendsto_atTop](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualZeroFreeHeadGapNative03.lean/declarations/actualzerofreemovingallowance-tendsto-attop.md) | 88 | `result-track:d354528f4ad8d8626085fd0e49e50aee24fa979f4690e1c01a87e91973a82bfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d88f1093da7516ef6741536fba5d19d22b5dfc602122fb3d39c2e0d56f2d10e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceActualZeroFreeHeadGapNative03/Variant178573fb49a635ac8218645c853b0d16ba1ea6cc9fb18049fee65698c099af1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
