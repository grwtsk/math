# Verification target: Continuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/Continuation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/Continuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3521a03af2898ec2a0f178a7a4f6e1d6fea3d9ce`.

Source path: `GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Laplace.InitialFormula` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.TsumUniformlyOn` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyFinite` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [zeroOccurrence_countable](../../../../MeasureAndIntegration/Continuation.lean/declarations/zerooccurrence-countable.md) | 44 | `declaration-track:126936798de08ffee7a59c9a9970a1010a4e0057f4fd73a8ccb4599bb49673a5` |
| 2 | `theorem` | [finite_occurrences_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/finite-occurrences-norm-le.md) | 55 | `result-track:3639437be933299fe89a73cb0d9a68f3ef70ec0fb79c3dfdfd79e9d2507a0671` |
| 3 | `theorem` | [finite_occurrences_scaled_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/finite-occurrences-scaled-norm-le.md) | 69 | `result-track:0207158de57b318d55b4b5e39a667d226955ef39421b09e2f61d8564799d3221` |
| 4 | `theorem` | [locallyFinite_scaled_values](../../../../MeasureAndIntegration/Continuation.lean/declarations/locallyfinite-scaled-values.md) | 79 | `result-track:cdbca4ab46fc3b8cd6fd3b7d51fae61ff26a95868c1a898448ef720a39c70601` |
| 5 | `theorem` | [isClosed_scaled_range](../../../../MeasureAndIntegration/Continuation.lean/declarations/isclosed-scaled-range.md) | 100 | `result-track:626a05a73b450ab254ea237683aa686cdd6ebe64ea8ee2cbd052afbf60834c21` |
| 6 | `def` | [candidateSingularities](../../../../MeasureAndIntegration/Continuation.lean/declarations/candidatesingularities.md) | 111 | `declaration-track:9814186f5c5e018510373d8484c873e921f269c62e4194753a338bd10599d52a` |
| 7 | `def` | [convergenceDomain](../../../../MeasureAndIntegration/Continuation.lean/declarations/convergencedomain.md) | 117 | `declaration-track:1125dfe963bb54c43f26e3a67ba76e36e7af156928cf59cf85b9593e79e064c0` |
| 8 | `theorem` | [isClosed_candidateSingularities](../../../../MeasureAndIntegration/Continuation.lean/declarations/isclosed-candidatesingularities.md) | 120 | `result-track:f4e26027a7d4340d26c5cf41aeae48e122198ec0a8a41030b0d1f6616373475c` |
| 9 | `theorem` | [isOpen_convergenceDomain](../../../../MeasureAndIntegration/Continuation.lean/declarations/isopen-convergencedomain.md) | 127 | `result-track:6c11cc8d1fd959203a8a7beae5a6b214b454a4011410898d34d71bb8d321d0c8` |
| 10 | `theorem` | [mem_convergenceDomain_iff](../../../../MeasureAndIntegration/Continuation.lean/declarations/mem-convergencedomain-iff.md) | 132 | `result-track:18c208ff406eb54e2c9fc579f8a731e9157aa4c8626f5bd38063cbd8fbfbef55` |
| 11 | `theorem` | [initial_halfPlane_subset_domain](../../../../MeasureAndIntegration/Continuation.lean/declarations/initial-halfplane-subset-domain.md) | 144 | `result-track:aa8f80fb9d5d8a65b26a9ef48af59e94613fed8d8b79e75f071b386d9b9f1ac9` |
| 12 | `theorem` | [J_analytic](../../../../MeasureAndIntegration/Continuation.lean/declarations/j-analytic.md) | 162 | `result-track:d67fe3a804fdb5d8e4aec3a91252aa193b52712089aadd17c5f0de89f4906e6b` |
| 13 | `theorem` | [polynomialKernel_analytic](../../../../MeasureAndIntegration/Continuation.lean/declarations/polynomialkernel-analytic.md) | 169 | `result-track:7373e539a576189d3a19b24780c67c78faca02c342c77181dd5423763b2e5dab` |
| 14 | `theorem` | [sourceKernel_analytic_of_denominators](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-analytic-of-denominators.md) | 178 | `result-track:6084a5fed1c6f93c492114d7d50e0f69d3aa53f017b676fb028ccd79cb8c7fb6` |
| 15 | `theorem` | [sourceKernel_analytic_on_domain](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-analytic-on-domain.md) | 207 | `result-track:4105cced389e75066452ed969324590bf2f4a04d5662c2be8c4561a1095d0544` |
| 16 | `theorem` | [laplaceKernel_norm_le_factorial](../../../../MeasureAndIntegration/Continuation.lean/declarations/laplacekernel-norm-le-factorial.md) | 227 | `result-track:568c17f19b18c7b894df4264eab6a861476ca6720937f670d230616ac5e0e704` |
| 17 | `theorem` | [J_norm_le_factorial](../../../../MeasureAndIntegration/Continuation.lean/declarations/j-norm-le-factorial.md) | 270 | `result-track:f921c2855332f1617d6959d5e6264df0235243b910310262cdf87459f62bc8c8` |
| 18 | `theorem` | [J_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/j-norm-le.md) | 280 | `result-track:24386a814f491f12e4acd36e57f73c6e61f7a51eb5120823347433b36c1b4d3e` |
| 19 | `theorem` | [positivePolynomial_coeff_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/positivepolynomial-coeff-norm-le.md) | 293 | `result-track:c79492250c0aaeaae2dc75f28acd8a8c71186fc530810ac3ad23c09b7555476d` |
| 20 | `theorem` | [mixedPolynomial_coeff_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/mixedpolynomial-coeff-norm-le.md) | 311 | `result-track:716635f4df8b64dfb691160b42f52cb77bd2c59eeebded12432e716af8b6db62` |
| 21 | `theorem` | [polynomialKernel_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/polynomialkernel-norm-le.md) | 329 | `result-track:5f50dd963746933e085d2bbd4dbd9a88c8b766111783fdf2a3fc0b6a282fdc94` |
| 22 | `theorem` | [shifted_norm_ge_one](../../../../MeasureAndIntegration/Continuation.lean/declarations/shifted-norm-ge-one.md) | 355 | `result-track:2d1d59f1562529f0ac38a6ec71bfed67f93af690d3941e1b10b21117ff1cea65` |
| 23 | `theorem` | [shifted_J_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/shifted-j-norm-le.md) | 366 | `result-track:fe1ae39358815e63aa26be3790dd6f4008f0fcbdd0f72d2f02db9ecef8a14aa1` |
| 24 | `def` | [tailConstant](../../../../MeasureAndIntegration/Continuation.lean/declarations/tailconstant.md) | 389 | `declaration-track:9cf50be77b52b273768cd8387dc7fbf2ca941834c9386183fb596129a3d5d6f2` |
| 25 | `theorem` | [tailConstant_nonneg](../../../../MeasureAndIntegration/Continuation.lean/declarations/tailconstant-nonneg.md) | 393 | `result-track:48a2a7330ba0f9e7a7df120644aa680ca9bbaa1f1795542886f4acd0fae4baeb` |
| 26 | `theorem` | [sourceKernel_norm_le](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-norm-le.md) | 401 | `result-track:c76a6cd50f9f5bef98ece4d79fbce01634c8d96db72362de1c43b6f9e616025a` |
| 27 | `theorem` | [compact_unshifted_bound](../../../../MeasureAndIntegration/Continuation.lean/declarations/compact-unshifted-bound.md) | 523 | `result-track:aa5ea3e344833e28d24e898dc46c4ecaa61dff60be7e7435e7b1e9c2efa6e9c2` |
| 28 | `theorem` | [compact_sourceKernel_tail_bound](../../../../MeasureAndIntegration/Continuation.lean/declarations/compact-sourcekernel-tail-bound.md) | 561 | `result-track:f68c833de52b9a299f6fe89f46603f6550705e1af6c3f92afc7993166517835d` |
| 29 | `def` | [compactKernelNorm](../../../../MeasureAndIntegration/Continuation.lean/declarations/compactkernelnorm.md) | 587 | `declaration-track:68d1e61c40e2e8fadc802e7102196dd39b3a873450d84b24d28266d30c168d66` |
| 30 | `theorem` | [sourceKernel_continuousOn](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-continuouson.md) | 592 | `result-track:21e775538462011339a166170f8acce7c74214a89a520fc7777cfab78a96f084` |
| 31 | `theorem` | [norm_le_compactKernelNorm](../../../../MeasureAndIntegration/Continuation.lean/declarations/norm-le-compactkernelnorm.md) | 602 | `result-track:844b7732385017ed3760d5c76be7aa415a41e57bbb410c1f33edb6dd73a7bf0b` |
| 32 | `theorem` | [compactKernelNorm_nonneg](../../../../MeasureAndIntegration/Continuation.lean/declarations/compactkernelnorm-nonneg.md) | 613 | `result-track:1c5a9918dd3b452dda7888ecb9916e2d6a796e0b5e6453a5ed5b84fce8a1d726` |
| 33 | `theorem` | [eventually_shifted_norm_ge](../../../../MeasureAndIntegration/Continuation.lean/declarations/eventually-shifted-norm-ge.md) | 624 | `result-track:2d4856b0b46994a913d537d70238d02eea7ef682e617ea992461e42f33fc0757` |
| 34 | `theorem` | [sourceKernel_compact_tail_bound](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-compact-tail-bound.md) | 631 | `result-track:7389306c64a32f62340c30ba83584fce84227419aa4349d16edc0770967fd462` |
| 35 | `theorem` | [sourceKernel_compact_norms_summable](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-compact-norms-summable.md) | 657 | `result-track:388026657ebbe90578b32b283962fc3f1edff908bcf4b25417682ef41934e2e1` |
| 36 | `theorem` | [sourceKernel_hasSumUniformlyOn_compact](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-hassumuniformlyon-compact.md) | 675 | `result-track:3942fca2185f3fc55265aba3748ae0382b631fcda5a1db84c22fc9f84d04d233` |
| 37 | `theorem` | [sourceKernel_hasSumLocallyUniformlyOn](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-hassumlocallyuniformlyon.md) | 689 | `result-track:085cc6b33c2904e56bc9769c230ae7b9f2026bfd8a9a9c89ef419010f01f7dcc` |
| 38 | `theorem` | [sourceKernel_tsum_analytic](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-tsum-analytic.md) | 703 | `result-track:4bff99f0d733b09f25d11bdec64b16b16ec9a26b108dfe415471f239eb3ae9e4` |
| 39 | `def` | [continuedTransform](../../../../MeasureAndIntegration/Continuation.lean/declarations/continuedtransform.md) | 722 | `declaration-track:5f957784edd86f25075d14d5a1ad96668e0790bfbc25f58da79d7290e46e4b0a` |
| 40 | `theorem` | [continuedTransform_analytic](../../../../MeasureAndIntegration/Continuation.lean/declarations/continuedtransform-analytic.md) | 726 | `result-track:3e0002a83d3bc378a71be9c4d84c8424dcaa997da1b3682b1d5368e3d07e6f99` |
| 41 | `theorem` | [sourceKernel_eq_equation20_tsum](../../../../MeasureAndIntegration/Continuation.lean/declarations/sourcekernel-eq-equation20-tsum.md) | 730 | `result-track:28edced671d7afa3463535e87f3e7b5732dc62349dfd776bb61e36ddb0bbb0bc` |
| 42 | `theorem` | [initial_agreement](../../../../MeasureAndIntegration/Continuation.lean/declarations/initial-agreement.md) | 742 | `result-track:b1330ca64b2f3a30a7a0351beb7236e99770cb8ed53368e855040de15dc0a9e9` |
| 43 | `def` | [CandidateFreeContinuationCheckpoint](../../../../MeasureAndIntegration/Continuation.lean/declarations/candidatefreecontinuationcheckpoint.md) | 753 | `declaration-track:33567c527e1438f2626eef96e36c8638f56d37688d8349c20a5eb551f1340681` |
| 44 | `theorem` | [candidate_free_continuation_checkpoint](../../../../MeasureAndIntegration/Continuation.lean/declarations/candidate-free-continuation-checkpoint.md) | 768 | `result-track:c5eb255ddf534b4013d3c59deced5132247268ac43f225a16223c28e58b53ee9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d7ea53ea2b2fea8f22763333fa99c5e951658b57bf3c9725b401903976b6b3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Aed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64Continuation/Variantaed1225a442fbd6fe77d720353863b0cd9d8fe1d18d49419b0054374eb521e64.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
