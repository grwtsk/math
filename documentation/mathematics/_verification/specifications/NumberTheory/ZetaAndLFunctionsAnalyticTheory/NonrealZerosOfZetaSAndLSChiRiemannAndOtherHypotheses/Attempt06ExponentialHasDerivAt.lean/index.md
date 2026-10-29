# Verification target: Attempt06 Exponential Has Deriv At

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d021d1b5206e4dd266b46ebe895e7b2dd7f91c93",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d021d1b5206e4dd266b46ebe895e7b2dd7f91c93`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean.json)

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
| 1 | `theorem` | [exponential_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/exponential-hasderivat.md) | 21 | `result-track:c85922249e5819d32e456bb93ebdb7ad39229c0b36e8e01315c5129c813a3314` |
| 2 | `theorem` | [finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/finite-abel.md) | 26 | `result-track:09c4d1032ee4632034377edcd6449a116dee7afb9d6a91804f8fb85fbce8e505` |
| 3 | `theorem` | [exponential_density_transport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/exponential-density-transport.md) | 103 | `result-track:e44beabddc8451d23aad350ab8b2b927da6ac725c0b4757ed42fdd64a44e60bf` |
| 4 | `theorem` | [actualXiDensityLaplace_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-eq-mellinseven.md) | 123 | `result-track:899f45afd702260de4864b39e99772fa8c447035d2a640998be3677321c6412c` |
| 5 | `theorem` | [actualXiDensityLaplace_integrableOn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-integrableon.md) | 133 | `result-track:ccf1dbeeb16d0beb28e66a32ea85269a637b193e2e4d88e4eff4be6012790545` |
| 6 | `theorem` | [actualXiComplexLaplace_finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-finite-abel.md) | 145 | `result-track:458701728f088d52efaeb21c47bd3046b17d722c311feb25d9ea06a17a39977b` |
| 7 | `theorem` | [actualXiComplexLaplace_boundary_tendsto_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-boundary-tendsto-zero.md) | 179 | `result-track:9010a7e68d6165ccf1c71651640fb8b3f05fa776f1369369bfc757d7f111dc42` |
| 8 | `theorem` | [actualXiComplexLaplace_mul_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-mellinseven.md) | 193 | `result-track:e0611797f43d1aed6afae665158e5006184fb91e66c6f0e129e3c782a61babcb` |
| 9 | `theorem` | [actualXiComplexLaplace_mul_eq_logDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-logderivative.md) | 211 | `result-track:478a378c7c9abf27633795ba4b5b35b10c385501fdc2b78ac5aa2af3cf5ce2be` |
| 10 | `theorem` | [actualXiLogDerivativeCombination_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt06ExponentialHasDerivAt.lean/declarations/actualxilogderivativecombination-norm-le.md) | 224 | `result-track:09c9057cf28f5f119bc1aec2c72f554f7d35332689e4331aa79e0f00b6aebdc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa06f65424b836bb94184991ee1ecd0884d6d16891ef3ebf75c39055e9ecb6ad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
