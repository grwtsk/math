# Verification target: Incidence Algebra Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42479a7ca982e93ff74a45317b33e66766138651",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/index.md) · [Full source](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42479a7ca982e93ff74a45317b33e66766138651`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean.json)

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
| 1 | `structure` | [IncidenceAlgebra](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/incidencealgebra.md) | 87 | `declaration-track:765daa277d07fc3107d1b6cfd3f28ee4c271389502798d7e471b77cc2ebc8529` |
| 2 | `instance` | [instFunLike](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instfunlike.md) | 100 | `declaration-track:72ed59cbfefd3d78c55a0f1d1573c5167ff8679eed7a61a08524aef10f239496` |
| 3 | `lemma` | [apply_eq_zero_of_not_le](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/apply-eq-zero-of-not-le.md) | 104 | `result-track:fc82fc3ee00e3e23eff6b2705b0b98dc90b75b8368de3ae575bd4256fd49b34f` |
| 4 | `lemma` | [le_of_ne_zero](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/le-of-ne-zero.md) | 107 | `result-track:09f864357a8eeef91212927809cb917d7e6686ed094abc42c1ee3d1c077f58ec` |
| 5 | `lemma` | [toFun_eq_coe](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 115 | `result-track:b9c7fbfa90d7d834c1bccac214f3a544dda05ec81df5d43ae941a0aaafaa7482` |
| 6 | `lemma` | [coe_mk](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-mk.md) | 116 | `result-track:32ee126eaf39ec2cad71ba7a0585c19552c926eeefad955d895e9cda77d7ca02` |
| 7 | `lemma` | [coe_inj](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-inj.md) | 118 | `result-track:07814d2c6768b232af7304d5cfd7c32d8dfaada5e569247b7dca2f3ae4b343ce` |
| 8 | `lemma` | [ext](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/ext.md) | 122 | `result-track:d50214f6f8f71c9e83f7606cd7e79140835c1f843c29f163a46f2a86f7d37af0` |
| 9 | `lemma` | [mk_coe](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mk-coe.md) | 128 | `result-track:46162a0c2bd6d02daad6c9426dc6b2ddb64c3aaf9747a9c428261df3bc910185` |
| 10 | `instance` | [instZero](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instzero.md) | 134 | `declaration-track:d6d52b5ce5ae5f1f2bb1651a53cf860b891b211c4ff2a135cee660de3cf3e1a3` |
| 11 | `instance` | [instInhabited](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instinhabited.md) | 135 | `declaration-track:d64980e0194d289240783dd73e7b8df5d67d4312567e36f2dc497ee63a7aa783` |
| 12 | `lemma` | [coe_zero](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-zero.md) | 137 | `result-track:4b2e5eeedae4bcd5326507aa0bbeade492453e03bebbc8d10f30caf689a0551d` |
| 13 | `lemma` | [zero_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zero-apply.md) | 138 | `result-track:8563193ae5e6db28927bf847ce7083de189f3fda336c708dba096be5863ea329` |
| 14 | `instance` | [instAdd](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instadd.md) | 145 | `declaration-track:eff6f7bb7ab709ade0cb0e1e973532414445af06f7ef60f4109e07e0be070444` |
| 15 | `lemma` | [coe_add](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-add.md) | 148 | `result-track:44ac045bb66a8f6292ca6d3825fa78c7284096120c902048e13ca5463fc2f1f9` |
| 16 | `lemma` | [add_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/add-apply.md) | 149 | `result-track:d2db525243fde7e8aca150adb663364e5a9e3ce36fc6fae87ff07bc1bd5a1462` |
| 17 | `instance` | [instSmulZeroClassRight](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instsmulzeroclassright.md) | 156 | `declaration-track:5ed8f26e792d48759ec8274a8853a866b0526781220eccbac29b00e4959a8f1f` |
| 18 | `lemma` | [coe_constSMul](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-constsmul.md) | 161 | `result-track:90035e770a91d909e802a8ccbe89c558ba2737fc718dfab2a639724998a8e348` |
| 19 | `lemma` | [constSMul_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/constsmul-apply.md) | 163 | `result-track:0c92ef6d64408f85775f7f90095a2852f2bfb1860d923ee2141bbe7d36176989` |
| 20 | `instance` | [instAddMonoid](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instaddmonoid.md) | 167 | `declaration-track:d32842bda14b3d13e403b0658ce6a59c2f17d5819cfe1fdff0219a4d82a68bd2` |
| 21 | `instance` | [instAddCommMonoid](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 170 | `declaration-track:8696256f1968328049638a05493dc0fa40f3a8e925d01192b54f84d357fd6ad2` |
| 22 | `instance` | [instNeg](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instneg.md) | 176 | `declaration-track:95e6b7ba0402c3e5428de0e48453819177eaad4dfa685b8c393098900ece5870` |
| 23 | `instance` | [instSub](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instsub.md) | 179 | `declaration-track:39561462b2f340fe814ef06f0be61a66a716d3e11faac16487de120d8431635d` |
| 24 | `lemma` | [coe_neg](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-neg.md) | 182 | `result-track:e1ee99f52fb468767af9b5eed57bfd138e4ee8629b7b8371b6534e7cccb9987f` |
| 25 | `lemma` | [coe_sub](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/coe-sub.md) | 183 | `result-track:6c7a936a48bab12ec0a8736fdeddf3597a21f37949241da60e3b48a119bec8bd` |
| 26 | `lemma` | [neg_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/neg-apply.md) | 184 | `result-track:1c66384d7d3244ac5e2dd8dc906b0e8a2a55ffd6f636918198a0b1a1b2f76a97` |
| 27 | `lemma` | [sub_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/sub-apply.md) | 185 | `result-track:d831c3fa7c5a882cffa6300f781f371ad1019c3c6df4ffc81121583cf6ef0853` |
| 28 | `instance` | [instAddGroup](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instaddgroup.md) | 187 | `declaration-track:7f47999722fafaa20a3fb39b84f31ca1478b9de9d741c14ab01adcece05cc823` |
| 29 | `instance` | [instAddCommGroup](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instaddcommgroup.md) | 192 | `declaration-track:1fcba9c7a79cff84585b2cf891c4507a13d79f0fdc5fb398d3b854bb07583e4b` |
| 30 | `instance` | [instOne](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instone.md) | 201 | `declaration-track:bf579eaaa0e02075aeedb4fcb926c5f69b82abd40cd9b73685624146da5e95e5` |
| 31 | `lemma` | [one_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/one-apply.md) | 204 | `result-track:df8791b445774074fc93627fe1d8c1c3d096745f8208ad8b81ff023be2fdbf86` |
| 32 | `instance` | [instMul](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instmul.md) | 215 | `declaration-track:4aa052d1a7fbefd357e1b69ddc50418e807b43a6d06e9d3e91b489fd5ecd3ffe` |
| 33 | `lemma` | [mul_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mul-apply.md) | 219 | `result-track:e3293880b077477463ba6cf204edfd06d6eae3b1c88de89a5a5516276cb762d2` |
| 34 | `instance` | [instNonUnitalNonAssocSemiring](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 224 | `declaration-track:30f642c67bf371349298445e9a49ca5c1b50220b6faacbc397802f35a43cec89` |
| 35 | `instance` | [instNonAssocSemiring](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instnonassocsemiring.md) | 234 | `declaration-track:70ce77562ffbf74450c7b48868d4d76d719f998f1bd286123fc635cd2ee44d35` |
| 36 | `instance` | [instSemiring](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instsemiring.md) | 240 | `declaration-track:147d7a45adde1b99c38fb0f6b55407ebd2bf321891dfec63223fedec888a0c67` |
| 37 | `instance` | [instRing](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instring.md) | 249 | `declaration-track:4232878b85a18c016e59eb2e0a3105366d0ae28b2bc8af6816f4643dd8037035` |
| 38 | `instance` | [instSMul](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instsmul.md) | 259 | `declaration-track:03195dc8690003a481f69116329f146d0981f2fe9dfb3377fd75e19087f680cd` |
| 39 | `lemma` | [smul_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/smul-apply.md) | 264 | `result-track:12f0600165f4834a37079f164712bc6babe5fa3d79978dcfa0532d69e6a727b7` |
| 40 | `instance` | [instIsScalarTower](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instisscalartower.md) | 270 | `declaration-track:a9b0207a9c8618854b42a40dcb664ed4c479cd9702bd754318dec317617e3fce` |
| 41 | `instance` | [(anonymous)](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/instance.md) | 279 | `declaration-track:dd2239f5a2cf11a996316e22e5f1809c175c0dcaba7216911b5bc840b40284fb` |
| 42 | `instance` | [smulWithZeroRight](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/smulwithzeroright.md) | 288 | `declaration-track:b3af6776855a0cd32a4bcbad16fb56089fb39cbfea2acd627d83ad91137b699c` |
| 43 | `instance` | [moduleRight](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/moduleright.md) | 293 | `declaration-track:578f0d13bd53be330f998fe49ef65796baf8e1ab951693b3f9e90708715d11b1` |
| 44 | `instance` | [algebraRight](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/algebraright.md) | 298 | `declaration-track:7cde342e46a9724b166345c79de4ae87d6baccaeac2e977a17eccc0a6f0bc069` |
| 45 | `def` | [lambda](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/lambda.md) | 328 | `declaration-track:be90db95065190564cd1c5d59ba8297d86d9a9447330a5ce077416c78f0f09c0` |
| 46 | `def` | [zeta](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta.md) | 340 | `declaration-track:984cc948e2af8bcbe8b5b1add15709b4d52b9b52d5b0ed70f013b5beb23a8455` |
| 47 | `lemma` | [zeta_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-apply.md) | 344 | `result-track:e62d2db5fd9fcbd4ed15272659a2f74640457f49beccacb437aca5fb7e8d24cf` |
| 48 | `lemma` | [zeta_of_le](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-of-le.md) | 346 | `result-track:113bfe1691e86957608b7f95f726ec3ffd77e87a3b18ee281a424be3c2ba0af2` |
| 49 | `lemma` | [zeta_mul_zeta](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-mul-zeta.md) | 350 | `result-track:240197964cdf0ff97161467034f88834cd3d672235d34cf9769664f6bd6a781c` |
| 50 | `def` | [muFun](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mufun-source-edition-2.md) | 362 | `declaration-track:6deca789f31b5d89b683e12c943f8e44c86ab4dfe802d300a2e13bee7e29a2a7` |
| 51 | `lemma` | [muFun_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mufun-apply-source-edition-2.md) | 373 | `result-track:df3f535c545e522dba0d0c02c6ca052c08caf5f92c4bb8e0553a05003db5fb20` |
| 52 | `def` | [mu](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-source-edition-2.md) | 379 | `declaration-track:740567b886a353536d453a7351fc8a91fc50ddc33eea007eaa10167f11639963` |
| 53 | `lemma` | [mu_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-apply.md) | 390 | `result-track:0588bc9b50756685bc0bb90b073b88d6480cb23b50fb03b05109221bdfb85d65` |
| 54 | `lemma` | [mu_self](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-self.md) | 393 | `result-track:0108b7fb12fdd94cea2a7e5042f30121cac7e39d9e70e57b53a89fa4a482a3ca` |
| 55 | `lemma` | [mu_eq_neg_sum_Ico_of_ne](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-eq-neg-sum-ico-of-ne.md) | 395 | `result-track:4e3f516ace432ee1f253b7aefcf54ddc7b5a1ee3205c2ca7417c3ac053dff4d4` |
| 56 | `def` | [eulerChar](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/eulerchar.md) | 400 | `declaration-track:2d72be634b734a4714907e2fdacd83b59ce6cbf2850df03870dea27aaca89cc4` |
| 57 | `lemma` | [sum_Icc_mu_right](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/sum-icc-mu-right.md) | 407 | `result-track:58b3ace964c081e86c12f946d3a30050b44666a716f10ea3d0f6ac9591169316` |
| 58 | `def` | [muFun'](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mufun.md) | 421 | `declaration-track:38da90bef1d2c2f4776542df9e62792a2586566a00635f177d7cae10d58cde09` |
| 59 | `lemma` | [muFun'_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mufun-apply.md) | 432 | `result-track:197314edcd692eb249472d5212263a16722e41d9b0486f2c987f2311e94932a0` |
| 60 | `def` | [mu'](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu.md) | 438 | `declaration-track:2a2b581a2ffbfe0f3be9972a2858c50d65ca742759296d5c78f91376cdb7021c` |
| 61 | `lemma` | [mu'_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-apply-source-edition-2.md) | 450 | `result-track:86231fb413213276b79ba38623555befd5c8d2a94cb176abd2fba0dcb502a241` |
| 62 | `lemma` | [mu'_apply_self](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-apply-self.md) | 453 | `result-track:0b74c72bd03f13af6ae3d2a22c8d395e16b98e998bf8a8eecef8552cb19d034f` |
| 63 | `lemma` | [mu'_eq_sum_Ioc_of_ne](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-eq-sum-ioc-of-ne.md) | 455 | `result-track:4e151b0ddbe087344d436619d51592c8ba5fed7b007da1d6f2325ae2b54e870c` |
| 64 | `lemma` | [sum_Icc_mu'_left](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/sum-icc-mu-left.md) | 463 | `result-track:19249936526161d958c768bc61e1c24ebb830c4b87bae913a8a1e0ee3a306e7a` |
| 65 | `lemma` | [mu_mul_zeta](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-mul-zeta.md) | 477 | `result-track:e6ad95b86e90cdec2694827dc15c3c3b387c5a90a364c31a11439f8d29626c04` |
| 66 | `lemma` | [zeta_mul_mu'](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-mul-mu-source-edition-2.md) | 483 | `result-track:ddcb7b676102a3e78fc8df0cf80d14120b6e755eb4045d7e7f74383f22656af6` |
| 67 | `lemma` | [mu_eq_mu'](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-eq-mu.md) | 494 | `result-track:d5b180e93de6cd7b078ac23b4fd6366692b417765063a8e046194ec43c00fb9e` |
| 68 | `lemma` | [mu_eq_neg_sum_Ioc_of_ne](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-eq-neg-sum-ioc-of-ne.md) | 498 | `result-track:620ff780b8fa60b0cca329343fa31eeb04621089d1beee4631e25863e06134a8` |
| 69 | `lemma` | [zeta_mul_mu](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-mul-mu.md) | 501 | `result-track:b51034f58119eed37a51b9bb49a97a8ae1ba5088b6bc96fba75a00eb1d1f47f5` |
| 70 | `lemma` | [sum_Icc_mu_left](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/sum-icc-mu-left-source-edition-2.md) | 504 | `result-track:c4c3fe1d6d85aab9da7c8935137904427e09da2f3a461a77b2312ebffe68eac7` |
| 71 | `lemma` | [mu_toDual](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-todual.md) | 513 | `result-track:3ffbda93db6b12d9f81b560c49b32975e115f5b224390c13766f01622c10c953` |
| 72 | `lemma` | [mu_ofDual](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-ofdual.md) | 534 | `result-track:36608e4006b3a9ce1150bd28882850b48abb5b491919733cbe74b220e59519f3` |
| 73 | `lemma` | [eulerChar_orderDual](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/eulerchar-orderdual.md) | 537 | `result-track:49ea42e223bc240cbf319e0ce928ce76491392d037d3b9c2e1a1a4597e7e4d25` |
| 74 | `lemma` | [moebius_inversion_top](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/moebius-inversion-top.md) | 547 | `result-track:2b5015eb39e9725bd8bea9b520e3a478b8c69a53529d1affbe012c78a0285651` |
| 75 | `lemma` | [moebius_inversion_bot](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/moebius-inversion-bot.md) | 583 | `result-track:0109bc8a6337a5a14a9eba652d4c63bda32a21b555c2824db847a87c1e9a8fbf` |
| 76 | `lemma` | [zeta_prod_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-prod-apply.md) | 600 | `result-track:b254a6e2b7bc02386a8d14f43d56b030b5a05ddba3126464f1559e4a717bba48` |
| 77 | `lemma` | [zeta_prod_mk](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-prod-mk.md) | 603 | `result-track:ad98f5b6cd2fa7d65d9024834693e11bcf47c455b1d0866d5cecd62a3fa62900` |
| 78 | `def` | [prod](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/prod.md) | 611 | `declaration-track:87fcd27f842283ea3ec03fdbeb6471c2f6959a3b8171dc517d5c03720fe4f6d8` |
| 79 | `lemma` | [prod_mk](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/prod-mk.md) | 617 | `result-track:902d2bc8b14db834ac8b2464b695524f091a54084627e681d012a3aeb425bdf4` |
| 80 | `lemma` | [prod_apply](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/prod-apply.md) | 618 | `result-track:00db8287322e16f1ae95959bf4ad8828a5172e11d73d9ac1191ec99c5b7ffb37` |
| 81 | `lemma` | [prod_mul_prod'](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/prod-mul-prod-source-edition-2.md) | 621 | `result-track:59e5bc42594086053b4991337cf8dbb0471344e1ca91485966610c736994ceb6` |
| 82 | `lemma` | [one_prod_one](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/one-prod-one.md) | 628 | `result-track:d3ae70651227387e734e5bd1a3f419fbdffcdba9b0d022d0214f9ddfc92e39b7` |
| 83 | `lemma` | [zeta_prod_zeta](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/zeta-prod-zeta.md) | 633 | `result-track:514bd4284fb117f1a3f96535b4ce3c2e162409f46e1f7f6d35c7f47f51395a40` |
| 84 | `lemma` | [prod_mul_prod](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/prod-mul-prod.md) | 644 | `result-track:264a3dd151a0c49bbc8d6ae8fee8ee3edefcc07d49b532577e0da253dc76bfd0` |
| 85 | `lemma` | [mu_prod_mu](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/mu-prod-mu.md) | 657 | `result-track:309bc8ec008ab27ee78dfb2df3b4a784143ad9d75693495a643a215009757074` |
| 86 | `lemma` | [eulerChar_prod](../../../../Combinatorics/IncidenceAlgebraNamespacedPublic.lean/declarations/eulerchar-prod.md) | 663 | `result-track:dfcc1e3e633c33b50b4a39915ea8ae90d43d5e8519904fb9e04677e85414a109` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20df8ed727b1ba353303985c49c0f95fb490bf4f7ea9396ce93abdc92a1969a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/IncidenceAlgebra/Variantd777e5002b0ad90f9d0f360e8c1ef5b5c32729d9613adc45203116401012ee8d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
