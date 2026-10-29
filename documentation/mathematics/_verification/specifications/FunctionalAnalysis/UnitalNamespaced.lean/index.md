# Verification target: Unital Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c8424fa2e7b1917643fc95b1d3faf4aa1af414",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/UnitalNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/UnitalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c8424fa2e7b1917643fc95b1d3faf4aa1af414`.

Source path: `GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Quasispectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ContinuousFunctionalCalculus` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Star.Real` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.StarOrdered` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousFunctionalCalculus](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/continuousfunctionalcalculus.md) | 170 | `declaration-track:a9dd5cef63111cc95fba01f8109c7c687c69c6d85ba024cd7c22680dc87816f1` |
| 2 | `class` | [ContinuousMap.UniqueHom](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/continuousmap-uniquehom.md) | 199 | `declaration-track:222265381eadd908bb0bd065693b56c5073608bc13c67fc76d18a82c1037a54b` |
| 3 | `lemma` | [ContinuousFunctionalCalculus.isCompact_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/continuousfunctionalcalculus-iscompact-spectrum.md) | 215 | `result-track:2eba2a2108d323ec7b0488fa647771a9629c4c91a6778b251c43805a7110b06e` |
| 4 | `lemma` | [StarAlgHom.ext_continuousMap](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/staralghom-ext-continuousmap.md) | 219 | `result-track:12f59bffb06228bf6121550ab73fc7fe16d2f6ac71f903ea1136911a18d7eefe` |
| 5 | `def` | [cfcHom](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom.md) | 244 | `declaration-track:afca1bbcc31017e3a624d0d3d1de74bd40d0fbe13ec6a487468824416ef7494f` |
| 6 | `lemma` | [cfcHom_isClosedEmbedding](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-isclosedembedding.md) | 247 | `result-track:fc30129717142bb57bcb58958f027be3b3dc4efd85a866305b03549cbfb273e5` |
| 7 | `lemma` | [cfcHom_continuous](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-continuous.md) | 252 | `result-track:8baad8263528e5da98ca6784c20cc7954f9b48331859b1c0e0ba00bebc75d68f` |
| 8 | `lemma` | [cfcHom_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-id.md) | 255 | `result-track:e35e72f002e4b75e8295a802c306ee29fc7c7f3934465ddd075962deab6cc695` |
| 9 | `lemma` | [cfcHom_map_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-map-spectrum.md) | 260 | `result-track:77b743bb7c20429211795540bfd1411ba8e371b03ed0a09fdc477ccde79bdadd` |
| 10 | `lemma` | [cfcHom_predicate](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-predicate.md) | 264 | `result-track:ba0dad64847766a9184a1977c7ddecdc4ef0cb91854841c245343fc8bd27201d` |
| 11 | `lemma` | [cfcHom_eq_of_continuous_of_map_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-eq-of-continuous-of-map-id.md) | 269 | `result-track:62d6c4c35d2aaab2933b8751f53b76927c4fb3b2e004dcab1da8b7cf8d59884f` |
| 12 | `theorem` | [cfcHom_comp](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-comp.md) | 275 | `result-track:f6686456a3dd0bbda523ee4775e22de75ccfc5a680ff0676dc63ad939909ddc3` |
| 13 | `def` | [cfcL](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfcl.md) | 295 | `declaration-track:3bf2bbc79151cca1d9b3a3caf97f87ba47572b9fd5361dca2107a3149cb7a25f` |
| 14 | `lemma` | [cfc_apply](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply.md) | 323 | `result-track:c42de89958b3a85655b22efef5f895532935a4fc6898565cc151da01cb5bd9ad` |
| 15 | `lemma` | [cfc_apply_pi](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-pi.md) | 326 | `result-track:b5f6d5662fb3da28d2118bb4cd5ed6839c1f5f92ae441694235671786102cf9a` |
| 16 | `lemma` | [cfc_apply_of_not_and](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-of-not-and.md) | 332 | `result-track:ba63db5bcfbd00902fc66e864de708c8749fb79096f533638d96a123f0130e39` |
| 17 | `lemma` | [cfc_apply_of_not_predicate](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-of-not-predicate.md) | 336 | `result-track:862584255c5d2bd3998d3749de626bc9cc67ee5aa4392b4804732ede257bd8e8` |
| 18 | `lemma` | [cfc_apply_of_not_continuousOn](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-of-not-continuouson.md) | 340 | `result-track:290538270e9f743fa84c47042ba2610c0f987337bce1ba6efceb18f1ce78903c` |
| 19 | `lemma` | [cfcHom_eq_cfc_extend](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-eq-cfc-extend.md) | 344 | `result-track:7ab86a054e96ed50df27b93a733ff3ee94bff740a22e8b7dc45b5542da21c29e` |
| 20 | `lemma` | [cfc_eq_cfcL](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eq-cfcl.md) | 353 | `result-track:a1e01e3bd604872044d90ce97693f4bbbe15c2b11f6a2be07dbe9c70f9a11509` |
| 21 | `lemma` | [cfc_cases](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-cases.md) | 357 | `result-track:cb9c6eee3f792229d233eb7e0d9d1b5bd7b299247423fd866ee24564c327c48f` |
| 22 | `lemma` | [cfc_commute_cfc](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-commute-cfc.md) | 368 | `result-track:81f1113794a1cfeabb43d980a6bd89e4065a813e39afc2aa5a873a90b345d9fa` |
| 23 | `lemma` | [cfc_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-id.md) | 374 | `result-track:450386bf06e68c89e051467624af8df61287410197622d447dc21b595a58ac11` |
| 24 | `lemma` | [cfc_id'](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-id-source-edition-2.md) | 378 | `result-track:cfee19f70001d983bb0a9698cbc681bbb767ddaad6abc177d7f120870fb60af2` |
| 25 | `lemma` | [cfc_map_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-map-spectrum.md) | 381 | `result-track:5aa087a0bbb8bef8e06dca4657ad9583fcac8173cc2892b65c81f955a097e6bd` |
| 26 | `lemma` | [cfc_const](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const.md) | 386 | `result-track:18f8dd6107cdb5396aeb51c47769883d06a3c4907c152bce5c6037368c908deb` |
| 27 | `lemma` | [cfc_predicate_zero](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-predicate-zero.md) | 393 | `result-track:79f0992e60cd0a203b9087a799b099b31452c45d79bfd24b4c0555816c4acd86` |
| 28 | `lemma` | [cfc_predicate](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-predicate.md) | 396 | `result-track:0022bdbf6063534990ada011828bcf4c9728e781f1aa4d6b12e0b039c421b4e5` |
| 29 | `lemma` | [cfc_predicate_algebraMap](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-predicate-algebramap.md) | 399 | `result-track:b3c1378b2efef58f4cd365922abb5d472277bccad76c24edebc89292561202d1` |
| 30 | `lemma` | [cfc_predicate_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-predicate-one.md) | 404 | `result-track:115ec9f65eec0f6dcf29ee9b27d9bc857dd8310831239d92fc704354762bf876` |
| 31 | `lemma` | [cfc_congr](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-congr.md) | 407 | `result-track:7f7a211d71c9696a833524e3fddf8d2ca3d529ac67667ec8a3565dc190d46063` |
| 32 | `lemma` | [eqOn_of_cfc_eq_cfc](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/eqon-of-cfc-eq-cfc.md) | 418 | `result-track:64f0e9e7a2fd71c8275629fe7d8ec9e9df5d5654672f640dd84061118f138542` |
| 33 | `lemma` | [cfc_eq_cfc_iff_eqOn](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eq-cfc-iff-eqon.md) | 429 | `result-track:f032e8dfc33213806a111e1a9885a68058283b2d183425719f74c69fea5bf954` |
| 34 | `lemma` | [cfc_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-one.md) | 435 | `result-track:6f42e02674fcfa6beafec4b73c056e7662788b1882464d722ef5fbc727b40e45` |
| 35 | `lemma` | [cfc_const_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const-one.md) | 439 | `result-track:3244c927da8f40fc4a318353c7c8c71baba1941187e6dc35de312772009165e8` |
| 36 | `lemma` | [cfc_zero](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-zero.md) | 442 | `result-track:b64ee82ec5ab4ad104fcf680fc304773ca223a91e9e3e28ad1a2ca90881cdbc0` |
| 37 | `lemma` | [cfc_const_zero](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const-zero.md) | 448 | `result-track:d302b672e3f1ec468eccf2989a0be04cb06a154854c4db5d74e17322c67ba690` |
| 38 | `lemma` | [cfc_mul](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-mul.md) | 453 | `result-track:0b12a8a46172f8b0e4f4c8eba18609e9f6ca571e76bdbdff05925a93069ca35d` |
| 39 | `lemma` | [cfc_pow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-pow.md) | 461 | `result-track:6957b8792824c6632ba5faa8850c325650f633085218cfb1c094cb326055f846` |
| 40 | `lemma` | [cfc_add](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-add.md) | 467 | `result-track:cb6c9009e341a44d2038d8d37678b2dec1c6fd2f51a56a66adb70b9639d669d8` |
| 41 | `lemma` | [cfc_const_add](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const-add.md) | 475 | `result-track:7f360d88e5afbf7b1e4bb8d1f93b86c9c51e7842a6ea01d25cbbd74eb3b1129c` |
| 42 | `lemma` | [cfc_add_const](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-add-const.md) | 481 | `result-track:353779284c615646aa6ec0cf7b0e22b527a9664e4fb66e69729d5773b6a4c72e` |
| 43 | `lemma` | [cfc_sum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-sum.md) | 489 | `result-track:f299749f84a6086c13979786b47d768aa1aa6a3d664aa386b508988be5aa8840` |
| 44 | `lemma` | [cfc_sum_univ](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-sum-univ.md) | 505 | `result-track:d3e98f4f5037351593a88ad2a2493ca840c5df7f31657ecdf5f11b111c98b8ad` |
| 45 | `lemma` | [cfc_smul](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-smul.md) | 510 | `result-track:beb5b37b1e8555d014c011d36e0bf30ce4acd89d926e0b7b9df3b460aa18e97f` |
| 46 | `lemma` | [cfc_const_mul](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const-mul.md) | 521 | `result-track:6e2a8fa8a7b88330bf9853d080a8269d68401178cb9920d6be879fc823dfe425` |
| 47 | `lemma` | [cfc_star](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-star.md) | 526 | `result-track:58e2613f66919f7b8344aafc9b2c9d76387bf65025987298ea8a7cb9cf6acf2e` |
| 48 | `lemma` | [cfc_pow_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-pow-id.md) | 536 | `result-track:f2c393a2e8f59bf7d9f3a8f65120565dddb3946e7f0480213d03b3cb930a55d9` |
| 49 | `lemma` | [cfc_smul_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-smul-id.md) | 539 | `result-track:27b5a593a8d3b40be66abc333ed55ec3918b60fddabdd4500a892158af595a71` |
| 50 | `lemma` | [cfc_const_mul_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-const-mul-id.md) | 544 | `result-track:4317c575a757b73a9979ea7bce1a10ce54c69b540ac4dee525490f4bc715ae45` |
| 51 | `lemma` | [cfc_star_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-star-id.md) | 548 | `result-track:8bc853d9f815e2fdb1d5ef0281038c684b0e53e2987a644dda1317e112727078` |
| 52 | `lemma` | [cfc_eval_X](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eval-x.md) | 554 | `result-track:8280372086784edbac0bbbedcc1045e6e859a45b487f18b674c2f7c866496548` |
| 53 | `lemma` | [cfc_eval_C](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eval-c.md) | 557 | `result-track:a40c6ec4a1c7f7ad0ee6441d53d7bbca357e15b8627b5aea0d7e0016be6cc2ff` |
| 54 | `lemma` | [cfc_map_polynomial](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-map-polynomial.md) | 561 | `result-track:3bd22d0c15eff76ffb45c438890698cd9e03e89622a6c0c786aea3a2aa85ec68` |
| 55 | `lemma` | [cfc_polynomial](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-polynomial.md) | 572 | `result-track:43f13da46272429efc3dfced138719ea9120897e99cebe43953565730ed7510b` |
| 56 | `lemma` | [cfc_comp](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp.md) | 582 | `result-track:e5bf745f73ce7841b5c410177d1d127aa6408fe732852ae26f987550e8f1984c` |
| 57 | `lemma` | [cfc_comp'](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-source-edition-2.md) | 599 | `result-track:eeb26811544a044917374d4e2bebd616d1e121bd6325b3f2493e2714b4614916` |
| 58 | `lemma` | [cfc_comp_pow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-pow.md) | 604 | `result-track:a77736ae580bbc49d19d568f9fcc1290e818f48ba4e73856b49c37d3558a5481` |
| 59 | `lemma` | [cfc_comp_smul](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-smul.md) | 609 | `result-track:7b33cc87e3f1a145a8e9957e0885017b257a5093e7d8c8b57e1b6a40d534b3de` |
| 60 | `lemma` | [cfc_comp_const_mul](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-const-mul.md) | 615 | `result-track:78563ff35e1ad9f98fbfde365d6d07d5674ec6abea09c1bb1bae3870ce20ae89` |
| 61 | `lemma` | [cfc_comp_star](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-star.md) | 620 | `result-track:9cfabcd23a37553c061ec45c27b1403572d68a7def53db7fbfa12a0cff84b1c6` |
| 62 | `lemma` | [cfc_comp_polynomial](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-polynomial.md) | 626 | `result-track:6946d5962bd4e8234b6a2c9a4730ff783d0cd777abfeca128d22f3d38c691b0e` |
| 63 | `lemma` | [CFC.eq_algebraMap_of_spectrum_subset_singleton](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eq-algebramap-of-spectrum-subset-singleton.md) | 633 | `result-track:4e9ce51e6183ddc7fcf00e9cb24f4ecd391ed92bfc3524862ed6c03c0e984380` |
| 64 | `lemma` | [CFC.eq_zero_of_spectrum_subset_zero](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eq-zero-of-spectrum-subset-zero.md) | 638 | `result-track:4295b43819dca5031b3ad00a599d7f052329440e489db552bd106402cfc093d3` |
| 65 | `lemma` | [CFC.eq_one_of_spectrum_subset_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-eq-one-of-spectrum-subset-one.md) | 642 | `result-track:d744fb2b10ce77fcbec91431a58f58a76471655ba9cce369a7a92277a4215864` |
| 66 | `lemma` | [CFC.spectrum_algebraMap_subset](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-spectrum-algebramap-subset.md) | 647 | `result-track:0ca4ea28d82b3fec34db335b52239758ef0ccd983fe90548ee974c53993874a2` |
| 67 | `lemma` | [CFC.spectrum_algebraMap_eq](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-spectrum-algebramap-eq.md) | 654 | `result-track:1dccff11a67fdf932a3e6a2e64e3f49660375f06e9027476fc778ac2ad91413b` |
| 68 | `lemma` | [CFC.spectrum_zero_eq](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-spectrum-zero-eq.md) | 661 | `result-track:940949bb731cad57be3b99fce2bb9f17367c05915311d7cbe84b3843e198c51e` |
| 69 | `lemma` | [CFC.spectrum_one_eq](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-spectrum-one-eq.md) | 667 | `result-track:17e9f1bbe6940c9c0d105183bad0990c748678d34d0f9379c3e3cc2ebd7af014` |
| 70 | `lemma` | [cfc_algebraMap](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-algebramap.md) | 673 | `result-track:aeb442af654c2612a391c604be996a283574bd3ee36ce08f38f0229b104904b2` |
| 71 | `lemma` | [cfc_apply_zero](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-zero.md) | 683 | `result-track:5e6e9f2de75140738cf3cf3eb52fa2850eeed4d64304482866b1c71d9850c3c2` |
| 72 | `lemma` | [cfc_apply_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-apply-one.md) | 686 | `result-track:bd458d2ac9c5c23d173136d1e130b9634ec6539fd525fc97b23384039f13ae43` |
| 73 | `instance` | [IsStarNormal.cfc_map](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/isstarnormal-cfc-map.md) | 690 | `declaration-track:bbc84127bd4b56ed29e277169301051f1d2b4f2e15e6851e3a94c13a682ba9c4` |
| 74 | `lemma` | [IsSelfAdjoint.cfc](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/isselfadjoint-cfc.md) | 701 | `result-track:7382ad76fa23cf51a428e036bfd513aca71a386e37f171118eeb34769b33357a` |
| 75 | `lemma` | [cfc_nonneg_of_predicate](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-nonneg-of-predicate.md) | 706 | `result-track:06f3bcde8728c48c866c4aad0ce6ace8958083bdaf9b1181ab93211a37312f16` |
| 76 | `lemma` | [CFC.spectrum_nonempty](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-spectrum-nonempty.md) | 713 | `result-track:b44926f9379be794538445e9d825f4f16b6a7d4c308c1c14cd12341d48979bab` |
| 77 | `lemma` | [isUnit_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/isunit-cfc-iff.md) | 730 | `result-track:befe0a642da18b7d94aa5c1dbbc8bc243608c01f982fcab979aaca14284e5573` |
| 78 | `def` | [cfcUnits](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfcunits.md) | 741 | `declaration-track:01e03647c57aa66ec844231333fa873d13ed8637e4e1dffddf49f21ec4dad05d` |
| 79 | `lemma` | [cfcUnits_pow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfcunits-pow.md) | 752 | `result-track:59e6761e43742accb1c433f1f48be0b0ff39adf1d24a55c8382954802637c085` |
| 80 | `lemma` | [cfc_inv](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-inv.md) | 761 | `result-track:1ba5811c6f988932e82a163b1c722a4d2aedff0aefb1c6295bab281b4fb9cd9c` |
| 81 | `lemma` | [cfc_inv_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-inv-id.md) | 766 | `result-track:85fdcff61bdd564421ea780930b400d212a28947bd399fa3b7b8e4bd641e16ac` |
| 82 | `lemma` | [cfc_map_div](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-map-div.md) | 774 | `result-track:5a73884b95c0ef930eb419f0bf102f4b46a7f19b15cdd3a065edef291ade5483` |
| 83 | `lemma` | [Units.continuousOn_inv₀_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/units-continuouson-inv-spectrum.md) | 788 | `result-track:3efb1a9050f9d72b92f6431dd36cf45de9024615bad07ba7163dda93eaea4e0d` |
| 84 | `lemma` | [Units.continuousOn_zpow₀_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/units-continuouson-zpow-spectrum.md) | 793 | `result-track:7f696bac24f99d3a49081a19595d56e73697fd20e63e0f913fd6ebd5bbdcffbe` |
| 85 | `lemma` | [cfcUnits_zpow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfcunits-zpow.md) | 800 | `result-track:bfaa5d82daacc8a92506181ff7a98c4504e350027539f74d56d368adebb7af3e` |
| 86 | `lemma` | [cfc_zpow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-zpow.md) | 812 | `result-track:25bc7b53515dd2c25a363158dc87a790de5aa89e730a7345719f84ad9028b282` |
| 87 | `lemma` | [cfc_comp_inv](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-inv.md) | 823 | `result-track:89e986ea3de4eb68cfe429633826610e14b57bd0c8ca1af98243e162085f1422` |
| 88 | `lemma` | [cfc_comp_zpow](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-zpow.md) | 829 | `result-track:46e49b272cae047c448134771d70cb742b4e160c6edcd061cd6085f680fcfd65` |
| 89 | `lemma` | [cfc_sub](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-sub.md) | 846 | `result-track:2fbc01c2c1081891c0e7fa0e63059907c205ac16f57cd982d4c798362fa55242` |
| 90 | `lemma` | [cfc_neg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-neg.md) | 852 | `result-track:2a66a5c216d456c54137cfb2450b2c5d9688ccfea04c3484a1ff2f9986baef48` |
| 91 | `lemma` | [cfc_neg_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-neg-id.md) | 862 | `result-track:ad669b62e07755056b65d2efafeb65cfecec7f67e0f5c88c55e3aa1e48704001` |
| 92 | `lemma` | [cfc_comp_neg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-comp-neg.md) | 867 | `result-track:dd11b409e0ac30f9fe9a665f218f721b31ba168770326927e1909dfa6b7b297b` |
| 93 | `lemma` | [cfcHom_mono](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-mono.md) | 882 | `result-track:f6b3767705b3657a38551aee0683d440def7e7c2bc5b1b79a63e1f2190e71cd9` |
| 94 | `lemma` | [cfcHom_nonneg_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-nonneg-iff.md) | 886 | `result-track:66f51f2b2833b2418f3f59762f2f9dda6bbb992ee6e5b785b5547600d8fbde8c` |
| 95 | `lemma` | [cfc_mono](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-mono.md) | 892 | `result-track:c661997830a6b04275eb2af0ab4e42d28a44a605a6a69cc0da73e2353b45533d` |
| 96 | `lemma` | [cfc_nonneg_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-nonneg-iff.md) | 901 | `result-track:249a228c35edd8c20c768cdfe62fa9923ed2435d91bb7be67e15c29842900db6` |
| 97 | `lemma` | [StarOrderedRing.nonneg_iff_spectrum_nonneg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/starorderedring-nonneg-iff-spectrum-nonneg.md) | 907 | `result-track:8cc4bd08eed669fff26c012a6e1573d8db514476d5f819563f1dc7969faa71c3` |
| 98 | `lemma` | [cfc_nonneg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-nonneg.md) | 912 | `result-track:2e118cedf77f16d05b3fdd435cd105cd11beadc3d0bb9e56d64fe5f253cda943` |
| 99 | `lemma` | [cfc_nonpos](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-nonpos.md) | 918 | `result-track:ebc995e1752430ee26fc42b4e17ce914a95c63379f15b29eb6899480a4b31ac9` |
| 100 | `lemma` | [cfc_le_algebraMap](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-algebramap.md) | 924 | `result-track:e9d839d4050067f7369803886b63726d1ea50908410975c45c4a2d0ff6652a82` |
| 101 | `lemma` | [algebraMap_le_cfc](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/algebramap-le-cfc.md) | 929 | `result-track:18af7a55440862548bfce947c4295d73d1cb87b19c03614f6f0d74d4ee7692c3` |
| 102 | `lemma` | [le_algebraMap_of_spectrum_le](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/le-algebramap-of-spectrum-le.md) | 934 | `result-track:1b4f15c080e6d9bc831c4bce321ec3088762744182bc1393a19cb8877ffff9af` |
| 103 | `lemma` | [algebraMap_le_of_le_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/algebramap-le-of-le-spectrum.md) | 939 | `result-track:bcf546e627cb964adf38b5897cb746c65b23edf76ffa5ae7d552ed57e78d60dc` |
| 104 | `lemma` | [cfc_le_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-one.md) | 944 | `result-track:93743fa3409bcde937065e856e52c10b48f1c6920934a594313b91e6b9d8add8` |
| 105 | `lemma` | [one_le_cfc](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/one-le-cfc.md) | 950 | `result-track:42895f3984068d2797c6031caea46d020f4ca16cb14d0aafb2c285d36e393aaa` |
| 106 | `lemma` | [CFC.le_one](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-one-source-edition-2.md) | 955 | `result-track:c3b287729f08d130f6e2f8d6650e0c25ad0626d7ba8d9af0d41fe062d51cb463` |
| 107 | `lemma` | [CFC.one_le](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-one-le.md) | 959 | `result-track:e8ee0b39afbd69128dbcdc45436cafeb85283704c8202db396e7d773188eed75` |
| 108 | `lemma` | [CFC.inv_nonneg_of_nonneg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-inv-nonneg-of-nonneg.md) | 972 | `result-track:44c907577be21baff55c23d5bc5ddba0d84e6efd64e58c895282833d90bdb254` |
| 109 | `lemma` | [CFC.inv_nonneg](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-inv-nonneg.md) | 975 | `result-track:d3fa65504a1f0d026746bd31a86c107663878c761c509ecd057ab1c63fcfc1e9` |
| 110 | `lemma` | [cfcHom_le_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchom-le-iff.md) | 988 | `result-track:55855d0667c0c0362b8a77f4b2bc19bda3a71fd455bef59fe8ccc82cb887026a` |
| 111 | `lemma` | [cfc_le_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-iff.md) | 992 | `result-track:3162b29600edcdaeb027d6ce6cd6934ba29ec3eccd0206e548cb8cbe93820139` |
| 112 | `lemma` | [cfc_nonpos_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-nonpos-iff.md) | 998 | `result-track:9479ce8d9e855b8b48bc5a3462e54103b8aec15c221cb1314270a4c836e0ddb6` |
| 113 | `lemma` | [cfc_le_algebraMap_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-algebramap-iff.md) | 1003 | `result-track:d75993b0c1d57624ecdbeb2b4b20440aa9452dfdc512ccce9dd206663a60e8e8` |
| 114 | `lemma` | [algebraMap_le_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/algebramap-le-cfc-iff.md) | 1008 | `result-track:ef2e3dbadd95a5d29499338d9dff95aa5b1ff8e51e287f173a6a49924a934c4b` |
| 115 | `lemma` | [le_algebraMap_iff_spectrum_le](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/le-algebramap-iff-spectrum-le.md) | 1013 | `result-track:74bb52abed8024a205c0789bfe9b26c550e5d664dd9a6095f9eee4090f5ed0e9` |
| 116 | `lemma` | [algebraMap_le_iff_le_spectrum](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/algebramap-le-iff-le-spectrum.md) | 1018 | `result-track:60566890db0507a6eb3106e84aea94ac089afd6550a335bcbc2100a1c2ff1315` |
| 117 | `lemma` | [cfc_le_one_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-one-iff-source-edition-2.md) | 1023 | `result-track:bd55ead5568578a98ca7385be8c0a69aab86e7fd02be6a19f3a6ed5572577162` |
| 118 | `lemma` | [one_le_cfc_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/one-le-cfc-iff.md) | 1028 | `result-track:cff701f8ff3969e371ed36664e58f9edec74824795a33597e068eb4875d23b64` |
| 119 | `lemma` | [CFC.le_one_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-le-one-iff.md) | 1033 | `result-track:023088863ba6e7e88be63a05c953d8c1b22faa51f74edf2e28196ebaeaa07186` |
| 120 | `lemma` | [CFC.one_le_iff](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfc-one-le-iff.md) | 1037 | `result-track:f6a8c61deb2e307d74f75406a66a0aa0c1bf26f6eb6ac879edae149f4ad73b3e` |
| 121 | `def` | [cfcHomSuperset](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchomsuperset.md) | 1060 | `declaration-track:2248902c2fa7a544a343b4a130bc638ab7975f6fd339c975ea79a6287af0d961` |
| 122 | `lemma` | [cfcHomSuperset_continuous](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchomsuperset-continuous.md) | 1064 | `result-track:131a9630428de54e04ca045ca968aec47ef9c22442b76a976c70e91d1cded18e` |
| 123 | `lemma` | [cfcHomSuperset_id](../../../../FunctionalAnalysis/UnitalNamespaced.lean/declarations/cfchomsuperset-id.md) | 1068 | `result-track:f59a51d4876827063aae8a68164ae15d3d27728648b913a030c97427b564bee7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68a543ca962767daf535022e705680c83c34f47bc6f61f6a7328022775309d93 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Unital/Variant9b8b022abb0b94d1eab1a7706e3fb541e07ec6843df8aeb122236e454219ba90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
