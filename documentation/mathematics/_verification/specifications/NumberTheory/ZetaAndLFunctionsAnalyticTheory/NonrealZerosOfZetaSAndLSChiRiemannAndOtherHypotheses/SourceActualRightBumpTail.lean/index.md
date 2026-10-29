# Verification target: Source Actual Right Bump Tail

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18238a7e1d0aad3626c8aae790abf5e845ec5635",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18238a7e1d0aad3626c8aae790abf5e845ec5635`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualBumpMellinLineBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualMangoldtCoefficients](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualmangoldtcoefficients.md) | 19 | `declaration-track:239b83a2d9db32fda516e7f717ee9d5a846f83fa4d46d3ec491ed25d87a0a004` |
| 2 | `def` | [actualRightLineMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightlinemass.md) | 22 | `declaration-track:6a607f10fd208de2e46ce7c77104d791fec5e9763ed5128123a11ef7f618c206` |
| 3 | `theorem` | [actualRightLineMass_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightlinemass-summable.md) | 26 | `result-track:f7dbd9e075bdae4a9dfe734b3384eb5a41ec921fd21aff65df1d85d3c96f4043` |
| 4 | `theorem` | [actualRightLineMass_eq_real_series](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightlinemass-eq-real-series.md) | 33 | `result-track:54233f7972af5f1cafbf71ff0ca98a394d6b837d1bc0f81df190d2aa7ed61c1d` |
| 5 | `theorem` | [actualRightLineMass_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightlinemass-nonneg.md) | 43 | `result-track:1778f98d82bf80b5f62b6d5c1c4cfee23a36155b756e952214038a0111bc25f2` |
| 6 | `theorem` | [actual_zeta_logDeriv_on_line_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actual-zeta-logderiv-on-line-norm-le.md) | 47 | `result-track:a9282a1ff8e4e0a71a7bcdcbeed7b28976060aea795b09a02b33e58409b24189` |
| 7 | `def` | [actualRightBumpDensity](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightbumpdensity.md) | 69 | `declaration-track:91e3ed75db9c967252e2a1ffbba9c574866b31fb5b08f0c685d454544b535f42` |
| 8 | `theorem` | [actualRightBumpDensity_eq_logDeriv](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightbumpdensity-eq-logderiv.md) | 74 | `result-track:ae6ae5a78724141e3c03fbe84fe434fb5048cac6c825a57f1605c0a0764d41b7` |
| 9 | `def` | [actualRightBumpTailNumerator](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightbumptailnumerator.md) | 84 | `declaration-track:f04504ce032ecdb13154c80b7ba9de965f9efa5d4147a27be3844232d60fcd5b` |
| 10 | `theorem` | [actualRightBumpDensity_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/SourceActualRightBumpTail.lean/declarations/actualrightbumpdensity-norm-le.md) | 89 | `result-track:11294385a37520c019278ae06fc4cbbe4e085dfdafc3e730bfb34650a6cc6c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea1febf2342943d59e87d701f9fba819627fdb7038509d50fabd33939bf0cf48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant651d139a1e6ef0005707e0373eba14b546988dff08e8ca9b09f1c4dd637ffbce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
