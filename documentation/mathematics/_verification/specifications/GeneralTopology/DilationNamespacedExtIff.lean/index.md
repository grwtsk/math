# Verification target: Dilation Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bfde595bb9290423791e36a74a0d12af7a9a2881",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/DilationNamespacedExtIff.lean/index.md) · [Full source](../../../../GeneralTopology/DilationNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bfde595bb9290423791e36a74a0d12af7a9a2881`.

Source path: `GRWTSK/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Antilipschitz` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Dilation](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/dilation.md) | 72 | `declaration-track:56dbb244f82746100655b333521906a792371cc237ddaefb0c3bf7c2f8c570f8` |
| 2 | `class` | [DilationClass](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/dilationclass.md) | 81 | `declaration-track:81b1b225ea127dbecb4880242c09a1aa64bd3809433f1b5be64c3f146c1d9f9e` |
| 3 | `instance` | [toDilationClass](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/todilationclass.md) | 96 | `declaration-track:6c2a5553c72e47f932dfb70182856fe73f3dba1e518e1238de7ae46a6448fdbb` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 102 | `declaration-track:954379692ef3b77b26e14c497db0dbf7a91ded35625f940e9ba7c5b07212742f` |
| 5 | `theorem` | [toFun_eq_coe](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/tofun-eq-coe.md) | 106 | `result-track:85318bb665a6ba67d0922c269cf0c2b2557db624ab12a6f7d9baa8342a03d01e` |
| 6 | `theorem` | [coe_mk](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-mk.md) | 111 | `result-track:1eb30e35fa203a3da09e33e028c9a39708b9ddb85a826bf82eae71a152996980` |
| 7 | `theorem` | [congr_fun](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/congr-fun.md) | 115 | `result-track:eab94dc750107991c0a4d240167ef3980dd9a4cd210a4cf384328447352d0993` |
| 8 | `theorem` | [congr_arg](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/congr-arg.md) | 119 | `result-track:2bd3e57d93fe71f66dca2e20f5ac81604d2a8f3d24e43098b590dfe817be81b6` |
| 9 | `theorem` | [ext](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ext.md) | 124 | `result-track:6c43acc72d35c32998aa0e3146c076cd8fc38afeabf2ab2a9daad3f2555c3e4b` |
| 10 | `theorem` | [ext_iff](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ext-iff.md) | 128 | `result-track:3f97e0571c0141731b4e4cf8daf5a01a606b605fa7337d8c03b23719ef177bd7` |
| 11 | `theorem` | [mk_coe](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mk-coe.md) | 133 | `result-track:bbfe4a343863c8fac0ff42a643c457eec4dc5f2b53a145537c6a898b687a58c0` |
| 12 | `def` | [copy](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/copy.md) | 140 | `declaration-track:7e58eb44426785cee17f542784bb05e46be5ef3c62e258201ed5672e5638a325` |
| 13 | `theorem` | [copy_eq_self](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/copy-eq-self.md) | 145 | `result-track:286daab5361c6eec41e45327ce496837be167dbd0a3277d3e29eed7d642c79f6` |
| 14 | `def` | [ratio](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio.md) | 151 | `declaration-track:3fa503e3ea916b0a14a43859d05a8c4d615d4a9fa70611e77a9a87d260d8eeb4` |
| 15 | `theorem` | [ratio_of_trivial](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-of-trivial.md) | 155 | `result-track:053dca7e243bf2f5a151638d69ac0eff92b1933492741e9cd58d189a3d7fa1a1` |
| 16 | `theorem` | [ratio_of_subsingleton](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-of-subsingleton.md) | 160 | `result-track:f0ac0ce1b227a3648b0c30dc05d520c7b2fa43aa433bedbeaee646ae8ed5e69d` |
| 17 | `theorem` | [ratio_ne_zero](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-ne-zero.md) | 163 | `result-track:c8f9ec9f5264f5199fc5d87a805060247e69d13a6d8f8fa5e7490e5f6178ac8e` |
| 18 | `theorem` | [ratio_pos](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-pos.md) | 169 | `result-track:290ed03d736da2cfd462804714291d6f9e18076d7649ffa82f5e80eefe83e7ba` |
| 19 | `theorem` | [edist_eq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/edist-eq.md) | 174 | `result-track:9121f6914d46942af1f099706b1156abace1e4043643b02fd38c98b92076cbcb` |
| 20 | `theorem` | [nndist_eq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/nndist-eq.md) | 186 | `result-track:e6078c03da8641872039ac1cf309c2c3659a3f2d625067bc1a0b8a1eda48d9fd` |
| 21 | `theorem` | [dist_eq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/dist-eq.md) | 192 | `result-track:bed3bd4ef2256a170e0af5799412f6a26c7057b6424d9e7450f1422e75e5275b` |
| 22 | `theorem` | [ratio_unique](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-unique.md) | 199 | `result-track:3afcfb4d804fce6fbf14416acfe46df72dacb507411d970d1569a99cc39686ee` |
| 23 | `theorem` | [ratio_unique_of_nndist_ne_zero](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-unique-of-nndist-ne-zero.md) | 206 | `result-track:675d89c379aa49d0e92916e5ff88814956b6edde24535e37549e334937937075` |
| 24 | `theorem` | [ratio_unique_of_dist_ne_zero](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-unique-of-dist-ne-zero.md) | 215 | `result-track:52b93f100c54a3ebd660b951ed117eabd66840f020f8dde76037812d55da0e14` |
| 25 | `def` | [mkOfNNDistEq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mkofnndisteq.md) | 223 | `declaration-track:08d6c7cb5c076e703f814221d74c13c84514214c32217de121623071500a436f` |
| 26 | `theorem` | [coe_mkOfNNDistEq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-mkofnndisteq.md) | 233 | `result-track:6bd7c074d63f10b1868150fb638559c1ac4af9ecf40e71bd17e76834c4e94306` |
| 27 | `theorem` | [mk_coe_of_nndist_eq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mk-coe-of-nndist-eq.md) | 239 | `result-track:1a4809f9dc2fb05cdd2bd880101079226bca4b1edff88432e4725745b3610832` |
| 28 | `def` | [mkOfDistEq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mkofdisteq.md) | 245 | `declaration-track:7b9e793505676dc97f2973c7fda04e85f8696bd53e5555422cc089bbe0b8d387` |
| 29 | `theorem` | [coe_mkOfDistEq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-mkofdisteq.md) | 253 | `result-track:5ccdad922845fcb30903034524811e7d82f988fe0ae09a82417f3a4f8ac34846` |
| 30 | `theorem` | [mk_coe_of_dist_eq](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mk-coe-of-dist-eq.md) | 259 | `result-track:b6e90c0d1642ff0df2f6694d7bf1b6f2c98ef7bbf030296b324d0f1b542a408b` |
| 31 | `theorem` | [lipschitz](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/lipschitz.md) | 274 | `result-track:16c55ddd605ede290f65a5f4d4d0142d1461b427db8d270968a73b3d7efe30ce` |
| 32 | `theorem` | [antilipschitz](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/antilipschitz.md) | 277 | `result-track:e1fc2a67efe004045f54065ff365b1f383357761c1fd95339fea4d7d451092b7` |
| 33 | `theorem` | [injective](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/injective.md) | 284 | `result-track:f732dda4959c589af403baf00e74fc2be13b6b7b50d4c2b85722376a33bc3daf` |
| 34 | `def` | [id](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/id.md) | 290 | `declaration-track:92e3011930330cf9a266940e6e0c5f684909f43315bea2b547658bed6cf18d01` |
| 35 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 295 | `declaration-track:6b19f2816eadde1c8c01d8fd040319cb85f74d42ea62ea399f32694d77422c18` |
| 36 | `theorem` | [coe_id](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-id.md) | 299 | `result-track:54e485bd0dc97a0861a38edc764775eb2a668ea7b0d848528e549ef9590fe5fb` |
| 37 | `theorem` | [ratio_id](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-id.md) | 303 | `result-track:6daed7c70f06eb8b1366256c5d3db578576850be8da98cbdd7169998e0152e88` |
| 38 | `def` | [comp](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp.md) | 313 | `declaration-track:8de3550399fc543a82218575e3f8a610f14b3ab8b32a970a38f87af13020682b` |
| 39 | `theorem` | [comp_assoc](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp-assoc.md) | 319 | `result-track:8c53a6431b00fcdced6f6597ccfaf790a82eb611696e03f01b5b6e2b12dda1ee` |
| 40 | `theorem` | [coe_comp](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-comp.md) | 325 | `result-track:e64f17d1af2d4fdfa61d9038105a05b3124953f15e24600ddbf956bb02353a20` |
| 41 | `theorem` | [comp_apply](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp-apply.md) | 329 | `result-track:abfcc2a970bc0d9cd84cb012b0c7882f9da714dcb7224470105edb84332d84ca` |
| 42 | `theorem` | [ratio_comp'](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-comp.md) | 339 | `result-track:760d68080e632a1214b95951dc8e8f9107e8ee66eeb19e589ffcbda75da530f0` |
| 43 | `theorem` | [comp_id](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp-id.md) | 349 | `result-track:8bad791e75010a077ff5f2ca39256fbf928853e6da585e8218918c37895cdba2` |
| 44 | `theorem` | [id_comp](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/id-comp.md) | 354 | `result-track:eed7c703838c67fc1418838d6de7e607e5631df134068d41afdf18612c4a7833` |
| 45 | `instance` | [(anonymous)](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/instance.md) | 358 | `declaration-track:05d49ee3a7c1d568ffaa3c8f877c8d1af50485929330c5a70c0781eb2943e000` |
| 46 | `theorem` | [one_def](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/one-def.md) | 365 | `result-track:f0fcc68da4bc6fee5e2d71d6918088b8318a1fded1894a4d1c3f4129cf155d84` |
| 47 | `theorem` | [mul_def](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mul-def.md) | 369 | `result-track:edbc0dfe9f37cc8df85af12c02b21f72e5c0ccdcd5f8b845e4b6025a22f06878` |
| 48 | `theorem` | [coe_one](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-one.md) | 374 | `result-track:bff892d61bd753fcf31bf08a45ce62081fbdf59341ccd7117294d7ef889cb1af` |
| 49 | `theorem` | [coe_mul](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/coe-mul.md) | 379 | `result-track:429263f3cf03bddb41ef5f90914f576afb37f9d6edff2c97f1b83f043ace78bf` |
| 50 | `theorem` | [ratio_one](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-one.md) | 383 | `result-track:7c266226cb0f92498e5ad9d8496d81008d1d143909579d3d0b088a73a027149c` |
| 51 | `theorem` | [ratio_mul](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-mul.md) | 386 | `result-track:d1fd4629b5db8c989d4e7fe99f5b363f254e6743ab06a840692813953103b5f8` |
| 52 | `def` | [ratioHom](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratiohom.md) | 394 | `declaration-track:871672fa1f085d04bd73053ac58b48068e2642e8348ec40b836eb8b190633bab` |
| 53 | `theorem` | [ratio_pow](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-pow.md) | 397 | `result-track:21a4584f3dee30a4f1e6616746a30b9753f8db64ba3bbfc4d2c16104fd4a07e4` |
| 54 | `theorem` | [cancel_right](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/cancel-right.md) | 400 | `result-track:f04a82eafaa4047af573a071d794e13d73e6f95844fc23d11233ea3f135dca60` |
| 55 | `theorem` | [cancel_left](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/cancel-left.md) | 405 | `result-track:db7e068c55d14d48f7f844a60b75cdabb514b62f778249f4ad46f949e77a6e50` |
| 56 | `theorem` | [uniformInducing](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/uniforminducing.md) | 411 | `result-track:0df00ac885fbe755af44339720eafaa77068d3c47905739b8edee40c2805c3f3` |
| 57 | `theorem` | [tendsto_nhds_iff](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/tendsto-nhds-iff.md) | 415 | `result-track:7f158432e5a6ee7e5afb13beb833dec1a57e47fcaa1fa29cd8fcce266869aa1a` |
| 58 | `theorem` | [toContinuous](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/tocontinuous.md) | 421 | `result-track:344d19a87941387602f4b3d05de6cb5d8f9b141929f637deab18c1d9bc75ec12` |
| 59 | `theorem` | [ediam_image](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ediam-image.md) | 426 | `result-track:4d02e122411bbfba538c5015590e6d90fd907241c2296ed5ddad9c70ce799543` |
| 60 | `theorem` | [ediam_range](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ediam-range.md) | 434 | `result-track:994fbde16b53080bfe67a77bcd387072481f1401361586e90c460d3d990e82fc` |
| 61 | `theorem` | [mapsTo_emetric_ball](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mapsto-emetric-ball.md) | 439 | `result-track:b9fded83a48d098f851406f3aef414f1f0e60e53173d7b43b76024ad4f45c191` |
| 62 | `theorem` | [mapsTo_emetric_closedBall](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mapsto-emetric-closedball.md) | 446 | `result-track:e27c5ced05d9ed72dcfa36d6230f9c82c0671358de9c8cd394eead7df74e5ad9` |
| 63 | `theorem` | [comp_continuousOn_iff](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp-continuouson-iff.md) | 452 | `result-track:08f5249108b5285f2c8aaf0b44931f4db431e17bb9a42354cd622994c177ec5e` |
| 64 | `theorem` | [comp_continuous_iff](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/comp-continuous-iff.md) | 457 | `result-track:10c9393ae70fb31bb15e8c1b2b6d786482f5af5833b710a73c48b1c583e13479` |
| 65 | `theorem` | [uniformEmbedding](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/uniformembedding.md) | 469 | `result-track:9b73cfa8d51505e9669a93ad8867281b96329c2558ddcca5475ddf762b8e1be0` |
| 66 | `theorem` | [embedding](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/embedding.md) | 475 | `result-track:cd2bf1d0f5408bef247e78bfef55bcd9e162c729802eec496d9b5374d4c0c473` |
| 67 | `theorem` | [closedEmbedding](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/closedembedding.md) | 481 | `result-track:e332715c8585dc74b1b9501210c42bd829cf47bdf28be8e9c27fea6c414b47a3` |
| 68 | `theorem` | [ratio_comp](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/ratio-comp-source-edition-2.md) | 494 | `result-track:a2b48e59981a0bdfce7cda800b7298710cb1d7766866fff0d4f16d5dba7f3d70` |
| 69 | `theorem` | [diam_image](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/diam-image.md) | 504 | `result-track:eca25b5f8413095b9fd6d5e165c47ddb7cbdb89e3674eb747a47bd9adbe7aa5c` |
| 70 | `theorem` | [diam_range](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/diam-range.md) | 508 | `result-track:19dcba9badf47abda177678ff094023db685e211e498c5e37f32f7f341719dde` |
| 71 | `theorem` | [mapsTo_ball](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mapsto-ball.md) | 513 | `result-track:9d8ea0b1f334ddb684b94901c1d4b1484669e2d2f86e64f8877761247aa45949` |
| 72 | `theorem` | [mapsTo_sphere](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mapsto-sphere.md) | 519 | `result-track:76a7bfba1055d2fb20167cd8f96e31cdc604b3d02314fb4f7b568da852338941` |
| 73 | `theorem` | [mapsTo_closedBall](../../../../GeneralTopology/DilationNamespacedExtIff.lean/declarations/mapsto-closedball.md) | 525 | `result-track:c57f7e22d9b17da50332020ec8a6582d61cef2c6ce0524a20b0ee9e52e39c856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38cca4678f4a1d899d00e0f503772f68cef5e6a16a165e3709a4aeaee255b079 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Dilation/Variant147cf69bbfbd04501fc923bf6f1f81103ea55d656568528d61355b1ce09e979d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
