# Verification target: Continuous Functional Calculus Order Order Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f86d7f9ef44d8304600f9e742e1afe40fbe2a2ca`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Isometric` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.Unitization` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.PosPart.Isometric` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ContinuousFunctionalCalculus.Rpow.Isometric` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.ContinuousSqrt` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cfc_tsub](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cfc-tsub-source-edition-2.md) | 57 | `result-track:b10d0784819a640f50482aeb958857a6366c707d2c888280184dd1841727a067` |
| 2 | `theorem` | [cfcₙ_tsub](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cfc-tsub.md) | 75 | `result-track:8c1d5b489cbe8aa8b6947a26d2983b461961ac8d2f5c8daff3dc6c07a11b8c78` |
| 3 | `instance` | [instPartialOrder](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/instpartialorder.md) | 98 | `declaration-track:1f3924f5cb640e76304be77d9c0742d3c3620ae80942776d095fafbd6b9c28b1` |
| 4 | `instance` | [instStarOrderedRing](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inststarorderedring.md) | 101 | `declaration-track:854134d2514295d8a591848d7752de5372850205613962a5eebd21dae5889168` |
| 5 | `lemma` | [inr_nonneg_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-nonneg-iff.md) | 105 | `result-track:935d0779ae3ca3c97da5e09aee5aae3ef2cdbb2bae8c527d6bd3492cdc1bc846` |
| 6 | `lemma` | [inr_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-nonneg.md) | 112 | `result-track:4009bb0b7213f7793dc45d04f94254a59a3ac9fede1e54d55979dc68e8945af6` |
| 7 | `lemma` | [nonneg_of_inr](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nonneg-of-inr.md) | 114 | `result-track:e86532bc55e445be8787be32297f78848f4c6a1e120454dddfc1b4b26b368b12` |
| 8 | `lemma` | [inr_le_inr_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-le-inr-iff.md) | 117 | `result-track:43ce00de9b60cf10eac2792eda106993f9108ffbe351c801315f9e420d534336` |
| 9 | `lemma` | [convexOn_of_convexOn_inr_comp](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/convexon-of-convexon-inr-comp.md) | 125 | `result-track:5cfe6c97dc0eb75db95505c998888f52979beaa62ad41e05f91622f35dd57bf1` |
| 10 | `lemma` | [concaveOn_of_concaveOn_inr_comp](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/concaveon-of-concaveon-inr-comp.md) | 132 | `result-track:4c9ce7f70ad6b1e667da71f1ede83cf95c7e34ee260a29372763b6b1b31755e5` |
| 11 | `lemma` | [nnreal_cfcₙ_eq_cfc_inr](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnreal-cfc-eq-cfc-inr.md) | 139 | `result-track:6ae0fcd71aa9a8b61464a34a7cd9762789a3de7ee455b9e7608dfc98ac346b20` |
| 12 | `lemma` | [sqrt_inr](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/sqrt-inr.md) | 143 | `result-track:64d7cdf9043d063a032341e77e4911bb9146d8bc53025cb386dcc6182d51f1c2` |
| 13 | `lemma` | [cfc_nnreal_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cfc-nnreal-le-iff.md) | 153 | `result-track:51d76971da1e6e41b94ee70e37f08588fa53293e6b9848daf461bebf91d1097c` |
| 14 | `lemma` | [CFC.exists_pos_algebraMap_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cfc-exists-pos-algebramap-le-iff.md) | 170 | `result-track:0af9a23a51e8f4eca824f1373f4dfe5a76817b9cce72d94f6396d17cf267ea27` |
| 15 | `lemma` | [IsSelfAdjoint.le_algebraMap_norm_self](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isselfadjoint-le-algebramap-norm-self.md) | 192 | `result-track:64b826c06228450b42fa2ff7d2e95503b1532a6b791b79574848a4f2e4b7cdb7` |
| 16 | `lemma` | [IsSelfAdjoint.neg_algebraMap_norm_le_self](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isselfadjoint-neg-algebramap-norm-le-self.md) | 200 | `result-track:5f530b2992f0a0bb4d9f9bdc6db69fafdd0d920ac8c76ee9c5d74b8a15e107bb` |
| 17 | `lemma` | [CStarAlgebra.mul_star_le_algebraMap_norm_sq](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cstaralgebra-mul-star-le-algebramap-norm-sq.md) | 205 | `result-track:28843ac0dbdbab7e4681cc7098f953c48dc04af757b0ba2f3d11bb0d89c93e84` |
| 18 | `lemma` | [CStarAlgebra.star_mul_le_algebraMap_norm_sq](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cstaralgebra-star-mul-le-algebramap-norm-sq.md) | 210 | `result-track:003ea03cb4d8f664ec31849c2888927f823485e1a388d430990da033365b92f5` |
| 19 | `lemma` | [IsSelfAdjoint.toReal_spectralRadius_eq_norm](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isselfadjoint-toreal-spectralradius-eq-norm.md) | 217 | `result-track:fb899da5a77ffc85adc46133a65e47db5398a8368e0b96bb7c4a0cffbef82c80` |
| 20 | `lemma` | [norm_or_neg_norm_mem_spectrum](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-or-neg-norm-mem-spectrum.md) | 223 | `result-track:a69c853596b269afd045ddaca8cbfda6a4e0e6a2f3b0ac925733d09b3f8ecfdc` |
| 21 | `lemma` | [nnnorm_mem_spectrum_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnnorm-mem-spectrum-of-nonneg.md) | 231 | `result-track:e90c8e261b41223d0971b3bfc571c9b2d58d9b88536e7f063c621bdb6d50e1a6` |
| 22 | `lemma` | [norm_mem_spectrum_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-mem-spectrum-of-nonneg.md) | 238 | `result-track:f36fb97f97fff02ddacfa19e092329c2725ca1abb64ab468ebd43040576c6520` |
| 23 | `lemma` | [norm_le_iff_le_algebraMap](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-le-iff-le-algebramap.md) | 242 | `result-track:b5d032c7e2f8b075bc00d000037050410331563814b4df4be45bbaf7b7f6abf4` |
| 24 | `lemma` | [nnnorm_le_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnnorm-le-iff-of-nonneg.md) | 250 | `result-track:7530b06a38b99abe61c4d94b5d34febff6f82b314ae5f565332f2d6360ad2483` |
| 25 | `lemma` | [norm_le_one_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-le-one-iff-of-nonneg.md) | 255 | `result-track:f8aabc2f9c75428e5578eb97243c3b5ecfaaf95adeb148b79805afdaec481098` |
| 26 | `lemma` | [nnnorm_le_one_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnnorm-le-one-iff-of-nonneg.md) | 259 | `result-track:bbb2aba1b9a2aa46374847104a2e49a8e4306740990cb79b3c9cb0d7c57fefef` |
| 27 | `lemma` | [norm_le_natCast_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-le-natcast-iff-of-nonneg.md) | 264 | `result-track:55dce298b946df2bbe7e31520a56ffa54e3473ea7eaf022ec81c9028c12bf546` |
| 28 | `lemma` | [nnnorm_le_natCast_iff_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnnorm-le-natcast-iff-of-nonneg.md) | 268 | `result-track:47e79b88d6dda6fb901bafec4356e87b0bea32a90b34a61fecd4357db1a85b66` |
| 29 | `lemma` | [mem_Icc_algebraMap_iff_norm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/mem-icc-algebramap-iff-norm-le.md) | 277 | `result-track:d645b82fd5dbb59eabced33bcd38d3f0ac1b63d090d567c984c9c9d3422c8bc1` |
| 30 | `lemma` | [mem_Icc_algebraMap_iff_nnnorm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/mem-icc-algebramap-iff-nnnorm-le.md) | 282 | `result-track:6fd1782fff4ef7893d189347ed61dbca7c2640511907f91c9d1005b302514072` |
| 31 | `lemma` | [mem_Icc_iff_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/mem-icc-iff-norm-le-one.md) | 286 | `result-track:67ed1e28b81cb21ed2bd9a258ecc451fb66fa79eff3b58fb548d3c907d0bf4aa` |
| 32 | `lemma` | [mem_Icc_iff_nnnorm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/mem-icc-iff-nnnorm-le-one.md) | 290 | `result-track:ff29af9b64098c64d2911810d6ed82a40044c40714f3bf593831fd16dc9a58c5` |
| 33 | `lemma` | [CFC.conjugate_rpow_neg_one_half](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cfc-conjugate-rpow-neg-one-half.md) | 304 | `result-track:c21cd0cad615b2db545eb6b9a73a3113e6d1dfc6b38ac772dabb5bbc152a2e95` |
| 34 | `lemma` | [CStarAlgebra.isUnit_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/cstaralgebra-isunit-of-le.md) | 314 | `result-track:2ea1eb37eb07a55859c32030e98628298b0ad786599e8106d5389334fd43e78d` |
| 35 | `lemma` | [le_iff_norm_sqrt_mul_rpow](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/le-iff-norm-sqrt-mul-rpow.md) | 323 | `result-track:7c776442e2d3e847b4eaf0ccf5b3a69128820a90e9d8d0b0bfc2559715ab8d42` |
| 36 | `lemma` | [le_iff_norm_sqrt_mul_sqrt_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/le-iff-norm-sqrt-mul-sqrt-inv.md) | 349 | `result-track:924209ed2bdfb2544cafaf1e6a40bf909a33ff00fbb636fe4095c22bbda0ce5e` |
| 37 | `lemma` | [inv_le_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inv-le-inv.md) | 360 | `result-track:30f0ad844dc39f64698f56b2895c7c1f0ea663d4a1d80d5c80a335f682d3aed5` |
| 38 | `lemma` | [inv_le_inv_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inv-le-inv-iff.md) | 374 | `result-track:3cada89f009502faec088d4065852d37b280981319779d3e87b4c47e0a28346b` |
| 39 | `lemma` | [inv_le_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inv-le-iff.md) | 378 | `result-track:d7164c5d360b6fe86799df35cab84d815b3d0244b4844081a16a0c077515f966` |
| 40 | `lemma` | [le_inv_iff](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/le-inv-iff.md) | 382 | `result-track:39f01b7826e0062ed4971c68d9f42ad62e1b35adfb3cd782162ae3cee7cf1ad7` |
| 41 | `lemma` | [one_le_inv_iff_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/one-le-inv-iff-le-one.md) | 386 | `result-track:dd18bf90ecd520eed3fe298a54168d94f8d00cad395e06b0e28fc848ed520d55` |
| 42 | `lemma` | [inv_le_one_iff_one_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inv-le-one-iff-one-le.md) | 390 | `result-track:831b5ad2a8e2838598a256952c125548955d84589addc6f1db5bc07d526ed023` |
| 43 | `lemma` | [inv_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inv-le-one.md) | 394 | `result-track:fb72097b400d98bd43c66284e25825e02e2d6cecf41a93a126e8c5081b39674b` |
| 44 | `lemma` | [le_one_of_one_le_inv](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/le-one-of-one-le-inv.md) | 397 | `result-track:cba4fb06fc448c4679957f59489de63e43766a0bb10759fdebb56c10c3a11fb8` |
| 45 | `lemma` | [rpow_neg_one_le_rpow_neg_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/rpow-neg-one-le-rpow-neg-one.md) | 400 | `result-track:8e2b4adb2dfc1f8431eec921c84175e7414f04779b574f21c8d5c3ac94d19977` |
| 46 | `lemma` | [rpow_neg_one_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/rpow-neg-one-le-one.md) | 408 | `result-track:fa88701e82d6aa4d53603c03b91244974682ac95851af39d3990ea54e4604324` |
| 47 | `lemma` | [Continuous Functional Calculus Order Order Namespaced Public](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/of-le.md) | 413 | `result-track:9f799cb7855731613f66c1fb1fb0a19024a9ff92d6e1333a0c299f53442ba433` |
| 48 | `theorem` | [Continuous Functional Calculus Order Order Namespaced Public](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/add-nonneg.md) | 417 | `result-track:3f4609e11a15ad5c007bf2acfc6bea50ec80abc76134dc19f5a03b9456d19097` |
| 49 | `theorem` | [Continuous Functional Calculus Order Order Namespaced Public](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nonneg-add.md) | 421 | `result-track:76447a59fc26aef7a76487942bed645927015fa94975ba7c8f15caa5e0671ba8` |
| 50 | `lemma` | [Continuous Functional Calculus Order Order Namespaced Public](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isstrictlypositive-add.md) | 426 | `result-track:76e7c90a55c1965224d507f022e5859a62f37ba034193fdc0fdb189d503cfb2c` |
| 51 | `lemma` | [antitoneOn_ringInverse](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/antitoneon-ringinverse.md) | 431 | `result-track:414b8e05ea08d59fe4b3fd7e6b6456ff5097fed6f7772cb4e4591d8987dc24a5` |
| 52 | `lemma` | [ringInverse_le_ringInverse](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/ringinverse-le-ringinverse.md) | 438 | `result-track:c785f930d8be3718b0e6eeeead9e7f47899aa7154ed7499f403064957cba29b4` |
| 53 | `instance` | [instNonnegSpectrumClassComplexNonUnital](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/instnonnegspectrumclasscomplexnonunital.md) | 455 | `declaration-track:b3dc5836a2a992253fcaeb1c303017c4135b5b09c7632646619e798108f4d3c4` |
| 54 | `lemma` | [norm_le_norm_of_le_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-le-norm-of-le-of-nonneg.md) | 460 | `result-track:3421660d53829066e72259769313137cb78693c21d7b83772d6d9e900f38b744` |
| 55 | `theorem` | [nnnorm_le_nnnorm_of_le_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnnorm-le-nnnorm-of-le-of-nonneg.md) | 474 | `result-track:f817d1d44557b50dcdb13abdeb7e4dfb9a5eeea7771f56b1e0773b3389cd7c4e` |
| 56 | `lemma` | [star_left_conjugate_le_norm_smul](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/star-left-conjugate-le-norm-smul.md) | 481 | `result-track:bac8033325c90ba7e4f80f01d278625a73dc149cddf50d3edd4a3b501212aae1` |
| 57 | `lemma` | [star_right_conjugate_le_norm_smul](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/star-right-conjugate-le-norm-smul.md) | 492 | `result-track:8cc27c1805c9a8c55878544d6181f6c9f01554096c72ea669027fbe0374ba285` |
| 58 | `theorem` | [norm_posPart_mono](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-pospart-mono.md) | 496 | `result-track:5117e3bf46e138a4090df7832e38c149ea304ce93b1bfd8631aadbf0920e2d41` |
| 59 | `theorem` | [norm_negPart_anti](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-negpart-anti.md) | 514 | `result-track:c8e084fc241de88c0aa87d1a5a2d51b90bd1268bd2c515631882eaed8401ad69` |
| 60 | `theorem` | [Continuous Functional Calculus Order Order Namespaced Public](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-le-max-of-le-of-le.md) | 518 | `result-track:6dc95d114c1dda2076f84cba2253df4d790668edcf98372bcb0efded9d31e815` |
| 61 | `lemma` | [norm_sub_le_max_of_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/norm-sub-le-max-of-nonneg.md) | 525 | `result-track:5d7d58649a8376a0bac484203e9c0195ea0220efc3852a778cf6cbd0ff19a7c5` |
| 62 | `lemma` | [isBounded_of_bddAbove_of_bddBelow](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isbounded-of-bddabove-of-bddbelow.md) | 532 | `result-track:fda4a2504d704891c9d5a631917f3f1dfc428e63997358ef2ce2f6e8c93717ed` |
| 63 | `lemma` | [isClosed_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isclosed-nonneg.md) | 540 | `result-track:7af4a7ebb9ff3ea0168006f0b9eee22d35ac38309cf69e8e265a529f1243b5f6` |
| 64 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/instance.md) | 554 | `declaration-track:c2bb6a147cc39a187b98a956fbf7dd51036d1dda0b3fba6da4e5ca1d5b7fac4e` |
| 65 | `lemma` | [convexOn_cfcₙ_of_convexOn_cfc](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/convexon-cfc-of-convexon-cfc.md) | 558 | `result-track:3af868f81558e286ea417fcdaa935782f3e25e607da9a8813b248ce99175894a` |
| 66 | `lemma` | [concaveOn_cfcₙ_of_concaveOn_cfc](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/concaveon-cfc-of-concaveon-cfc.md) | 580 | `result-track:590c6a43741873060e4e43dff7d6f7c23356763f8d47c40008bf7178858f1fc6` |
| 67 | `lemma` | [inr_mem_Icc_iff_norm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-mem-icc-iff-norm-le.md) | 593 | `result-track:91bee3f76465aff707bbf3d62cfc520e5d34b458f129c06bc116fb9a6194f356` |
| 68 | `lemma` | [inr_mem_Icc_iff_nnnorm_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-mem-icc-iff-nnnorm-le.md) | 599 | `result-track:ba738dea09ebb390072572e10e8376fa4242a5727b1a50c4dfca034e43381034` |
| 69 | `lemma` | [preimage_inr_Icc_zero_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/preimage-inr-icc-zero-one.md) | 603 | `result-track:a40f0f1a8c50671f1e6c14e699a9bda0010a2f42cf718d0f08f5c3f926c04f22` |
| 70 | `lemma` | [inr_map_Ici_zero](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/inr-map-ici-zero.md) | 608 | `result-track:7aa8b254a7af84db372f56bb7f2d6be01efcbae3fbaa64f663b909b1efbf0fbe` |
| 71 | `lemma` | [nnrpow_le_nnrpow_of_nonneg_of_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnrpow-le-nnrpow-of-nonneg-of-norm-le-one.md) | 614 | `result-track:72e07dab4940646b7911756a7979adee3bc7710309776371df719e8a98e6ead8` |
| 72 | `lemma` | [nnrpow_le_self_of_nonneg_of_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/nnrpow-le-self-of-nonneg-of-norm-le-one.md) | 623 | `result-track:4c4bac24b559a28d07bac133d45e2c433c876eef8ba4674d8d7317d3f4c7e8d7` |
| 73 | `lemma` | [mul_self_le_of_nonneg_of_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/mul-self-le-of-nonneg-of-norm-le-one.md) | 631 | `result-track:c8d001ccf21e329c52f738c1cb5da43707744b774df8257cc66e375c6cd45549` |
| 74 | `lemma` | [self_le_nnrpow_of_nonneg_of_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/self-le-nnrpow-of-nonneg-of-norm-le-one.md) | 634 | `result-track:6dae3dd00cc4eae2726c097d384aa01a1ca06cbe6244aaea4f8c27ef4375a2bd` |
| 75 | `lemma` | [self_le_sqrt_of_nonneg_of_norm_le_one](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/self-le-sqrt-of-nonneg-of-norm-le-one.md) | 639 | `result-track:446af91cb8323c09f7d6fcb48901b502ba5ad6e6d5bf7556d1e0963bf7cc67d2` |
| 76 | `lemma` | [IsStarProjection.mul_right_and_mul_left_of_nonneg_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isstarprojection-mul-right-and-mul-left-of-nonneg-of-le.md) | 646 | `result-track:5344280bdb1c8cfea2627a2a391dae941f1d39249b1d6a117f0825b830dd0b3c` |
| 77 | `lemma` | [IsStarProjection.conjugate_of_nonneg_of_le](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/isstarprojection-conjugate-of-nonneg-of-le.md) | 660 | `result-track:a0bf1ed91b09a24e7deafea7cb2e6b9be8a54e3881acc1b3ba686b352dc76557` |
| 78 | `lemma` | [pow_nonneg](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/pow-nonneg.md) | 672 | `result-track:9db2771a4bee82ef2d79a3bc790f0df9b1c4b1b4d22aa2df3d572aff71607e38` |
| 79 | `lemma` | [pow_monotone](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/pow-monotone.md) | 676 | `result-track:49cb027fbdc3fc6f89a2d270573255eddb3730703912d19a71389c3756f18dbd` |
| 80 | `lemma` | [pow_antitone](../../../../FunctionalAnalysis/ContinuousFunctionalCalculusOrderOrderNamespacedPublic.lean/declarations/pow-antitone.md) | 685 | `result-track:5ca22cfe98f90f64f5b055b20a2d50fd4761108300aa7475c50f542231d5dd47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=528fb393b1011bb607e84702fb5f105b8f5784b41983426d6845bcc934879a94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Order/Variant1258a61fd1dc083043e398d4d67f536f6870f5efeb9b31eb32e268522bc9c6a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
