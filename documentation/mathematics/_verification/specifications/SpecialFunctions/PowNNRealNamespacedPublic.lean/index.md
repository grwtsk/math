# Verification target: Pow NNReal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6250a8a4d2ad21514990494d6dc41a60d2707ad",
  "lexical_observation_count": 220,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6250a8a4d2ad21514990494d6dc41a60d2707ad`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean.json)

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
| 1 | `def` | [rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-source-edition-2.md) | 44 | `declaration-track:7f86ca1e4a01fa5c378f71a08091e070b27f9d9959a8d765f38346238fddbc3b` |
| 2 | `instance` | [(anonymous)](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:c3152c86706fa94c1e732cd227f74b44bb046808edd40069c46d2eaf7a7a0e5d` |
| 3 | `theorem` | [rpow_eq_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-pow-source-edition-2.md) | 51 | `result-track:6c96f5f35412ae3df57846e9e0b63c160a1515d7dd72f25d4795cd9bb996e261` |
| 4 | `theorem` | [coe_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/coe-rpow.md) | 55 | `result-track:9c3c92cd9d3c74aac605ab6f1fc35cd976fcfdff1c816b20c54192d38dfa5a0a` |
| 5 | `theorem` | [rpow_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-zero-source-edition-2.md) | 59 | `result-track:82a04a76c551795c6f2857d98dabceb91fe8a21a283fc4cd9386b20843c1ff58` |
| 6 | `theorem` | [rpow_zero_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-zero-pos-source-edition-2.md) | 62 | `result-track:e3e511b26166cd2b2b9020fdf4cf9d93ab2d7e96f2348dbee2d24b1455460f95` |
| 7 | `theorem` | [rpow_eq_zero_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-zero-iff.md) | 65 | `result-track:5a6f83ed3504a5aa68fa1e05aa7ca28103066d31dd9020cdb98641a13a827b6d` |
| 8 | `lemma` | [rpow_eq_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-zero.md) | 69 | `result-track:b1ad576a0f7dada625983b02efd844f2f83b1704c70f50ca8c9fddac50fc52aa` |
| 9 | `theorem` | [zero_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow.md) | 72 | `result-track:dd12f4f96a2a00272fdec223a07c54f93d128d76923ff9e86325d7e7519b3b72` |
| 10 | `theorem` | [zero_rpow_def](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow-def.md) | 75 | `result-track:95b8661c87796fc7cb1d9006ae92b1e4feccd7b4080fe522ede0ea679d141f0c` |
| 11 | `theorem` | [rpow_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-one-source-edition-2.md) | 79 | `result-track:ec07e51f0f4422041a2020bab329df624db6a4f50a0c71f63a917ccbbc67685d` |
| 12 | `lemma` | [rpow_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-neg-source-edition-2.md) | 82 | `result-track:fefaf3175dc80ae766431e0602327ab07cfaa5916465a5c477b0b2fce1e4e1ba` |
| 13 | `lemma` | [rpow_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-natcast-source-edition-2.md) | 86 | `result-track:3e850993916b5e2f5a8cfca3905baa99d11a0e1fb9669e9f93091c0aaf166e1e` |
| 14 | `lemma` | [rpow_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-intcast-source-edition-2.md) | 90 | `result-track:6f2cdd827b72b6a92b3721a9e2218777f0b214c6c631404a72b90877f1c179c4` |
| 15 | `theorem` | [one_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-rpow.md) | 95 | `result-track:09ee73350a96d636227a19517f96a266c11011f7c180a20f2f74afadfe4023a0` |
| 16 | `theorem` | [rpow_add](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-source-edition-2.md) | 98 | `result-track:d34df2025745f9c7bfbae3b9d44ecb71f0667e4a656a7bffb3b3a9d612edeb2f` |
| 17 | `theorem` | [rpow_add'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add.md) | 101 | `result-track:2daf203cafc1fd72ceffa25c9b2aec55c0150d7ca3103b0451785663df4be625` |
| 18 | `lemma` | [rpow_add_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-intcast-source-edition-2.md) | 104 | `result-track:abe3951c1be2645fa58d1bdf2ba6387a9f23c6abbfff0e2a6703224de5af7a33` |
| 19 | `lemma` | [rpow_add_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-natcast.md) | 107 | `result-track:94d147765d4a78d88aceefde209b25963d2646fa84cd5d62ed5bf6fc39bd6f60` |
| 20 | `lemma` | [rpow_sub_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-intcast.md) | 110 | `result-track:3e4fa699a2644a218e38b14d42d89867f02dd984e1b2780db9ce51cdc921b73d` |
| 21 | `lemma` | [rpow_sub_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-natcast-source-edition-2.md) | 113 | `result-track:4b9afec261f4c8f09344066564673d0cbc9e0e33af21674277c8fddd0f58693b` |
| 22 | `lemma` | [rpow_add_intCast'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-intcast.md) | 116 | `result-track:5d01ec9c202d1c38e5722afe00dd173ee95f1488534a804ee8f527d966492635` |
| 23 | `lemma` | [rpow_add_natCast'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-natcast-source-edition-2.md) | 119 | `result-track:f9d54dfba2b583090070f2e80a9c742c734951f4d521b41696202a958bd923f6` |
| 24 | `lemma` | [rpow_sub_intCast'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-intcast-source-edition-2.md) | 122 | `result-track:c94aff7e974d168f20def59686db25d44740928a0d0b7e5830681ab14f317a9d` |
| 25 | `lemma` | [rpow_sub_natCast'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-natcast.md) | 125 | `result-track:1cb9bcea2e20b8bff0749e9ba0c651623307d62754a3761756990012289fd6ed` |
| 26 | `lemma` | [rpow_add_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-one.md) | 128 | `result-track:3dd1e657105e2522b1d02f64b5cf06f830e191b3c33b8c9b2aad513519856f56` |
| 27 | `lemma` | [rpow_sub_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-one.md) | 131 | `result-track:3235055979f72cc8ecbd14ce00d04670f44d859baf06af73164182843a233ab9` |
| 28 | `lemma` | [rpow_add_one'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-one-source-edition-2.md) | 134 | `result-track:f120cd18d965d18cb121b32e70e3e42f288235acc7a6339c10c3f93ceeafe7fc` |
| 29 | `lemma` | [rpow_one_add'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-one-add.md) | 137 | `result-track:714064bfe1596b89697dc3894541b982813b6ab85fb9a7ef7fccba774d66e099` |
| 30 | `theorem` | [rpow_add_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-of-nonneg.md) | 140 | `result-track:82bff463b73f3630ac527a4f3bfee2b19160556529d0689f5dd6d568715b775d` |
| 31 | `lemma` | [rpow_of_add_eq](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-of-add-eq.md) | 145 | `result-track:a4f6098da1cd6636db70f1eff8d4fa8aa325aa3249f866a213fad4c145e2e6f5` |
| 32 | `theorem` | [rpow_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul.md) | 148 | `result-track:6d1e8951ee16698d086d5d3f0dea6b72be695192a8db9a39b4ec018fa1889090` |
| 33 | `lemma` | [rpow_natCast_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-natcast-mul-source-edition-2.md) | 151 | `result-track:82249c757093ddef1ac2e084f1e5773ce560d3eb3c2e146106d979a663b72867` |
| 34 | `lemma` | [rpow_mul_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul-natcast-source-edition-2.md) | 154 | `result-track:934dbac427bc3cf9cc234577988168e3a32b632fd49d13c9be88e43781d663ee` |
| 35 | `lemma` | [rpow_intCast_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-intcast-mul-source-edition-2.md) | 157 | `result-track:c05a63af587635ea0f36ba03c29f6d4e781aa8c9638877518a1c853f8cb2cd6a` |
| 36 | `lemma` | [rpow_mul_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul-intcast.md) | 160 | `result-track:b4b445cd0a0430910ca3cc12835940bc7ac2304603597d3b0fbeaaea88645375` |
| 37 | `theorem` | [rpow_neg_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-neg-one.md) | 163 | `result-track:0631f71ba0765916d7eec02302af520b6626ae9826aa2c4d01b0f691f53753e9` |
| 38 | `theorem` | [rpow_sub](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub.md) | 165 | `result-track:21a0923283c4e9e1706fb842fb95af5d01ebaea4bc5cc0d9349cce9c227709a1` |
| 39 | `theorem` | [rpow_sub'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-source-edition-2.md) | 168 | `result-track:7fe2a910a43cfa6da8c6f62f3dc3d5c79e1741d8f2465dfdb25f3a3e8c40e44e` |
| 40 | `lemma` | [rpow_sub_one'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-one-source-edition-2.md) | 171 | `result-track:883342dcee5d36fbed7b9bb23ca064d3149f0032d01abfebf719f055351981ee` |
| 41 | `lemma` | [rpow_one_sub'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-one-sub.md) | 174 | `result-track:ce3c54f986cf8c728a9c4c08d70a66962323a0998f54e1166264118dbca0a112` |
| 42 | `theorem` | [rpow_inv_rpow_self](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-rpow-self.md) | 177 | `result-track:30eeefe27b5c73680447322f891d10bf0fc2e6389727b5f55a272a71142cbefc` |
| 43 | `theorem` | [rpow_self_rpow_inv](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-self-rpow-inv.md) | 182 | `result-track:1c03b556f0d82e5ad1d22a716ec055055dfc8547c51cbb529734ad3443297aba` |
| 44 | `theorem` | [inv_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/inv-rpow-source-edition-2.md) | 187 | `result-track:7066fe64c5b960749ec087d2ce1601e93db06e4c533a28af0e27f3066ab8e6bd` |
| 45 | `theorem` | [div_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/div-rpow.md) | 190 | `result-track:7e955ba3fd00cfccaf21ca7a4f3e4092145562f597dfb69dbcf27524e94528ac` |
| 46 | `theorem` | [sqrt_eq_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/sqrt-eq-rpow.md) | 193 | `result-track:c82e516d80427126c90cdbc06a3642287dbf24962d48073cb8adfdcd6b7d6cbe` |
| 47 | `lemma` | [rpow_ofNat](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ofnat.md) | 199 | `result-track:6bc779fdef1816c9b511acdd6123c198a854bb6ede6d20ea4ce68550ee865d60` |
| 48 | `theorem` | [rpow_two](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-two-source-edition-2.md) | 203 | `result-track:d909ec66f6c17bb9fa524f46e1ba9b4dede155e46c579119e057d0a5decd77db` |
| 49 | `theorem` | [mul_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/mul-rpow.md) | 205 | `result-track:99f68d91da6fe7fac7f1cabfb10a3066a5000cc6dcf466295ecccd999d333593` |
| 50 | `def` | [rpowMonoidHom](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpowmonoidhom.md) | 210 | `declaration-track:6628028e0469fb295a0c036830c6b48b361e197a01ccb0c36a55b0382eb84faa` |
| 51 | `theorem` | [list_prod_map_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/list-prod-map-rpow.md) | 216 | `result-track:0a9860a4282fe1d1ad65f9c3f4a5bd6a006958b4f2481c603877dc114b8ce97a` |
| 52 | `theorem` | [list_prod_map_rpow'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/list-prod-map-rpow-source-edition-2.md) | 220 | `result-track:620d562559e4f80e9e88d4c9826ad070d3bacf42053697963269cdc3386371cd` |
| 53 | `lemma` | [multiset_prod_map_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/multiset-prod-map-rpow.md) | 225 | `result-track:fe9bbe6675c024b53feffcc5250a3500616bcf4d8a4a2906fc6865a4627f5221` |
| 54 | `lemma` | [finsetProd_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/finsetprod-rpow.md) | 230 | `result-track:b0fefab4ccc8055fd3bb726efeb596b29186c599830082cd771aba10880c72b0` |
| 55 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/list-prod-map-rpow-source-line-241-occurrence-2.md) | 241 | `result-track:46fd93a744e0864c5064c340ad82311e5bae65e2b8a157dbda6993824f231be0` |
| 56 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/list-prod-map-rpow-source-line-249-occurrence-2.md) | 249 | `result-track:5252d9eba02759f4a3e76bccf0c30a6348e2060b3e413a4cb38a88ae15612450` |
| 57 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/multiset-prod-map-rpow-source-line-257-occurrence-2.md) | 257 | `result-track:4dbcd7bfe1d8630f87f101a17d92161797f6237f76770d9c47251cb3ad0eb825` |
| 58 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/finsetprod-rpow-source-line-264-occurrence-2.md) | 264 | `result-track:190606ea34f3424d0df12abd5af0fce002f900742a01de4e5b5dae3286b087ec` |
| 59 | `theorem` | [rpow_le_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-source-edition-2.md) | 273 | `result-track:74819faec05183acfe5ded9f93a2355d392a49a324a4eab4244cc4400c7217a6` |
| 60 | `theorem` | [rpow_lt_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow.md) | 276 | `result-track:20c0ee1195e62a589a3c1a541d6e0666dd7188c4410d4103749dd7e5a7d89aad` |
| 61 | `theorem` | [rpow_lt_rpow_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-iff-source-edition-2.md) | 279 | `result-track:60e65d732577ec972574c3e208fc8bc8e3ea519e5b5996b7962c5ec96e69a7df` |
| 62 | `theorem` | [rpow_le_rpow_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-iff.md) | 282 | `result-track:0fa513bbc45409ad23f22e0dee407af7b266c70b2bf36a5bb7591daa3149e914` |
| 63 | `theorem` | [le_rpow_inv_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/le-rpow-inv-iff-source-edition-2.md) | 285 | `result-track:e57dcc6f40d06a5b719492558b2f1b8c2554456fdf9bb96972f5f6ae90bc923e` |
| 64 | `theorem` | [rpow_inv_le_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-le-iff.md) | 288 | `result-track:2016a69b3e69b03358a306eabe785a310634021ade386ffa26c321c40cd8103f` |
| 65 | `theorem` | [lt_rpow_inv_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/lt-rpow-inv-iff-source-edition-2.md) | 291 | `result-track:30c381e3f5177626cc1eb357e3f38bba284d5072fef2384a52c4d75a6bf3c3d5` |
| 66 | `theorem` | [rpow_inv_lt_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-lt-iff.md) | 294 | `result-track:24dcd4306811136ed7d77ce57574034ef890ea43dac32a37f3ea7f03a95d69fd` |
| 67 | `lemma` | [rpow_lt_rpow_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-of-neg.md) | 300 | `result-track:ff01f263f7c3108a952a94892f8607752454e9860c9f0b9e560438237af33335` |
| 68 | `lemma` | [rpow_le_rpow_of_nonpos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-of-nonpos.md) | 303 | `result-track:c3838596c21b5cb674ef5161ab9f611e1b5ed69c6d0a65af8581717ae5da7925` |
| 69 | `lemma` | [rpow_lt_rpow_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-iff-of-neg.md) | 306 | `result-track:78f2a93558201d9aac91cb5a33e67bae2a6b707c6af7cfa5d46210e7f0d30ce9` |
| 70 | `lemma` | [rpow_le_rpow_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-iff-of-neg.md) | 309 | `result-track:db13040c332328c8b165fdf2ea6498db504d254b36b3b15914c2ae17230a53ec` |
| 71 | `lemma` | [le_rpow_inv_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/le-rpow-inv-iff-of-pos.md) | 312 | `result-track:ef8105b200d4a0a1108bbd38581fbee8fd38985a5295a5e47db6309c08e03f0f` |
| 72 | `lemma` | [rpow_inv_le_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-le-iff-of-pos.md) | 315 | `result-track:a6a1d1cd7621da91a43675bfa86df43f412547b770c810a29294227b2433d892` |
| 73 | `lemma` | [lt_rpow_inv_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/lt-rpow-inv-iff-of-pos.md) | 318 | `result-track:19e1f1271281600a6d59c4c528e4bfd6fcd484387f88439cf1dc4f3c59641b1c` |
| 74 | `lemma` | [rpow_inv_lt_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-lt-iff-of-pos.md) | 321 | `result-track:9bfe6d7f384dfe66361f86dde2087ec261f4a557c0bc62c25ddb11b802b1a1c6` |
| 75 | `lemma` | [le_rpow_inv_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/le-rpow-inv-iff-of-neg.md) | 324 | `result-track:078ad7a4f8174687d17337ac9b8d8fadf8661fe130d5addb9020c5aa2c5c755b` |
| 76 | `lemma` | [lt_rpow_inv_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/lt-rpow-inv-iff-of-neg.md) | 327 | `result-track:17b424b8c6d7ee88d2ef94dbc71265513dbe443e23cc8b118d5e7fddf139d9c0` |
| 77 | `lemma` | [rpow_inv_lt_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-lt-iff-of-neg.md) | 330 | `result-track:70d38af4077c48216cbda6c5f90145ef4efc0a1b5f54366497a18bc28d599503` |
| 78 | `lemma` | [rpow_inv_le_iff_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-le-iff-of-neg.md) | 333 | `result-track:88efd658e25d92896afe7edb6abd26d43be54d279adbc8019b2345a4b6ddb24d` |
| 79 | `theorem` | [rpow_lt_rpow_of_exponent_lt](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-of-exponent-lt.md) | 338 | `result-track:46eb747236156e94943d208715b2a94329e581ec29e0d32d93954260334323cd` |
| 80 | `theorem` | [rpow_le_rpow_of_exponent_le](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-of-exponent-le-source-edition-2.md) | 342 | `result-track:852c2cd944176600742099d144d7c853ec74c88493e02dfac38dd36664fa3c66` |
| 81 | `theorem` | [rpow_lt_rpow_of_exponent_gt](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-of-exponent-gt.md) | 346 | `result-track:bce8cc7bc93308e3deafc35db67ec88cc918e6ffd97f35b9be8e10953914a400` |
| 82 | `theorem` | [rpow_le_rpow_of_exponent_ge](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-of-exponent-ge-source-edition-2.md) | 350 | `result-track:b8b640b0a468436f27dd2040946d74ddfea90f2466b98babd44063481185ce3c` |
| 83 | `theorem` | [rpow_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-pos-source-edition-2.md) | 354 | `result-track:5bea6ed1d74035458d7873878eeeb3f9611567e76e1d1a3d078a103b7eb06444` |
| 84 | `theorem` | [rpow_lt_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-one.md) | 365 | `result-track:49859716269a87a216e0d1f2e9a26b2ea1eeefbd4c0baca17a9614d670eb5c20` |
| 85 | `theorem` | [rpow_le_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-one-source-edition-2.md) | 368 | `result-track:cdb881082f86783c37b123d78f26fb666fbbf5c0b733026610223c1d6d3b6c78` |
| 86 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-one-of-one-lt-of-neg-source-edition-2.md) | 371 | `result-track:e423303eee0a2139292b8e396641e9b4a1ed007104e195d14fe43d45393aa961` |
| 87 | `theorem` | [rpow_le_one_of_one_le_of_nonpos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-one-of-one-le-of-nonpos.md) | 374 | `result-track:0ca585f0a86ac8359587e0c1cb65a21c48e3f7565ab1b4986223aa3d01076b3d` |
| 88 | `theorem` | [one_lt_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-lt-rpow-source-edition-2.md) | 377 | `result-track:97f7cc8809aadd15c1a5578f2a67611d05782b12ebd503c02144e4455cec50c4` |
| 89 | `theorem` | [one_le_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-le-rpow-source-edition-2.md) | 380 | `result-track:daa1ea3a55382ffc471af2edde98f7d2875d607ed391c50e81c11c10667f182a` |
| 90 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-lt-rpow-of-pos-of-lt-one-of-neg-source-edition-2.md) | 383 | `result-track:ea47dfc97e72269fc616f949468100cf4870269bfab8471e5d9d66433cb8e300` |
| 91 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_nonpos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-le-rpow-of-pos-of-le-one-of-nonpos.md) | 387 | `result-track:3f73353456c7936d55d741adb07c5bfabf3ac23e76d874d11166a10e91a6501d` |
| 92 | `theorem` | [rpow_le_self_of_le_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-self-of-le-one-source-edition-2.md) | 391 | `result-track:e1462fd42a07d4919de7c853977fe1e46d95a3b6c4797d8a75f4838cd90d2a51` |
| 93 | `theorem` | [rpow_left_injective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-injective.md) | 398 | `result-track:b2d421de7d99d3f1c90f19ce61e4fcf7ace0ef086eed9d1b6a8404fd82570b98` |
| 94 | `theorem` | [rpow_eq_rpow_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-rpow-iff.md) | 401 | `result-track:e9806af8d1c37c4cf596165a6804accdfce3d3a7bb3fb5b7f6b64edd6698608a` |
| 95 | `theorem` | [rpow_left_surjective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-surjective.md) | 404 | `result-track:3ab95fc3c55a56a286ba6aada9381c496aa4dda5790c3882551e922514d81930` |
| 96 | `theorem` | [rpow_left_bijective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-bijective.md) | 407 | `result-track:58cb59a52d18ab931cc042c4cdd9cb1243a136f09b9a59772a515dd87aea8145` |
| 97 | `lemma` | [rpow_right_inj](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-right-inj.md) | 410 | `result-track:612ff25bec578943afbe7c48a64031e7674c661471460b5db4e79d3fa13c7453` |
| 98 | `lemma` | [rpow_eq_rpow_right_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-rpow-right-iff.md) | 415 | `result-track:6c75c8ab1e463f540ca95d0f9f68927fa21d62c3c3bca1cb394859e4d0e1945b` |
| 99 | `lemma` | [rpow_eq_left_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-left-iff.md) | 426 | `result-track:bd1dd60d3971c6c0afe566752dd5382faa14307edd30c3fa8e02533f864c4a0d` |
| 100 | `theorem` | [eq_rpow_inv_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/eq-rpow-inv-iff.md) | 429 | `result-track:a6cee2b383515bec5c49065ab0ec4c6d5b65419908339fc9d02f2a7929904810` |
| 101 | `theorem` | [rpow_inv_eq_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-eq-iff.md) | 432 | `result-track:e522410a50a2cf59c67e23ba3feb67f271e7c7dbb6d08bfffe75e3475a54f2d8` |
| 102 | `lemma` | [rpow_rpow_inv](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-rpow-inv-source-edition-2.md) | 435 | `result-track:99f446a5a08d7c0f9f7a80ae39de2b933bf5b77b991b65560f1fc3fce92b0439` |
| 103 | `lemma` | [rpow_inv_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-rpow-source-edition-2.md) | 438 | `result-track:3baae59c1665b2a582a0cbbea08c914be46b339e27d891e3802bfe3b7f319cf2` |
| 104 | `lemma` | [rpow_rpow_inv_eq_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-rpow-inv-eq-iff-source-edition-2.md) | 442 | `result-track:66365ad369157b737a72e96e7e542674190a32e782418041e868659eea5296e0` |
| 105 | `lemma` | [rpow_inv_rpow_eq_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-rpow-eq-iff-source-edition-2.md) | 446 | `result-track:f9589fe34f581b93a286d4b691c6aec86d414964affed5b76abdf202f20a7656` |
| 106 | `theorem` | [pow_rpow_inv_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/pow-rpow-inv-natcast-source-edition-2.md) | 449 | `result-track:468f66fa9df4bdbbc816ade585e8a13aa5541c591edf69f5fd79b16401720eda` |
| 107 | `theorem` | [rpow_inv_natCast_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-natcast-pow.md) | 453 | `result-track:4b9e778f60b446b6c0d94f960c9d99075f746481c2739c631f10261c438a0c37` |
| 108 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/tonnreal-rpow-of-nonneg.md) | 457 | `result-track:57816421f16571fdec8c0bd0bc7794e598c7c4b4ef7b517baf4daae52b6e2c3b` |
| 109 | `theorem` | [strictMono_rpow_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/strictmono-rpow-of-pos.md) | 462 | `result-track:5770adb3d2f01b2cb407b6f07d5a835116606b04385bb8855372f9ee80f72a1a` |
| 110 | `theorem` | [monotone_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/monotone-rpow-of-nonneg.md) | 465 | `result-track:2585da07fc58e03b6c72bacf6aa9b3e2501e5e862257d4fff4edfcf58094724c` |
| 111 | `def` | [orderIsoRpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/orderisorpow-source-edition-2.md) | 472 | `declaration-track:e77f3a30878b18492f4e78ec279aa26fa2ff8f6c182a6500dff223f3104aab12` |
| 112 | `theorem` | [orderIsoRpow_symm_eq](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/orderisorpow-symm-eq.md) | 478 | `result-track:92da9f6e994e1c7ade01d20f81b9331a3e9cffbba77e15054a9e88147e7e4565` |
| 113 | `theorem` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/nnnorm-rpow-of-nonneg.md) | 482 | `result-track:9120aebe211f9809ca04b9c3bc8d897c363eae09d8b3b3cb791102a7df51c8c2` |
| 114 | `def` | [rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow.md) | 493 | `declaration-track:77ea820e922b97cc78c2819c26fbe266c84179b99bcfea62cf39bd1360f4e846` |
| 115 | `instance` | [(anonymous)](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/instance.md) | 497 | `declaration-track:324ad5d635ed02bbf0768b425f87b1685f5408b00aeccdfc699b312d5c6848a5` |
| 116 | `theorem` | [rpow_eq_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-pow.md) | 501 | `result-track:105d1893548a6f9f2a3cc744bb08a1856c0f38ec3e23bc583d141487c5f85c9d` |
| 117 | `theorem` | [rpow_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-zero.md) | 505 | `result-track:6b79d8bddfa242a899a19c1bca2058ff7a09f60b4cc5633580664c716f887bc0` |
| 118 | `theorem` | [rpow_zero_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-zero-pos.md) | 510 | `result-track:ba8000197dea8073e6d055380621244fe62c0a4e6c258a3f53dbd08802411586` |
| 119 | `theorem` | [top_rpow_def](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/top-rpow-def.md) | 512 | `result-track:0813306638f0f3786e799701a5c2644f406e837bd546d97cebcab2fe7bae9bd2` |
| 120 | `theorem` | [top_rpow_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/top-rpow-of-pos.md) | 516 | `result-track:ffba0c79e1d440afa5b602a6cd7ce5ee294d3d60f46e50ffd61f75dea2a3150e` |
| 121 | `theorem` | [top_rpow_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/top-rpow-of-neg.md) | 519 | `result-track:4cba5d328e289d24c3029326fd93e36af7a9d3b4e691acb1a212b658f5f77dba` |
| 122 | `theorem` | [zero_rpow_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow-of-pos.md) | 523 | `result-track:9f4473f6c934129766b8b470e611d9bb0ceec51a207575ac2e5ea62213dff92d` |
| 123 | `theorem` | [zero_rpow_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow-of-neg.md) | 529 | `result-track:2fb6d4455b7ade8986e561cea9182f1c9cb75acf20e29a9311d36b01afb48ce1` |
| 124 | `theorem` | [zero_rpow_def](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow-def-source-edition-2.md) | 534 | `result-track:e460262a1a432a21c45ea3aa7f7f1f4f83977719be3c5637d1f8f3dd2f8b0f07` |
| 125 | `theorem` | [zero_rpow_mul_self](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/zero-rpow-mul-self.md) | 541 | `result-track:4716a500f8872c0d35f4fc6c0c994b200f6bf28f34aab8bc9e336a6e283e0887` |
| 126 | `theorem` | [coe_rpow_of_ne_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/coe-rpow-of-ne-zero.md) | 547 | `result-track:7989d140a7577e0d334f1e02cd9caf05d0c3fdcb02f21fa72f362906eb749152` |
| 127 | `theorem` | [coe_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/coe-rpow-of-nonneg.md) | 553 | `result-track:db2e064e2720dac7a3f5cf92a104d89726d895d0062f55eb863ce23badff9691` |
| 128 | `theorem` | [coe_rpow_def](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/coe-rpow-def.md) | 560 | `result-track:ee7b29fd464edd05edad9c4529434daea402a6a00210b3014da3c734a1a0585b` |
| 129 | `theorem` | [rpow_ofNNReal](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ofnnreal.md) | 564 | `result-track:e4de7430d845e538bb9ad307e74928a44eb6f686469d4d7717a84921a6ff471c` |
| 130 | `theorem` | [rpow_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-one.md) | 568 | `result-track:2bf82e1590ecf9ca868e170e98f0a96871f2218b44ba5ed24c7242712f18f518` |
| 131 | `theorem` | [one_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-rpow-source-edition-2.md) | 576 | `result-track:d52c6f87794048594bc80d92c1a512ec884bf2abf16b37f611135b4c812b9827` |
| 132 | `theorem` | [rpow_eq_zero_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-zero-iff-source-edition-2.md) | 581 | `result-track:819f652107b36f1e076386001a538329a1ad421c163cb598b2c10677c4c8fba8` |
| 133 | `lemma` | [rpow_eq_zero_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-zero-iff-of-pos.md) | 592 | `result-track:7ac48a125088b2766eb6151cd76b7f42ef4ea13e622821fbb018cc818ca89043` |
| 134 | `theorem` | [rpow_eq_top_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-top-iff.md) | 596 | `result-track:e72b3091b0a50671568e91b5f19324c7c881510c1f9aecf32a9c26e2a582eb9c` |
| 135 | `theorem` | [rpow_eq_top_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-top-iff-of-pos.md) | 607 | `result-track:51cdede197a9da47b4fb05e613cd5faf4e521611fc0eb6736693ac87927730b4` |
| 136 | `lemma` | [rpow_lt_top_iff_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-top-iff-of-pos.md) | 610 | `result-track:173399debd885a7c8451cf25ba985c21090503a9e8338931d49b0035bd1059bf` |
| 137 | `theorem` | [rpow_eq_top_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-eq-top-of-nonneg.md) | 613 | `result-track:b0ad5a27b20913be3a6b5e5611e64b2f46db1cba2cbc192944ebbb7476b4df0c` |
| 138 | `theorem` | [rpow_ne_top_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ne-top-of-nonneg.md) | 618 | `result-track:2a8d9c76c00a995536adb01eab567ae3b6902abed70c6093408089c88a9c69df` |
| 139 | `theorem` | [rpow_ne_top_of_nonneg'](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ne-top-of-nonneg-source-edition-2.md) | 623 | `result-track:7e010651f9661ca529a38103b6372adb47e4c3d70f324584be9814a52190c164` |
| 140 | `theorem` | [rpow_lt_top_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-top-of-nonneg.md) | 626 | `result-track:399711c454517a84a77e09960c2f1bc46dd339b996f724d553bf4c8d6a6a1fd0` |
| 141 | `theorem` | [rpow_ne_top_of_ne_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ne-top-of-ne-zero.md) | 631 | `result-track:bb2aa2795224fa9207f843591e23a1a3cf0377709ad9d145866a77d250557c81` |
| 142 | `theorem` | [rpow_add](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-source-edition-3.md) | 634 | `result-track:d977c28abf4ab36b80be549beb593f9477194180003449a15f73a91a5973d637` |
| 143 | `theorem` | [rpow_add_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-of-nonneg-source-edition-2.md) | 641 | `result-track:956b6530052e9813aa76f39a9c442514ea0917b91c4ab4f768db127d142ceadc` |
| 144 | `lemma` | [rpow_add_of_add_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-add-of-add-pos.md) | 651 | `result-track:93ec501932ad5152c3c3600f9f0fe4f3efc7553c0309b349307de89f1945406b` |
| 145 | `theorem` | [rpow_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-neg.md) | 660 | `result-track:75305c77672cfc2a9206e63d52740505b9afbab1f109816ae9e791b173286849` |
| 146 | `theorem` | [rpow_sub](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-sub-source-edition-3.md) | 672 | `result-track:98f179926ff0b177b6e094ff650c52cc7550fd42dbbe77f3af557cdeaa797ac3` |
| 147 | `theorem` | [rpow_neg_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-neg-one-source-edition-2.md) | 675 | `result-track:344a761f10b96c0affbbb10bba1f19d24dcfe8424d568114639bb5b0ddd8ccc6` |
| 148 | `theorem` | [rpow_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul-source-edition-2.md) | 677 | `result-track:ce568b4d0b7dd481b01fef2a4c2706dd0787fbe526515db60fba4f30c6e24cb0` |
| 149 | `theorem` | [rpow_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-natcast.md) | 694 | `result-track:1f5481dd1c8824ce84d7a7f3b4aa745c3c0252f0cc794ab4520e0358a60c9430` |
| 150 | `lemma` | [rpow_ofNat](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-ofnat-source-edition-2.md) | 700 | `result-track:cf0ebc728b7ee1c475a519ad32da387a4ce8b3805ff1c6ecf87bdc8c512a61f3` |
| 151 | `lemma` | [rpow_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-intcast.md) | 705 | `result-track:3e1947b0882788ce14448230a18c682c891b43dcdafa008bb5b815a10712a123` |
| 152 | `theorem` | [rpow_two](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-two.md) | 709 | `result-track:0f60b8c57f885e4ac8d19858c60f4cd3e9c61c299cea6005f363e78935c73748` |
| 153 | `theorem` | [mul_rpow_eq_ite](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/mul-rpow-eq-ite.md) | 711 | `result-track:f1a84962a3e27af330f3510a23b9b7397e382a42e97aafab689f527b62ef345a` |
| 154 | `theorem` | [mul_rpow_of_ne_top](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/mul-rpow-of-ne-top.md) | 731 | `result-track:eb06171eba3e63a538185913659569b17637dbe64e1b6dbc141807b89b3ada61` |
| 155 | `theorem` | [coe_mul_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/coe-mul-rpow.md) | 735 | `result-track:60534c90c8fcef25ce60901b018b42df0804249be867c919f762d1018f1ac620` |
| 156 | `theorem` | [prod_coe_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/prod-coe-rpow.md) | 738 | `result-track:79fcbbf2532a30768ba5d2f315beed490a1bbab877432b965db96d530004610f` |
| 157 | `theorem` | [mul_rpow_of_ne_zero](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/mul-rpow-of-ne-zero.md) | 745 | `result-track:82ab0bef6d69ccae713836ab7001ac9263a29bf161fbfff8be94af6738da87a6` |
| 158 | `theorem` | [mul_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/mul-rpow-of-nonneg.md) | 748 | `result-track:5e285bec65a8ae0920000e0a144926934b5f0894f0837c979839f26bfa5dbd1e` |
| 159 | `theorem` | [prod_rpow_of_ne_top](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/prod-rpow-of-ne-top.md) | 751 | `result-track:db4455dec40ba546a2f940c74bfd2b3ea383bc747b959e6e78bdec560a4e4a3b` |
| 160 | `theorem` | [prod_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/prod-rpow-of-nonneg.md) | 761 | `result-track:230358c5f36b24ec079d81f6dd9863ca5a4dcd487470e9641cb54dac2ec749e3` |
| 161 | `theorem` | [inv_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/inv-rpow.md) | 768 | `result-track:45c28bc0a3a9c5160c783bdc419855502f495c7a8c079b7e4f579a05d1033639` |
| 162 | `theorem` | [div_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/div-rpow-of-nonneg.md) | 777 | `result-track:49c1b4d6fdd592e6f9960e1e7bb8821f4ba447a615fe79876f7e9d9e01a7271c` |
| 163 | `theorem` | [strictMono_rpow_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/strictmono-rpow-of-pos-source-edition-2.md) | 780 | `result-track:da56695051a8ea3fbe656ae669301eaafe7bacb8b4657f78d05b6e1f82829401` |
| 164 | `theorem` | [monotone_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/monotone-rpow-of-nonneg-source-edition-2.md) | 788 | `result-track:cd7ffa6e89ddf875b329c602246182d03efad233e14e4449ac84e9cbb917ea5d` |
| 165 | `def` | [orderIsoRpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/orderisorpow.md) | 795 | `declaration-track:23941fda8a85e5311baefd81b841c0b7b2e2707daa864402faaee11fbd102024` |
| 166 | `theorem` | [orderIsoRpow_symm_apply](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/orderisorpow-symm-apply.md) | 801 | `result-track:92cfab551a5b35eaa7dac30ca01e9d1fd6e1bee4e9e095ddd6bf26ee0526f5fd` |
| 167 | `theorem` | [rpow_le_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow.md) | 806 | `result-track:57d88c229f486f66348d9403db372cde5d3c50d5a748a5ba8f7bee4d15c44801` |
| 168 | `theorem` | [rpow_lt_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-source-edition-2.md) | 809 | `result-track:227845dd9206ce02f825db73ce6d84a8bd5aa8d957305a60093099a0e2740347` |
| 169 | `theorem` | [rpow_le_rpow_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-iff-source-edition-2.md) | 812 | `result-track:d8e918064510fdd6fd5b262ddb544804357f18afa5396ea9f7116ea5bb0cf307` |
| 170 | `theorem` | [rpow_lt_rpow_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-iff.md) | 815 | `result-track:38fa53d252d146ba0b8a93762c7ece103c7f71394e576087e2111c68bddf33f4` |
| 171 | `lemma` | [max_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/max-rpow.md) | 818 | `result-track:961c35a4ea8e26a8ea31ae168008cbc36efd81d44df79e56ffd33cb1b682084e` |
| 172 | `theorem` | [le_rpow_inv_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/le-rpow-inv-iff.md) | 823 | `result-track:df92f88bef9901b0becd79ab6003f9dcb810e6ac5bc688203ee0683cce461dba` |
| 173 | `theorem` | [rpow_inv_lt_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-lt-iff-source-edition-2.md) | 828 | `result-track:688139967c7b8230e390c91c007dfca38a756e9a3d77f557e2b7a5cecf7512f1` |
| 174 | `theorem` | [lt_rpow_inv_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/lt-rpow-inv-iff.md) | 831 | `result-track:03b6a24ba7dd6e0f2a3e71899cefdcdeb4993b44295a75e6f6b64a2f0d1f1f5a` |
| 175 | `theorem` | [rpow_inv_le_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-le-iff-source-edition-2.md) | 836 | `result-track:9a637653c8f3354612f594fc646b13b3e4003a5121eaf8695ad59ff9c15697bd` |
| 176 | `theorem` | [rpow_lt_rpow_of_exponent_lt](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-of-exponent-lt-source-edition-2.md) | 842 | `result-track:b90ad1fa236d352ceec62288b8f09111a439138c4a75083cbca575b8f8ac5941` |
| 177 | `theorem` | [rpow_le_rpow_of_exponent_le](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-of-exponent-le.md) | 849 | `result-track:0c0dddf1ceed6de6993d652184a40baaba5ad6622ab90cf950d4624a20916516` |
| 178 | `theorem` | [rpow_lt_rpow_of_exponent_gt](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-rpow-of-exponent-gt-source-edition-2.md) | 860 | `result-track:bea07f49a1fdd04191132f3a3b9671d388f83879ce6939d11c6333d7b414c81c` |
| 179 | `theorem` | [rpow_le_rpow_of_exponent_ge](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-rpow-of-exponent-ge.md) | 866 | `result-track:4d1574b3f74ac43eb43d0c6a35820498c3d639305656a809b7e4a80a85fc8eec` |
| 180 | `theorem` | [rpow_le_self_of_le_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-self-of-le-one.md) | 878 | `result-track:1a69110a38af86ee303952213e629cb986b38b70ca2311fc2527b0b66ee7bb4d` |
| 181 | `theorem` | [le_rpow_self_of_one_le](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/le-rpow-self-of-one-le.md) | 882 | `result-track:6d6db46232c66f2d39cee71d30bdae1ec91cf8fe8a7edf17b815be20356f03f0` |
| 182 | `theorem` | [rpow_pos_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-pos-of-nonneg.md) | 886 | `result-track:2b0f3ee2374febb210bd42810a9b49e34b0d41670e34745c1253a86106794145` |
| 183 | `theorem` | [rpow_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-pos.md) | 894 | `result-track:129bc8fb75aec8cb24b36ab0c4f6e647b04cf51c65d7a6b946e94ee3de773a2c` |
| 184 | `theorem` | [rpow_lt_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-one-source-edition-2.md) | 900 | `result-track:a57e9d2fafeca13a07239fc4243d5f1b40979e4a22923f3951219397e7d51ee1` |
| 185 | `theorem` | [rpow_le_one](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-one.md) | 905 | `result-track:66e11bad64a1c670d656bddbe55f06d4e76585665b760f37ad5688835542ddfe` |
| 186 | `theorem` | [rpow_lt_one_of_one_lt_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-lt-one-of-one-lt-of-neg.md) | 910 | `result-track:188b4bb7d9bc03aa5804d869bb17c280abadd4234f197206ff4523ee12492ad0` |
| 187 | `theorem` | [rpow_le_one_of_one_le_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-le-one-of-one-le-of-neg.md) | 917 | `result-track:0f4fdee30f1fa74cbfa280bb79d61eff90bac7159b070f882a48657b83f63aa9` |
| 188 | `theorem` | [one_lt_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-lt-rpow.md) | 924 | `result-track:78afc25b64fe781681e3aa699b4f53dfbd0a4063c253d7329a850e0c3ca59a44` |
| 189 | `theorem` | [one_le_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-le-rpow.md) | 930 | `result-track:b24f3bea1fff72be468212d872146aa92701a6669a1afc215a7d8e6c1606df75` |
| 190 | `theorem` | [one_lt_rpow_of_pos_of_lt_one_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-lt-rpow-of-pos-of-lt-one-of-neg.md) | 936 | `result-track:c5f46102492fc4f071e82caf9e8d565969b5f4d50e047b9e62654e98cd4e9c1c` |
| 191 | `theorem` | [one_le_rpow_of_pos_of_le_one_of_neg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/one-le-rpow-of-pos-of-le-one-of-neg.md) | 942 | `result-track:72bab0b6a1c2d952d37dc28e79cc1e5307c4dadef4c1ab27a7fd290fa458fc8a` |
| 192 | `lemma` | [toNNReal_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/tonnreal-rpow.md) | 949 | `result-track:0e9f5ec54e965c092745aea59f38c1cc88eea8da35aae4d17fafc9ec16f47174` |
| 193 | `theorem` | [toReal_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/toreal-rpow.md) | 962 | `result-track:30c5ca0ef4cb44da9ccaf932678343d75da5bf01eb79d6890929da79658134a1` |
| 194 | `theorem` | [ofReal_rpow_of_pos](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/ofreal-rpow-of-pos.md) | 965 | `result-track:f878d6f3f520ec5b7e8feea4de892d14b84ed62f5a0e3cecc47e60f4959db6f1` |
| 195 | `theorem` | [ofReal_rpow_of_nonneg](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/ofreal-rpow-of-nonneg.md) | 971 | `result-track:1e48757155fa178e2e33249300f257ff87aab0f96884a73bc7f31391bf71dd85` |
| 196 | `lemma` | [rpow_rpow_inv](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-rpow-inv.md) | 982 | `result-track:6d6167ef41cc49223d7afe4d17739a818d48770623d441fd76b2cd83d0731c91` |
| 197 | `lemma` | [rpow_inv_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-rpow.md) | 985 | `result-track:188c02e8ee728c3d3eca8eaf8ba70958ca18c9b90dd036ec3a7f68cc45ad806a` |
| 198 | `lemma` | [rpow_rpow_inv_eq_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-rpow-inv-eq-iff.md) | 989 | `result-track:022780d7c6fec03b1b9e887c346d801c71480a22bbce33c273d131f5d526473d` |
| 199 | `lemma` | [rpow_inv_rpow_eq_iff](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-rpow-eq-iff.md) | 993 | `result-track:065971beae651a10247d4c5b99617a151dcf44abc96880546d9afbdcde2d7902` |
| 200 | `lemma` | [pow_rpow_inv_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/pow-rpow-inv-natcast.md) | 996 | `result-track:2c4c1b20d35e1e9d220f275a497ed1e27ec31c0e9644472d65cc285ba90f7255` |
| 201 | `lemma` | [rpow_inv_natCast_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-inv-natcast-pow-source-edition-2.md) | 999 | `result-track:d0708cc789afaf39c935b86b108d9a49b1cda2e8a5e128d31c5f33d343987954` |
| 202 | `lemma` | [rpow_natCast_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-natcast-mul.md) | 1002 | `result-track:1684c3b0020c39295aec197cb136726d8fd8ea8050ae318d86889b80372110af` |
| 203 | `lemma` | [rpow_mul_natCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul-natcast.md) | 1005 | `result-track:16d0f124391541d157797350f621fc56125211745c251b09a7d958b76b6f6ff3` |
| 204 | `lemma` | [rpow_intCast_mul](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-intcast-mul.md) | 1008 | `result-track:19989de6d08b03c67ca364515513433227eecbd15092a302e28ab274f4fad10a` |
| 205 | `lemma` | [rpow_mul_intCast](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-mul-intcast-source-edition-2.md) | 1011 | `result-track:c9f00b0961b0c8feb7270d34ac789d863ea9f43b95485b46d6cf514badc17277` |
| 206 | `lemma` | [rpow_left_injective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-injective-source-edition-2.md) | 1014 | `result-track:f9f6d55763227f68aa2cc2e19335838a75b07e5b490b845156a6fc5b76d1ec2c` |
| 207 | `theorem` | [rpow_left_surjective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-surjective-source-edition-2.md) | 1017 | `result-track:f8f1cb1aac0b857d6b8dca45a3397038f8a50cfa9f7efc354c74257aead87c10` |
| 208 | `theorem` | [rpow_left_bijective](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/rpow-left-bijective-source-edition-2.md) | 1020 | `result-track:e8544aded6bd6251c1e664f0dca35698cb92fcd008a1d05fdefaf56b212d2c37` |
| 209 | `lemma` | [Pow NNReal Namespaced Public](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/enorm-rpow-of-nonneg.md) | 1023 | `result-track:a31c36e4d788ab4cb13dc544a83bc708aabe01d061a457a6907ffe16a5e5ab0d` |
| 210 | `lemma` | [add_rpow_le_two_rpow_mul_rpow_add_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/add-rpow-le-two-rpow-mul-rpow-add-rpow.md) | 1026 | `result-track:12227b1759fec98edeee03553e84964e2cea58cdccc214366dc0739e5f1145e1` |
| 211 | `def` | [evalNNRealRpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/evalnnrealrpow.md) | 1136 | `declaration-track:4753cb6cf25f5402e80fa3259a732417746c7bd1701d165166c4900d0fedcd15` |
| 212 | `def` | [isFiniteM?](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/isfinitem.md) | 1152 | `declaration-track:ea10b84d1bb5a3244fa855eb893c4c4e12ca7dda015379b2c848cb82d6dff390` |
| 213 | `def` | [evalENNRealRpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/evalennrealrpow.md) | 1166 | `declaration-track:4370bc3a3948f0091c9ddef3f1e278bdc5d108077bf73b77f26b331af6e50b46` |
| 214 | `theorem` | [IsNat.nnreal_rpow_eq_nnreal_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/isnat-nnreal-rpow-eq-nnreal-pow.md) | 1198 | `result-track:1fa45935cacab583896f5da692e48893138a538d39844a3c636f7a2165c4595c` |
| 215 | `theorem` | [IsInt.nnreal_rpow_eq_inv_nnreal_pow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/isint-nnreal-rpow-eq-inv-nnreal-pow.md) | 1202 | `result-track:47b95155ffe38ed30797179b94043d6b1941cece9f79dbf89991080d53342e2e` |
| 216 | `theorem` | [IsNat.nnreal_rpow_isNNRat](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/isnat-nnreal-rpow-isnnrat.md) | 1206 | `result-track:e5046e4af53c7535e7617ab4cc07d20e28270708e5de30bc9ab940eceb4ad559` |
| 217 | `theorem` | [IsNNRat.nnreal_rpow_isNNRat](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/isnnrat-nnreal-rpow-isnnrat.md) | 1216 | `result-track:52b06fef8a5d127fdf67e907b38f71b351e3241dc593c4e6b196682cc8b9f3f0` |
| 218 | `theorem` | [nnreal_rpow_isRat_eq_inv_nnreal_rpow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/nnreal-rpow-israt-eq-inv-nnreal-rpow.md) | 1224 | `result-track:792b1aa4c55f3567257a4342e9bba54908fcc2fcf60323e3bd088138eaab046c` |
| 219 | `def` | [proveIsNatNNRealRPowIsNNRat](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/proveisnatnnrealrpowisnnrat.md) | 1241 | `declaration-track:ab0bc5a79d04e492200cb3be21a223e710720bf4aa3195cf6cdfad7891dfea78` |
| 220 | `def` | [evalNNRealRPow](../../../../SpecialFunctions/PowNNRealNamespacedPublic.lean/declarations/evalnnrealrpow-source-edition-2.md) | 1258 | `declaration-track:47ec7632b698487e030c18f262067ef177c330b793f618bf0431276e5c0f8c82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d671ea7846f77b10083929dc598c3e5522a5a001682e2433345a3d27f6fbbb5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NNReal/Variantb6f708f02f2a9c5964a642eab10864a1aecca6f6cb96f67ccf74988b879f5a3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
