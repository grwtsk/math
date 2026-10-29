# Verification target: Rpow Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean.json)

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
| 1 | `abbrev` | [nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow.md) | 69 | `declaration-track:3115776ccc8306029aa82ad1060b347243798772ebb91edf8aa3968f9c33e844` |
| 2 | `lemma` | [nnrpow_def](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-def.md) | 71 | `result-track:354e38e0376b0cf26d87b0467aadc3260d865fb8477caef089409b77a1777947` |
| 3 | `lemma` | [continuous_nnrpow_const](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/continuous-nnrpow-const.md) | 74 | `result-track:8fef1c78ccfb843cafd6b9bece605db6a43c083445601fb7aeb7ea5afc3ab969` |
| 4 | `lemma` | [monotone_nnrpow_const](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/monotone-nnrpow-const.md) | 80 | `result-track:c403e45254d754cc1744f71680ac57e6c6d88a965a8e33f304eacf9dd2f7d851` |
| 5 | `def` | [nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-source-edition-2.md) | 98 | `declaration-track:be4783110b8dcb84c8d94f8445a8f093df8705c12b9daa7cffb33397042c4413` |
| 6 | `instance` | [(anonymous)](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/instance.md) | 102 | `declaration-track:5bc86ea1b91c1fcb32bbd778c1234f739e5649caf5b5ab9eefccac3d99053076` |
| 7 | `lemma` | [nnrpow_eq_pow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-eq-pow.md) | 106 | `result-track:cb24433e838ee465c1cb787bfa2b52bb4d2bd0371887e01cc540f0c4008ab40a` |
| 8 | `lemma` | [nnrpow_nonneg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-nonneg.md) | 109 | `result-track:2afda3dc13595404fa80124940918bc01786e817e724c9dff14f4454b3b72dd0` |
| 9 | `lemma` | [nnrpow_def](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-def-source-edition-2.md) | 113 | `result-track:f5828705dc3e7c8f58e2b8bf29e6ef67b397f848ceabd604f5e34fda9f96663a` |
| 10 | `lemma` | [nnrpow_eq_cfcₙ_real](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-eq-cfc-real.md) | 115 | `result-track:cda7adb05008d59fe56e5c669ac0957062facb26be168ff3a5df5d952317e3ae` |
| 11 | `lemma` | [nnrpow_add](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-add.md) | 122 | `result-track:ad6a3ba4e017a9d4d3037207a37881b30e6e93e5a80c4c3ef08d21ba205a73ac` |
| 12 | `lemma` | [nnrpow_zero](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-zero.md) | 130 | `result-track:049a664914e4b1530d6a98c3b2feeebeb02e00657f191f466fa9c002ba67b945` |
| 13 | `lemma` | [nnrpow_one](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-one.md) | 133 | `result-track:bee8ab9ff1617eebb2ad62ecd4904e48023c26b3f14f56a62ae238fbd6ad8ae0` |
| 14 | `lemma` | [nnrpow_one_eqOn](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-one-eqon.md) | 138 | `result-track:9219691555e24f1f0b6fbf2a39dcb3ac7cb2600137a4c58bb91da55477c69562` |
| 15 | `lemma` | [nnrpow_two](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-two.md) | 141 | `result-track:3c8fc4d51b6c005b9ec124b44d290f15b321047081bc59f0153ff26a356bfd42` |
| 16 | `lemma` | [nnrpow_three](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-three.md) | 146 | `result-track:aee0ddf88284ab97f9eaf344e43b5ba58f20b934e5cc2c691b165487ced56e13` |
| 17 | `lemma` | [zero_nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/zero-nnrpow.md) | 152 | `result-track:54c028b51e779a66b49e350f6c1908d3096ca3a160c82b296e557b3cc6ff050a` |
| 18 | `lemma` | [nnrpow_nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-nnrpow.md) | 159 | `result-track:57fd8b42b59a99c8cffbfe96bdf47342051b15e9c840a3caedbe46777c155e62` |
| 19 | `lemma` | [nnrpow_nnrpow_inv](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-nnrpow-inv.md) | 172 | `result-track:48cb0f79384a3d91660f4a9619a019ed120100e4b7a8cda0f16def3a4a01a6e1` |
| 20 | `lemma` | [nnrpow_inv_nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-inv-nnrpow.md) | 176 | `result-track:fa8ff4cd4c76108311f33027ab83642d3bdd16d0af07ba5f67bcb4449de43581` |
| 21 | `lemma` | [nnrpow_inv_eq](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-inv-eq.md) | 180 | `result-track:3f7aeaa71e01ec97b1cf1b3e48bc59423c5f69c493df65cf958edbe6fbfd101e` |
| 22 | `lemma` | [nnrpow_map_prod](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-map-prod.md) | 197 | `result-track:781e6c144b90935c4b363c05567aedfd247fb40c0208283d15ecebddd4824ae2` |
| 23 | `lemma` | [nnrpow_eq_nnrpow_prod](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-eq-nnrpow-prod.md) | 206 | `result-track:0b9c12d84534a45280e6d30bf237a1599c62160aec628fddeb91a68145d573a8` |
| 24 | `lemma` | [nnrpow_map_pi](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-map-pi.md) | 225 | `result-track:1602eb41a87ac0fe080609419bb9b0e0129d991bc0e2f614bc49cc65c30e247a` |
| 25 | `lemma` | [nnrpow_eq_nnrpow_pi](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-eq-nnrpow-pi.md) | 231 | `result-track:aad46d22f6b2e307d8ae2efa53b399f8ab71bba277bd95bcd418379f8afdf947` |
| 26 | `def` | [sqrt](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt.md) | 243 | `declaration-track:4c81f787d5fbce88db3c214facaceb98fc5279e08a1822573437892721a3cee7` |
| 27 | `lemma` | [sqrt_nonneg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-nonneg.md) | 246 | `result-track:f8bdcedb0896c8c882e64cce6f243a15d462d9a86e6de285aa82b6b7fe44ff98` |
| 28 | `lemma` | [sqrt_eq_nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-nnrpow.md) | 250 | `result-track:b2566d5db6cfbc235261057edb162ba14af89ddbf59cdf8eaf233e47ae734233` |
| 29 | `lemma` | [sqrt_of_not_nonneg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-of-not-nonneg.md) | 256 | `result-track:1b04008ab00c9255b425ef114fc12a72b044cf0ed9b99e3c8dac1df3e85ac8ca` |
| 30 | `lemma` | [sqrt_zero](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-zero.md) | 260 | `result-track:b64244e09c15382c7307a768049fe732d1b0bb44f7beff769641cf6474197a71` |
| 31 | `lemma` | [nnrpow_sqrt](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-sqrt.md) | 265 | `result-track:f7a404402d7b5ddd1c4741a2fcd49103f576187ebcc5e032d30126b4bec83562` |
| 32 | `lemma` | [nnrpow_sqrt_two](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-sqrt-two.md) | 268 | `result-track:08abd4034615e03c7475fd39346aa856481513f0b3438bf3099267b601bbe79c` |
| 33 | `lemma` | [sqrt_mul_sqrt_self](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-mul-sqrt-self.md) | 272 | `result-track:aefdf96b861e074f8acd299db6c2486374da5b3d51f309bb62fcc51aa90da20f` |
| 34 | `lemma` | [sqrt_nnrpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-nnrpow.md) | 276 | `result-track:5d8722c6cbde0ac4d490e869847f51c9cdd335d290f159eb38e6dc42e5c5ccbc` |
| 35 | `lemma` | [sqrt_nnrpow_two](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-nnrpow-two.md) | 279 | `result-track:636cf2058dd58fea7d93d43a5753773b321de373a8f8425e3c01e26ebb9c3a19` |
| 36 | `lemma` | [sqrt_mul_self](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-mul-self.md) | 283 | `result-track:690b88b3b5d6b0a686c13184d336f5b654f56269d62d8f6241cdeedb5c106bf0` |
| 37 | `lemma` | [mul_self_eq](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/mul-self-eq.md) | 286 | `result-track:a6580f3ea700ea842586ea757e5cbb1235e52877db80b462dd9f5371835e7e13` |
| 38 | `lemma` | [sqrt_unique](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-unique.md) | 290 | `result-track:e2a5a9ef2c04d7821391ecdd62aad37cb37c352950f16e19cb9055e0cd7deeb9` |
| 39 | `lemma` | [sqrt_eq_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-iff.md) | 294 | `result-track:2446e7ce2db272b2e06ccd48fb3d399864aa5b6df6ab741e22e001f004550774` |
| 40 | `lemma` | [sqrt_eq_zero_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-zero-iff.md) | 298 | `result-track:a34e629589fb840c059e43677e423053fa52c66ea654a9927970d419f92da2c9` |
| 41 | `lemma` | [mul_self_eq_mul_self_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/mul-self-eq-mul-self-iff.md) | 301 | `result-track:df7ea0099adb471adb4840ba85a32ea2d30851ea1fd48a8e64dc35b11fd9fafa` |
| 42 | `lemma` | [sqrt_eq_real_sqrt](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-real-sqrt.md) | 309 | `result-track:1fe98af1eebe156c23114d11587dafe5a49e7f9a0de816e421f5fbe139c42efe` |
| 43 | `lemma` | [sqrt_map_prod](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-map-prod.md) | 325 | `result-track:7c783bb334877109873f14c4013170f9557aaf0d39b919c349956a8bd79dee75` |
| 44 | `lemma` | [sqrt_map_pi](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-map-pi.md) | 343 | `result-track:01209574df264ebb8ce00ef3c4fada4cde4c8bd7b7d81149a9413b671fd3c55e` |
| 45 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-tfae.md) | 360 | `result-track:dd5476bb9f40da22e7a41286ed00ca112b8b89ac49109bf4bc3a35090269d5a4` |
| 46 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-eq-sqrt-mul-sqrt.md) | 382 | `result-track:906d48d92b1b05aa3ed10711bdb72ea62317c823487f28962adc4146613af01a` |
| 47 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-exists-nonneg-and-eq-mul-self.md) | 384 | `result-track:0a9bc6c5d9e92bda254969b118664b70f6ef75254ce8abd754413baa1f6482e6` |
| 48 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-exists-isselfadjoint-and-eq-mul-self.md) | 386 | `result-track:f23948d124e678800f4948ae890e29177e58b02f6ff64b56355d6ace466d501b` |
| 49 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-eq-star-mul-self.md) | 388 | `result-track:00fd40e0e802f3153233b52ab3bf4390fffbc7bff26117640ed38c24bc8232b6` |
| 50 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-eq-mul-star-self.md) | 390 | `result-track:0d4a48162421b8f9632aa71a2041791cac6913d571ef641868de0b843ee752a0` |
| 51 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nonneg-iff-isselfadjoint-and-negpart-eq-zero.md) | 392 | `result-track:7ef19f16c187cecb532c185cc6439774797e299fa93794b44f8ed77c20bea870` |
| 52 | `def` | [rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow.md) | 408 | `declaration-track:9ff7cccbc783b68acc52f7f3a341f139740ce2351e3da9ac2dab9898d73ed668` |
| 53 | `instance` | [(anonymous)](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 412 | `declaration-track:ee36468d16404c41f4b09be7edb9c451dad85348b420ab86a819e58f3bdac869` |
| 54 | `lemma` | [rpow_eq_pow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-eq-pow.md) | 416 | `result-track:937a06c50313c30bd09d7a6848dbcbb4e5b5ff611dd702ae6ba5b191c99a00c4` |
| 55 | `lemma` | [rpow_nonneg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-nonneg.md) | 419 | `result-track:a2676c43237980ce1e81aa50b5201bd7536e616757e270255792906776092c0e` |
| 56 | `lemma` | [rpow_def](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-def.md) | 423 | `result-track:bde77817fe1b6d44d839782739a33af0338194ae1cfb6aecf7d5c011c10f82cb` |
| 57 | `lemma` | [rpow_eq_cfc_real](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-eq-cfc-real.md) | 425 | `result-track:d8e6ac04629d225a781399b968ea2435024d68b8720d088036e6308927b57d43` |
| 58 | `lemma` | [cfc_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/cfc-rpow.md) | 432 | `result-track:8ec84873997907eb52eba2e7c2ffb430c2d840704da00c43272db6e97e7582cc` |
| 59 | `lemma` | [rpow_one](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-one.md) | 440 | `result-track:adad481eb2152e04f88f7a24fe9476478fdc167e0fddf418c4427935a4c5ea6c` |
| 60 | `lemma` | [one_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/one-rpow.md) | 444 | `result-track:9c39382ed12953ab59406173f257a1cd1e2aece7f81e23acb2a17f0c77c43413` |
| 61 | `lemma` | [rpow_zero](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-zero.md) | 446 | `result-track:d3d355601696c9c08a8cd01dbd8cc6b6835c369c1fdbaf1248a6838a7e9d6d69` |
| 62 | `lemma` | [rpow_zero_eqOn](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-zero-eqon.md) | 449 | `result-track:9ed878b66e3c3f4d3af3c71c0e59064a928f683bd0332e1fc12dd43c817de7e5` |
| 63 | `lemma` | [zero_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/zero-rpow.md) | 453 | `result-track:0ae565bbd79387201c2761a7d0c4d140826a9ab4ab450c916bf613409470815d` |
| 64 | `lemma` | [rpow_natCast](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-natcast.md) | 455 | `result-track:68904393473d856e597cc63b8f52653d4e6686705f56df9f9e1a0a7b7a7304aa` |
| 65 | `lemma` | [rpow_algebraMap](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-algebramap.md) | 461 | `result-track:28fe3fe921c7c29f492067ad4e60da2e0baceb53933e672d6f852e9247c53daf` |
| 66 | `lemma` | [rpow_add](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-add.md) | 465 | `result-track:48e2744580322386096bdcf3acdfa1dd679066f8bac7ca5720a7e7d7fb26ed18` |
| 67 | `lemma` | [rpow_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-rpow.md) | 474 | `result-track:67a599fab0da39320788728a8b4b31531a430c8dd82330cfddf13d0e8dccfb19` |
| 68 | `lemma` | [rpow_rpow_inv](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-rpow-inv.md) | 483 | `result-track:e442be94ceb3123df73b550570f6a68bce3d027bce4e65469866ea7292cea06e` |
| 69 | `lemma` | [rpow_inv_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-inv-rpow.md) | 488 | `result-track:b78887c2071cabe2cd3b9ae60b4a58e27fa1dfb3f8f7292b88d198d7dc845820` |
| 70 | `lemma` | [rpow_rpow_of_exponent_nonneg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-rpow-of-exponent-nonneg.md) | 493 | `result-track:4c6e38d88f5ed42d064bf1f0435401b422f657fcba8c8e3b600002aa597bb987` |
| 71 | `lemma` | [rpow_mul_rpow_neg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-mul-rpow-neg.md) | 500 | `result-track:87df8fe440658ce77e8996a176a9632cd94b2b6aeacc949b92d24fa080fe48c6` |
| 72 | `lemma` | [rpow_neg_mul_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-neg-mul-rpow.md) | 504 | `result-track:638e5969a9ac2ab3f46654e5154a5c01a2aaf499d8506db4e070230fd6a92a58` |
| 73 | `lemma` | [rpow_neg_one_eq_inv](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-neg-one-eq-inv.md) | 508 | `result-track:a16faa7733d205ee6e648a3422540e31af34787690a45cb1835609f7746ad093` |
| 74 | `lemma` | [rpow_neg_one_eq_cfc_inv](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-neg-one-eq-cfc-inv.md) | 513 | `result-track:f0767ef7cf5f8464a4cc6794c752df941a49427930bfc28d4fd5ecfc7ba82169` |
| 75 | `lemma` | [inverse_eq_rpow_neg_one](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/inverse-eq-rpow-neg-one.md) | 519 | `result-track:e71d66fb609f3d00c418aac381c4da54fcc7622636958d200b55bed584e0bf83` |
| 76 | `lemma` | [rpow_neg](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-neg.md) | 524 | `result-track:f79a0440145d4a2671190527861f9db886a5ff9e67dd8b9a0fcdbb3a627f2710` |
| 77 | `lemma` | [rpow_intCast](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-intcast.md) | 535 | `result-track:99eb166256b33c08dc4b9145421fb1b72ac3695834ddbdba0267fdd5167f32bc` |
| 78 | `def` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/cfcrpow-source-line-543-occurrence-2.md) | 543 | `declaration-track:f2aa5b2742c7457994e259caadaf5c43efd12dd26397700b8c8489c655abef15` |
| 79 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/cfcrpow.md) | 547 | `result-track:66f6662163ca2b7f24152f1dfc3c9c7aa51e0824121ba423fbdc965a6a2377b4` |
| 80 | `lemma` | [spectrum_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/spectrum-rpow.md) | 551 | `result-track:93ef996a098ce3f7e41dbf440e7770361c47a030b7158bfcbac0003cc9f3c618` |
| 81 | `lemma` | [isUnit_rpow_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isunit-rpow-iff.md) | 558 | `result-track:b1682b4537b0beb5e2124fd841d863d360612ed73fcaf387d843ad8d96e262d4` |
| 82 | `lemma` | [rpow_map_prod](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-map-prod.md) | 586 | `result-track:46a7a0258b753e1bd37925ddcbaf3ce28bc913876e56d9da32397254fc66fa1f` |
| 83 | `lemma` | [rpow_eq_rpow_prod](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-eq-rpow-prod.md) | 597 | `result-track:4a424244e2a69adee09ab32f37677019c0f02c9b83989656e3a56a51b2d40e9b` |
| 84 | `lemma` | [rpow_map_pi](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-map-pi.md) | 617 | `result-track:6868318a7b53066c6a6b86785c8605e0692fcdc0626277965265f7b3899772da` |
| 85 | `lemma` | [rpow_eq_rpow_pi](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-eq-rpow-pi.md) | 625 | `result-track:1b05f5ff83af5f6b2b76a8a415e5062d9534eab4f22ed38cec45839fcc9bb26c` |
| 86 | `lemma` | [nnrpow_eq_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-eq-rpow.md) | 639 | `result-track:45970949a6ce2a9476dfcf3f88b54677fa3a027bbe27411a5269042e2810e358` |
| 87 | `lemma` | [sqrt_eq_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-rpow.md) | 642 | `result-track:783eee74b9a5311074c8665aa0884789628a78d109cfdf0cccc4a7a23717478b` |
| 88 | `lemma` | [sqrt_eq_cfc](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-cfc.md) | 646 | `result-track:4083963a14cdba21505bf5cd4db100722bbb543d064f5c0ca50dc992af0acdaf` |
| 89 | `lemma` | [sqrt_sq](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-sq.md) | 650 | `result-track:754d4572f22e1e2347e45572b98dd5b77bde9148d15895fa8b55e61ce483bda9` |
| 90 | `lemma` | [sq_sqrt](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sq-sqrt.md) | 653 | `result-track:51f57e6774e082397138d0a02a471f2fd87ee2b12fa4487b3cf3c73ff956d758` |
| 91 | `lemma` | [sq_eq_sq_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sq-eq-sq-iff.md) | 656 | `result-track:c3b63e382490c4b2c58aeaabc18342622bf17d7c268250ea4a00971113d8b711` |
| 92 | `lemma` | [sqrt_algebraMap](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-algebramap.md) | 661 | `result-track:0faf4ee3b472f140e572b6bc22da5c20775cbaa0291064b45bfb2da869de1730` |
| 93 | `lemma` | [sqrt_one](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-one.md) | 665 | `result-track:bea802d16d9e41a9428ec76e783a73f670a78a01e522393ba2f98a31739ff529` |
| 94 | `lemma` | [sqrt_eq_one_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-one-iff-source-edition-2.md) | 667 | `result-track:84d77f96d092ae3a263457e043bb6c5bf0a2901b7717516900a8f3211dbd62df` |
| 95 | `lemma` | [sqrt_eq_one_iff'](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-eq-one-iff.md) | 671 | `result-track:30801c3d3809981ff7fd110627c96c30ce3351843e73e45b55a1ba71e0cf9d94` |
| 96 | `lemma` | [sqrt_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-rpow.md) | 678 | `result-track:cb9af705483a19cd0f6b429754d3b4740405318df0c434c1f5d6103d25407b14` |
| 97 | `lemma` | [rpow_sqrt](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-sqrt.md) | 688 | `result-track:0614da209f1f48ad0959aa7f28d5a0254539e40c470d51509298e288bce8e1ff` |
| 98 | `lemma` | [sqrt_rpow_nnreal](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-rpow-nnreal.md) | 694 | `result-track:005f9333f7e75b3aaa3b186a0b9311bba2ef86ccacfa4e652bce4133a4e0613a` |
| 99 | `lemma` | [rpow_sqrt_nnreal](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-sqrt-nnreal.md) | 705 | `result-track:34f9e0d67900f04bcedf91137e60a6bbecbe1dd3e2f72ba535f0add2984716ea` |
| 100 | `lemma` | [isUnit_nnrpow_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isunit-nnrpow-iff.md) | 716 | `result-track:e231871aff50e29394985e7fae75f4a9efc2f0fb864797cf0008ea03213e3b53` |
| 101 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/cfcnnrpow.md) | 723 | `result-track:1ded04c6c6f828a2d5fff6d1f254cf406336da02089849170f10c909e464b7bb` |
| 102 | `lemma` | [isUnit_sqrt_iff](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isunit-sqrt-iff.md) | 727 | `result-track:358c6a9f54ee4be556561747610590f0d04c510cbc4454593f283d9169be8d3c` |
| 103 | `lemma` | [isUnit_sqrt_iff_isStrictlyPositive](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isunit-sqrt-iff-isstrictlypositive.md) | 732 | `result-track:65b2d61db64d05892070c27e753785dbe314fb81e67abe70a069a482e51950f2` |
| 104 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isunit-cfcsqrt.md) | 744 | `result-track:7b4f0af05f45357fcc39fedd77f5fd3572bac2d24cfd30728b680170ee25f6a6` |
| 105 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/nnrpow-source-line-748-occurrence-2.md) | 748 | `result-track:8ec2fd65b4462721584ac916f0dea354988ef10b418627b698f3ed63837c3c8c` |
| 106 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-source-line-752-occurrence-2.md) | 752 | `result-track:a8f9c4e2f60a79d9ee9aa5d80692e9ab76047bbc1aa3680e1a28e93c686bef38` |
| 107 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/rpow-source-line-757-occurrence-2.md) | 757 | `result-track:faba9b5592cd375fe660d3eba5d019f1db33287ea8ba77f810b174225b2cc0ca` |
| 108 | `lemma` | [inverse_rpow](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/inverse-rpow.md) | 760 | `result-track:143342df5e36b9503a25e7793e3af48ac46f93a7ce8103ee87cd5649d2dfbaa1` |
| 109 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/ringinverse.md) | 770 | `result-track:eb3125870c04eb157847a3f7e5df2596dc10a0fa6770b755549e630edbc5f435` |
| 110 | `lemma` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-ringinverse-iff.md) | 777 | `result-track:cb8874dbceb54966f523f02dbef5b020b5f6cfa847e08d41fcc72d26ccd595ac` |
| 111 | `lemma` | [ringInverse_nonneg_iff_nonneg_of_isUnit](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/ringinverse-nonneg-iff-nonneg-of-isunit.md) | 791 | `result-track:707d84ae6e9feb6bb23d0ec97dff382815d859d16447b47468d102213c01aaf3` |
| 112 | `lemma` | [sqrt_ringInverse](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/sqrt-ringinverse.md) | 797 | `result-track:cfa0794736426e9d93ad39cfc5f6de28016e278389638c9ddd3c3cce1d46e186` |
| 113 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-tfae.md) | 821 | `result-track:5e3caa8d8cb3eb739eba4a2bce7d5abf9d9b218bab68c385d7301142189141cb` |
| 114 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-isstrictlypositive-sqrt-and-eq-sqrt-mul-sqrt.md) | 844 | `result-track:e228dbfa7ea08c731b615aa93631e472c5643cd08c4457e32a5cbdfac9a8b3bb` |
| 115 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-isunit-sqrt-and-eq-sqrt-mul-sqrt.md) | 847 | `result-track:cc3b886f7cf5f2581a77ba3067f68f0b2d90b412ddce87308704f6de46dc6b4d` |
| 116 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-exists-isstrictlypositive-and-eq-mul-self.md) | 850 | `result-track:06264fd71b762ee13896f658d1cda428441bed32b6d4cfb40b11268cd4593784` |
| 117 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-exists-isunit-and-isselfadjoint-and-eq-mul-self.md) | 853 | `result-track:e3227879ea93d3d7b6571fe200e91635ab461da10202dca193001fcf8aedb0e6` |
| 118 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-eq-star-mul-self.md) | 856 | `result-track:2b6b6e4b8ee200895630c37eaf9eda9c13184302672f67976be1cb0bbef827d3` |
| 119 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-eq-mul-star-self.md) | 859 | `result-track:5d5f8a1a504080cc15d05f4940ca36db88ce7d60fbc4ece6a8694ff31b8093e2` |
| 120 | `theorem` | [Rpow Basic Namespaced Public](../../../../SpecialFunctions/RpowBasicNamespacedPublic.lean/declarations/isstrictlypositive-iff-isselfadjoint-and-spectrum-pos.md) | 862 | `result-track:5414923e448fb2e18e0f4a18edf8b267f6f57e57d1a91a239daa8e968e33a3bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b3dbafa2f1f6f052270b3cfef49860bbc037064e936f11b0eb380569b0e9754 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
