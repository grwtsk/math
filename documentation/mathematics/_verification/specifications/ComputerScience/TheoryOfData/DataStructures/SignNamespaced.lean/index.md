# Verification target: Sign Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27b8aa54b75199235cede804583420dc66024948",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27b8aa54b75199235cede804583420dc66024948`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Lemmas` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SignType](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/signtype.md) | 28 | `declaration-track:071a6d3e127463c4dccbdb760ea9a193d22d7dc193d154e518de9894d2889634` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-11.md) | 44 | `declaration-track:f367a616e3b6ea209c41d697400c95f3b5f04e81870048c1c982a505695ca29d` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-7.md) | 47 | `declaration-track:afdb7d399a23a6f34895c3b7378dab60f1f7ee8fb2e2f41d0535989a1575a0f0` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-3.md) | 50 | `declaration-track:72c82d7b20faf1ebd83119796d09fc04f646322b6ca8accd7c3d3fabae3c87d3` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-6.md) | 53 | `declaration-track:92aee51ccb9635b95402ad9016fa1c6cb968d5f45a1d7d1d9f14a82e1241648d` |
| 6 | `theorem` | [zero_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/zero-eq-zero.md) | 61 | `result-track:6f4d014473fda75ad7da93a9791d6c47b8cf84594be863dcc4829856bb7160e3` |
| 7 | `theorem` | [neg_eq_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-eq-neg-one.md) | 66 | `result-track:942f1ab1623a0c02674693f27dff4e013465daa23971908888950849ad7f1838` |
| 8 | `theorem` | [pos_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/pos-eq-one.md) | 71 | `result-track:38fe5aa9a6ec73130f66b7b77df9b91519cb8b22abe7cf9347270a742998c18b` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-9.md) | 75 | `declaration-track:da17b24366f6bc402e6351c3d23e7db84771bfc089756eebc795922d142505eb` |
| 10 | `inductive` | [LE](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le.md) | 83 | `declaration-track:0288672aa8fe3451175ef7e143479cceb41cbd7f18743a689db60c825c2ccffd` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance.md) | 89 | `declaration-track:1a2f0830f18c48e07c3f3da3aa9e3fd4e7ad862c21d9e9a371812428cc4f92ab` |
| 12 | `instance` | [LE.decidableRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le-decidablerel.md) | 92 | `declaration-track:3940478a225844399a1ad342f8fd49b59f68e98abefcca48f6e34a3695625191` |
| 13 | `instance` | [decidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/decidableeq.md) | 95 | `declaration-track:4573e7cdb37b6707bb084cea0161ce58902079b6a5027533213142a7fe686ff9` |
| 14 | `lemma` | [mul_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/mul-comm.md) | 98 | `result-track:c3f5277bb2e7619619dae115d279e0175e201d2b27f38d202bdcfc406b4a40c7` |
| 15 | `lemma` | [mul_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/mul-assoc.md) | 99 | `result-track:70a5446c3aa5ce3b4a74d43e14e7e42ee8f65ea947e6e25fe63a42f08fbce779` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-5.md) | 104 | `declaration-track:7bc1072a3db872ffef0b6fa4f3b460d3f001df1cfd0bdd5cd57e324bf12fbb0a` |
| 17 | `lemma` | [le_antisymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le-antisymm.md) | 119 | `result-track:80f5a24542a2b4131b9181d47fb53c679e2382f4c1fb70f4d48051657d7e3764` |
| 18 | `lemma` | [le_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le-trans.md) | 122 | `result-track:cf5c9f8245ee69991b41ce58a81585aca05a21cff75a1a5850cc8c0bcb1e5759` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-8.md) | 125 | `declaration-track:ce42f7b7ad77737af0fea7a1ef542b4cd88ea082ff06db2fa85b64acae4d639b` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-10.md) | 134 | `declaration-track:dbac704d719419d7c4caa28777009aa451248e4f5c243113442329910eae5f9f` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-2.md) | 140 | `declaration-track:55adca69afb73c8686ebfac05ae7280a45934773c3625c23b5dc674eca1bc274` |
| 22 | `def` | [fin3Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/fin3equiv.md) | 146 | `declaration-track:dca75636da19476c0b3c46946b30d6cb38926a065d87bf166ceb5dfa2b301eaf` |
| 23 | `theorem` | [nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/nonneg-iff.md) | 172 | `result-track:dc6cc2183db1d3693d2ea15155b58331baa9f275a476752e4219d4a4be49688d` |
| 24 | `theorem` | [nonneg_iff_ne_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/nonneg-iff-ne-neg-one.md) | 175 | `result-track:5eec6940c7114f48a44895b027e8520d9c225c7b165a40c3b67ba5cbaeebf22b` |
| 25 | `theorem` | [neg_one_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-one-lt-iff.md) | 178 | `result-track:6682b6fdcd06e5ae5ebab4775ba90eb24b0db78d2e30fc74e45289bfa3cdb67b` |
| 26 | `theorem` | [nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/nonpos-iff.md) | 181 | `result-track:c3f5de32515e462f40de2631e27e845389c29e4b8c8246187608a02a87bce231` |
| 27 | `theorem` | [nonpos_iff_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/nonpos-iff-ne-one.md) | 184 | `result-track:4b81742bc8749bdd185da967422504e7bcd28e3c29f89e2866f12b8eb642583e` |
| 28 | `theorem` | [lt_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/lt-one-iff.md) | 187 | `result-track:0899fac79c1fce7c205cb50c9d5d81067c31a8e695fb5e987ab69317d8f3ff1a` |
| 29 | `theorem` | [neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-iff.md) | 191 | `result-track:0f0fd80645126bc5866c01003fba368eee85c9e5e4e5fa533a5020daae131516` |
| 30 | `theorem` | [le_neg_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le-neg-one-iff.md) | 195 | `result-track:932eabab1c9cd56c11e769f7b85e4a05da4f5ad1c66b0b1603757b97903fe2bd` |
| 31 | `theorem` | [pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/pos-iff.md) | 200 | `result-track:397dca3f992fac6714952fe81fb15a2673ee773f555435fdd90d3a13a3aa8b57` |
| 32 | `theorem` | [one_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/one-le-iff.md) | 204 | `result-track:0b8be85fb0275394715f61cbb9aef2d9704bdf95e8ee50bb26d32c8ac7f8bfc8` |
| 33 | `theorem` | [neg_one_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-one-le.md) | 209 | `result-track:9a2b28274217ab99025b04b7ce66c1dc57dfee8ecf0c233bcc513cfab9f03f48` |
| 34 | `theorem` | [le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/le-one.md) | 214 | `result-track:f7671a33a31385cb75985ba061b141b335558b4a72860dde87290879d3a887d9` |
| 35 | `theorem` | [not_lt_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/not-lt-neg-one.md) | 219 | `result-track:fb433968e21a51167cb5fddaaeb0de84c16e34a45c755fdfd32eb10fbf697f80` |
| 36 | `theorem` | [not_one_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/not-one-lt.md) | 224 | `result-track:c962a3d13ddbbce2ec1b78dace015840fe85cd3ce35e3701049c4214c525379f` |
| 37 | `theorem` | [self_eq_neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/self-eq-neg-iff.md) | 229 | `result-track:e03e8d3ca93536bc6fa52faac397dcc6dafd3917dde39c80233687c60f38c613` |
| 38 | `theorem` | [neg_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-eq-self-iff.md) | 233 | `result-track:3ccff85a044322edef17a227902ce99e06fcca60780bba54ebde4ee5e31faf97` |
| 39 | `theorem` | [neg_one_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/neg-one-lt-one.md) | 237 | `result-track:a6a7da528b635ed55453113704b4bd07e5bdb88c76f3d573d5669199f31c24df` |
| 40 | `def` | [cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/cast.md) | 250 | `declaration-track:dd4e5950da95ae5329fc3e6444d8976134b0b679dbe04e3b9eda3c80761fdb91` |
| 41 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/instance-source-edition-4.md) | 257 | `declaration-track:7389925b6a9ae4be460e6175c856100827993d0d1d4bc825f9df1038e27484e3` |
| 42 | `theorem` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/coe-zero.md) | 263 | `result-track:0db71a2802a5e253964a268164b358a8db205c3ecaaa9191e2a658bec9b1b85b` |
| 43 | `theorem` | [coe_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/coe-one.md) | 268 | `result-track:978faa5e5f71d613f12b3e881c66aef39cf3c782f1d52e973048bdf9bae39a4a` |
| 44 | `theorem` | [coe_neg_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/coe-neg-one.md) | 273 | `result-track:fbf43f807e8ba9b3f6570b1e2b277d069f9b9082ee9904b12465fc02950521e7` |
| 45 | `def` | [castHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/casthom.md) | 281 | `declaration-track:09e90833dde9209f38c8542f8e8a53fae58f1b6b707ebb54a760bba6583e4c55` |
| 46 | `theorem` | [univ_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/univ-eq.md) | 289 | `result-track:2d5cdbd96ca2f0cfd0f62b51d4ba60e13672622be9ed2349971354aabdcc5d64` |
| 47 | `theorem` | [range_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/range-eq.md) | 292 | `result-track:2fb33bdadf4b7cbed8c754682cd58f37b309d93e949c8ba00a481cbe4e1c63d3` |
| 48 | `def` | [SignType.sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/signtype-sign.md) | 309 | `declaration-track:2769e141109936d83b4a14c939e48380fef9bdbfe90d0b0b9cf43991fc443e27` |
| 49 | `theorem` | [sign_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-apply.md) | 318 | `result-track:30006dd92887ad656ed76c0eeb9e088942f8d69353a7764aa13d7573ab15751c` |
| 50 | `theorem` | [sign_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-zero.md) | 323 | `result-track:eeb47baf5105ed2c80211dbf832b79ecbb1fb5c8d3312351068696c19a6d1448` |
| 51 | `theorem` | [sign_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-pos.md) | 327 | `result-track:49d715015e77cd377930d51b55977b7a32dff5247aec11feff0e8b8b3c27c730` |
| 52 | `theorem` | [sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-neg.md) | 331 | `result-track:b553a76ea71ba4ce4856fbedc9a9a838e466c301ea411875585385f9970b2d05` |
| 53 | `theorem` | [sign_eq_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-eq-one-iff.md) | 334 | `result-track:7f86782520ae597b502e0575dfa2263e70a72fcc49370307336be8d97196451e` |
| 54 | `theorem` | [sign_eq_neg_one_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-eq-neg-one-iff.md) | 341 | `result-track:7701ed2947f698adf7e4d02a7d7df65311afdf182c199113d5210b3741bd05cc` |
| 55 | `theorem` | [sign_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-eq-zero-iff.md) | 355 | `result-track:270bce3f1db11fb9b0e7cf0ef5ba46285bf586502ca9ecc5ca4f369647795e88` |
| 56 | `theorem` | [sign_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-ne-zero.md) | 363 | `result-track:e91ef373aba8f44ffa26ab6241460d45adbb70123740eb833f118b2e2c9ca293` |
| 57 | `theorem` | [sign_nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-nonneg-iff.md) | 368 | `result-track:ca7976dd3ec441de9f9eefd60555e693c4c4cdd10bd7d8bdbf83e7213544ef54` |
| 58 | `theorem` | [sign_nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-nonpos-iff.md) | 376 | `result-track:762d3d0f33dd50dcca7936d9dca69db91cea6cabe101ada6f0b9a180ee6b7b56` |
| 59 | `theorem` | [sign_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-one.md) | 390 | `result-track:51adea94b0f680717a9609d62b6b3145126ea8de5f8db377ae63aa796873d8b6` |
| 60 | `theorem` | [sign_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-mul.md) | 404 | `result-track:f5d54f5078b49f1f012095c83dbfed2bb05ccf984db2d7ea7d43744bccc5aa7a` |
| 61 | `theorem` | [sign_mul_abs](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-mul-abs.md) | 409 | `result-track:0958bf7030760299f392f8d6718645aec1c9540d12c5c2eb87ffb5fd0cde319e` |
| 62 | `theorem` | [abs_mul_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/abs-mul-sign.md) | 415 | `result-track:656ae7818a752d90cd85fc25b855019a6d11bf60a868949ad1406ff49d494bdf` |
| 63 | `def` | [signHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/signhom.md) | 426 | `declaration-track:c26cee11d3c850011d21c3fe6962e694a4b017dc42b532ba3fa1bd60e80eebbe` |
| 64 | `theorem` | [sign_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-pow.md) | 433 | `result-track:1d6e0e978e8d56b99ef11e2befbca422d2a2a18d37b02c5e061ca75a3afd0e0d` |
| 65 | `theorem` | [Left.sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/left-sign-neg.md) | 442 | `result-track:30c80fe7c8c8e7ff4e4907e0b39d30ffc49ea200fdb995e530d9fcee377bcecd` |
| 66 | `theorem` | [Right.sign_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/right-sign-neg.md) | 451 | `result-track:8e770a2a62a6d000c826ff0cdeac61868ce8b3625c012edda056a620ece0cbed` |
| 67 | `theorem` | [sign_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-sum.md) | 473 | `result-track:59a59123469a2f7cad9b71e9a25a768daf592d334d6d58dca587312dbd016435` |
| 68 | `theorem` | [sign_eq_sign](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/sign-eq-sign.md) | 488 | `result-track:aed40b2bff25a3fecf32760ab1937865425a8cc35e51bea185b3683945042957` |
| 69 | `theorem` | [exists_signed_sum_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/exists-signed-sum-aux.md) | 500 | `result-track:a908a8b7043abd98a0c2571f9c26c35db63ae94162319418c0a136a88303589c` |
| 70 | `theorem` | [exists_signed_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/exists-signed-sum.md) | 514 | `result-track:72dad023a5d53f836c5d08231cb3383786ec14a50ad3dca040bd0fc05c264b91` |
| 71 | `theorem` | [exists_signed_sum'](../../../../../../ComputerScience/TheoryOfData/DataStructures/SignNamespaced.lean/declarations/exists-signed-sum-source-edition-2.md) | 525 | `result-track:785bbbd1781acb50eaf8c64bc70b43a566dac6d3b19278d7c27e5406964053a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30fb3c734a3c92fb0ae3d331d2897877ab53115b5b49c7202e01f7d392184db9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sign/Variant8eb6475f95f9f3d0c49619fcf5ab78ca78bf75592d37d6f3e90b54a7e5c3f2e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
