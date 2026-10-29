# Verification target: Source Boundary Layer Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f406cd3d13fdc40d5b5030c936f15615749492",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f406cd3d13fdc40d5b5030c936f15615749492`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PhaseKernelBoundary` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceScaledKernel` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.FullQuadraticObstruction` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.HeineCantor` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundaryKernel](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundarykernel.md) | 30 | `declaration-track:340ae47ed5bbe5456adbc5067512f7a6b4d3877764f1ae3a7af02b99ca1d8104` |
| 2 | `theorem` | [boundary_kernel_exact](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-kernel-exact.md) | 34 | `result-track:6456f2d70ecbc9975f59016d3a483b53c63932777f2d01bc8ed7b8c3b3c03c69` |
| 3 | `def` | [boundaryProfile](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundaryprofile.md) | 52 | `declaration-track:0cb230118f0e415202c6122d70775ff89e2b43911eecdbd992a6834e9c85c9db` |
| 4 | `def` | [boundaryBulkKernel](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundarybulkkernel.md) | 57 | `declaration-track:391855cd51d74d46cca958a67e47d2f51ffe79ad2a3fa7305e1646a91f3137c6` |
| 5 | `def` | [boundaryBulkProfile](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundarybulkprofile.md) | 61 | `declaration-track:abbeb1a53d97fb2ef6c9f01efcdb1fee9e1cf9699158092360dd741f6368528f` |
| 6 | `theorem` | [boundary_bulk_kernel_exact](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-bulk-kernel-exact.md) | 65 | `result-track:2805bf5c531bccf5d2da3171100f77f1f8f2fedd9f21f3bc1cfd74ab7dd78b2e` |
| 7 | `theorem` | [distance_div_radius_tendsto_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/distance-div-radius-tendsto-zero.md) | 77 | `result-track:55fb7809c45b0dddc242ed74f93cafbc1a8da9c10a6f0637f7b125643565dc4c` |
| 8 | `theorem` | [boundary_kernel_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-kernel-tendsto.md) | 84 | `result-track:1a480514e01298822e13239e7269e6d380f449b252c00431f91bbf888b8c4b47` |
| 9 | `theorem` | [boundary_bulk_kernel_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-bulk-kernel-tendsto.md) | 114 | `result-track:077edc5f170d973ab71e97afd6751929cc90d6456a297f25a6c45f42ab3a8de7` |
| 10 | `theorem` | [boundary_derivative_correction_tendsto](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-derivative-correction-tendsto.md) | 132 | `result-track:632f8644fea46bf6699529d6830fbab60a9e048c6df012360551fe4a39fd9639` |
| 11 | `theorem` | [boundary_profile_sub_bulk](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-sub-bulk.md) | 138 | `result-track:9bdbecd4aa33d9c18ba2d7389bb53f0b7e15e137acd4fa9be32665ca5978eb51` |
| 12 | `theorem` | [boundary_profile_ne_bulk_at_one](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-ne-bulk-at-one.md) | 146 | `result-track:eef95470b77cfc4de865ce9db5c40dadfc2911ceddf0c4326246322c5d3c286f` |
| 13 | `def` | [profileExponentialMoment](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/profileexponentialmoment.md) | 150 | `declaration-track:887a9d66c414f6b0bac195cda251925c56db9530f9aadd96da24fbd02bdb3454` |
| 14 | `theorem` | [half_exponential_power_integrable](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/half-exponential-power-integrable.md) | 154 | `result-track:7104c1d799f68b72ee5a8e5c50627a7decab274c20685ae1a15ba50115cb5005` |
| 15 | `theorem` | [half_exponential_power_integral](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/half-exponential-power-integral.md) | 166 | `result-track:bf47549807552a922fdf29ca4c90f9c2f43421e85bf6498728629603c36a0dd6` |
| 16 | `theorem` | [profile_moment_integrand_eq](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/profile-moment-integrand-eq.md) | 182 | `result-track:d16b99b1b298650b333b1eca13a5ea599c3410f6fc280e3b1c5c007dcc341488` |
| 17 | `theorem` | [profile_exponential_moment_integrable](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/profile-exponential-moment-integrable.md) | 193 | `result-track:f837457f6c3aec4a35ce7c707a8b5fcf8637ec669b3af3ea487eadf34bc7ddd5` |
| 18 | `theorem` | [boundary_profile_exponential_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-exponential-moment.md) | 204 | `result-track:6c716ea139120ff30a49b982ec2b0b56f735daff04d9d961173f759bddcdef3f` |
| 19 | `theorem` | [boundary_profile_constant_moment_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-constant-moment-zero.md) | 222 | `result-track:2155c68bfde3330a99ede3fa81f4d6f6e3d0f9814992d1dbee9ad6853f23e0bb` |
| 20 | `theorem` | [boundary_profile_affine_moment_zero](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-affine-moment-zero.md) | 227 | `result-track:b3e74683e4130fd581e5950de0aaf8e335e466673978a1598293d78188ea528a` |
| 21 | `theorem` | [boundary_profile_quadratic_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-quadratic-moment.md) | 232 | `result-track:b620a2f67bf4ff2164d32c68ae270b8dd17883f21ebdb3baae79da7771e11914` |
| 22 | `theorem` | [boundary_profile_factor](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-factor.md) | 237 | `result-track:d0583b10f298eed972b9837b4ec59c9d838c4c8afbbfc455a9d644c0d9ad65fa` |
| 23 | `theorem` | [boundary_profile_quartic_factor](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-quartic-factor.md) | 244 | `result-track:81b2efcddde04da8b6bd05a0805c590882d7701488a9d94029de3601965f69a7` |
| 24 | `theorem` | [boundary_profile_pos_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-pos-iff.md) | 252 | `result-track:724690eb9368e909170687c208a0bb55ce04de5725cf1bb955ddcb346650cdba` |
| 25 | `theorem` | [boundary_profile_neg_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-neg-iff.md) | 268 | `result-track:2e470ca83bf4d1fd9e4278c74bd29d29eedc9dd83c0314edff78a2428e461a3e` |
| 26 | `theorem` | [boundary_profile_zero_iff](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-zero-iff.md) | 285 | `result-track:2a7a58e77cb6ea3ae4e5ce86e596177406c5896affa4b7848270f16406d9a4a2` |
| 27 | `theorem` | [boundary_profile_squared_roots_ordered](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-squared-roots-ordered.md) | 292 | `result-track:bdf8dab4569b6fa68f0bc81c92894d86187f04a25c2b995cffe9b417be19bdde` |
| 28 | `theorem` | [boundary_profile_seventeen_neg](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-profile-seventeen-neg.md) | 301 | `result-track:3102653f9757f6a988b0c37d31c26987343bf25d88e4331ba74c613318a95af3` |
| 29 | `theorem` | [source_boundary_eventually_negative](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/source-boundary-eventually-negative.md) | 305 | `result-track:542e363d3f86ff27d661f2e7324622304acdaa89f69fa040e5ac4be40f972a85` |
| 30 | `theorem` | [bulk_profile_constant_moment](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/bulk-profile-constant-moment.md) | 320 | `result-track:8c468a6e03ceca8ffd4c4fec6a189bd882de364d8504eac01933a4914aa14667` |
| 31 | `theorem` | [boundary_kernel_tendsto_uniformly_on](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/boundary-kernel-tendsto-uniformly-on.md) | 334 | `result-track:a15b62ab02cf4d791234db3838a379966f6ee9905158b232681d9dcb55fdf1f9` |
| 32 | `def` | [bulkSourceContinuum](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/bulksourcecontinuum.md) | 390 | `declaration-track:5413b9a9924c4b6096d22c6547c15291560adb212490c34c59bcc270eb44a8cf` |
| 33 | `theorem` | [endpoint_zero_polynomial_window_lower_bound](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/endpoint-zero-polynomial-window-lower-bound.md) | 395 | `result-track:2ccef1d5c93e038ba1fd06aac50842a5a7f1b91ae2d5fd10a94443ab4dcad851` |
| 34 | `theorem` | [bulk_source_continuum_growth](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/bulk-source-continuum-growth.md) | 416 | `result-track:f1bdd53ca26c476d9da2fe6999e84891f807e1f7678710d2864bc6792c720da9` |
| 35 | `theorem` | [bulk_source_continuum_tendsto_at_top](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/bulk-source-continuum-tendsto-at-top.md) | 490 | `result-track:98f0d38119e2da066451bf740dc57076809a3f37dbef555aafe1ad873db91c3c` |
| 36 | `theorem` | [bulk_truncation_error_tendsto_at_top](../../../../MeasureAndIntegration/SourceBoundaryLayerResults.lean/declarations/bulk-truncation-error-tendsto-at-top.md) | 500 | `result-track:633b8a0aa68864c0a4d53310e1ce610261733ce3da90e4add3dfe536dbee4f27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cc0d1972fae2e679c4883d851169f01a1394157c7af7161525c4ee9095f2fac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryLayer/Variant8d1f540b32b2d1ea002c81bd25240ca81732ec37ad226867912022eb9af20e36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
