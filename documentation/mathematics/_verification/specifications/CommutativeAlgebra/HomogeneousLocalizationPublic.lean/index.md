# Verification target: Homogeneous Localization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7fc718214a8af38f308ad3cc88e05103e43b705",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7fc718214a8af38f308ad3cc88e05103e43b705`.

Source path: `GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean.json)

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
| 1 | `structure` | [NumDenSameDeg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/numdensamedeg.md) | 96 | `declaration-track:79ea02fb2bbf2d1101625393b612cc99610b2029749c106a1c344d94d38ba7f2` |
| 2 | `theorem` | [ext](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/ext.md) | 108 | `result-track:f9cbca2b6a83df37a37eeca096705b7ffcd23c2b991e6e75ef2dd3bcd500453e` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-4.md) | 120 | `declaration-track:1dddbbeea2b3b85b05b70bfe5077dc2bfac39f1d518ad068ce21d654b715563f` |
| 4 | `theorem` | [deg_neg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-neg.md) | 124 | `result-track:48ab57697c3d1fb63366b26be1801830febdb18bdb83533b53c71d9d20eb87cf` |
| 5 | `theorem` | [num_neg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-neg.md) | 128 | `result-track:36d259b8317e60a774ea4d9596b695cf4102ce4f00fa87acb196284b6281e4fe` |
| 6 | `theorem` | [den_neg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-neg.md) | 132 | `result-track:893f51e97418574053094a16fa32e0bef37d9b7e627139821a951fb670a871d8` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-23.md) | 141 | `declaration-track:e8521be35add1d3fd6afdfb2ff24cf3f7e6256699f9717092f54dbb050b3899d` |
| 8 | `theorem` | [deg_smul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-smul.md) | 145 | `result-track:535bff1bc6a3031e21d3c97a6948674613827701cd320efd5b6196db598845a3` |
| 9 | `theorem` | [num_smul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-smul.md) | 149 | `result-track:34665f57b885f4701235efe45d7e0d99faf4336a87b116da99c665b57d570f10` |
| 10 | `theorem` | [den_smul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-smul.md) | 153 | `result-track:09f1f70fe958fe547cc73605490fdc61919f06c629fac53a133a7a773966337c` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-9.md) | 162 | `declaration-track:686aba52bb0a5b6cd8753597be48e4d592a1f622b01a924d595f758b64f7d5cd` |
| 12 | `theorem` | [deg_one](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-one.md) | 170 | `result-track:a06360be0422f7fbaa6f895b91e6f77f6425ed9fe0c15f39576d45d717524392` |
| 13 | `theorem` | [num_one](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-one.md) | 174 | `result-track:e9e9fbd824b10ead12e7d17caca8edb5018881421610a232631ab1f4f2c28955` |
| 14 | `theorem` | [den_one](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-one.md) | 178 | `result-track:39d81cec7d06250d687ddc609409ff02ebdf5d8ee1c896f2b9d569d78c984a12` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-19.md) | 182 | `declaration-track:cf82909521e30d282c671ca57d642bb3d54233dd3258b170efeb0724f322e739` |
| 16 | `theorem` | [deg_zero](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-zero.md) | 186 | `result-track:a94aad3d09c4453a91ee3898fc1187f7c6cb2d563788401fa7fd3b06d9bc86b7` |
| 17 | `theorem` | [num_zero](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-zero.md) | 190 | `result-track:25b0b12555b8854340cdf244fc9529d31914017899f36cf7533576007aac9fc1` |
| 18 | `theorem` | [den_zero](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-zero.md) | 194 | `result-track:c0e1ee69b7f5302a786b03451d6d8770a091925177374c893c1dc0b6084e5527` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-17.md) | 198 | `declaration-track:b8cdfd325df0e6277ac4042b66d6d18ffd5e3bdbb163e85cad1de4fbaea6dfdf` |
| 20 | `theorem` | [deg_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-mul.md) | 206 | `result-track:650e9334efcc0afa8292c863131c61b3010b8ee2668a60ba5988c287cbfdc061` |
| 21 | `theorem` | [num_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-mul.md) | 210 | `result-track:ff9320e44feadfe1e23a229103d85989d58008e66d04c8c16579c9e4a8ac02aa` |
| 22 | `theorem` | [den_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-mul.md) | 214 | `result-track:0ac32125caa2a23bf44c970c302fc6bbbee369672fcf2edf3aaf728e61bd7653` |
| 23 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-21.md) | 217 | `declaration-track:def21e30e4fa18769709e9fb05d8a52116d19989369b8d804f27d9f2904535f9` |
| 24 | `theorem` | [deg_add](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-add.md) | 227 | `result-track:a757eb54ea5585cf0b280383bf5333698ae62f0e451e0b7879aed8f433bec52e` |
| 25 | `theorem` | [num_add](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-add.md) | 231 | `result-track:024df8ce939acdc2ba9c1e5d6f33e3b8c26555dc8262a58f187b22777d718ae6` |
| 26 | `theorem` | [den_add](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-add.md) | 236 | `result-track:f1c2efa92e9b0784b3d228156d555dd9ad99a536b56ad7605b3a2bcfbfbd8ab8` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-6.md) | 239 | `declaration-track:2eea78db576bce737f432776004f4e1adcebfcc4806c363cc23bae15fe17b904` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-16.md) | 245 | `declaration-track:b1d2b9949ae9bca47909ad33a9b2d3b6a500a22dd4f1c75c458700753a8c027c` |
| 29 | `theorem` | [deg_pow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg-pow.md) | 254 | `result-track:73d6556ab58318ec62dfbc8b410671d15ad52c4cc540b5846fbcc5c1a792f546` |
| 30 | `theorem` | [num_pow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-pow.md) | 258 | `result-track:12f204a44302e954d0a96ffe4702ded393abab11cc2a2f64efdf847316c43d52` |
| 31 | `theorem` | [den_pow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-pow.md) | 262 | `result-track:2fc081515b320848f94a9185c7a23dd64413ea341e190d96245389c3dd664c76` |
| 32 | `def` | [embedding](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/embedding.md) | 270 | `declaration-track:5bcee2706a86796c95dbbdad6b8e9c47e4ee5c7112fa8081cdf3b927c32c6c5a` |
| 33 | `def` | [HomogeneousLocalization](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/homogeneouslocalization.md) | 281 | `declaration-track:0cae15f07660170ccb29e6b928fc134aa5b267767fa3c9d7f5fdcf6f718f2e8f` |
| 34 | `abbrev` | [mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk.md) | 292 | `declaration-track:0eb6534f3df4ad7a38856b6fc696bd55ab4461a767ab29c74b6b51e11f69ef38` |
| 35 | `lemma` | [mk_surjective](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-surjective.md) | 295 | `result-track:3ab4bd10a503a78f619f1e116fb5e352a2f9e7742352700acfa9b47d6ad6831f` |
| 36 | `def` | [val](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val.md) | 301 | `declaration-track:fc02180ed47c48c72c5e618d3430482592023519b983178de46d528aa3f2c7d6` |
| 37 | `theorem` | [val_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-mk.md) | 305 | `result-track:d065d6278c6cdacd89a38550fc254ffaf68f4c06d140fc8dd6cf97f697a0c904` |
| 38 | `theorem` | [val_injective](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-injective.md) | 312 | `result-track:6ffc6c4e23636ba0aaff9b252725662e8ea28cbc44de6de58dea2b6a770f904a` |
| 39 | `lemma` | [subsingleton](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/subsingleton.md) | 316 | `result-track:b364e3f0f1f8dddb60e687112eb150a730abd40eaf3fb17ac1f3011a4b7989bf` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-20.md) | 326 | `declaration-track:d661d863256af812ed600b2013297cb92815627f0f14dd63bc37d92994ddd701` |
| 41 | `lemma` | [mk_smul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-smul.md) | 332 | `result-track:d2e7ea925ea6406b70cd29132cbff7e742d997d118302815f7303e479819a0d1` |
| 42 | `theorem` | [val_smul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-smul.md) | 335 | `result-track:e753057af83304b9b8ee3ac304d2bdceb917aaddb039d332ac4c676b9eb26f42` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-12.md) | 343 | `declaration-track:a6283c6cd7dc7e6b34741c833be94eb3d8a015e46191a046aeafe04a908592e7` |
| 44 | `theorem` | [val_nsmul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-nsmul.md) | 347 | `result-track:ccc36f3af9c4852b6d68ad5c3cae24c9800bf2e6665583ff5e1e2997b41e6f0b` |
| 45 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-3.md) | 355 | `declaration-track:1ae6a996aeeb09b3e83349caa11c5366c1f2e3879b79e458cb2fcbb0398b2524` |
| 46 | `theorem` | [val_zsmul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-zsmul.md) | 359 | `result-track:52764da6b015ccdc489f38677a2ff3fee1b0ec3dc4408b596e89850cc3627d83` |
| 47 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-8.md) | 367 | `declaration-track:487c162a3bc65b34611e423362f84b4e914019cb9cb10c0ecfe05886e8d15e3d` |
| 48 | `lemma` | [mk_neg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-neg.md) | 373 | `result-track:699c66583b9bbb76c9e6eef922b7d27b432986d9c8b5540748a4d9626bbb037d` |
| 49 | `theorem` | [val_neg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-neg.md) | 376 | `result-track:75f2d3a5e9851b0d78629d999e326da1b505d2db802ce2191e3a520fa6ab0d48` |
| 50 | `instance` | [hasPow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/haspow.md) | 384 | `declaration-track:2710e22a06d36971779f80a079d19ad206dcedbe87790f0cad08cc4cf4798cac` |
| 51 | `lemma` | [mk_pow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-pow.md) | 393 | `result-track:1531eb04a1b422e6404d57fde9f6f769cb673b97f109bf82719d061dc431ac9e` |
| 52 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-10.md) | 395 | `declaration-track:6917e3d7da37405688c342eda944962abc992a792e37b59d9a5af98e383eb98c` |
| 53 | `lemma` | [mk_add](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-add.md) | 404 | `result-track:80021adcc653c2b0e25f1dd9e6ef09cb3f2208e9edd5f5c09dfff2087d9d52cb` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-2.md) | 406 | `declaration-track:191b56db1c1d3de328cbfb7f0a542adb4ea170b9de6a31735e156ae5c0a237fa` |
| 55 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-7.md) | 408 | `declaration-track:34366d7781a30fc8aede47c20eb76494d09408378160b433f5548f98043ec4e3` |
| 56 | `lemma` | [mk_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-mul.md) | 417 | `result-track:76a95dc2c8ece1acdc9f1e85a6e0e976aee5627d2f1d2f32daa42e261dea3ae5` |
| 57 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance.md) | 419 | `declaration-track:0459a20747ab6b0dfe8f83603bd1875ba7dfd55f8db18c34e042c3c9416cc5bc` |
| 58 | `lemma` | [mk_one](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-one.md) | 421 | `result-track:38e5894214805685f5210e47c1463002c4f001cc0ddaa2c596a44ff7ca1f9b1d` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-11.md) | 423 | `declaration-track:6a94442e2aa38c807e176b27abff22e85bd40fa62d34129ca5cc02ed2a73279a` |
| 60 | `lemma` | [mk_zero](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-zero.md) | 425 | `result-track:59146c2777fd330e7150128d6bf671e1096b7f8ab70baa7916ba2e407dd91925` |
| 61 | `theorem` | [zero_eq](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/zero-eq.md) | 427 | `result-track:8dde4e4a9b49bde0eabdec49dac9c860269a6527581fc76a6482a22dc47cc350` |
| 62 | `theorem` | [one_eq](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/one-eq.md) | 430 | `result-track:d44469ec8da66634a9a5e496d298f85375d11e297312b26bac4a0480aef939bb` |
| 63 | `theorem` | [val_zero](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-zero.md) | 436 | `result-track:a6ff704da66d957e57c891d638e75ca7ae64b06a8b4ebf8f193c75a4579b9234` |
| 64 | `theorem` | [val_one](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-one.md) | 440 | `result-track:c3b8baefd87e154e3cb97a9697d324d67203aac33f1a92cb3e86bea6bf26b08a` |
| 65 | `theorem` | [val_add](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-add.md) | 444 | `result-track:79d06150f2624a488a81f2b67657e32f68a133ddd286089d44489872be40bd54` |
| 66 | `theorem` | [val_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-mul.md) | 448 | `result-track:79b283c19b75bebbea476dfef6bde5a07a68f029e02ac8fc49a6899a16968c69` |
| 67 | `theorem` | [val_sub](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-sub.md) | 452 | `result-track:98dd9fc26fb348845b92f9aa30e8afff5bb9e7038a1e01f058f1deab73f09a57` |
| 68 | `theorem` | [val_pow](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-pow.md) | 456 | `result-track:a9a2dafd224c9d202360cdaa4a9112e5da70848b1ada7ca64de1bff3111cc8c6` |
| 69 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-13.md) | 459 | `declaration-track:a86192a144560543d570ed1d1d0c805a5d51ccc3dfbf26d3082a59a394503167` |
| 70 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-15.md) | 462 | `declaration-track:af012f1849491abb6a1414fecee9ef1c0a2f00acc5f562ea0d3373fec1365d05` |
| 71 | `theorem` | [val_natCast](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-natcast.md) | 466 | `result-track:c08e1c9aaf5930bbb90a542b53eed75dfe42e6457fe8165fa428e3a22d36de91` |
| 72 | `theorem` | [val_intCast](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-intcast.md) | 470 | `result-track:2ecb354450928fb5e7e2ac8d59236c15e1efbcd16a40e51797aa6d56bfc005c3` |
| 73 | `instance` | [homogeneousLocalizationCommRing](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/homogeneouslocalizationcommring.md) | 473 | `declaration-track:1db154b6cb9ccbc218298f80baf8bf7628aaccdfd882d28e876c93b0639b2fb1` |
| 74 | `instance` | [homogeneousLocalizationAlgebra](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/homogeneouslocalizationalgebra.md) | 477 | `declaration-track:6621f293669b35e3273005ec4e39a61d89e5d756acfc749717c08cab31e00f5f` |
| 75 | `lemma` | [algebraMap_apply](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/algebramap-apply.md) | 489 | `result-track:61f1f47b5396541712d2f198a1b8c0014736c2d6a046db007b49f020ebabfb9c` |
| 76 | `lemma` | [mk_eq_zero_of_num](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-eq-zero-of-num.md) | 492 | `result-track:4c2041bbfb9ae76bb5684f43f4183a814ac524380e137dd5734be139afba7eae` |
| 77 | `lemma` | [mk_eq_zero_of_den](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mk-eq-zero-of-den.md) | 496 | `result-track:90506f09d8934670e1b6b26beb2f5a1a39cb4d4306159db54500327ce24eea37` |
| 78 | `def` | [fromZeroRingHom](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/fromzeroringhom.md) | 502 | `declaration-track:e11e16100ce1e14931537ef9a007f224914e03983f2e25c3a03afca4cc8a2f9e` |
| 79 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-14.md) | 509 | `declaration-track:a8ef7b8168eed61e9c4b6204f80b6e6dd7a2f80397ae612b42a75db76caabafc` |
| 80 | `lemma` | [algebraMap_eq](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/algebramap-eq.md) | 512 | `result-track:d7b5c2e6988939a665be01f65fc07a5f7cc0f090077a9f3a19a47930b7dcf8b2` |
| 81 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-22.md) | 514 | `declaration-track:e4bfe71c98129128f294338a38f3036ffae02d986c837bbf5fa41a4204246c4c` |
| 82 | `def` | [num](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num.md) | 527 | `declaration-track:924fc0d9022e83762a1c66df46f6015d3e01a4df27984b5e0f3c06465354a485` |
| 83 | `def` | [den](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den.md) | 531 | `declaration-track:5b292d5792011d06e6cb8b7a0d03a25cd05a9ec7648a7148afd762320bc1b190` |
| 84 | `def` | [deg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/deg.md) | 536 | `declaration-track:339ffa631e2f7a0a808105e3e1cb6323f6271768059a1f5b7a506488f711171f` |
| 85 | `theorem` | [den_mem](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-mem.md) | 539 | `result-track:c2038b35997b2b4de611b0772317520b83888567e1703da62d30b965c0ac7006` |
| 86 | `theorem` | [num_mem_deg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/num-mem-deg.md) | 542 | `result-track:f4af5c46aecc2c212cb59ed7c1cc9491dd2bc1c00e7aa903375550e420d65608` |
| 87 | `theorem` | [den_mem_deg](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-mem-deg.md) | 545 | `result-track:9262f5535179454ef666798fca34bdc1c43815356acb6ecc1e1a7362d4c2a83d` |
| 88 | `theorem` | [eq_num_div_den](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/eq-num-div-den.md) | 548 | `result-track:a8257f941c97e2d7a911de73787c9d16922beb742a82dd00e81729a5b88e9a65` |
| 89 | `theorem` | [den_smul_val](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/den-smul-val.md) | 552 | `result-track:dd323265c74ae39da9786dcd166f8714bbd41625cb4189f73f709e699c2eb612` |
| 90 | `theorem` | [ext_iff_val](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/ext-iff-val.md) | 557 | `result-track:0d236974498f69fff807f021c4c78c16af215f7b0dd2cc7b7e11ba206369a386` |
| 91 | `abbrev` | [AtPrime](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/atprime.md) | 569 | `declaration-track:543948802e4b2a41ffebee9a1e38894e0c9505a793e93c2647849e17ae4d633d` |
| 92 | `theorem` | [isUnit_iff_isUnit_val](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/isunit-iff-isunit-val.md) | 572 | `result-track:5e01e10ad25bb9ae78eaca0f9c19f40cf2d2a6b7abadd7fa41dff327578cb1b9` |
| 93 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-18.md) | 588 | `declaration-track:bca54b005d40781abaf2fae8caeaed7d332a376b0503f011d030bbd559b2ff9c` |
| 94 | `instance` | [isLocalRing](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/islocalring.md) | 591 | `declaration-track:7882ca30e9c3f3554c1c09e2d3cc5f18b0f4a5b7ed885fee89b1d875e88fc966` |
| 95 | `abbrev` | [Away](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away.md) | 601 | `declaration-track:578452afa45bf6bfdc4872d1220f3f1b42434245ed554b6fa40340f4d1ed6c49` |
| 96 | `def` | [Away.mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-mk.md) | 609 | `declaration-track:68ddfa83f85caececc8995de59c5d41d5913e0338ba78b8764ee0c79293bb0db` |
| 97 | `lemma` | [Away.val_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-val-mk.md) | 613 | `result-track:bd435178534c132295dc2216aa3292012ccd03ab9054f611f20a0ef82ae57b0d` |
| 98 | `lemma` | [Away.mk_surjective](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-mk-surjective.md) | 618 | `result-track:6952a0f29b9afc825c36378d909ed0b222f0e251c1a2940a41d4b63aeb5a6850` |
| 99 | `theorem` | [Away.eventually_smul_mem](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-eventually-smul-mem.md) | 629 | `result-track:f6c8c0d95c7541be8661d777e44a73f84fffc7d441921fe1da9687522f06f189` |
| 100 | `def` | [NumDenSameDeg.map](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/numdensamedeg-map.md) | 659 | `declaration-track:dc47b36ea456869cd79187112ad2c40a3f2e0458358f3104fa55a8b579b06dc1` |
| 101 | `def` | [map](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/map.md) | 672 | `declaration-track:33745bb8f02b9d9f30ff49183b41fc465ba05d27fdd6ad2b62e312b2bc89f7fb` |
| 102 | `abbrev` | [mapId](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/mapid.md) | 695 | `declaration-track:e595ad9e3323bd958af8ca96fc9ec0b563c1f4328dc79bece3fdf50a6c46a813` |
| 103 | `lemma` | [map_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/map-mk.md) | 699 | `result-track:677d4999c18cbabcde6a9984142699776f2d3a823be6f96ab0e6a23ca02257d3` |
| 104 | `theorem` | [map_id](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/map-id.md) | 705 | `result-track:8643e1cce64ac3364169c8503a292e3ef667fa2b45951f06cbfab55f7cb8aff1` |
| 105 | `theorem` | [map_comp](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/map-comp.md) | 710 | `result-track:1f8af0999df2580385d69198813dc7700c74e85f81fc03a738464c689f3bff23` |
| 106 | `theorem` | [map_map](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/map-map.md) | 718 | `result-track:9514dd43f70b1bdc3c522b200dc8d91e6cb0bf6c5e174dad5d188286c57fd596` |
| 107 | `def` | [Away.map](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-map.md) | 726 | `declaration-track:5aa528f6b4c26d62338ddc95bda9dcaed9fbf09981c7836225bc1700608ad35a` |
| 108 | `lemma` | [Away.map_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-map-mk.md) | 729 | `result-track:59de3f4631f1cef3cd50c65c77b3acecd54c6930a97bcddb6f3de76c746f4793` |
| 109 | `lemma` | [Away.map_id](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-map-id.md) | 735 | `result-track:c165e1577d2721842ea88b0d4b64aa6856880a1f5bf65aa36bfccb636509dd1a` |
| 110 | `lemma` | [Away.map_comp](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-map-comp.md) | 738 | `result-track:3be490798139dd9fe8a2d2e00a0098d94370ec4bcfc9cde9161b00a42207ae65` |
| 111 | `theorem` | [Away.map_map](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-map-map.md) | 742 | `result-track:060d6e8ac6acf82f40170a72f0ca9d54e7b0e0ac0d894ef3ebcba0e7efe1514e` |
| 112 | `def` | [localRingHom](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/localringhom.md) | 754 | `declaration-track:8c3675996605dd9a2f54070b36f2a8cc352b8c3eb877e36ab51b250c595183df` |
| 113 | `lemma` | [val_localRingHom](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-localringhom.md) | 760 | `result-track:a63d585b370b73bcee16da973bfe82271923306aceed0fad0390c828e6f439ea` |
| 114 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/instance-source-edition-5.md) | 766 | `declaration-track:29f30ea78023b543739bd36b4ae12055e0783c74f89c6da08dcecfd45ea1025d` |
| 115 | `def` | [awayMapAux](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymapaux.md) | 785 | `declaration-track:9eca56b43b53bda0d81cb340cd9e086143d9a19dda5e4ca7174505ad747a0a22` |
| 116 | `lemma` | [awayMapAux_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymapaux-mk.md) | 792 | `result-track:78a404fb48ceb4019bce9aabf553b0fe12b91f9a0f7a5ad0349bddbd3e65defa` |
| 117 | `lemma` | [range_awayMapAux_subset](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/range-awaymapaux-subset.md) | 808 | `result-track:c69734c2053174847b311f918f81d27149650155fae14edc52ec44ac62f975d4` |
| 118 | `def` | [awayMap](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymap.md) | 824 | `declaration-track:32fd586792418023a96200f44c0c9aeed817cc5a2d628ace71cbe02e10defd74` |
| 119 | `lemma` | [val_awayMap_eq_aux](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-awaymap-eq-aux.md) | 833 | `result-track:f64842dea560c4cc23cc551a50dba2b1d06f9c98c23f5ab65eb21359ecee87fb` |
| 120 | `lemma` | [val_awayMap](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-awaymap.md) | 841 | `result-track:c0a8694f817b8a3dc63c7ca18eb69854bd46852836fc3b651d54ebbb75d3228a` |
| 121 | `lemma` | [awayMap_fromZeroRingHom](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymap-fromzeroringhom.md) | 846 | `result-track:478c001097813f4ba368a5baf2b6fb5188a18571664b5e68ca6f8d457a1ec816` |
| 122 | `lemma` | [val_awayMap_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/val-awaymap-mk.md) | 852 | `result-track:cdd6600d2bd90cc02c5d7604afe0d1b409b3e2e633e67f0ab6c724c87c7aef20` |
| 123 | `def` | [awayMapₐ](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymap-source-edition-2.md) | 858 | `declaration-track:73e6f51b66e5d4fe506b34f8e35d40473f89c243fc95db5c235ddcd327b22da9` |
| 124 | `lemma` | [awayMapₐ_apply](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymap-apply.md) | 862 | `result-track:f8b80d343c5f074be5ceee8e9e31094a0e9d2bd62ad42cc21654dc2137269363` |
| 125 | `lemma` | [awayMap_mk](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/awaymap-mk.md) | 866 | `result-track:f3382f7f70b96a0b995e923964def2dd0fa0d24485c01b81ecbe6d3f5331d735` |
| 126 | `abbrev` | [Away.isLocalizationElem](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-islocalizationelem.md) | 880 | `declaration-track:fb18168a27191d67a00773022201267e440467194a2bbc4ac79e9913dad7e7ea` |
| 127 | `theorem` | [Away.isLocalization_mul](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-islocalization-mul.md) | 886 | `result-track:061d39d67e3d21eb377cad189d105ad9fdcec64adcd9c1d097201a879e4381f2` |
| 128 | `theorem` | [Away.span_mk_prod_pow_eq_top](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-span-mk-prod-pow-eq-top.md) | 948 | `result-track:19fe94edd75bf4b49c19ffcee88f482f5d04c64053e0438385d52bf7025a51a8` |
| 129 | `theorem` | [Away.adjoin_mk_prod_pow_eq_top_of_pos](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-adjoin-mk-prod-pow-eq-top-of-pos.md) | 1002 | `result-track:d0ebf4c708efa15bcf05b0d18e385570ed2fb8dceb85ea1098ec0f6467e46b6b` |
| 130 | `theorem` | [Away.adjoin_mk_prod_pow_eq_top](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-adjoin-mk-prod-pow-eq-top.md) | 1069 | `result-track:aeaf27077d80ea3726e6a07a41f272a5287e67df0494621cc235d6134ee3b20d` |
| 131 | `lemma` | [Away.finiteType](../../../../CommutativeAlgebra/HomogeneousLocalizationPublic.lean/declarations/away-finitetype.md) | 1096 | `result-track:0155bc590f52b7e822d14d25fe2565059cf4996267c3cdd258b187c225fdb788` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8fd109ec0f5a81d8eae8b3b2acfe51515309a41300cba30a9b3b29fe5a66806 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean","GRWTSK/_verification/specifications/Algebra/HomogeneousLocalization/Variant5781ef0b0580c0ed7831dfff3b4d29cc326c44e9b005c7400b8586803df16ea8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
