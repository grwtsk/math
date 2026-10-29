# Verification target: Pullback Cone Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a629703f468e9f0fd327742c0848f310a5675e1",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a629703f468e9f0fd327742c0848f310a5675e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Cospan` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pullbackcone.md) | 88 | `declaration-track:ba5856102039837b83a51c8901c4bc90ac7d21487787a8358d1b959eba6166bf` |
| 2 | `abbrev` | [fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/fst.md) | 96 | `declaration-track:b967caced2788a811c653ffc1f6b085898aa116911d39b8b16c37996d8e40d39` |
| 3 | `abbrev` | [snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/snd.md) | 100 | `declaration-track:474f622a99d343c28fdd75fc228963de19c9d409fb40bf573f18c60744f77a9a` |
| 4 | `theorem` | [π_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/app-left-source-edition-2.md) | 104 | `result-track:937ee99247e9d5450f366bc8eac78e0bf4172c39b9e9137f2e82df7222f3dc54` |
| 5 | `theorem` | [π_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/app-right.md) | 107 | `result-track:5ccdf7e310c4426f8e85952dde103747c82d10353cc81e8a248427699dc6ebd2` |
| 6 | `theorem` | [condition_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/condition-one.md) | 110 | `result-track:422727fd4b68052c075b829bdf668fc534bab59cfcad09aa264908258bfa8f61` |
| 7 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-source-edition-2.md) | 117 | `declaration-track:f598a3265adfc59b6228fac7a6dd3a8dc72ca17d36cf155580c164f3e4034c98` |
| 8 | `theorem` | [mk_π_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-left.md) | 123 | `result-track:8930f7738a555cdd58195f8bba731eb1b470c6db8f1eecadb6cbe778d63afd9b` |
| 9 | `theorem` | [mk_π_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-right-source-edition-2.md) | 127 | `result-track:d1231f3903cf9585e69d48f37d87c486780cb99f184fb3d40bf50a9a68811b4d` |
| 10 | `theorem` | [mk_π_app_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-one.md) | 131 | `result-track:12407cc4be8d31eb7110b3587c5e47518474d4c9f3a8c6e0181b83926bd70a80` |
| 11 | `theorem` | [mk_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-fst.md) | 135 | `result-track:9afbdaf5c8d5c800ba48b80afd9d3dfda0d34e85d5ff19a78318932c94ce7816` |
| 12 | `theorem` | [mk_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-snd.md) | 139 | `result-track:dd185ea2b165f9c9828a5e95dd105004faee92ba456616c752bc0e57e3788cfd` |
| 13 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/condition.md) | 143 | `result-track:2949bdb1619835aab10b5da40e0bf13bba9ab30e656168775b7e34d35a6efb48` |
| 14 | `theorem` | [equalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/equalizer-ext.md) | 148 | `result-track:f4d2345da72617bd794ed3f959df9706236a1d4ea391b5aabbaab81c8a61a1f0` |
| 15 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/ext-source-edition-2.md) | 156 | `declaration-track:d984935ae27cfc94f0402e4e2ab34db95eb9b80c6c4b8f39111bfde05208b377` |
| 16 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/eta.md) | 163 | `declaration-track:58544ca3e43a96a1e7908292e0fe96a7fe039d60143dfd4a4ccf29783731ff6e` |
| 17 | `def` | [isLimitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimitaux-source-edition-2.md) | 168 | `declaration-track:e2bce71b5f9469f167b837d35a388f039a222fd7b358c05b034e531e004d3f54` |
| 18 | `def` | [isLimitAux'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimitaux.md) | 184 | `declaration-track:a2b595369e7368a29f2293f81a7068cc4bfdbcc088c9bc0ecb8734cb667cdce2` |
| 19 | `def` | [IsLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-mk.md) | 198 | `declaration-track:784608db184777b354b9fdd3fd957e5810106a4228595c81ef5957174eba498e` |
| 20 | `theorem` | [IsLimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-hom-ext.md) | 209 | `result-track:42d71d36e7ccf805628c94a49bc0f3635252539d07e723d38d0a829bf1100b65` |
| 21 | `def` | [IsLimit.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-lift.md) | 217 | `declaration-track:09de15be326211f07accb533b8f6edbaf4f197e0d8ee0ef4f5f7174079ffadf2` |
| 22 | `lemma` | [IsLimit.lift_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-lift-fst.md) | 222 | `result-track:95f1398a2784f3a81eccd6451ff7c301565961faaa26a9d330a898f061d0f380` |
| 23 | `lemma` | [IsLimit.lift_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-lift-snd.md) | 226 | `result-track:033f37e28719e0b2973f78e6c7d3e2c57a154e585006951e95fe5698535d82a9` |
| 24 | `def` | [IsLimit.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimit-lift-source-edition-2.md) | 232 | `declaration-track:c522f714b5f0ceb9fb0ed85dbb163897d7a70419d837f453e8567d10639de0f7` |
| 25 | `def` | [mkSelfIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mkselfislimit.md) | 238 | `declaration-track:f107f07c4cd4a29392500ebe1dce17e712297bf1575fca3d8f9fc84dede243ca` |
| 26 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip.md) | 246 | `declaration-track:0ccd77663a4ae71801a701869f0d7c3d5d80a4921c9dac751bad18c453104b19` |
| 27 | `lemma` | [flip_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-pt-source-edition-2.md) | 248 | `result-track:a6d348d00e50453407023915a503790d4989d9e1f50e07f333f92b2dbd80969f` |
| 28 | `lemma` | [flip_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-fst.md) | 249 | `result-track:3aa0a504fd909279bdf7f6737c8b58d71b0148067f0d5f5105681f2bfa4a176a` |
| 29 | `lemma` | [flip_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-snd.md) | 250 | `result-track:2ce5f13628fbfb91d09a6f14e01f4ee1af69b1a0741a5d6d37f7aad61ffa8b90` |
| 30 | `def` | [flipFlipIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flipflipiso-source-edition-2.md) | 253 | `declaration-track:bde69aac1ccf3f6321ed384af8cda1470a24a85e958bd4887f0db130bf2ceb4b` |
| 31 | `def` | [flipIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flipislimit.md) | 258 | `declaration-track:a0b073ea179823f6fa79a17b51d9218533e7bcfa8f2099d0fb33161159273a3b` |
| 32 | `def` | [isLimitOfFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/islimitofflip.md) | 263 | `declaration-track:b1430aff8ea65f254ae2e8bf4e46e9b45e8da016839a7342e2540dd7c613c6bd` |
| 33 | `def` | [Cone.ofPullbackCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/cone-ofpullbackcone.md) | 278 | `declaration-track:7f49674b14992d41813687849bdcc0e8a1d8856816fa7f4e0e343719ebdfa96f` |
| 34 | `def` | [PullbackCone.ofCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pullbackcone-ofcone.md) | 286 | `declaration-track:d9fbb2b318dc9e62b483834e3cf7fee2025f6245a6b6fb2cbd13ff29811f6e66` |
| 35 | `def` | [PullbackCone.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pullbackcone-isomk.md) | 294 | `declaration-track:5b4d0fde6da0b486100dcb858b3df6eec6166f4ed74ea7ce3c6aa33c4dc667c1` |
| 36 | `abbrev` | [PushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pushoutcocone.md) | 305 | `declaration-track:c5f317f85d4cbce1ec75da1d58de262cf6b3bccce0cf7970d722eafd9b7f5ada` |
| 37 | `abbrev` | [inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/inl.md) | 313 | `declaration-track:315406f5d38403d6b9411005550123d9b53793b18d9c99af597228ee56b275fa` |
| 38 | `abbrev` | [inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/inr.md) | 317 | `declaration-track:2d6f33042cc8decc823b5d6ea1dcc23e4c94461140b77072d74157f7b509adf0` |
| 39 | `theorem` | [ι_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/app-left.md) | 321 | `result-track:299852d98f3ac9f809773c4b64f72e313be419c32e6991063ad742c230cc4431` |
| 40 | `theorem` | [ι_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/app-right-source-edition-2.md) | 324 | `result-track:d4854631fcea0444bfe73548ed7a41a87f430ccf8e8ab93dcd94525b3d4b41d6` |
| 41 | `theorem` | [condition_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/condition-zero.md) | 327 | `result-track:fa808befdeed1de230dde333e3baaa7acd5b7cec2342c25af14cdeca1a1a4121` |
| 42 | `def` | [mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk.md) | 334 | `declaration-track:4382f966b07b54a555e3d58b8bd4c5cb9f1f543ba2286440e685a4232abb305f` |
| 43 | `theorem` | [mk_ι_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-left-source-edition-2.md) | 341 | `result-track:ed5553c9f8718575e0a6e891932c72afccb62c2cc932ed7c9cf660584e084b9f` |
| 44 | `theorem` | [mk_ι_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-right.md) | 345 | `result-track:b7babd5acf35825ff9bbc7fe854bad55c4e8b9eb6ccb959a4f4ad4c818f1f98e` |
| 45 | `theorem` | [mk_ι_app_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-app-zero.md) | 349 | `result-track:3a2624810704196921b4d30c6ab1b9d0a951d05a9d9709001c864890a789aa42` |
| 46 | `theorem` | [mk_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-inl.md) | 353 | `result-track:fed1155d80e3559ab962e1e47eb8c3d5c86a67a474dcfb5b0232192098b8ce00` |
| 47 | `theorem` | [mk_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mk-inr.md) | 357 | `result-track:85a57bb31bebd1743480a9a9b279152a5c6ee39efcc72805ca6fd4b819e01413` |
| 48 | `theorem` | [condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/condition-source-edition-2.md) | 361 | `result-track:7267879b68c96776ea8f9fa692b6d591621473dc04a50a70a483f6a95300bf07` |
| 49 | `theorem` | [coequalizer_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/coequalizer-ext.md) | 366 | `result-track:7c7846fbd11574786216b04fcfede0a45043fdef50c77b50f7d5fd5a924d1d31` |
| 50 | `def` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/ext.md) | 375 | `declaration-track:6ae22f681fdb6173596e95234796e302badd31cd9370b0ff4603e2de78b388dc` |
| 51 | `def` | [eta](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/eta-source-edition-2.md) | 382 | `declaration-track:be5817d47563fb565346c51024ef113a7acb19aafe71a24780491cb71609ff0c` |
| 52 | `def` | [isColimitAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimitaux-source-edition-2.md) | 387 | `declaration-track:a86f6fa7dbc312a027d8a36f6cb8c36264986805aecf5793d741e4932ef555a0` |
| 53 | `def` | [isColimitAux'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimitaux.md) | 401 | `declaration-track:3969c8aba207ed1f8bc2478e8d821053c9960496f84ab206cf0def6639d9cce5` |
| 54 | `theorem` | [IsColimit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-hom-ext.md) | 412 | `result-track:db77330efa36b465c636be8b1b9b999e2c7c02e51e05e55494c6c6e3edd6a928` |
| 55 | `def` | [IsColimit.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-desc.md) | 420 | `declaration-track:7484761633142e1b48c2a4e152cb9456cc92e5a07344e17ae3d71022ac76d327` |
| 56 | `lemma` | [IsColimit.inl_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-inl-desc.md) | 425 | `result-track:ffea5ffed0a2ff1e3ac445d75ed49050ef4faff1dabbd3c9dce55a82bb6346fa` |
| 57 | `lemma` | [IsColimit.inr_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-inr-desc.md) | 430 | `result-track:cd20780961ce861b81a845df0a4dffcca5ffab03691bd6d3aba0e54dd92ad629` |
| 58 | `def` | [IsColimit.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-desc-source-edition-2.md) | 437 | `declaration-track:d7c7a347eeccebb4b933c54cfddeb7786c50f68811125bee4559cd2e9d01221d` |
| 59 | `def` | [IsColimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimit-mk.md) | 444 | `declaration-track:bef196544e0363901ef6a4393c93a24796f0321282aa1f2ec90a48861d81de30` |
| 60 | `def` | [mkSelfIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/mkselfiscolimit.md) | 457 | `declaration-track:7b20d6bb72569b7d23ba8bbc5adfd4c1e000dae4c5b83f33584ba818e10d582c` |
| 61 | `def` | [flip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-source-edition-2.md) | 466 | `declaration-track:45608d01e6fe43e0c0841a9f64f103354b987ac08ae53e555dac045a1170b592` |
| 62 | `lemma` | [flip_pt](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-pt.md) | 468 | `result-track:75e8b9336fc1f0758916c89251b44f7ddbf5606b4e46be32a0af5f9cc4af4379` |
| 63 | `lemma` | [flip_inl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-inl.md) | 469 | `result-track:c4ff91437bd0e90686d78ffe74a85573389929a092b1004c9a0eb11c85847432` |
| 64 | `lemma` | [flip_inr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flip-inr.md) | 470 | `result-track:a9a698acea4ce023dd03fa93d1d83810d0221d6fe0c3e808d5abbbb78e0cb0ff` |
| 65 | `def` | [flipFlipIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flipflipiso.md) | 473 | `declaration-track:4edcc92e66b305ed80285ddf6047879cda3fdc019f3ee0aefbde27bbe0e15422` |
| 66 | `def` | [flipIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/flipiscolimit.md) | 478 | `declaration-track:e6e4ec2668713f367920247b83a1606b6f62a509df224544dd177d0e27ca88ae` |
| 67 | `def` | [isColimitOfFlip](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/iscolimitofflip.md) | 483 | `declaration-track:01fd6dd34cf073595ee320d1ca8d7416bcfd5d41ed7283fdefcac13cdd18f5a4` |
| 68 | `def` | [Cocone.ofPushoutCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/cocone-ofpushoutcocone.md) | 498 | `declaration-track:8513b835916b2b39963b08a086f90fb050ed14ddeccac0ebf7fa53c3fbb621c3` |
| 69 | `def` | [PushoutCocone.ofCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pushoutcocone-ofcocone.md) | 506 | `declaration-track:a250b8765c51019742d811d8646d1ff273d91446fa6dbacce34396e79abb1e88` |
| 70 | `def` | [PushoutCocone.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PullbackConeNamespaced.lean/declarations/pushoutcocone-isomk.md) | 514 | `declaration-track:9fa348fa90b422e33308efb4719060a11b38c5cbd8d0f72fd8c48013e279a075` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d55a690b2b859c5ca1be8c07652045c2de6d0060bdca4b1c686219f194ee8d82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/PullbackCone/Variante7b0b6c1d71bd8e5666d5c558c89d636db071224b906a3ed86b4a42cd28bd24a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
