# Verification target: Riesz Zero Summability Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8efa9bdd38506dec34f6a5f7fcfbbb867f6bcf33`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.RieszResidueAudit` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rieszZeroWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/rieszzeroweight.md) | 38 | `declaration-track:59331f27d1c796ca0b47e5f79a7a19d90f915c28568f81294f77a66af4899a73` |
| 2 | `def` | [rieszPointMajorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/rieszpointmajorant.md) | 42 | `declaration-track:48d5c61c0a7f32262c561fe6d4156fd87affbec404bf2c69a7c21255fdc298db` |
| 3 | `def` | [rieszOccurrenceMajorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/rieszoccurrencemajorant.md) | 48 | `declaration-track:5609fe786a9d81006bdee1cb44377e1de5e468ca2e1ec8151ee5b39b23333c8c` |
| 4 | `theorem` | [riesz_zero_parameter_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-parameter-ne-zero.md) | 54 | `result-track:ec652e2d626d69f80d42f27b211d1820e7627998f8d23b5b6917ac0ac65490e8` |
| 5 | `theorem` | [boundary_riesz_analytic_at_zero_parameter](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-analytic-at-zero-parameter.md) | 58 | `result-track:cc1b692e54f20a8056a01ab459e1b69f3361372c524bfa3cf0091424b9a91d51` |
| 6 | `theorem` | [riesz_decay_constant_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-decay-constant-nonneg.md) | 63 | `result-track:d7461d78ed5cee366d943f3edaa960fa6baf38d37ba1396f433abeea7dabf723` |
| 7 | `theorem` | [riesz_point_majorant_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-point-majorant-nonneg.md) | 68 | `result-track:b20258cf671e7cdb64d07efb39f0bc7d6c51561892ee05e5efe43ae03bf84ec7` |
| 8 | `theorem` | [riesz_occurrence_majorant_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-occurrence-majorant-nonneg.md) | 73 | `result-track:e280424b2144870deefbcf6fac8902bbdf8a114bc1f068f1db78f52b4503b09d` |
| 9 | `theorem` | [riesz_monomial_point_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-monomial-point-norm-le.md) | 81 | `result-track:6a78d594b52223007771228531acc9e253863b1eef3d19ba860d15dd8cc2bef2` |
| 10 | `theorem` | [boundary_riesz_transform_point_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-transform-point-norm-le.md) | 97 | `result-track:bba66cb23c2a514c38c516b76644f38f011e492ed0c5273f05939906dd1dd238` |
| 11 | `theorem` | [boundary_riesz_transform_shell_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-transform-shell-norm-le.md) | 112 | `result-track:e9f55df089218172550e55fbcaf7c674aa88392540b847c528e86935605e938d` |
| 12 | `theorem` | [eventually_one_le_shifted_norm](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/eventually-one-le-shifted-norm.md) | 135 | `result-track:42377bffa8e7487e4c62875f19636ae8952200c9a981c09ffa806f9770b7bc0f` |
| 13 | `theorem` | [riesz_occurrence_majorant_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-occurrence-majorant-summable.md) | 144 | `result-track:40f363eecd65ead7745302b1b505db525e6b1ba6877095c736c21a19200d08d0` |
| 14 | `theorem` | [boundary_riesz_zero_norm_le_majorant](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-zero-norm-le-majorant.md) | 154 | `result-track:12a45804dc060b660f8be9500eaa9ac06bccc083e3beb0df680be1770b8a47fe` |
| 15 | `theorem` | [boundary_riesz_zero_norms_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-zero-norms-summable.md) | 162 | `result-track:bfe5c83f6ea6157db3f7d182d7037aeebffd6bf142c7a5799ba143dadbf33015` |
| 16 | `theorem` | [boundary_riesz_zero_values_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-zero-values-summable.md) | 168 | `result-track:6da3428e18f535d1b78bc58a8ce710495d73c08e5428d98a949089dab804ac97` |
| 17 | `theorem` | [riesz_zero_exponential_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-exponential-norm-le.md) | 173 | `result-track:a89fa64b9b51ef27aaaa9250107c9a14265170a3badbf47113e39ad563b12d04` |
| 18 | `theorem` | [riesz_zero_weight_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-weight-norm-le.md) | 184 | `result-track:9cd571b71a49f0232b44e75fd701c8b05aea7f9b1a746527a60a3cb82f1596e2` |
| 19 | `theorem` | [riesz_zero_weights_norm_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-weights-norm-summable.md) | 192 | `result-track:2fe1a2922bcd8bf2630864f9a8b6ac0ef71a55d0229b707ce153a78d8294c767` |
| 20 | `theorem` | [riesz_zero_weights_summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-weights-summable.md) | 198 | `result-track:75dca94e9cf22929a75599f062f2f01d41ea923d413beeb3e07e4f731fa5e906` |
| 21 | `theorem` | [riesz_zero_exponential_norm_eq_one_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-exponential-norm-eq-one-of-rh.md) | 202 | `result-track:229e40b597ba8697b5e0fa758beeb9e41be1fc77a154c1437176baedc12406bc` |
| 22 | `theorem` | [riesz_zero_weight_norm_le_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-weight-norm-le-of-rh.md) | 209 | `result-track:d92a447500f7cbd1a33b32d360b43ca0e47361c02a07fd3a5cfe63b3b2803715` |
| 23 | `def` | [rieszZeroMajorantMass](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/rieszzeromajorantmass.md) | 217 | `declaration-track:db75ed04d8aed6f275ad1891b0fb884270c7d62d83c3300111e7b54fe91bd5c7` |
| 24 | `theorem` | [riesz_zero_majorant_mass_nonneg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-majorant-mass-nonneg.md) | 220 | `result-track:717bc050116cf549f9516b669dafce91786679ae43ea00bd3edd67174eb2722f` |
| 25 | `theorem` | [boundary_riesz_zero_absolute_sum_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/boundary-riesz-zero-absolute-sum-le.md) | 224 | `result-track:3524382a15e84f2cd1e069903baa271ccdc89413cdfc5c1c7a2363fc50cacd17` |
| 26 | `theorem` | [riesz_zero_absolute_sum_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-absolute-sum-le.md) | 231 | `result-track:e7c448c5aee046f96aa7b7aaa13c9d3489efa81fc36c31d7ad37f9063df19b03` |
| 27 | `theorem` | [riesz_zero_absolute_sum_le_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-absolute-sum-le-of-rh.md) | 239 | `result-track:80c9d3314ea48ba0bbf6a982922cc0ac454c175f40796f76f39fde63456a381d` |
| 28 | `theorem` | [riesz_zero_sum_norm_le](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-sum-norm-le.md) | 246 | `result-track:79eab2842b131a84b6503f6f5f22a1cb3fae1d0688c4978c88685978d3f61ef1` |
| 29 | `theorem` | [riesz_zero_sum_norm_le_of_rh](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/RieszZeroSummabilityNamespaced.lean/declarations/riesz-zero-sum-norm-le-of-rh.md) | 252 | `result-track:0676afe06695592bb13955c9e6366c5721fe2d205486fa2eb9b2a241618b17cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=81566d46d09d5f6d225b458a3417cc36d47a607a9760677719969a3894329536 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/RieszZeroSummability/Variant2793972d0d610f2a41b041e7ed9d03ca774d61e4bd62d5c7730df8bfb2f33e3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
