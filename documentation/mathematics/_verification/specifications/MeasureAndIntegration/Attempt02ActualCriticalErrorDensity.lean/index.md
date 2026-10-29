# Verification target: Attempt02 Actual Critical Error Density

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a7f70034730593ae8dab131a9fe9915850a56c3",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantff4d075367bc31c3ee69c2736deeb25b8da10234ebfed7691df33b6642ef0d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a7f70034730593ae8dab131a9fe9915850a56c3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantff4d075367bc31c3ee69c2736deeb25b8da10234ebfed7691df33b6642ef0d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantff4d075367bc31c3ee69c2736deeb25b8da10234ebfed7691df33b6642ef0d42.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualMertensGammaCalibration` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualXiErrorCriticalCovariance` — import line 2; external provider; requires a separately pinned dependency.
- `SourceFiveCancelledFactorialBudget` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualCriticalErrorDensity](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrordensity.md) | 24 | `declaration-track:623ca5bc706b27accbdf829a295c255b5f5e497fa3f9fd9f976aa1db8e5b8add` |
| 2 | `def` | [actualCriticalErrorCovariance](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance.md) | 30 | `declaration-track:a658fa2b74cb75f450b4ab1eb87c8be5f7cfa9d2d30ad61bbcb97c00df5c8d0f` |
| 3 | `def` | [actualEarlyCriticalErrorCenter](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualearlycriticalerrorcenter.md) | 34 | `declaration-track:1d3ea1c55cfb2f1abe622891b8ee3a748634c42bd8aee939367aa0ad6f39414a` |
| 4 | `theorem` | [B_nonneg](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/b-nonneg.md) | 38 | `result-track:6ab53c4ce9cf3d0ab59ffb8f3ac136851c17a82f09ef246c0d07a2dd7a9db86c` |
| 5 | `theorem` | [error_integrable](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/error-integrable.md) | 41 | `result-track:fb1d7d28c43e41c5c5c357e77c24c5fbd20be90773a4b7475ccce1715094a7da` |
| 6 | `theorem` | [actualCriticalErrorDensity_intervalIntegrable](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrordensity-intervalintegrable.md) | 49 | `result-track:4a3e8ae6c27390d40a4455034f6ee0b151997ce6e37b634362a3a7e49fb40e20` |
| 7 | `theorem` | [actualCriticalErrorCovariance_split](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance-split.md) | 64 | `result-track:ccae0904cc246a16504b6d2cd5c3554f6a097241d8b506ef78eaaf4a487ff66e` |
| 8 | `theorem` | [exponential_mass](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/exponential-mass.md) | 74 | `result-track:b4148ff22253f8218bf9209c2601c79029887a62e0c5851446aea11b7bcf5a78` |
| 9 | `theorem` | [early_kernel_error](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/early-kernel-error.md) | 85 | `result-track:8fcbefd056f240b33cc2c366cca7063bc91269c5cd24c5c9e48074932c1182ec` |
| 10 | `theorem` | [actualCriticalErrorCovariance_early_error_abs_le](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance-early-error-abs-le.md) | 117 | `result-track:f4e2ab09b5c2738a85946c1e5d676e4af60759e6257693184a417155943789dd` |
| 11 | `theorem` | [critical_kernel_abs_le](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/critical-kernel-abs-le.md) | 168 | `result-track:e088b3e9f718d219387d558c8e8de73cc33c442643eb30e63e0705601db42f84` |
| 12 | `theorem` | [actualCriticalErrorCovariance_late_lower_bound](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance-late-lower-bound.md) | 193 | `result-track:38f829fb3c43fec798a9bb2da4b1ad88aae6bfddd86ad39fa592cb21788873d7` |
| 13 | `theorem` | [actualCenteredMangoldtLogError_small_after](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcenteredmangoldtlogerror-small-after.md) | 226 | `result-track:7085e5e97ab8b1c3d17e30c1bdf6d8541a66cf2ca5474e4ba1d00a5ae4f1f568` |
| 14 | `theorem` | [actualCriticalErrorCovariance_lower_estimate](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance-lower-estimate.md) | 238 | `result-track:25825f2f85ea8d08f499ab9744929be7921e45338d28ccf2435f24024a70aee0` |
| 15 | `theorem` | [actualCriticalErrorCovariance_eventual_amplitude](../../../../MeasureAndIntegration/Attempt02ActualCriticalErrorDensity.lean/declarations/actualcriticalerrorcovariance-eventual-amplitude.md) | 251 | `result-track:0a9fc7553113840cd256d456ce44a44ef20cb3d21fb00f68129fabf823f781f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f5677bee92caf016847702abb1bf6e4efe68f2ce6c3fade29388f9718dec899 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantff4d075367bc31c3ee69c2736deeb25b8da10234ebfed7691df33b6642ef0d42.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variantff4d075367bc31c3ee69c2736deeb25b8da10234ebfed7691df33b6642ef0d42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
