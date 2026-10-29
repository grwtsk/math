# Verification target: Boolean Ring Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "415f8be41619abccd8013397d50296c74f0515df",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variant98d32f10950acd3b433e6ede8812e1afba0af8578387b1907962f286de5e8067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `415f8be41619abccd8013397d50296c74f0515df`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variant98d32f10950acd3b433e6ede8812e1afba0af8578387b1907962f286de5e8067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variant98d32f10950acd3b433e6ede8812e1afba0af8578387b1907962f286de5e8067.lean.json)

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
| 1 | `class` | [BooleanRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/booleanring.md) | 60 | `declaration-track:7a3b97b6bdc88de5679aa48a0e9a1f8f9973a338593a22c9649dd4cca02f18af` |
| 2 | `lemma` | [mul_self](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/mul-self.md) | 69 | `result-track:d79e6b111ff80b353ec196dcc973bb1144ac32c73489e71ef68e5f2284376c0f` |
| 3 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:5a9b2f9598f728a8267e76ce6c1ae6ec417bc6e61155ed3f3f5de1010d1de593` |
| 4 | `theorem` | [add_self](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/add-self.md) | 75 | `result-track:373cff190a14fb07b530ba36365eafe95e42bb67a01701c6797028b5bf4ca15d` |
| 5 | `theorem` | [neg_eq](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/neg-eq.md) | 84 | `result-track:7efbc12046a323ef4862dc373cd3d406f20247b8150fa784ca46f8d8424e6ec7` |
| 6 | `theorem` | [add_eq_zero'](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/add-eq-zero.md) | 90 | `result-track:a9866cde83c9e9704f940fcf3637a9cd33043d000888d21e5d772270a03afe16` |
| 7 | `theorem` | [mul_add_mul](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/mul-add-mul.md) | 96 | `result-track:b3f830cc5dd9594a1160658a0850d95e024a102570f4bffa0ac703907a2e7959` |
| 8 | `theorem` | [sub_eq_add](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sub-eq-add.md) | 106 | `result-track:0be9bfa4b1314ae2b650d06d4433cea6f01765c4c22328a87dda6675a93c79ca` |
| 9 | `theorem` | [mul_one_add_self](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/mul-one-add-self.md) | 109 | `result-track:b4c0e821c892db95650f37bd0a2317db291710bcd917da3e6a55eb5e3a99de8a` |
| 10 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 112 | `declaration-track:dc7966dd592257f151e5cf6fda63ed3a825b04b98174bf3abdc09d68d0eab447` |
| 11 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 118 | `declaration-track:dec85e3ee370d15dfcb0cbd5b56e7e6624fc2f0eb008bf23bf85eb682a991af0` |
| 12 | `def` | [AsBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/asboolalg.md) | 127 | `declaration-track:e16b52baf0b36e2c0490aa1f16f2781013392706f5365d292cd0ad08a64672e3` |
| 13 | `def` | [toBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg.md) | 131 | `declaration-track:d5946e6d98ad1a588d5921d8417928e92a48eba72d22dc91844e426801e2be63` |
| 14 | `def` | [ofBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg.md) | 135 | `declaration-track:5683751154a152a8619bbc72a488c4d500b3a5fa780e2672a85ddf4b2beafe7a` |
| 15 | `theorem` | [toBoolAlg_symm_eq](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-symm-eq.md) | 139 | `result-track:26c15b30ab0751fd7013a1a0d25379e2d27a2c900dba283176a4c9a915a12f29` |
| 16 | `theorem` | [ofBoolAlg_symm_eq](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-symm-eq.md) | 143 | `result-track:8eff5fe0b1cb65da8fb4f7adef58f8521d04a4d6d16212f4df2b8162bda30de9` |
| 17 | `theorem` | [toBoolAlg_ofBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-ofboolalg.md) | 147 | `result-track:600aaf7fea277f8fb6ab4300e69188e0b9b02eeb614fafa39fb5c38fbeb201ac` |
| 18 | `theorem` | [ofBoolAlg_toBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-toboolalg.md) | 151 | `result-track:1e7954c764539f72a6f7b14834ea182838a839cc7658404885ac50e8b80fbe35` |
| 19 | `theorem` | [toBoolAlg_inj](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-inj.md) | 154 | `result-track:f61605a6347664390d58314cc288904c91a55f8093a446a81e909684684c2746` |
| 20 | `theorem` | [ofBoolAlg_inj](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-inj.md) | 157 | `result-track:12c90f5d77a06debbb9ab21d38fc4b9185bb5858a1ebe915358a62c68fe9e7d7` |
| 21 | `def` | [AsBoolAlg.rec](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/asboolalg-rec.md) | 162 | `declaration-track:00cff25c4a18cd6556dc28f6ee0948fa50c9d393716cc151c2764f2abbd8c945` |
| 22 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 165 | `declaration-track:80b694555e7ada4686aa0081e302dfec24a522153096ad2d9429e4743769fd33` |
| 23 | `def` | [sup](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sup.md) | 174 | `declaration-track:843cd1861c69b25bc6ba404d28e06bd5436a3823d2a2bf6a4e240c0486dd3133` |
| 24 | `def` | [inf](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/inf.md) | 179 | `declaration-track:2ec2cf865098c70228c0a9b4507623ea59604447f3363929b45f9ec11acce23d` |
| 25 | `theorem` | [sup_comm](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sup-comm.md) | 186 | `result-track:1ab03650fbc724e69f95b0159890a8fc0f172c7154366f7a24ef32149c18c748` |
| 26 | `theorem` | [inf_comm](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/inf-comm.md) | 190 | `result-track:c2b3385e8f25c45928c27e0e41265818b0cc1f93066a93da491d2b353411f7bf` |
| 27 | `theorem` | [sup_assoc](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sup-assoc.md) | 194 | `result-track:b7b2e49145c129a40bffad14d10e279dda38509935c06a47e014dadbc9aa70d6` |
| 28 | `theorem` | [inf_assoc](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/inf-assoc.md) | 198 | `result-track:4014d5ba95d27dbac4afffcc3ce381b39aff1d966ef7d6d789397a479d9ed78c` |
| 29 | `theorem` | [sup_inf_self](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sup-inf-self.md) | 202 | `result-track:991163353499d3629fffda2992f5f99bb5d122310334e73c2f02924555704bf6` |
| 30 | `theorem` | [inf_sup_self](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/inf-sup-self.md) | 206 | `result-track:945e152c5d448b56ff097bb1603660460b017b02c30b522e2fa252e5c91097ed` |
| 31 | `theorem` | [le_sup_inf_aux](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/le-sup-inf-aux.md) | 210 | `result-track:479eec1e2656cd37b6bb0f9fa06794c45b329358bc86aae577c34c65b8f4395c` |
| 32 | `theorem` | [le_sup_inf](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/le-sup-inf.md) | 217 | `result-track:d9e0273aa0c2f04ce9fb5cd1193633dc7b82444e806692ef932f8b0cdef75241` |
| 33 | `theorem` | [sup_def](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/sup-def.md) | 221 | `result-track:ef9a9a0e36bfbd70bda13a8e2e6e97d5d33374a7a15dbbe166155843f15074ea` |
| 34 | `theorem` | [inf_def](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/inf-def.md) | 222 | `result-track:1f9ad576d92cb9368e8b35846e07e103afb41ec0d273ce0fec6dbb18750c93a6` |
| 35 | `def` | [toBooleanAlgebra](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/tobooleanalgebra.md) | 236 | `declaration-track:029334f29817c6580dd01072067f20d20e466d7d50cd29b9716f2ccc446b582d` |
| 36 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance.md) | 253 | `declaration-track:2423ce2d207c4245687950eed27da01d5cadda0e4cfa99b03684ce01ec59b77c` |
| 37 | `theorem` | [ofBoolAlg_top](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-top.md) | 257 | `result-track:1d3a4af829ec833b6a2c852a61001444a1c0d035db4e17735b89fc054555a205` |
| 38 | `theorem` | [ofBoolAlg_bot](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-bot.md) | 261 | `result-track:7cb9bd03aa700e7d8b4972e056204984713d1717d812e4b3def0537715914bc6` |
| 39 | `theorem` | [ofBoolAlg_sup](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-sup.md) | 265 | `result-track:012b598e9719514334739face42d8ba30bdb2fb55a91326e85d211c5e1f5ae24` |
| 40 | `theorem` | [ofBoolAlg_inf](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-inf.md) | 270 | `result-track:40776615cac5d306f92e968cbf492447284c30f9596c5e120fc384a69caf4077` |
| 41 | `theorem` | [ofBoolAlg_compl](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-compl.md) | 274 | `result-track:9e75628324e58a7216310e1330e69a772abbc74899b59e7c1486aadbdf383d91` |
| 42 | `theorem` | [ofBoolAlg_sdiff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-sdiff.md) | 278 | `result-track:b1100bc2c59720b40df3149d3c411b4d411f9f7c8ec262a6915f0c9e71d6e82d` |
| 43 | `theorem` | [of_boolalg_symmDiff_aux](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/of-boolalg-symmdiff-aux.md) | 281 | `result-track:e0a595829a216f9087b3715a0c9952a8bd845d5c7370b12f1d1a78b633a4134f` |
| 44 | `theorem` | [ofBoolAlg_symmDiff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-symmdiff.md) | 287 | `result-track:750b7ab75a88ffe89485018b7fe03dabd06e689d315d8510b1cd63c5136d1b02` |
| 45 | `theorem` | [ofBoolAlg_mul_ofBoolAlg_eq_left_iff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolalg-mul-ofboolalg-eq-left-iff.md) | 292 | `result-track:6183c76ffc041678a01be3ca7338b15487d4739cb0758d116a66205937d7d7f0` |
| 46 | `theorem` | [toBoolAlg_zero](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-zero.md) | 297 | `result-track:cb5fd49c22e5ee100cbebf9caf872dd543d6ed40f55f0447fa864dae0e67fac8` |
| 47 | `theorem` | [toBoolAlg_one](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-one.md) | 301 | `result-track:c1c4e1cf525a13598906c918bae71ab1675d7dd6c1c33f2b7230469c49143479` |
| 48 | `theorem` | [toBoolAlg_mul](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-mul.md) | 305 | `result-track:7c808b84f076dbe47265fcc81c419d3a48e3ee7067ea91bf594391a928e33ccd` |
| 49 | `theorem` | [toBoolAlg_add_add_mul](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-add-add-mul.md) | 309 | `result-track:8fc48facf76ac00ab97829068e20b736e0db6f4e5b7c64a6f5a3a0803a2a53b2` |
| 50 | `theorem` | [toBoolAlg_add](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolalg-add.md) | 313 | `result-track:17770c59089c9ae164bf3228a152b6144ddf3b907618b829080c3031cdfb0678` |
| 51 | `def` | [RingHom.asBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ringhom-asboolalg.md) | 319 | `declaration-track:f2228dbdee30b4623576b61795128bf967b4397c7fc267a01d27ba4226671ae9` |
| 52 | `theorem` | [RingHom.asBoolAlg_id](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ringhom-asboolalg-id.md) | 329 | `result-track:58729dfd0255296f7dbcba84fe84a799a91fcb42cb6b0a4571235ed1749d4f39` |
| 53 | `theorem` | [RingHom.asBoolAlg_comp](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ringhom-asboolalg-comp.md) | 333 | `result-track:5e84950112101e30a149c54a90a74f5b0306587b1891d8fa01c3267b7023e0f2` |
| 54 | `def` | [AsBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/asboolring.md) | 345 | `declaration-track:00e62359f9ff29a5e13706221f9d15e913fa6d70967947418d45d2da53f858d9` |
| 55 | `def` | [toBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring.md) | 349 | `declaration-track:2d155dd90997dea9b12a7fcdaccf3ac419329b09026cfd86ec2f580ced99b32f` |
| 56 | `def` | [ofBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring.md) | 353 | `declaration-track:18abdb4b035059bd4d7a104d794df1c447459b53d0d11b5e4ed7d317a105ac7b` |
| 57 | `theorem` | [toBoolRing_symm_eq](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-symm-eq.md) | 357 | `result-track:9e1705789c7ad05561bab634f34d1e5ae741b1b9c62e8c49c4bef1a0dbe674b1` |
| 58 | `theorem` | [ofBoolRing_symm_eq](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-symm-eq.md) | 361 | `result-track:4f63e8fc5d6debdf5e55cfec0173ed09afcba5d3b67dd5f4f2a95bea841db780` |
| 59 | `theorem` | [toBoolRing_ofBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-ofboolring.md) | 365 | `result-track:59f2987c25d6c0311026306f3b95881dd39b2a717e917f598aa21a0411e8080f` |
| 60 | `theorem` | [ofBoolRing_toBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-toboolring.md) | 369 | `result-track:04c8fdb32be6574bca0aafd0c4088a3fd065d7b5b06e999ee684361e19944317` |
| 61 | `theorem` | [toBoolRing_inj](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-inj.md) | 372 | `result-track:99f58a6f1302c88409330d9bbf2ace6ef295f36f91de1910e783483f85e0216d` |
| 62 | `theorem` | [ofBoolRing_inj](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-inj.md) | 375 | `result-track:4ee57adae0608df930d19572552fd2546e08026e5bf9d1d489e0de4e5f5d75a4` |
| 63 | `def` | [AsBoolRing.rec](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/asboolring-rec.md) | 380 | `declaration-track:588aad562993ee0b2213c54550a466d69b94edf42126e4557480c0499431ca05` |
| 64 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 384 | `declaration-track:a64d7aff9007f02cba9907cca3ba924e31c9a6c3c69ff5ddc614218f7dea5cb5` |
| 65 | `abbrev` | [GeneralizedBooleanAlgebra.toNonUnitalCommRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/generalizedbooleanalgebra-tononunitalcommring.md) | 396 | `declaration-track:dfaac6bcd9727317d1a5b3112bd96030806cffbcf03d8e9f5904712e3e445ccc` |
| 66 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 416 | `declaration-track:72dc517c7e8bd3576db0b152697bf7cee9fbae2aceed615bc28dc0f05335ea15` |
| 67 | `abbrev` | [BooleanAlgebra.toBooleanRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/booleanalgebra-tobooleanring.md) | 430 | `declaration-track:1c4e7daf0ffbfb0da0f4bb67e1adf45e1eb89e8631f1a7efb644ba4ff2cb71cb` |
| 68 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 440 | `declaration-track:61b830fa7eb50dffcb64e7732482ad9804f953b0199835321aeb1972bc59f80d` |
| 69 | `theorem` | [ofBoolRing_zero](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-zero.md) | 444 | `result-track:4af91cd8571eb12b0407a21e5ff860cb9409bb7c972554ae7085352c3b047f00` |
| 70 | `theorem` | [ofBoolRing_one](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-one.md) | 448 | `result-track:58fe61a5721de9190bb4fb58fa17326595b5a50d060894008162f0a859a7ad21` |
| 71 | `theorem` | [ofBoolRing_neg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-neg.md) | 452 | `result-track:e423c6b7d28427d5eded21647d7ad3dda035ee1a9b436742f95fe0a7fcd49f40` |
| 72 | `theorem` | [ofBoolRing_add](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-add.md) | 456 | `result-track:26baa928b4533ea3910f5c9a54a8ead9f2e1819470f051aa1cf682fc4931690c` |
| 73 | `theorem` | [ofBoolRing_sub](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-sub.md) | 460 | `result-track:834f98246844d28605fd4b9fb177542c6a65c4d902c14a4f2d67f67f7c9b74f2` |
| 74 | `theorem` | [ofBoolRing_mul](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-mul.md) | 464 | `result-track:54d33a6267f8755071c3a006bfcd8be3bc0e888e1079435e422ffb0959cc7680` |
| 75 | `theorem` | [ofBoolRing_le_ofBoolRing_iff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ofboolring-le-ofboolring-iff.md) | 468 | `result-track:f0eb9b09d4f8b1f31870ce6f8435fb20cdf59a6997381ecb7968ecc72d6d7304` |
| 76 | `theorem` | [toBoolRing_bot](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-bot.md) | 473 | `result-track:c6ebc77614c9a3c89e8f8e5253cbb1b296985570618083931bc784b4fc6843b4` |
| 77 | `theorem` | [toBoolRing_top](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-top.md) | 477 | `result-track:8c03c784c89aa64f7eea759c2afaba77d5994d17eedbcca040598409ef44235e` |
| 78 | `theorem` | [toBoolRing_inf](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-inf.md) | 481 | `result-track:8aef8697e18722291d0b04b8736bafc2e4443110bcec2c923074d7c0f2375fd2` |
| 79 | `theorem` | [toBoolRing_symmDiff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-symmdiff.md) | 485 | `result-track:9cd38c5169cf7d9116407f8708a853440815ade62a0d1c8854f8748d9b5c4ed9` |
| 80 | `theorem` | [toBoolRing_compl](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-compl.md) | 489 | `result-track:82ab173151128249869dab1235bc612aa40d5b530aeb610711da5b48d96d9576` |
| 81 | `theorem` | [toBoolRing_sup](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-sup.md) | 493 | `result-track:7266707c253b84c4f2c877ab68299b2cf614501ea78273279d23daf4e5bc2a19` |
| 82 | `theorem` | [toBoolRing_sdiff](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/toboolring-sdiff.md) | 498 | `result-track:fbeab706e9ac078cc139dab26b2ac0fb413061e06d6f1d004ba428baa267d3e7` |
| 83 | `def` | [BoundedLatticeHom.asBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/boundedlatticehom-asboolring.md) | 504 | `declaration-track:e9959e7bce3e0d5ef99c4e52a7053286e23ede02f642f9d67cc0afee9f29bb9f` |
| 84 | `theorem` | [BoundedLatticeHom.asBoolRing_id](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/boundedlatticehom-asboolring-id.md) | 513 | `result-track:6b0709359441900a77ccecf7e49e27826243cda636725e11e7ea87cb0c947c2d` |
| 85 | `theorem` | [BoundedLatticeHom.asBoolRing_comp](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/boundedlatticehom-asboolring-comp.md) | 517 | `result-track:7377cd9bcb32e66da2b87717752dcd6e7c0e51cdd3f83de99b382bf8f14c3858` |
| 86 | `def` | [OrderIso.asBoolAlgAsBoolRing](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/orderiso-asboolalgasboolring.md) | 529 | `declaration-track:fd85ea79743d9b49d6d0172e6adbd05f205df57c7d02605e98266d4972b3f80a` |
| 87 | `def` | [RingEquiv.asBoolRingAsBoolAlg](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/ringequiv-asboolringasboolalg.md) | 536 | `declaration-track:6735081d36e99193ff6f5b08646b370627ba02a171d53f556adbba55690cfb84` |
| 88 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 543 | `declaration-track:705f8d3d21860bc1a595f121790f30515397abc3044f2669fe0340adf3ace928` |
| 89 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 545 | `declaration-track:5e7a7d27f8c38934a4933a8c8e8d954befa36770dd440d06c7f3b151cbafe2b9` |
| 90 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 547 | `declaration-track:2cc1f41e844b0a389a9346a1294e24e2f49798ed51820a231c4a005d751b8e2e` |
| 91 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 549 | `declaration-track:41bd7e909ab5748aa1f120d8eae786f75d778e05590548d61e81e5eda16e3a10` |
| 92 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 551 | `declaration-track:bf5b6e05e4c4b2662d82efd1e7a7c9db8b9319ba893b314a5932c35ed0351458` |
| 93 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 553 | `declaration-track:568899d61c6e12b1f75d0eb6b323152360f3eadadee1cac1775b5c0bebe3754e` |
| 94 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 555 | `declaration-track:b5e9afa80aaded69ac8f179029e2c608b81c365cf4112da2a227c3d8fec03f1f` |
| 95 | `theorem` | [Bool.zero_eq_false](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-zero-eq-false.md) | 572 | `result-track:88de16cb3dd8b8ad8a09cb3d8b2b81255f0ab1e98d56d0340b1badf90b4cae18` |
| 96 | `theorem` | [Bool.one_eq_true](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-one-eq-true.md) | 574 | `result-track:ccb1218ab203a03a621ddc5562c2c933a1fff988fe827c87f0ea453de133669c` |
| 97 | `theorem` | [Bool.add_eq_xor](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-add-eq-xor.md) | 576 | `result-track:0f9ef9c92df270dad2cc359a575807fb753f3e96c7b2ff6d8149f37ad788c552` |
| 98 | `theorem` | [Bool.neg_eq_id](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-neg-eq-id.md) | 578 | `result-track:b9243002664925dc894bdf3f080e9ef6f952a1122bc20a90a36d085e8293dd05` |
| 99 | `theorem` | [Bool.sub_eq_xor](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-sub-eq-xor.md) | 580 | `result-track:f8466314d67cadeac11ae41c2dd9412f44e86e6953309d0703a3dc14c57cb3b3` |
| 100 | `theorem` | [Bool.mul_eq_and](../../../../AssociativeRingsAndAlgebras/BooleanRingNamespacedPublic.lean/declarations/bool-mul-eq-and.md) | 582 | `result-track:b55804f489b07534c51286a765da903c7179b88e6003b32d269652d7e5b7b105` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2a8a13f85306b0f5b652bb44032a29083509b6b2d10cf388af9b9a185c89be6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variant98d32f10950acd3b433e6ede8812e1afba0af8578387b1907962f286de5e8067.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanRing/Variant98d32f10950acd3b433e6ede8812e1afba0af8578387b1907962f286de5e8067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
