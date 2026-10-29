# Verification target: Attempt04 Exponential Has Deriv At

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c41d664fa7df21a8b44edc6857855fa63bb0bd4a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c41d664fa7df21a8b44edc6857855fa63bb0bd4a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean.json)

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
| 1 | `theorem` | [exponential_hasDerivAt](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/exponential-hasderivat.md) | 21 | `result-track:b01f802e71bea75c230f889e4c92da6648929e6ae4e9d38a34cbbf7d3631b790` |
| 2 | `theorem` | [finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/finite-abel.md) | 26 | `result-track:85bbaf248d007e3b101da7bd64cc959f185c39ae42b12887f914b3f09c5d2076` |
| 3 | `theorem` | [exponential_density_transport](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/exponential-density-transport.md) | 103 | `result-track:f74f9cf4804a3e41c9832aac9cfe5448fdbae6c43cdf1fcb06857ff847e63b70` |
| 4 | `theorem` | [actualXiDensityLaplace_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-eq-mellinseven.md) | 123 | `result-track:33c9a21a751fe60fefb3c7edf1c3bb29c5f083528aebb3a352c4c9c81827a6df` |
| 5 | `theorem` | [actualXiDensityLaplace_integrableOn](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxidensitylaplace-integrableon.md) | 133 | `result-track:ca3fa88f2eef5ff5eea3ded128fc05f359f50a59be1f34e1b636a794c78e2a5e` |
| 6 | `theorem` | [actualXiComplexLaplace_finite_abel](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-finite-abel.md) | 144 | `result-track:90b240e202a9bf18e4af9a07c6117c47fcf0f5ab71745041ef4e6f9dddd680d3` |
| 7 | `theorem` | [actualXiComplexLaplace_boundary_tendsto_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-boundary-tendsto-zero.md) | 178 | `result-track:f20a41cb795b86792b7dd4af278c269627215545a0e620d0b67b947ce8b76851` |
| 8 | `theorem` | [actualXiComplexLaplace_mul_eq_MellinSeven](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-mellinseven.md) | 192 | `result-track:a6d788739d7f7cc5c2fa0cf52a17f30e202c3b1876f376316f8d03a8dbd52ca8` |
| 9 | `theorem` | [actualXiComplexLaplace_mul_eq_logDerivative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/Attempt04ExponentialHasDerivAt.lean/declarations/actualxicomplexlaplace-mul-eq-logderivative.md) | 210 | `result-track:3138027898ec0ca54d751e7e6d195a9b9e0631422e146c1a87d2ac4541cdfc19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d32653ba56115ffde817dda10202a76be3a36d2c51c620c705df8f2f278ba8e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Attempt04/Variant79a390f91dd9da63e72ca59dc08ce80814a3778fb70e15e4c5ed174a2c0e8fb7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
