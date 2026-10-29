# Verification target: Source Boundary Layer Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2af18921c9e15508675b3c1d33e987398dc4ac4",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2af18921c9e15508675b3c1d33e987398dc4ac4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceScaledKernel` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.FullQuadraticObstruction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.HeineCantor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryKernel](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundarykernel.md) | 38 | `declaration-track:6f80a2fa65f2cf5ca39f1c826c60a75b8b6c20562091b832b6140289da838312` |
| 2 | `theorem` | [boundary_kernel_exact](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-kernel-exact.md) | 42 | `result-track:3b55397263467e8ddcba220dd18aff2c880d0f199992a1faec3dccb23604de7e` |
| 3 | `def` | [boundaryProfile](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundaryprofile.md) | 60 | `declaration-track:fc55d911d9fd478c695cb51c01d4940cde3bf73ffb4a13bd19cbf106ad84c07e` |
| 4 | `def` | [boundaryBulkKernel](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundarybulkkernel.md) | 65 | `declaration-track:e111843a20720e4e75d080ebeb34f1703ae4af550a747be8b2d80ba89122b8e3` |
| 5 | `def` | [boundaryBulkProfile](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundarybulkprofile.md) | 69 | `declaration-track:4c2af8fac389545ec6da6f08ed21826f715f29304292ef27e1337ea6bda3d3a6` |
| 6 | `theorem` | [boundary_bulk_kernel_exact](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-bulk-kernel-exact.md) | 73 | `result-track:051bbc77b23607889fc9d3565ee0efbf473366360ba350e8ed0c9a3e8354e498` |
| 7 | `theorem` | [distance_div_radius_tendsto_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/distance-div-radius-tendsto-zero.md) | 85 | `result-track:9656567b20bb9f370c9ed7ee8aa2ddb24b3f83c9c4e26a8354353344c111daf6` |
| 8 | `theorem` | [boundary_kernel_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-kernel-tendsto.md) | 92 | `result-track:e24eaffb05b45011ab803aea104865f74b05b5221cf675fbfa56de6ae867dda1` |
| 9 | `theorem` | [boundary_bulk_kernel_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-bulk-kernel-tendsto.md) | 122 | `result-track:f89ff7b8d011788795715edc621be78dc17308893f61441c24a41b09cafb30c6` |
| 10 | `theorem` | [boundary_derivative_correction_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-derivative-correction-tendsto.md) | 140 | `result-track:1a345c3f48acb91c6826d998ffc8386974615e8b7fc2d16bebc84bc636abe476` |
| 11 | `theorem` | [boundary_profile_sub_bulk](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-sub-bulk.md) | 146 | `result-track:d05f59986ff737e8375c993439cfe1ef5b961def842d4bc4782560563647ed98` |
| 12 | `theorem` | [boundary_profile_ne_bulk_at_one](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-ne-bulk-at-one.md) | 154 | `result-track:8e2040761e083ef38fb8752e4fec2a8f7c47629ad041244cc69019b5b612cd20` |
| 13 | `def` | [profileExponentialMoment](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/profileexponentialmoment.md) | 158 | `declaration-track:33e97373763feeb83252f886529b2ff4624d013dfe1622c4081c7834e0b7a775` |
| 14 | `theorem` | [half_exponential_power_integrable](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/half-exponential-power-integrable.md) | 162 | `result-track:f45c57a212060131401f5df7f44d4c2035ea6912f44ad5d5430fc1d1fea838d4` |
| 15 | `theorem` | [half_exponential_power_integral](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/half-exponential-power-integral.md) | 174 | `result-track:e65c9bed036f4f0b9969ab70a1dca7669003a6599d71163ce2fc736eacb5f6ec` |
| 16 | `theorem` | [profile_moment_integrand_eq](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/profile-moment-integrand-eq.md) | 190 | `result-track:7029b352f77e7ceb29842a6015430d0ed0cb47f8e781b5334bd6b65f28056e45` |
| 17 | `theorem` | [profile_exponential_moment_integrable](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/profile-exponential-moment-integrable.md) | 201 | `result-track:c93499534949ecb0d192724f49238919be2eed3bdd398ca623a1dff645557488` |
| 18 | `theorem` | [boundary_profile_exponential_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-exponential-moment.md) | 212 | `result-track:5c72b8b35906392b2b755eb7009c15005a4bfeb41df7bba76642cfe601ac172b` |
| 19 | `theorem` | [boundary_profile_constant_moment_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-constant-moment-zero.md) | 230 | `result-track:d53466c2919c808b11595c4a146936c219e671230bf11f18648865e48af86e1e` |
| 20 | `theorem` | [boundary_profile_affine_moment_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-affine-moment-zero.md) | 235 | `result-track:45ce64dd1556eea2a338ecd831721819445120b49e16855578e6aacc86d22c6a` |
| 21 | `theorem` | [boundary_profile_quadratic_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-quadratic-moment.md) | 240 | `result-track:bc16908daddcb49549457b3339dc8f8f9b4add2e1ad77ff287cc453fddef0606` |
| 22 | `theorem` | [boundary_profile_factor](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-factor.md) | 245 | `result-track:ca27d96bc48c597d27ef500a2ffd43ad95d2c91dbdac23c087aa84e202d3ae42` |
| 23 | `theorem` | [boundary_profile_quartic_factor](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-quartic-factor.md) | 252 | `result-track:3163cd284e7e8337828c2b577342256474f7d96bf01b3809b079f623e2b3ceea` |
| 24 | `theorem` | [boundary_profile_pos_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-pos-iff.md) | 260 | `result-track:52554284109d52c55245d4694a212aae7d1829e365350bd9de873912d4eb9751` |
| 25 | `theorem` | [boundary_profile_neg_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-neg-iff.md) | 276 | `result-track:d4ef537f31d49640e02ebb61b071d29caa81682bf977dabb6e6dfec159f319dd` |
| 26 | `theorem` | [boundary_profile_zero_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-zero-iff.md) | 293 | `result-track:67fb8a68b825e33e122bb898a4bf1b45992c9ce9b9059ca8fff9d602ec1f27cb` |
| 27 | `theorem` | [boundary_profile_squared_roots_ordered](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-squared-roots-ordered.md) | 300 | `result-track:8e716a2c9857b41c5fbd3aae81f97b48222a2e09a738e858b77f2e7c16675250` |
| 28 | `theorem` | [boundary_profile_seventeen_neg](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-profile-seventeen-neg.md) | 309 | `result-track:0ab5d02165309f16ec43eb00ff6f993b8174f36d34f73e693b08a88604188315` |
| 29 | `theorem` | [source_boundary_eventually_negative](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/source-boundary-eventually-negative.md) | 313 | `result-track:bdace310adb4ff41d241398b0b221bbc41d732e87d78bacdf5efa58175e855e9` |
| 30 | `theorem` | [bulk_profile_constant_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/bulk-profile-constant-moment.md) | 328 | `result-track:679ada0f91226a8a59ce9cfd6cffec09212871a279f5c4ca05f2dfb86924d2c1` |
| 31 | `theorem` | [boundary_kernel_tendsto_uniformly_on](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/boundary-kernel-tendsto-uniformly-on.md) | 342 | `result-track:3696de9615c6a8b56cb1c042ef6d12346bcf8072968af015264ad77ac7d2a30f` |
| 32 | `def` | [bulkSourceContinuum](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/bulksourcecontinuum.md) | 398 | `declaration-track:c6d2ef149528352d8c72dac85d1ede7eed58841059c1debabab85db85372c8f3` |
| 33 | `theorem` | [endpoint_zero_polynomial_window_lower_bound](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/endpoint-zero-polynomial-window-lower-bound.md) | 403 | `result-track:5852f75c3c3f19ec5230253fd163311e83bcad67721aef4d649617a3e8a75553` |
| 34 | `theorem` | [bulk_source_continuum_growth](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/bulk-source-continuum-growth.md) | 424 | `result-track:fe0d582050ffa8784ad6779386aacfcc98d41aac60eb4bfc1fb60cc59873f8cf` |
| 35 | `theorem` | [bulk_source_continuum_tendsto_at_top](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/bulk-source-continuum-tendsto-at-top.md) | 498 | `result-track:538b83cb530838fae7c9ad5e41818749ca936dbdbeda77caf14d0d4c37ff10ea` |
| 36 | `theorem` | [bulk_truncation_error_tendsto_at_top](../../../../MeasureAndIntegration/SourceBoundaryLayerNamespaced.lean/declarations/bulk-truncation-error-tendsto-at-top.md) | 508 | `result-track:6ac26d1b52cebadc6ec6732941757ba18ce6dea887a9811327535d0a6c6a7846` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0140dbf1da6913d4d80f2b49e6929252fdc19f9e19c46ab1f4fa804d54fe720 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant44effd6de1c8f18336de732bce5de205b90c96883cebcf7b707aa51739b88307.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
