# Verification target: Filtration Namespaced Mem Lp Limit Process Of ELp Norm Bdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f45749d3fc89b982da163f5915bbbdf22be1ee9",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f45749d3fc89b982da163f5915bbbdf22be1ee9`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.PreorderRestrict` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/filtration.md) | 51 | `declaration-track:e69498c755432f7c819be75a5012aea3bcec2bbd49d7a7ca406fd49f4c53e90d` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-3.md) | 61 | `declaration-track:2696a790932805ad97511e7694281f22595ccce30f2e8823eafd8ad2c69f31cb` |
| 3 | `theorem` | [mono](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/mono.md) | 68 | `result-track:645106f57f5c6477919846ad5518ff5928f10cdff395364cb8f0376118ccc7c0` |
| 4 | `theorem` | [le](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/le.md) | 71 | `result-track:ddd0d0ee044c53d25864ce745c0121226e8da61b372f71e268db8c8abf167ba9` |
| 5 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/ext.md) | 75 | `result-track:01c9cb9f897c0614c451407b745ce9bc1b3fd73be85beb051506d43688ddcc87` |
| 6 | `def` | [const](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/const.md) | 80 | `declaration-track:0019670c769cdfaca6aca546e5480c35699cfdefcda0e9a3605c58d3b970e518` |
| 7 | `theorem` | [const_apply](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/const-apply.md) | 84 | `result-track:9d67dedc4a46a3fb52e710f82adcce0e4cb6467e8ef9372e5dd6106fa59bc0f1` |
| 8 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-8.md) | 87 | `declaration-track:83bbb67dc719c8f8c27f758333c5287cd431b5006354e9064c23e1c543ed67d2` |
| 9 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-10.md) | 90 | `declaration-track:f79b58493ca1748024dbea6437bc9926b8075b5cf6db7dd3044bd1ce33196a94` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-9.md) | 93 | `declaration-track:a1a39ec6b83a8e28de354beeab2b44fcac48b761b67d54db62abfca89f8d0134` |
| 11 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-7.md) | 96 | `declaration-track:797cf585c1d0f85d11642dcf29bd85489fb535723cdb6cd289899f13f7288035` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-6.md) | 99 | `declaration-track:6996e178e57a2959eed9fac4afea950bf4bf08d0040b93ed2538f8008b2a042d` |
| 13 | `theorem` | [coeFn_sup](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/coefn-sup.md) | 107 | `result-track:a2b3f166cf5c0bbe5cbfa1b3f1ce8a42791a339748bbb3bced3a92ba67a54dc9` |
| 14 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance.md) | 110 | `declaration-track:0ae0e00a1ae9481f05a048b7a3d9f5503e7c9357052f916cf0ce7979ede04a0b` |
| 15 | `theorem` | [coeFn_inf](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/coefn-inf.md) | 118 | `result-track:519739a78f35a1b1865c9096eee8009166b1837b654e16a10c321d1bceb4ad1e` |
| 16 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-5.md) | 121 | `declaration-track:53c8fc68c39b743613251d434e523f5e540a2bfa50a2921a4ccef27ae3d9cff6` |
| 17 | `theorem` | [sSup_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/ssup-def.md) | 139 | `result-track:70bcfacdfc2c16a620bec2984677f408494bc5ead676c3bb4da3a092762b1232` |
| 18 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:4743bf857878a20fce01aa6c2b4fc93d72da0b69300084a7d1bee17a99de87fa` |
| 19 | `theorem` | [sInf_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/sinf-def.md) | 163 | `result-track:cf2249413518fed7106f72822b454573e14c424972f12e4ebd5ec9b3185e05d6` |
| 20 | `instance` | [instCompleteLattice](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instcompletelattice.md) | 167 | `declaration-track:ead8001909c0de6bfdbdd040efa656c8ce5e241242be5ce051629c4f8308d0d1` |
| 21 | `theorem` | [measurableSet_of_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-of-filtration.md) | 205 | `result-track:a11f514c8cfa893af2965515d9615c0f19649ad2cb63a4f32823a48de440a3d9` |
| 22 | `class` | [SigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/sigmafinitefiltration.md) | 211 | `declaration-track:dab64c958d1413d45d3f6d954b0f4c2bee8b510c2d7465241a6b64ffd8db538e` |
| 23 | `instance` | [sigmaFinite_of_sigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/sigmafinite-of-sigmafinitefiltration.md) | 214 | `declaration-track:2c0b8cb7afb6099df84af93a87ff6b23256dc7b59d3c565a41fb080ce5b6b4c5` |
| 24 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-2.md) | 218 | `declaration-track:0f99ab1bf2cd31711c488cd3e2991ef7ec006d96f8844cb2a63813ccb5871f70` |
| 25 | `theorem` | [Integrable.uniformIntegrable_condExp_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/integrable-uniformintegrable-condexp-filtration.md) | 224 | `result-track:fd02a5fc2ed45bceddc6f55b4c3337c7b61eea1d876e33612f65611160fb2ac8` |
| 26 | `theorem` | [Filtration.condExp_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/filtration-condexp-condexp.md) | 233 | `result-track:5fde7e7d9df6ab887fe66c690c228654c480eabc284b3861d5cb7b518037cf4b` |
| 27 | `def` | [filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/filtrationofset.md) | 244 | `declaration-track:4a92fe01cb47e84657f6233059dd4e98ab7f4b32180f3059f3140d8082219e00` |
| 28 | `theorem` | [measurableSet_filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-filtrationofset-source-edition-2.md) | 249 | `result-track:ae6779d83edb8faa072c3f5d24e9ee539321e37920cad508af37bb514b97a00e` |
| 29 | `theorem` | [measurableSet_filtrationOfSet'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-filtrationofset.md) | 253 | `result-track:a09458892a9baa3be3d52d421e134fbf62eb6775d27a52f0a42628447c10b5f9` |
| 30 | `def` | [natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/natural.md) | 267 | `declaration-track:0e6d35fc3e0fda52657181f122592927d787ceb6434cee5b383f24aab10afba1` |
| 31 | `theorem` | [filtrationOfSet_eq_natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/filtrationofset-eq-natural.md) | 279 | `result-track:37c8639aef0c05021ec35eb8a4a49f1c4ac125f7f094b42dcdd3d50c1ddd04e2` |
| 32 | `def` | [limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/limitprocess.md) | 319 | `declaration-track:a29893a3e77fbb96335584d998202d68d08eb0eb22d798242890dd9acb2de3b8` |
| 33 | `theorem` | [stronglyMeasurable_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/stronglymeasurable-limitprocess.md) | 325 | `result-track:fb19bcf687f2e7730c2ab81078372d9251a6ae086d736807b52ef4bc63ef0c16` |
| 34 | `theorem` | [stronglyMeasurable_limit_process'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/stronglymeasurable-limit-process.md) | 330 | `result-track:1eea9212e31be10285a24de62ced4fa4bb83122d4158f2d202e01a270a58282a` |
| 35 | `theorem` | [memLp_limitProcess_of_eLpNorm_bdd](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/memlp-limitprocess-of-elpnorm-bdd.md) | 333 | `result-track:b7b6db6753422a2233d38f81f312f41d873e2a54cd80131b14faf8591737a41c` |
| 36 | `def` | [piLE](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/pile.md) | 361 | `declaration-track:0b50e68c677af8e627dc10c5d5dfc74513d9e1e3eb1e9c6d8d25cdadb08c2b88` |
| 37 | `lemma` | [piLE_eq_comap_frestrictLe](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/pile-eq-comap-frestrictle.md) | 371 | `result-track:3a559e5ee7a29e357ddc79379a14f24ae398db861d91cf2a8126bfb51b648dd1` |
| 38 | `def` | [piFinset](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/pifinset.md) | 389 | `declaration-track:469425989e002335110e90dc856cef25d681770b2dcbe86a60433af9b8898115` |
| 39 | `lemma` | [piFinset_eq_comap_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/pifinset-eq-comap-restrict.md) | 397 | `result-track:c095809ae6728118cb40b9aea3ddad02a62c201ec7bb37a880dda170356287fe` |
| 40 | `def` | [cylinderEventsCompl](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationNamespacedMemLpLimitProcessOfELpNormBdd.lean/declarations/cylindereventscompl.md) | 411 | `declaration-track:0792cd561df8fd5bdc825ce8a5531047e8c0c1160aebdba55da0173eb3b5865f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d87b944fb7667972328226cce312042ef4ff489c5ba701a4aad0dd74a75c4801 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant44a895daf85439142b4223bee040d51663551a454de93adeaa0dd50c0f1efd13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
