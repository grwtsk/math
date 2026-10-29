# Verification target: Attempt08

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c345804e57c85d21e845fc83f6c477ea7e6f924b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c345804e57c85d21e845fc83f6c477ea7e6f924b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiToeplitz` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSymmetry` — import line 2; external provider; requires a separately pinned dependency.
- `Zeta23.FromPNTPlus.ZetaBounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fractionalWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/fractionalweight.md) | 17 | `declaration-track:a226b7e46db948b219d05d4c1134b503b54f1f79e84be53476daad4d9ad86e48` |
| 2 | `theorem` | [fractionalWeight_integrable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/fractionalweight-integrable.md) | 19 | `result-track:b9752dfb25ee78873dc7c8f53a10479f9195cb576be0e7e2a24a03e8ce3ed747` |
| 3 | `theorem` | [fractionalWeight_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/fractionalweight-nonneg.md) | 28 | `result-track:a6844513f82df54235a31612c560cb30f3f8fe84ae039750947536e443e17943` |
| 4 | `theorem` | [real_centered_euler_integral](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/real-centered-euler-integral.md) | 32 | `result-track:dfd83ccca150ebfa316958ed97382fef975238f8d232bef82bde819f20931fab` |
| 5 | `theorem` | [riemannZeta_real_euler](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/riemannzeta-real-euler.md) | 47 | `result-track:df52b40e06bff89fe6480831d0c9929162f8b50d27840b95aa6041303466e4e9` |
| 6 | `theorem` | [riemannZeta_ofReal_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/riemannzeta-ofreal-neg.md) | 78 | `result-track:52a4fd5eb184cfe47fbedf667458144427435a00bf59d2b4aac8792b9a907380` |
| 7 | `theorem` | [nontrivial_zero_im_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/nontrivial-zero-im-ne-zero.md) | 88 | `result-track:2a43abf6f2582bfe4627d0600f655dd191d18f0610d90c02be2a1868d2c9e4ac` |
| 8 | `def` | [realGammaR](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/realgammar.md) | 96 | `declaration-track:3272a69ab544881ef063ecebdcb48a96bc3a9e488e70a6ab672d49e6e2eaf7e7` |
| 9 | `theorem` | [gammaR_ofReal](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/gammar-ofreal.md) | 98 | `result-track:c2f9ad3eb0dd6313f06906feebd59a2559a9b8ae374a6a51864eab54ca9deaa9` |
| 10 | `theorem` | [realGammaR_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/realgammar-pos.md) | 105 | `result-track:a047d31c3d7e38b89f771c7bea856130940aec8e3daaef238ec6e5877202ebfb` |
| 11 | `theorem` | [xi_real_euler](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/xi-real-euler.md) | 108 | `result-track:ac7c967db8305b84b13444926359e3cfb8aae80638cc3be551a86d56a90749b7` |
| 12 | `theorem` | [xi_ofReal_re_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/xi-ofreal-re-pos.md) | 122 | `result-track:4346381601df385c27ee9dd1401de1ccb438092942ce67361c1e82fd8bb63545` |
| 13 | `theorem` | [coefficient_zero_exact](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/coefficient-zero-exact.md) | 133 | `result-track:52545436b2851516b317e7e15ee71908bfd5ccfc97c23a3c6c15b5cabdfde929` |
| 14 | `theorem` | [coefficient_zero_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/coefficient-zero-pos.md) | 144 | `result-track:36f21edbd76fbbac3d2fb2cc12c64cc4f88589aaf348ff91794d70be3e48d6f4` |
| 15 | `theorem` | [coefficient_zero_lower_bound](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt08.lean/declarations/coefficient-zero-lower-bound.md) | 150 | `result-track:0d9d2b686132764855d3ef63dd46a8c338b6c137226f81128d7377f4fac1115e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bdc1d472a87581d45f81fa527e37a8ee288fe5d17428d2cf47dd2f3229ea410 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Attempt08/Variantdaf7146fabd06b03b78d618681b11d8fe798c87d112a5e19eee85be87d71dc92.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
