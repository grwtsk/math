# Verification target: Condexp Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45df1ede5b0efb7e1c2777d9e55efc9d3d569f64",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45df1ede5b0efb7e1c2777d9e55efc9d3d569f64`.

Source path: `GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean.json)

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
| 1 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable.md) | 56 | `result-track:223445993def0dc637d9eb24e9c05002736aa07f56e516f0fefb88dad65ddf57` |
| 2 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-3.md) | 62 | `result-track:65edb40b0a686f88ebf1982760360be25288ec30262663a7696c6fe621393c53` |
| 3 | `lemma` | [condExpKernel_eq](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-eq.md) | 86 | `result-track:dd9c80761f74d969438760dc070ae74ef1ec6a4540d27a72dd985f87da0f0a14` |
| 4 | `lemma` | [condExpKernel_apply_eq_condDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-apply-eq-conddistrib.md) | 92 | `result-track:a02770b87eacb490e7b2065937e7d41214b8a6326e080a570d680de7dcf224cb` |
| 5 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/instance.md) | 96 | `declaration-track:84b25157f1917ba4d5ef9d57a6efb9ed5187759ca8a119c1b1d34cea7f06f9f8` |
| 6 | `lemma` | [compProd_trim_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/compprod-trim-condexpkernel.md) | 101 | `result-track:785c13866ef189177d7262c2cfe0fd5ca9a859a9dd1cbf492c08d20d0a6806d9` |
| 7 | `lemma` | [condExpKernel_comp_trim](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-comp-trim.md) | 114 | `result-track:91c964701e10d6dfeebca6dfc1d9179ba72afe09153a2b8bff612061597cc763` |
| 8 | `theorem` | [measurable_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/measurable-condexpkernel.md) | 123 | `result-track:524189d525113bf0702e0eec8d4d36855ee184db39bc786ec2db9c8cbd2e44cd` |
| 9 | `theorem` | [stronglyMeasurable_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/stronglymeasurable-condexpkernel.md) | 127 | `result-track:9b473b1431b6e34df923d7c591b6cf1428eb336579b645b76baa1d7e64b541e8` |
| 10 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-9.md) | 131 | `result-track:c2b2fabe4006508bbc228ccc66546c292db014aa5e0f447e0863a4dbecebcb8c` |
| 11 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-5.md) | 138 | `result-track:802ab864e791cd27e53abd13e82f47dee11dced8f0ae89d7b1547d6f7961842d` |
| 12 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-2.md) | 143 | `result-track:31e4a32d2e1c8a68f91bb9e7f5226d0defd88105a847c087241fe475f8537d9a` |
| 13 | `theorem` | [aestronglyMeasurable_integral_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/aestronglymeasurable-integral-condexpkernel.md) | 152 | `result-track:ea3edbea97b2de1b82b669faea56de7f2c28bd54aea4836873b357619f3abcd9` |
| 14 | `lemma` | [aestronglyMeasurable_trim_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/aestronglymeasurable-trim-condexpkernel.md) | 163 | `result-track:a9143ef300f9be39f150557cdf68f2e99c80a7a1b887c4a4d9d573b1bf333be2` |
| 15 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-6.md) | 175 | `result-track:916ad1f1da8dda86a9299b76819667b3f5ab563b8ef0c2103fa929a423e15104` |
| 16 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-7.md) | 183 | `result-track:9ce3b1be091d86185bd7043a43f20ccb576a541bb62c0de2ecbb6ee59d5ec247` |
| 17 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-8.md) | 191 | `result-track:bb5b3c0eb0043006415a5ad5f92a6d53d5969ecdabf0248f8d886d9889440172` |
| 18 | `theorem` | [Condexp Namespaced Public](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/root-grwtsk-analysis-measuretheory-rootmeasuretheoryaestronglymeasurable-source-edition-4.md) | 200 | `result-track:6e46a2bbb4a5fa387e62e5e4e75ec11640264e37040ff72a7e11c0cae5acba20` |
| 19 | `theorem` | [integrable_toReal_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/integrable-toreal-condexpkernel.md) | 209 | `result-track:ce3fb40d515b64fb1c79b2955cea00beb4a4798bd275987b300d4f9ad70caf6c` |
| 20 | `lemma` | [condExpKernel_ae_eq_condExp'](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-ae-eq-condexp.md) | 217 | `result-track:0d4bbb43998d6325c2894767bf3b16fc3d36440e32c44c9068c0ea2c89834d05` |
| 21 | `lemma` | [condExpKernel_ae_eq_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-ae-eq-condexp-source-edition-2.md) | 228 | `result-track:6f4009b63951e534e1df33c40b0aa289a273ea58da64a0618b5425456d2956fb` |
| 22 | `lemma` | [condExpKernel_ae_eq_trim_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-ae-eq-trim-condexp.md) | 233 | `result-track:045089406a85520f341cec266bdf1952061119169be6db0c508415915ecc2bfa` |
| 23 | `lemma` | [condDistrib_apply_ae_eq_condExpKernel_map](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/conddistrib-apply-ae-eq-condexpkernel-map.md) | 241 | `result-track:0c56e43d6a8fe8e5f55565f0807c945c6790441ceb0ea2a6fa3a77f42dc757df` |
| 24 | `theorem` | [condExp_ae_eq_integral_condExpKernel'](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-ae-eq-integral-condexpkernel-source-edition-2.md) | 251 | `result-track:c0686aba8dd67f894aebd118c50200007105da18a05fcfddce4eea11b4fa50a7` |
| 25 | `theorem` | [condExp_ae_eq_integral_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-ae-eq-integral-condexpkernel.md) | 264 | `result-track:b08e793e1145bea6138e4faddbecd8e36ad169bd72e553c592223eb0eaa81306` |
| 26 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel_of_stronglyMeasurable](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel-of-stronglymeasurable.md) | 270 | `result-track:ca1416cb33bea1c908057181e6d456cddda1af0c087825b313c920649c5d9575` |
| 27 | `theorem` | [condExp_ae_eq_trim_integral_condExpKernel](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-ae-eq-trim-integral-condexpkernel.md) | 281 | `result-track:430b31f476aadd1b7f89f73c7672cb9df406c688cd252b04e2bddebf3a3abfd0` |
| 28 | `lemma` | [condExp_generateFrom_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-generatefrom-singleton.md) | 301 | `result-track:1cc12d19f896544099d387eea74b1f9268cd55ea8d1572e30607469365d217cd` |
| 29 | `lemma` | [condExp_set_generateFrom_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexp-set-generatefrom-singleton.md) | 331 | `result-track:d100142d6984edaae531a2d96f9cf09213dd22c33dfb66cc4f458f05d3205839` |
| 30 | `lemma` | [condExpKernel_singleton_ae_eq_cond](../../../../ProbabilityTheoryAndStochasticProcesses/CondexpNamespacedPublic.lean/declarations/condexpkernel-singleton-ae-eq-cond.md) | 336 | `result-track:bcd84564d6524b7323a1671197e7e220d15776c84c9b53fa3b87959289ee760e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f334a642dd0c41bb632e40a220c8b447cbb84fb4a7303355dc65c584571b80fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Condexp/Variant5a5f3337bf2e90158d80c0989b24116f10d4a0d1d1408a4aa11f9bd9a1887aa2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
