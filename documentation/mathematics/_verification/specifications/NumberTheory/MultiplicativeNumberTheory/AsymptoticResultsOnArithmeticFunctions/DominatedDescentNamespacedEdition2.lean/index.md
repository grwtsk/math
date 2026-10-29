# Verification target: Dominated Descent Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dae7e7a5878d2154e587f9c6f03c41af611b1678",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dae7e7a5878d2154e587f9c6f03c41af611b1678`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ZeroSide.WeilArithmeticTransport` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingLogarithmic` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Tannery` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_norm_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/polynomial-norm-le.md) | 50 | `result-track:43fd7b5f54ef051f6bac3ad1b2348c78f7e2a03d7a46093518a5ae897abf5fda` |
| 2 | `def` | [decayConstant](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/decayconstant.md) | 73 | `declaration-track:f5a2fca066fe58c5d8243e0bd0121951603d559245bd31356b8f95dc6cabc293` |
| 3 | `theorem` | [transform_norm_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/transform-norm-le.md) | 76 | `result-track:b84c969b44f31077b278ec19427d93271acdf6321037c4ffb59741bdf877d4e3` |
| 4 | `theorem` | [transform_square_norm_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/transform-square-norm-le.md) | 129 | `result-track:c33e89493ec6c67075254a52c8cf42b49c167557b77497b0e2de6912cd0d6f99` |
| 5 | `theorem` | [eventually_one_le_shifted_norm](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/eventually-one-le-shifted-norm.md) | 154 | `result-track:0233fafa5384d4df1ea05381bafb4bda643a609c6685883f82c44b1a700c78b8` |
| 6 | `theorem` | [source_transform_square_norms_summable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/source-transform-square-norms-summable.md) | 163 | `result-track:829b758f04ce553e6f28ac4657f08be7a596fd90a8162028f95122ee17ede7ac` |
| 7 | `theorem` | [source_transform_squares_summable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/source-transform-squares-summable.md) | 175 | `result-track:3b27572da44400e7950d821c739f6d48d05fa3fc31be8b451ae3599b6364a560` |
| 8 | `theorem` | [smoothed_square_norm_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-square-norm-le.md) | 179 | `result-track:e7cd9967164e8dc65579c299ed4ea2f9bfe8f7558408f64eea719330ca259efe` |
| 9 | `theorem` | [smoothed_transform_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-transform-tendsto.md) | 197 | `result-track:0956c210127fa3906244696d688915b2121303f1e05881277cbd1bc0f18a2732` |
| 10 | `theorem` | [zero_sum_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/zero-sum-tendsto.md) | 208 | `result-track:f1e660740841bd25a054decdcbf2e84facd06fbd6c50b830450ae332dc25aa3d` |
| 11 | `theorem` | [source_fourier_smoothing](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/source-fourier-smoothing.md) | 223 | `result-track:8140c2f04da2cf58820d58c03e6df4006d8a91f6861275474cf5f67dffddd9f7` |
| 12 | `theorem` | [fourier_multiplier_norm_le_one](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/fourier-multiplier-norm-le-one.md) | 230 | `result-track:05b93b7e16e861a385aa447c947b3ccb5e285b244451a2619b92242f9c056ed2` |
| 13 | `theorem` | [smoothed_fourier_normSq_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-fourier-normsq-le.md) | 235 | `result-track:477d0d9f617757cd573ef903026b11a63cadc4483dd80a4fd790940d43a6cfe3` |
| 14 | `theorem` | [actual_archimedean_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/actual-archimedean-integrable.md) | 248 | `result-track:9cd14b56d30e9bf90f29479eb5175ad381d389db76538f8b106c72b998b49be9` |
| 15 | `theorem` | [smoothed_archimedean_measurable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-archimedean-measurable.md) | 280 | `result-track:0f734c828e9ed6a642abac8ea336e36388390a01bc24213466cf62ece4f40f3b` |
| 16 | `theorem` | [smoothed_archimedean_norm_le](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-archimedean-norm-le.md) | 289 | `result-track:03d7097170e918d22be4ee10ed3f354f1e37f4e9c662e0c0fcc9fb8d15c61746` |
| 17 | `theorem` | [archimedean_integral_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/archimedean-integral-tendsto.md) | 300 | `result-track:788394ad9093e49572cd779b51081e4b6cc8ec1c2624ff066ed85b3ef6009e29` |
| 18 | `def` | [primeIndices](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/primeindices.md) | 321 | `declaration-track:2a9bc136bb88999fa82439f9cbc0276473baad3b30dffbe9118f51146fe428ed` |
| 19 | `theorem` | [mem_primeIndices_iff](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/mem-primeindices-iff.md) | 325 | `result-track:35c615cc87fdf2cdaf1fe6865286387e17a41eb9b5ba8ab1a7c02e85020e2a92` |
| 20 | `theorem` | [primeIndices_mono](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/primeindices-mono.md) | 331 | `result-track:1305027ae452e477c275180908c3fe2b4c627b233fc30893586625e8823fc123` |
| 21 | `theorem` | [actual_eq_sqrt_mul_normalized](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/actual-eq-sqrt-mul-normalized.md) | 337 | `result-track:eb7f5ddd6489db7c28dae4f61e5aa8c8310871fd37ad725b1a24f230e416f662` |
| 22 | `theorem` | [correlation_integral_const_mul](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/correlation-integral-const-mul.md) | 349 | `result-track:256c2e179fb02a0147a988d34e4482634e587496b8f4bf03b533927a656e0f4c` |
| 23 | `theorem` | [unnormalized_correlation_eq](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/unnormalized-correlation-eq.md) | 360 | `result-track:d4d5863dd310e58e39b8559957f9441af8b9484cfc188d8139d6f30e270031c8` |
| 24 | `theorem` | [unnormalized_correlation_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/unnormalized-correlation-zero.md) | 369 | `result-track:92eda0bc3f24d520f592e8991279f3a062adfe47a13882c0b46a1a28c2b4bade` |
| 25 | `theorem` | [additional_prime_correlation_zero](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/additional-prime-correlation-zero.md) | 377 | `result-track:cac0d91d0ff964499ba4cc4373091d06974a84d459907a47276dea704f9ad630` |
| 26 | `theorem` | [actual_form_radius_independent](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/actual-form-radius-independent.md) | 390 | `result-track:fa1589ccdfc56ceba0d2cc7984ddcc8dfca6b9c6aed066b1e7d223f2b6c91e38` |
| 27 | `theorem` | [common_norm_bound](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/common-norm-bound.md) | 409 | `result-track:620c1c460bb51f1a8965a786f86a710304032cf5cb03dd32d5eda68bc096d457` |
| 28 | `theorem` | [smoothed_zero_outside_common](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-zero-outside-common.md) | 419 | `result-track:747d911014a5470f31818a838eb7dae6bbd916e94f6480f7d35441b3a2ac1007` |
| 29 | `theorem` | [smoothed_correlation_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-correlation-integrable.md) | 428 | `result-track:d618fab67244fe0e270f3624cd5506202249683aa8a7939f13376d37b919ac77` |
| 30 | `theorem` | [correlation_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/correlation-tendsto.md) | 439 | `result-track:fd5d83391e2b80ebba600f008cb72c4f4df8d20e4ea4216eb0ec26d2732813c5` |
| 31 | `theorem` | [smoothed_moment_integrable](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/smoothed-moment-integrable.md) | 478 | `result-track:f8471779fc9f6494a8e2fde45d7e6ff030c08e5e1a2c599408dce594132ec81c` |
| 32 | `theorem` | [moment_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/moment-tendsto.md) | 486 | `result-track:443a9e7fabf7050db4647ae67cd6c86f51c4040cffb4607f048637cae9a18ab8` |
| 33 | `theorem` | [pole_contribution_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/pole-contribution-tendsto.md) | 529 | `result-track:efb90a95c2b4508a14d2fa6bbb7b03b6839726aea4cffcadeac4040b36caeaa4` |
| 34 | `theorem` | [fixed_radius_form_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/fixed-radius-form-tendsto.md) | 543 | `result-track:b59d14ecf3f25dfcf7a7b7520361a8631e54007b43204c0443d7bcdcfa801b33` |
| 35 | `theorem` | [arithmetic_form_tendsto](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/arithmetic-form-tendsto.md) | 562 | `result-track:d1f1e4ac64a3cca13a67b3f1a99305b5385456570b5ef8d03ce3804998a37c74` |
| 36 | `def` | [ArithmeticZeroEqualityObligation](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/arithmeticzeroequalityobligation.md) | 573 | `declaration-track:d487a01a4e7d557f6bae24ac090130cd4aaafbe085ef5f2c8b3ead0a7a919284` |
| 37 | `theorem` | [arithmetic_zero_equality](../../../../../../NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/DominatedDescentNamespacedEdition2.lean/declarations/arithmetic-zero-equality.md) | 580 | `result-track:402230c45be18e941d39763229b1f571c4d8543f3486d72b1f736c769fb5edf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2d1c116089c9db0f5ad495486a66444a65baaf58f63de755d18df09707538a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/DominatedDescent/Variantef5d87d2babd63c9d3af56c6bb79fb0d309d641519b09751afcc4c1d145b5ad6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
