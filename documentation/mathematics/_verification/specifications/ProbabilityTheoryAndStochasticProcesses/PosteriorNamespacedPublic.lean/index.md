# Verification target: Posterior Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9de3dc7f7fcc1d7562763981b97023360ea53889",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9de3dc7f7fcc1d7562763981b97023360ea53889`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean.json)

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
| 1 | `def` | [posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior.md) | 78 | `declaration-track:8368112a4ed371c5c3cec7fd57af14391753f850e7001f9d2b1bf3f0e6e78796` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/instance.md) | 86 | `declaration-track:4bb5647604fa394d3ae07d32d356c2baecacde587add7d6151c02568f7aed4b7` |
| 3 | `lemma` | [compProd_posterior_eq_map_swap](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/compprod-posterior-eq-map-swap.md) | 89 | `result-track:caec53805c076d9b9f56cae00f8b792f0305f9b6047ffb0482fe5ab10e9294e0` |
| 4 | `lemma` | [compProd_posterior_eq_swap_comp](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/compprod-posterior-eq-swap-comp.md) | 92 | `result-track:90d4b7f838e12e13edaf927f6a4794e9328eefedece3ade1f714cf0b4fd2d815` |
| 5 | `lemma` | [swap_compProd_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/swap-compprod-posterior.md) | 95 | `result-track:041eb650cf32a83d4c4de5e2058bef384459e722e253b30e74df4d388225b513` |
| 6 | `lemma` | [parallelProd_posterior_comp_copy_comp](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/parallelprod-posterior-comp-copy-comp.md) | 104 | `result-track:7efa63f8cb37b4f4d3de0d7a77d379e3155cf97dda3d7eb211dd27f97efa0a37` |
| 7 | `lemma` | [posterior_prod_id_comp](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-prod-id-comp.md) | 116 | `result-track:c0a5c52d5ed95ccaf0ea23fdb45445229e62a63d59965ddcaff753d9d12e336e` |
| 8 | `lemma` | [ae_eq_posterior_of_compProd_eq](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/ae-eq-posterior-of-compprod-eq.md) | 121 | `result-track:1e5d2efa0eb99bc67847b58cf3899a8fd1fbd7cf0ef59d70a17af2ee2ac743eb` |
| 9 | `lemma` | [ae_eq_posterior_of_compProd_eq_swap_comp](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/ae-eq-posterior-of-compprod-eq-swap-comp.md) | 127 | `result-track:b5e0026eb0ff187647ad482ddde290763e5f0b683da670181fd56abbb063a9c3` |
| 10 | `lemma` | [posterior_comp_self](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-comp-self.md) | 133 | `result-track:58c40e56c5fabde5454c3091f20f07b5cd5c20288456e760109fa11cbf47d8e4` |
| 11 | `lemma` | [posterior_id](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-id.md) | 138 | `result-track:0dfe2ce91be258cc17a026ca09027c0955153171c54b096221a84ad0de2204b7` |
| 12 | `lemma` | [deterministic_comp_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/deterministic-comp-posterior.md) | 146 | `result-track:adc11b71cfe89b1c4c22cdfca8f9982c5cbfd878cc5da467a28b869edd5130c1` |
| 13 | `lemma` | [absolutelyContinuous_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/absolutelycontinuous-posterior.md) | 168 | `result-track:2a9cc15f4a0a00bc5f65fee73591e6324f749316df83abe0f74a91f04b6b76ac` |
| 14 | `lemma` | [posterior_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-posterior.md) | 185 | `result-track:333795bf2debd9d6c496fc440ded621201c04e11fe158658f0f5b9458bbdd51a` |
| 15 | `lemma` | [posterior_comp](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-comp.md) | 194 | `result-track:5d23750156535aed95223049b56989dc982531149a73b780d816de6c78003856` |
| 16 | `lemma` | [absolutelyContinuous_of_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/absolutelycontinuous-of-posterior.md) | 220 | `result-track:7f1407a014ac13bc80d3eeac65f9063476e67755e2c1ea6c631f8be8b456769d` |
| 17 | `lemma` | [absolutelyContinuous_posterior_iff](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/absolutelycontinuous-posterior-iff.md) | 232 | `result-track:e22648934dcbb0214f8768161cb549642fb20542a58091fa2ecd24bdca345fc0` |
| 18 | `lemma` | [Kernel.absolutelyContinuous_comp_of_absolutelyContinuous](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/kernel-absolutelycontinuous-comp-of-absolutelycontinuous.md) | 235 | `result-track:3140964b9b787837e32770d1597d08225f39dee7c502207e1a65a5bf1434fe55` |
| 19 | `lemma` | [rnDeriv_posterior_ae_prod](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/rnderiv-posterior-ae-prod.md) | 241 | `result-track:f0d6e0af75476196b6c4153fdd3724eeb9567f6ba777927564ba3ba1a3c27c78` |
| 20 | `lemma` | [rnDeriv_posterior](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/rnderiv-posterior.md) | 276 | `result-track:64a95e3d5a67d26b8322d9c8c66155502214aee6ec6e01398389f33a49f93c28` |
| 21 | `lemma` | [rnDeriv_posterior_symm](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/rnderiv-posterior-symm.md) | 284 | `result-track:1f0e0c9b9989b5d2a5b211cb82d663e8914f84c1876154bca20710ec3d05ba6b` |
| 22 | `lemma` | [posterior_eq_withDensity](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-eq-withdensity.md) | 295 | `result-track:04b18425b7b9ba285254ad63460df5198d71361fac912383d2fd2adfc9e1f1e7` |
| 23 | `lemma` | [posterior_eq_withDensity_of_countable](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-eq-withdensity-of-countable.md) | 305 | `result-track:6a9c21cab0dc48ca2ea764bcf483a42df79351b77f3861d7065f92550d957bd7` |
| 24 | `lemma` | [posterior_boolKernel_apply_false](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-boolkernel-apply-false.md) | 321 | `result-track:9475028d840895d3715b4c70cf7b1e0a2f6adcebf4903186488f0376268de120` |
| 25 | `lemma` | [posterior_boolKernel_apply_true](../../../../ProbabilityTheoryAndStochasticProcesses/PosteriorNamespacedPublic.lean/declarations/posterior-boolkernel-apply-true.md) | 329 | `result-track:8a5290260ed59ebc115dab1c63a01aa43891d43efe0a56d3a5725ea9cff596ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03f4e6cb5a1436ab533e307d5e1093948fd51f555279d067c587e95f79e5fddd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Posterior/Variant5d5f489b1469afbfa3008d458a1f2c56f02e14339d30758533cdcf3ed3fcea13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
