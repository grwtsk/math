# Verification target: Filtration Mem Lp Limit Process Of ELp Norm Bdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23c57535617369c383a9bf3a8dbfe3d310f81e7d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant4c65792f27e2d7347633a244e749859bd7c9aae7ece697956261b43ad4b80e97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23c57535617369c383a9bf3a8dbfe3d310f81e7d`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant4c65792f27e2d7347633a244e749859bd7c9aae7ece697956261b43ad4b80e97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant4c65792f27e2d7347633a244e749859bd7c9aae7ece697956261b43ad4b80e97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Cylinders` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.PreorderRestrict` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/filtration.md) | 43 | `declaration-track:f1b343d29a61d274969fc0ea9c6e6496b844df83a6037050aeb55e1c8144a13a` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-7.md) | 53 | `declaration-track:b55ba263fc1d7475187b98fff2d8effa8b9bded90a792390c620876bf366d6b9` |
| 3 | `theorem` | [mono](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/mono.md) | 60 | `result-track:836a269825aabe9c2f5e39d73f7a03783ad99a8e1474f7d30e57ef1d87eaf774` |
| 4 | `theorem` | [le](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/le.md) | 63 | `result-track:8561c7b66eb06fc5119dfbd33802915dcf2c9db28896ca827ded6a600debcc41` |
| 5 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/ext.md) | 67 | `result-track:c72a7dfcb3c21b52b5f33921e2e2eba00b2e1b4964be091ffd5617d9e3a70bed` |
| 6 | `def` | [const](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/const.md) | 72 | `declaration-track:73608c0b6e87d10c56b6505a4ff5326b3fd59a4858e1bb48ec8d59a81cc59de5` |
| 7 | `theorem` | [const_apply](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/const-apply.md) | 76 | `result-track:35123b3f376d625e0ed36371b7faaea3d1be40737aad7d8a169fdd0788f18274` |
| 8 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-4.md) | 79 | `declaration-track:8830d70f64e1ae1173c78947c73fbc1e54b407169519ecbb035b986ae3ece6ea` |
| 9 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance.md) | 82 | `declaration-track:1be40a1c7bc2d02fe3851cf77d91182194ea9ae2c15053698445ddbe936917d7` |
| 10 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-3.md) | 85 | `declaration-track:6e3fd55be8d0c753ed187087b8a4554c288adb32016b3c34a82ad135d4a7684a` |
| 11 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-5.md) | 88 | `declaration-track:9c0df0c9e6c5933ee1a788bd6e05b5e8cb03fd57eaf6cbb73540e480539611c2` |
| 12 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-10.md) | 91 | `declaration-track:fbcb0aad407aef5e28430fb3a7389a8799b61a07a41d2efafa9e2bc0e80793dc` |
| 13 | `theorem` | [coeFn_sup](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/coefn-sup.md) | 99 | `result-track:0fef73159138a327e5eb0613ee0e1cd38fcbd41ea01198f5e4c7390cedb00ab6` |
| 14 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-2.md) | 102 | `declaration-track:4a0224613da897453220f948cf9bba9169aa157e45282427c562d8114cf8898f` |
| 15 | `theorem` | [coeFn_inf](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/coefn-inf.md) | 110 | `result-track:86c193669d41308f937a70df7e78c582f552841236d11d791c9c7af7f7eab640` |
| 16 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-9.md) | 113 | `declaration-track:f3fc519af2c0d390bce1bfe542c5c3742e6274d7341a0e93a17f22f292da9a2c` |
| 17 | `theorem` | [sSup_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/ssup-def.md) | 131 | `result-track:85f9ec48786d29468710822251a075db90e328a5c3ab080c02d5478f38624f6f` |
| 18 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:aa8afe48faad74a54099eb9aef405ffea0697c3aafad510fa02d8a418ca582c5` |
| 19 | `theorem` | [sInf_def](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/sinf-def.md) | 155 | `result-track:b8caf7c14c64b4e8a7b746a3a90d459fa3092a807c9b6547f453a7e1e08e3658` |
| 20 | `instance` | [instCompleteLattice](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instcompletelattice.md) | 159 | `declaration-track:e0d6ede931ebdc6a14d6ca5b688884da455805ef96b95fced03c90b99b1d43d1` |
| 21 | `theorem` | [measurableSet_of_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-of-filtration.md) | 197 | `result-track:fd250991098248e01b42ec3660c7c8571c54ba6f6f34a96617312b4ae5e02898` |
| 22 | `class` | [SigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/sigmafinitefiltration.md) | 203 | `declaration-track:22416bcefe2752e30799edddae2117fe3ecabbf4c4a1774edd2a94c0155307e9` |
| 23 | `instance` | [sigmaFinite_of_sigmaFiniteFiltration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/sigmafinite-of-sigmafinitefiltration.md) | 206 | `declaration-track:8f52cd1cb49d2f4e97134e4a9201c025eae05c3eee186d05902573cb010c0e04` |
| 24 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/instance-source-edition-8.md) | 210 | `declaration-track:dd810d73bda040116e23d99011fe5e680b665b32896177653e891ed3dc12e985` |
| 25 | `theorem` | [Integrable.uniformIntegrable_condExp_filtration](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/integrable-uniformintegrable-condexp-filtration.md) | 216 | `result-track:09fe9fc6e8eaef823c6d9c9c0567cf995486b537e387c89ba817d94dcc4e2a3b` |
| 26 | `theorem` | [Filtration.condExp_condExp](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/filtration-condexp-condexp.md) | 225 | `result-track:f8120a5803fae5f5e34d9c38031e30ebbeea4c2eaccd73814280e4f9a24734ca` |
| 27 | `def` | [filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/filtrationofset.md) | 236 | `declaration-track:deaae1fa459bbbc305e5bb2e2c1a39220f42525245109a80fb8c644e85e4d900` |
| 28 | `theorem` | [measurableSet_filtrationOfSet](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-filtrationofset.md) | 241 | `result-track:444942eb7b5cc8386b9c39530d98f209bcdeaf1b9dd0584b1a4a5367be3a2492` |
| 29 | `theorem` | [measurableSet_filtrationOfSet'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/measurableset-filtrationofset-source-edition-2.md) | 245 | `result-track:820ec701b83cbdef89a2d2d1dab6416f71e187953b890e4226c8676eca28f7e0` |
| 30 | `def` | [natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/natural.md) | 259 | `declaration-track:f894a63f3c1a4f7b9348efb08c4061b3e5a714e93dc934c0c44aedf14d5c279b` |
| 31 | `theorem` | [filtrationOfSet_eq_natural](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/filtrationofset-eq-natural.md) | 271 | `result-track:374e9bf1917eb2e092cec462e343c4d1a55dfc8eb091b191395352bd1675c572` |
| 32 | `def` | [limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/limitprocess.md) | 311 | `declaration-track:e727f3dd2e7e6dbd02f7fa863023c0f1255c6124d29f9e4c3282fbcf9198366e` |
| 33 | `theorem` | [stronglyMeasurable_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/stronglymeasurable-limitprocess.md) | 317 | `result-track:2faa4dafbc9cb0f883caca93af63fa80e3a600fa760b8309d32013527f0be60e` |
| 34 | `theorem` | [stronglyMeasurable_limit_process'](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/stronglymeasurable-limit-process.md) | 322 | `result-track:2483224283fde4c4f4f4f5f9cb0d235c65d9a5ac5f972b1a56fb3a18375be316` |
| 35 | `theorem` | [memLp_limitProcess_of_eLpNorm_bdd](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/memlp-limitprocess-of-elpnorm-bdd.md) | 325 | `result-track:d2ab6e103d105adcf843bf1759bd19b0194fbe75100d7986f9395375c1ccae4c` |
| 36 | `def` | [piLE](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/pile.md) | 353 | `declaration-track:d3fe500acfaad55f35993a0f24841c8eb46fb3e69ce2ebc9ebc1e2d62b070443` |
| 37 | `lemma` | [piLE_eq_comap_frestrictLe](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/pile-eq-comap-frestrictle.md) | 363 | `result-track:e605dfec5cd19889ead0a85e77255734a31707615886037b72542ab3c3b1e069` |
| 38 | `def` | [piFinset](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/pifinset.md) | 381 | `declaration-track:08dbdb3ef67ba253f5c83914195d582c6f18f81e54fc7505484213bea80f1aeb` |
| 39 | `lemma` | [piFinset_eq_comap_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/pifinset-eq-comap-restrict.md) | 389 | `result-track:e685a679733bc3b2ef6945d6ce779138a9e9679d706579394ded89e9720430ef` |
| 40 | `def` | [cylinderEventsCompl](../../../../ProbabilityTheoryAndStochasticProcesses/FiltrationMemLpLimitProcessOfELpNormBdd.lean/declarations/cylindereventscompl.md) | 403 | `declaration-track:9aa99ac6cd8b1906dee3b7a24c83175c06865ae1f13a6008e2fd0a35c1efd299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e51b7e4fdd217c8d8b780cc16e5d33155177b6210ae87ba51ad7a3cee3775fa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant4c65792f27e2d7347633a244e749859bd7c9aae7ece697956261b43ad4b80e97.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Filtration/Variant4c65792f27e2d7347633a244e749859bd7c9aae7ece697956261b43ad4b80e97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
