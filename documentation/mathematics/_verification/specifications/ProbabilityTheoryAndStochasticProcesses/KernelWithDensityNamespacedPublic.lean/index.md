# Verification target: Kernel With Density Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df9241b96cb717091381bf794f301db3001cd86c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df9241b96cb717091381bf794f301db3001cd86c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity.md) | 56 | `declaration-track:6a6c8c5b9aaafc5dee178d320d6ccbd20852d095d42b80e0a64704c81804eebf` |
| 2 | `theorem` | [withDensity_of_not_measurable](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-of-not-measurable.md) | 65 | `result-track:394b21d2b9cdc93da7e85ca4e955b9dbaa5c3998b42233683b10af7339ef0105` |
| 3 | `theorem` | [withDensity_apply](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-apply.md) | 68 | `result-track:6cb47220ed58d530765f69c1c99735d888c745da59baffeea945ec7a6ac4933e` |
| 4 | `theorem` | [withDensity_apply'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-apply-source-edition-2.md) | 74 | `result-track:72d8ceac4a06ac7936d148713d795320b43a5478826db16461ee84566ac8f499` |
| 5 | `lemma` | [withDensity_congr_ae](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-congr-ae.md) | 79 | `result-track:4f66be1e31b3534b2f967c73368ba0d557cd3e32c39b2ff951f5ae8c692a976c` |
| 6 | `lemma` | [withDensity_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-absolutelycontinuous.md) | 86 | `result-track:24d1cae4dab32d0cbdb23a9016753167d64b15e5fc1fcdeaf741787669f78cd3` |
| 7 | `lemma` | [withDensity_one](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-one-source-edition-2.md) | 96 | `result-track:e4363c8e085e6b8b947eae4463c5bbbd0db61fb9f6f258215c1b22f33b9f3860` |
| 8 | `lemma` | [withDensity_one'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-one.md) | 101 | `result-track:99b86403d82b2a284e7a0ba27449b72f4e916d002e86d11f3eba52285699678a` |
| 9 | `lemma` | [withDensity_zero](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-zero.md) | 105 | `result-track:0fbca6531c8633cb10466006a80b8d16b6a9e15f7aa05e31e31b04aefff13735` |
| 10 | `lemma` | [withDensity_zero'](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-zero-source-edition-2.md) | 110 | `result-track:3f64da2f490e235d789c0e0a8832867dba65b50b57e0caef0218f2149bb63033` |
| 11 | `theorem` | [lintegral_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/lintegral-withdensity.md) | 113 | `result-track:21d4477722589435f52f0d08709ba91463e44b3f16be18890188bdf478ca063f` |
| 12 | `theorem` | [integral_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/integral-withdensity.md) | 120 | `result-track:8277229b035d2841acad22e8de6f1f4260da9c8b907abfd3ed4acd682b099e53` |
| 13 | `theorem` | [withDensity_add_left](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-add-left.md) | 128 | `result-track:d236a13e6fb54bc2d6dac01898142c8ef0b9a15c07bfe1ca674267f3dab16540` |
| 14 | `theorem` | [withDensity_kernel_sum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-kernel-sum.md) | 136 | `result-track:15b28671fb6e4ead4417876b14f707704d1435a6ee5590177dba9fd4a44b3f23` |
| 15 | `lemma` | [withDensity_add_right](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-add-right.md) | 146 | `result-track:fb9527e30212ac1108e40d57f29319aec17955aad237287e31ea3dc9dd693965` |
| 16 | `lemma` | [withDensity_sub_add_cancel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-sub-add-cancel.md) | 155 | `result-track:5e26bf0fdaa8ddfb4bb1689be57f68431d8e51da9063846d6f096375be78f1d5` |
| 17 | `theorem` | [withDensity_tsum](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-tsum.md) | 165 | `result-track:26cb74db1bedd95916aae9405a5774067dca379db4c4589342b52c43e2d4275c` |
| 18 | `theorem` | [isFiniteKernel_withDensity_of_bounded](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/isfinitekernel-withdensity-of-bounded.md) | 189 | `result-track:b675681a0a33ad970a8ce8a558ca59edc3114386b3b9437379657e2408082678` |
| 19 | `theorem` | [isSFiniteKernel_withDensity_of_isFiniteKernel](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/issfinitekernel-withdensity-of-isfinitekernel.md) | 204 | `result-track:b7a97bb4702dd7dd6478ebd93cd49e027e4d3e373dca1b886bd90e176495c5ca` |
| 20 | `theorem` | [IsSFiniteKernel.withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/issfinitekernel-withdensity.md) | 257 | `result-track:3be3048cbc8d6bd5d758994a7f2de84698f8217774c59e49a7d45e042b90afa0` |
| 21 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/instance.md) | 268 | `declaration-track:5423200c79303284507990ad46e622473cf792498232b2de8efc5eef6f3a29b8` |
| 22 | `lemma` | [withDensity_mul](../../../../ProbabilityTheoryAndStochasticProcesses/KernelWithDensityNamespacedPublic.lean/declarations/withdensity-mul.md) | 272 | `result-track:a244db2e1c4c2b5a1772679e542660605089fa7d6318f1cb9d2de42f4cac5d42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6ea6c099ee255182d4827925af7d2c1857d6bd5276fbb07eed27cc883cc1d57f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/WithDensity/Varianta7f0db2f205377102d84225e5898c4d79776fb01944f550288fb5385485f0181.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
