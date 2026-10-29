# Verification target: Attempt05 Exponential Has Deriv At

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3da8f6b3f7ba4223a2f7449100274ed36e616a55",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3da8f6b3f7ba4223a2f7449100274ed36e616a55`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiMellinSeven` — import line 1; external provider; requires a separately pinned dependency.
- `RootActualXiComplexLaplaceBudget` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exponential_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/exponential-hasderivat.md) | 21 | `result-track:2c5e756454d3563764208d8120ca5a55bff1c8b22013a4d1e52f4da724f05e7b` |
| 2 | `theorem` | [finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/finite-abel.md) | 26 | `result-track:47b94f7952cb91f59d9cca79b5fee8d1036f8aea39cb8e058e4671d492f33ab7` |
| 3 | `theorem` | [exponential_density_transport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/exponential-density-transport.md) | 103 | `result-track:d5ee20431c782c3552304f1492c2ec96495a6653fc88d1373d92e3d80416a598` |
| 4 | `theorem` | [actualXiDensityLaplace_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-eq-mellinseven.md) | 123 | `result-track:1cd457fa06bd9ea39ceeea2266898d23367599abe5c5ec90ef2137d267f74624` |
| 5 | `theorem` | [actualXiDensityLaplace_integrableOn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-integrableon.md) | 133 | `result-track:1724e8f02a7521b7d1adf9e19198944ef60ccb3790e003081be3487fb9c62cef` |
| 6 | `theorem` | [actualXiComplexLaplace_finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-finite-abel.md) | 145 | `result-track:c12b5591a49b070b103811d46e7c1cd8cd67409a418f9caa30510cc5c29b11aa` |
| 7 | `theorem` | [actualXiComplexLaplace_boundary_tendsto_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-boundary-tendsto-zero.md) | 179 | `result-track:ce60a60212f221433f4d931ef84abdf95e0f8d2107a8be17485c67355f634417` |
| 8 | `theorem` | [actualXiComplexLaplace_mul_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-mellinseven.md) | 193 | `result-track:628d916a03e47178ef55e97a78f8e0b7998c6ec3dbb9ef38e89b70a5c3dec624` |
| 9 | `theorem` | [actualXiComplexLaplace_mul_eq_logDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt05ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-logderivative.md) | 211 | `result-track:b916e9eb3d6fd75b2ad7fe5fba6f846c252cda12c96d0d0bb8ddf14ba43945c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87e2180af10dd75c9fff9a92900da0809b7135595d001e6c4f51f9eaf3fb0b7a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt05/Variant9d2ed530422b42d6b1b8f478e26d134bfc8317d761e154c1f11f4dd4d9a00a79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
