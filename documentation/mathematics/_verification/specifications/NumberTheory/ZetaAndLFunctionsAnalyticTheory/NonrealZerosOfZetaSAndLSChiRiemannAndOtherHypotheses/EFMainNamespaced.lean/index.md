# Verification target: EFMain Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c57fe5609c1aaa5a3bc3b3ed696432c9c6ecc7f2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Hardy.EFJTermW` — import line 24; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.EFWeights` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.GramBridge` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.PrimeTermJ` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.FamilyFacts` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.XiEFAssembly` — import line 29; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LineFactsW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/linefactsw.md) | 48 | `declaration-track:72a146eee9ce55dd9026efd640a938ec74879690ac6f1acedc6fca815cce02c6` |
| 2 | `def` | [ContourFactsW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/contourfactsw.md) | 54 | `declaration-track:b2ee212d87bc216f8c58730a288a815597af76226ad06d4c6cdb549af9609086` |
| 3 | `def` | [CoeffFactsC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/coefffactsc.md) | 62 | `declaration-track:ae4f9085185be44d1f9ceb02748620c19a01db42928c8750ece6c1b32308a07c` |
| 4 | `lemma` | [hardyW_analyticAt_leftStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/hardyw-analyticat-leftstrip.md) | 72 | `result-track:00127d56ec856494ed9264aa852415d6f288c1b312abe0feee3f74ce577a09a2` |
| 5 | `theorem` | [hardyW_eq_neg_chiFE_mul_goodStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/hardyw-eq-neg-chife-mul-goodstrip.md) | 111 | `result-track:c7da3d596d7d322c4aabd0b7f94cc2d5fde453997c3dd6444ba843a10b7a9229` |
| 6 | `theorem` | [hardyW_ne_zero_reflect](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/hardyw-ne-zero-reflect.md) | 149 | `result-track:f21c16c6fca96cd88707281b8a594ffc9e9151448fb24bca3defdb7166ef36d1` |
| 7 | `theorem` | [Hfn_eq_paperFT'](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/hfn-eq-paperft.md) | 160 | `result-track:2c1baf345fb618af0db569e3ef40158ca5e23c1388b2dcaf74dd0a47c1dd1040` |
| 8 | `theorem` | [arg_re_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/arg-re-im.md) | 162 | `result-track:abb13a4464f7654394a5e22d6d7a2de34c9a5fd9167e640fa6e28460dab510a5` |
| 9 | `theorem` | [line_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/line-arg.md) | 166 | `result-track:ca4c6d6cbc2632855d203cf9bfbd2f1fc22acd61bbda62f07c814bd1be5e8b89` |
| 10 | `theorem` | [mirror_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/mirror-arg.md) | 169 | `result-track:62cdbecfbba3a59fcb4ded11481182ae8d596ba72124fa5e8f561155803cff21` |
| 11 | `theorem` | [cauchyK_neg_arg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/cauchyk-neg-arg.md) | 172 | `result-track:62ea7798c6d0688026ecb233fdbb7e2a3e0eeca5a8f7db62f7e633b9b67b9851` |
| 12 | `theorem` | [wEF_of](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/EFMainNamespaced.lean/declarations/wef-of.md) | 177 | `result-track:a5b1eeb9f1190e7a67cd46b95d39e3d7a21932442c75df57fc58a2e4767327e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fcbb20455d021533c6bfbfb55f9d738224bd8ecca76de777e10c3b1be1fb55c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFMain/Variantea28e184fdb0f508633bc18b29ceca9f99d627a9d2e5fea68291c818043e06b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
