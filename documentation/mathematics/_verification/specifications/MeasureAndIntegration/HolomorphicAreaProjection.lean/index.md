# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaProjection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccfe1a0754e4306ebdd40e97b69fd71cb1f99352",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/index.md) · [Full source](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccfe1a0754e4306ebdd40e97b69fd71cb1f99352`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaProjection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaL2`](../../../../MeasureAndIntegration/HolomorphicAreaL2.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.Complete` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AmbientL2](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/ambientl2.md) | 34 | `declaration-track:de9d3dcba03fb9a5efaad3409df89f4e35f15df3ca568725663bbff8ac205326` |
| 2 | `def` | [l2Inclusion](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/l2inclusion.md) | 37 | `declaration-track:38241beca7feff8a1778d4b925134a24f39da51e14f4328d384076f402ee6aac` |
| 3 | `theorem` | [l2Inclusion_apply](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/l2inclusion-apply.md) | 40 | `result-track:b1511c5c4a4338adc52a52881d234f6cd70ae04044a91bcb2a9bc15536a123d4` |
| 4 | `theorem` | [l2Inclusion_inner](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/l2inclusion-inner.md) | 43 | `result-track:2c33eff7c1c10ab3a663ea10e19e4603a05a307048acef213dadb74970838f41` |
| 5 | `theorem` | [l2Inclusion_norm_le](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/l2inclusion-norm-le.md) | 47 | `result-track:0c69489d70a53d45b1f39389f958cd61135452efd62662083beb4a1a82149708` |
| 6 | `def` | [bergmanLift](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanlift.md) | 54 | `declaration-track:642e6d78444401cee2bdfe24a4c5bc89b0850d899f63088c74f977e158370a84` |
| 7 | `theorem` | [bergmanLift_inner](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanlift-inner.md) | 57 | `result-track:a4603515fb709a566f4c6cc893d95770c24d8b1c1345ed4133647d60110141c9` |
| 8 | `theorem` | [bergmanLift_embedding](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanlift-embedding.md) | 63 | `result-track:d0207ced822687f9a00c91235ac9360f1dfee2d1f591491c1d94cdbac113e0dd` |
| 9 | `def` | [bergmanProjection](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection.md) | 73 | `declaration-track:aae466f3f7ba2afc77fd67358dc775146e6edc0dfdb55b0d9806eb8df42fbea4` |
| 10 | `theorem` | [bergmanProjection_apply](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-apply.md) | 76 | `result-track:f63377bcfb2063e10013270e64090da419aed38287da6f047941828ddfacc510` |
| 11 | `theorem` | [bergmanProjection_embedding](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-embedding.md) | 79 | `result-track:a52541afbf1865240ee8ef0a8fba6e4ad642aeb43e236baca8edb7f8524dc74a` |
| 12 | `theorem` | [bergmanProjection_mem](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-mem.md) | 84 | `result-track:f95c99e11f7272eceac79be463c24f1d3b22f8a4dbf6585dd50a32eba30a5e2b` |
| 13 | `theorem` | [bergmanProjection_eq_self_iff](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-eq-self-iff.md) | 89 | `result-track:38b5b0a286ac5f0b5941c1cb8f9f2bd4b9ce3074c99fac41d77534bb506d2cb9` |
| 14 | `theorem` | [bergmanProjection_range](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-range.md) | 98 | `result-track:d4b619a72c85fb8450956e8990b6ec7f57ff223a9452c64c5d79e63a28123905` |
| 15 | `theorem` | [bergmanProjection_idempotent](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-idempotent.md) | 107 | `result-track:6f1a1230e84f749614d74b7ce2a968bf72c7fa1709206851ef87d0a03b032a15` |
| 16 | `theorem` | [bergmanProjection_adjoint](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-adjoint.md) | 114 | `result-track:44716c01f24966fb75c14632ecfa7fd2e4350ac4e2ddaf5f01a49cd647aee359` |
| 17 | `theorem` | [bergmanLift_norm_le](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanlift-norm-le.md) | 119 | `result-track:a81793878c3548c1cf8b7b6d12d888e2e555829287ef303e8a642c90e68a0fb4` |
| 18 | `theorem` | [bergmanProjection_norm_le](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-norm-le.md) | 125 | `result-track:05d610bcad9b97fc6c146f1c3400dce1300d0fae2e1a4ce18f2f4dd74346a0bd` |
| 19 | `theorem` | [projection_residual_inner](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projection-residual-inner.md) | 134 | `result-track:78c003f1596b9705841cad9ad9aacc64486ddb2fee79a7da4a187db828d237cf` |
| 20 | `theorem` | [bergmanLift_residual](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanlift-residual.md) | 142 | `result-track:0489688f125ae5064a2a99565cc8521169d1f12118f486f680efcbb573a97b67` |
| 21 | `theorem` | [bergmanProjection_eq_zero_iff](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-eq-zero-iff.md) | 147 | `result-track:4b14d0ab95f4b6e65fff6ba80bdc2c761ca2f4aae9479b9ab4e90593accd124e` |
| 22 | `theorem` | [bergmanProjection_bestApprox](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-bestapprox.md) | 162 | `result-track:4686804818dad971476a0aaae64205dccdbb8caf5d974a9be52bad6acd5d3766` |
| 23 | `theorem` | [bergmanProjection_unique](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-unique.md) | 170 | `result-track:d9dc7a7174f9f3d7a188f105631e800f5b511832d99c080efa1bd5a5b33ee555` |
| 24 | `theorem` | [existsUnique_bestApprox](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/existsunique-bestapprox.md) | 182 | `result-track:60097d6f5a914a10d8c3b06190b4b49f2dcf0418c667eda28da1c2691bcf84fe` |
| 25 | `def` | [projectedFunction](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projectedfunction.md) | 190 | `declaration-track:98ccbb6fa140fb72805330d1752852e6e85922d77532ad1f542e4d3a66913922` |
| 26 | `theorem` | [projectedFunction_finite](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projectedfunction-finite.md) | 193 | `result-track:d4b1d6da872b40a8c467f96a081ebd4ea9d708abb1325e3ee8b9a24a7095350e` |
| 27 | `theorem` | [bergmanProjection_ae](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/bergmanprojection-ae.md) | 198 | `result-track:6af2aea8a72fe2e84c6e30cb5f69b4d873d5a3a2e0d97ef68b4c791455fdab2f` |
| 28 | `theorem` | [projectedFunction_embedding](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projectedfunction-embedding.md) | 203 | `result-track:7a60eb73a69bd771cc8d26e33d7ba981e1f23e1ff00447fe8bdbd871ab8ab150` |
| 29 | `theorem` | [kernel_cross_ae](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/kernel-cross-ae.md) | 208 | `result-track:2745d8cc1ca44069c035b59d008c7eb032d164d32ad9811404aab3652ce507c3` |
| 30 | `theorem` | [projection_kernel_integrable](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projection-kernel-integrable.md) | 217 | `result-track:57ed9ad79482d726ba3145e9f3d62ef94477f91257382852bdc5a30a21ac6002` |
| 31 | `theorem` | [integral_projection](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/integral-projection.md) | 224 | `result-track:f95805d3832f904c2bf03a00a58d03fc447a5e9f00001472991291d62db987ad` |
| 32 | `theorem` | [integral_projection_toLp](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/integral-projection-tolp.md) | 237 | `result-track:8292fcdc583b96c7ad60d8ec8b384272df7bb6de5479b2c521b37c0151328995` |
| 33 | `theorem` | [projectedFunction_zero](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projectedfunction-zero.md) | 252 | `result-track:3b3914ea58a9244c280d5d94c110b5bafedc7eb10e41142ce8978c0668c09c11` |
| 34 | `theorem` | [projection_not_zero](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/projection-not-zero.md) | 261 | `result-track:35c8d1542d6f4732bd26b40f725f4b9ae34f72f998c967cd55dfe0115b595f36` |
| 35 | `theorem` | [disk_projection_not_zero](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/disk-projection-not-zero.md) | 272 | `result-track:051193584dff14e8d8498b7c965e73ac0c2c4af1aeef22706a59b385a5484d1a` |
| 36 | `theorem` | [spike_not_recovered](../../../../MeasureAndIntegration/HolomorphicAreaProjection.lean/declarations/spike-not-recovered.md) | 280 | `result-track:e756cda7fc16b585b8f47203166aa7211ee0ea2f122fa866c5d5a30720aac912` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddf08d168973aa35ac1884a7a329eb256a8e76d4b38e22afa37caaa4e0a9f4a1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/HolomorphicAreaProjection.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
