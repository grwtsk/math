# Verification target: Type Tags Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33245bfadf19c9d2b63c782ad9110504c97f49fc",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33245bfadf19c9d2b63c782ad9110504c97f49fc`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Additive](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive.md) | 41 | `declaration-track:4f6090bea63d91fb4937557e33fa2eb65efcded4b9ddad46a2586055791c44ad` |
| 2 | `def` | [Multiplicative](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative.md) | 45 | `declaration-track:639f10c5e670872687edf38712337272f25206b56c9bb614e0d147a2b38469f9` |
| 3 | `def` | [ofMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul.md) | 50 | `declaration-track:dc3f5f42571462d168e4e92ff6ffc5fc93a4e1f169bc85706ffa486c1737aafb` |
| 4 | `def` | [toMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul.md) | 54 | `declaration-track:87ab4e5fd473d73790995917cfe2b6f9770386b8e28f6ca349153d7a8250be83` |
| 5 | `theorem` | [ofMul_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-symm-eq.md) | 57 | `result-track:acc6a624084240fe3b6af14c7495bc0849abeb436ae265894b788bfacc845117` |
| 6 | `theorem` | [toMul_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-symm-eq.md) | 61 | `result-track:f4d9d8f7391cc393946c9f8470ab68fcbe53110836567f345d4aa00973f5de4c` |
| 7 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ext.md) | 64 | `result-track:619cd2b1b1c4a7e13b994ceb8d0428b3d4b6db1fd1e9feaf340521118429ab34` |
| 8 | `lemma` | [«forall»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/forall-source-edition-2.md) | 67 | `result-track:9f5a0968a7458d9ecb6929bf4eed88c8411888a60c318c0c8bddcd7375996dff` |
| 9 | `lemma` | [«exists»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/exists-source-edition-2.md) | 70 | `result-track:6e74d257858662f49bfbe4713ebca01c5ca94d64fdcb7f72865a4c948e38ac06` |
| 10 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/rec.md) | 74 | `declaration-track:6d2a5e85055f23c1c42e7f26e9446c80965de3f29942681519534e961a7f93f8` |
| 11 | `def` | [ofAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd.md) | 82 | `declaration-track:4b71182e088b62c73c7dc478d71a9c066b01a1b3ae6490aae69231d39d3f8e84` |
| 12 | `def` | [toAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd.md) | 86 | `declaration-track:77b86ad8341c3f90e2aabc3aafa6c41ae2f3bc07b86c9847328fc273246a0346` |
| 13 | `theorem` | [ofAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-symm-eq.md) | 89 | `result-track:21a248ea2079fbd90674249854051cd6e6b541bb63850165e46af7162944c017` |
| 14 | `theorem` | [toAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-symm-eq.md) | 93 | `result-track:311d61f99de43cac7bbefe2698ff582e89791f92e3a98e9f22be7eac023d5c4e` |
| 15 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ext-source-edition-2.md) | 96 | `result-track:73d361d037c20a03aa06a6273dd64d2ebb3b06de10daeb4579aeabf765d05767` |
| 16 | `lemma` | [«forall»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/forall.md) | 99 | `result-track:28dab36b7428cd71d4ec69bb63e749de188073026076a450cf56c6c3b8161987` |
| 17 | `lemma` | [«exists»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/exists.md) | 102 | `result-track:4c0aad882f6d14f36f80fa8938789bcd0f00036a3d64f33f3e46d82268e2aff6` |
| 18 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/rec-source-edition-2.md) | 106 | `declaration-track:df1e1fc2b14ba850f69a1a056000a877fdc6ad5934b2be14491f635679b73304` |
| 19 | `theorem` | [toAdd_ofAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-ofadd.md) | 115 | `result-track:83d4aee9c482a44f327a97d9b9ce4b0022bff5a2f217c033d9f1f67503f6f1e0` |
| 20 | `theorem` | [ofAdd_toAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-toadd.md) | 119 | `result-track:a10f0f1ead2376419daae3482b8f564bd70a3a50a4f8d4a14097bf99ed1c6be8` |
| 21 | `theorem` | [toMul_ofMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-ofmul.md) | 123 | `result-track:a89bf2dd3a91c6f26955521b48fe5efc709a845c066ed1a8efbef50eabb9eddc` |
| 22 | `theorem` | [ofMul_toMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-tomul.md) | 127 | `result-track:b04c441b9e498a723659d97a483f9b04da72e5a82fe8e098ba0a2649f7c02e56` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-9.md) | 130 | `declaration-track:c76fb7174279683a2352aa2c499c5755bde177b4b2accc3d6d64f110eebe47d9` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-5.md) | 131 | `declaration-track:9575e8f0dcf45243ee360dfcc749a6447941bcb1fbfd21ad0d8b48a326ae0c21` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-10.md) | 133 | `declaration-track:dfc9515b434c35f9f1b2838c251633e50464fdeb6b2fd11ada619d47688e5890` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-6.md) | 136 | `declaration-track:a380c4268e2b22b02afb78e41ba8d135a28f148a4f6f010c01b5e1754d9e81e2` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance.md) | 139 | `declaration-track:2911c41464efb3dc53746cf0d80573f1d38e8656d59c643787adeef510f8f7c7` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-3.md) | 140 | `declaration-track:6252e765002fbadf9e5c6df2cf2638d50aca31cbe9bfad9374d18e280ff80cfe` |
| 29 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-11.md) | 142 | `declaration-track:ea621b82b9d940c06e0f6dd41b2d0acd131ee418b6182f7bca9dafa48f2465b3` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:78526838d1aac68b34e66e807636ce9606fbfb860f48630de42999c734945eaf` |
| 31 | `instance` | [Additive.instNontrivial](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-instnontrivial.md) | 146 | `declaration-track:56ff61ecc01c33a2364e1cb6c743a219cbd4de806d7f2fdc9071b209aa691d4f` |
| 32 | `instance` | [Multiplicative.instNontrivial](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-instnontrivial.md) | 149 | `declaration-track:40897667e3665fb620ca54c3e6e226bdf99591c616cd046e04fb74f7f05f8a9e` |
| 33 | `instance` | [Additive.add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-add.md) | 152 | `declaration-track:2c8289badff301c439ffdbfdabde923618ea895ec164b55deec997640f16b04a` |
| 34 | `instance` | [Multiplicative.mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-mul.md) | 155 | `declaration-track:0c88be27f16cd672deabb998bda2126481622117d910b96d37fc472892b07f17` |
| 35 | `theorem` | [ofAdd_add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-add.md) | 159 | `result-track:6a789aaa6765f5ce68a3162e6132e91d646be1b83633882a61d1414e7fa66558` |
| 36 | `theorem` | [toAdd_mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-mul.md) | 162 | `result-track:ee407a21ff7b3deaa98e7bfdc91aa16e1e35c54576ebb624389df491fa41aa42` |
| 37 | `theorem` | [ofMul_mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-mul.md) | 165 | `result-track:a1c247122a8227e14bd5b529043c2652ebc49f29ef5dcc61af7341dd1f907c5b` |
| 38 | `theorem` | [toMul_add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-add.md) | 168 | `result-track:b5a9adade27489c0a0dacff748888151efc34e21d9b54b22878219402502202e` |
| 39 | `instance` | [Additive.addSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addsemigroup.md) | 170 | `declaration-track:3d16bb5027946decae7639d10c6fc6790188bbc138af7e704601d5a6483463db` |
| 40 | `instance` | [Multiplicative.semigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-semigroup.md) | 173 | `declaration-track:110fbb04383a02d857211cadc9b0acd3622fe3ce87b8ba7905a38e8915ed07e5` |
| 41 | `instance` | [Additive.addCommSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addcommsemigroup.md) | 176 | `declaration-track:d3956fdf51590d948fd08cc511e3d4eb65169162825651b7af867877a4901c0b` |
| 42 | `instance` | [Multiplicative.commSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-commsemigroup.md) | 179 | `declaration-track:e86b3566d0526ed7dfc63377f10aff4b56bae13eb0b63fd8de6647f5d6855aff` |
| 43 | `instance` | [Additive.isLeftCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-isleftcanceladd.md) | 182 | `declaration-track:a2e2d1f4955cb6e345f1d8a5fa8aac48030c7bde4b87b2ce0533392ff9e3ca33` |
| 44 | `instance` | [Multiplicative.isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-isleftcancelmul.md) | 185 | `declaration-track:a3761dcc8905d7b40b36d9859050ffd98c018894c906ffd5c7962fcce11ca6dd` |
| 45 | `instance` | [Additive.isRightCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-isrightcanceladd.md) | 189 | `declaration-track:a1d8a39c556c84330e9c35f81344b260e1380a84fde7ec6704ef198cad2d2488` |
| 46 | `instance` | [Multiplicative.isRightCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-isrightcancelmul.md) | 192 | `declaration-track:b1f9b494eec3bea72053760ad6f3719c4f5c0abd797d2e0d2e6951eb315b8314` |
| 47 | `instance` | [Additive.isCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-iscanceladd.md) | 196 | `declaration-track:4ca98dc83012bd08bb361cebbdb96d0386783c686b5fedcdb15a92f1f638584f` |
| 48 | `instance` | [Multiplicative.isCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-iscancelmul.md) | 199 | `declaration-track:89be381b5594311b3c4c31f787a1298bf01245ef32c390675207d8e0f897e4a7` |
| 49 | `instance` | [Additive.addLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addleftcancelsemigroup.md) | 202 | `declaration-track:61cdfe5bf26a82361d78aa9785cace59ca8cc42b3e7b848dde986281c370b323` |
| 50 | `instance` | [Multiplicative.leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-leftcancelsemigroup.md) | 206 | `declaration-track:54ab2e48171c9f09483868ed918c128186d3df64659696b6060964e7ebbe9cfb` |
| 51 | `instance` | [Additive.addRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addrightcancelsemigroup.md) | 210 | `declaration-track:3f727d575d0da71940f4836db87301fcfe45785d20794f2ab69bd2a51ef30d02` |
| 52 | `instance` | [Multiplicative.rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-rightcancelsemigroup.md) | 214 | `declaration-track:7364e2e01ae4f5429b8310b3fbd739eb39ef6b5bbc82b0bb1edac991ede7a534` |
| 53 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-12.md) | 218 | `declaration-track:fc353f0d5feb91af3c590c362dfeee50647739615e8a220b7020cc65e389bbe1` |
| 54 | `theorem` | [ofMul_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-one.md) | 222 | `result-track:78f26ef4c87f39c110460d97fcde7e9de2cf3142d00a19e128bb42d7e421c79d` |
| 55 | `theorem` | [ofMul_eq_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-eq-zero.md) | 225 | `result-track:804d663b048ba69e1ad9cbcb3babad7242f9248cb63f1e7c84d2663d2d9e17c7` |
| 56 | `theorem` | [toMul_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-zero.md) | 228 | `result-track:d6e0b59886d507c84081a311b45b20afa991c6aaded4c039b4dd7bb6a0b2574d` |
| 57 | `lemma` | [toMul_eq_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-eq-one.md) | 231 | `result-track:4abc725cdb8906fc30331cb1245019e40a80c1f4f9af790569a834788ada7363` |
| 58 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-2.md) | 235 | `declaration-track:603f676d333f0cdd2d61450f1fb1f194559046c4ceab2066aeeafac69c8e9b23` |
| 59 | `theorem` | [ofAdd_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-zero.md) | 239 | `result-track:d906e776ba24e465721b24ee6f8158c3f226eb79cc9abd8bb53e7473b34a470a` |
| 60 | `theorem` | [ofAdd_eq_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-eq-one.md) | 243 | `result-track:de0df1023d66a87dd0b80786bdcf02cfea32a38a100a77f23c1ea90290878fee` |
| 61 | `theorem` | [toAdd_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-one.md) | 247 | `result-track:e1102119a8bc482c991ab65f882e4eaf8246148d924dc9f866635ebe673d615c` |
| 62 | `lemma` | [toAdd_eq_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-eq-zero.md) | 251 | `result-track:bcd5b4d3f431b04bb7a57c1833a0cddd38e7073e869bb089475b6ba420783c96` |
| 63 | `instance` | [Additive.addZeroClass](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addzeroclass.md) | 255 | `declaration-track:82d360bc41a0620ba71c10ddd04e4400aa0e60822cc7177533a87e4164996968` |
| 64 | `instance` | [Multiplicative.mulOneClass](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-muloneclass.md) | 261 | `declaration-track:b9425f53a7a328844e7613f5c2c3138ddc27472da47f1016fd96657a931d6cbf` |
| 65 | `instance` | [Additive.addMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addmonoid.md) | 267 | `declaration-track:525bd2b34f11c1c50d834312c5c73b7485606558ead8456de0dfe20ae9c95ef3` |
| 66 | `instance` | [Multiplicative.monoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-monoid.md) | 273 | `declaration-track:cd6daab5e6dbbfc29a13bfb8cd2224f2b43cd7db5117fe400cbceb0fd653da34` |
| 67 | `theorem` | [ofMul_pow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-pow.md) | 280 | `result-track:b6edec05c9dd9f7d8c4136fe0ad57b300ed17eebb59780394ccdb53cf9bacb3a` |
| 68 | `theorem` | [toMul_nsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-nsmul.md) | 284 | `result-track:0f72880d29946bbc9ee416b1d3a97a5df0983b9596e5ff12252f531f5508a9dd` |
| 69 | `theorem` | [ofAdd_nsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-nsmul.md) | 288 | `result-track:495bedd412333c9bdcb5893839ccdb112c21602bb1708b7a0995509e4679ff37` |
| 70 | `theorem` | [toAdd_pow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-pow.md) | 292 | `result-track:62c0731d95e6900da4b79843e9408c0002272b5abeebbcf29e45c68ada03220f` |
| 71 | `instance` | [Additive.addLeftCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addleftcancelmonoid.md) | 295 | `declaration-track:cb27481756030aaf30aee1c0a8e3e4a980ec472317fe2ac74f2ffb8ccd089275` |
| 72 | `instance` | [Multiplicative.leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-leftcancelmonoid.md) | 298 | `declaration-track:7e8821ae28dc2481ff91117aaa53531038b6de8ec17598584d6456dcb62c9286` |
| 73 | `instance` | [Additive.addRightCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addrightcancelmonoid.md) | 302 | `declaration-track:941f3a1f80eeef166e708571f55ac30949d6957f3a216d22aed71b623295bb9c` |
| 74 | `instance` | [Multiplicative.rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-rightcancelmonoid.md) | 305 | `declaration-track:354ff4b49864e478c674fb4928035d75d564a322cacd5388c441e966a1721170` |
| 75 | `instance` | [Additive.addCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addcommmonoid.md) | 309 | `declaration-track:390cbf826c75e8c771cb7c6489623b6b459c6ad5961a71e0be5a5b0fc8b9ab9e` |
| 76 | `instance` | [Multiplicative.commMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-commmonoid.md) | 312 | `declaration-track:16f2245a2d0c0bbef99cc7b9bf824fd218389c6486bbb191f5db4a91ef4da1f2` |
| 77 | `instance` | [Additive.instAddCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-instaddcancelcommmonoid.md) | 315 | `declaration-track:a1d9088a9a2b8a66b43ec323e54ff1591cf01f7dff1fafc0311862218c9a3435` |
| 78 | `instance` | [Multiplicative.instCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-instcancelcommmonoid.md) | 318 | `declaration-track:390248073258c743f1a2ca1655ff0fdd962cdd97a64865a853ec805eb2f9baea` |
| 79 | `instance` | [Additive.neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-neg.md) | 321 | `declaration-track:7baaa263ea7f2e5db4d5ecd4134c8f9a82242895cdce385374f3947957114f5b` |
| 80 | `theorem` | [ofMul_inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-inv.md) | 325 | `result-track:50f760eab0b4d2f9c8e56287e9f99914611e57232ded47cb53d29cbac7037d75` |
| 81 | `theorem` | [toMul_neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-neg.md) | 329 | `result-track:baffe42102c79ff12de3edbfc6a9ef0cd2c3d2bf00de18a7512a0195eb81f73c` |
| 82 | `instance` | [Multiplicative.inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-inv.md) | 332 | `declaration-track:2a101437aff0473ebe566108dd4130f984658a29b567fec06e433da12d3daf8d` |
| 83 | `theorem` | [ofAdd_neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-neg.md) | 336 | `result-track:455c8fc51adf8873e6c5293e325bb369b2337d59c10e755f52ac32543f63ef06` |
| 84 | `theorem` | [toAdd_inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-inv.md) | 340 | `result-track:99a2e878e21b1bbd7e319cacbb8bed1490b4d47923b4fcaca2cb05958f103a7d` |
| 85 | `instance` | [Additive.sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-sub.md) | 343 | `declaration-track:fda49262f210801db1cf9fc6171b7078f29c53e2bee0bb54b24a54a06b638d5d` |
| 86 | `instance` | [Multiplicative.div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-div.md) | 346 | `declaration-track:086cd788e497fadbcabf7e93d7497866abfd0c55b602fd22f5d19435da9ba28d` |
| 87 | `theorem` | [ofAdd_sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-sub.md) | 350 | `result-track:6d92a48550b336b0683acccd79ca96b6493bb77deddefc5e75249843389acd7b` |
| 88 | `theorem` | [toAdd_div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-div.md) | 354 | `result-track:e9a1c7cd8c09fd2cd18a5adfdc0e3e87ec135babe15d05f6fbf323904bc4ee2b` |
| 89 | `theorem` | [ofMul_div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-div.md) | 358 | `result-track:3b28cc2900c69314f707b162d9494bb74ee410a0908d358381668c600a33ebde` |
| 90 | `theorem` | [toMul_sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-sub.md) | 362 | `result-track:ae892d5e839da7ab7beea0836b92ac850d6f2b5471802adc3859fe775d828ebb` |
| 91 | `instance` | [Additive.involutiveNeg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-involutiveneg.md) | 365 | `declaration-track:6b80965c741abd73a4ac9901aa707521dc29518d81c17aa75d236ab80aa40f7b` |
| 92 | `instance` | [Multiplicative.involutiveInv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-involutiveinv.md) | 368 | `declaration-track:c94ae6db4ccb727fb1e3b91954da6efcb36993b856c12fedc08ea1148f05cf00` |
| 93 | `instance` | [Additive.subNegMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-subnegmonoid.md) | 371 | `declaration-track:8f1de5923e34aa03e2c6361c8e24c2f339169c01e8def23b124ac0401a37de86` |
| 94 | `instance` | [Multiplicative.divInvMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-divinvmonoid.md) | 379 | `declaration-track:530df4fa19fed152be1832cd0933cb8749cfda5c0c88a1f9e961b2f68fbfd809` |
| 95 | `theorem` | [ofMul_zpow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofmul-zpow.md) | 388 | `result-track:c0d54ef3f98fe98a73f6c838269e9ad3e911af3086fa60400e3ef3795fafc617` |
| 96 | `theorem` | [toMul_zsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/tomul-zsmul.md) | 392 | `result-track:ff5b52646df7686a33cb15b98179910758a29cd43111b44978cfed28375259ec` |
| 97 | `theorem` | [ofAdd_zsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/ofadd-zsmul.md) | 396 | `result-track:7f8fee6d5b8efbd268ea4585c3fbdcc3f983dceb86c62c21a92ca8d8fbec9a5b` |
| 98 | `theorem` | [toAdd_zpow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/toadd-zpow.md) | 400 | `result-track:d6a46787bdcce38641a9c07877da3cd4b3d7589de66bab98f6b144b0e8d32183` |
| 99 | `instance` | [Additive.subtractionMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-subtractionmonoid.md) | 403 | `declaration-track:4db4c31c84ab2038eb41d55f90d3e2cc7cb70385ba4112980e2219ba0863c3e5` |
| 100 | `instance` | [Multiplicative.divisionMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-divisionmonoid.md) | 408 | `declaration-track:8bb7f45971db37b7188fd88424d0eb8fde2c498818e3a2ead300195e5732e196` |
| 101 | `instance` | [Additive.subtractionCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-subtractioncommmonoid.md) | 413 | `declaration-track:0fcb489f7934111c8bcca69002705e6d06541325b16d252546d2a4217f6c3d34` |
| 102 | `instance` | [Multiplicative.divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-divisioncommmonoid.md) | 417 | `declaration-track:f375cf8c73a82304e7cdb5433f2b4ef7b4f2fec5639aa7fa3f561f105b6de049` |
| 103 | `instance` | [Additive.addGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addgroup.md) | 421 | `declaration-track:4fc3da261efd6e4eb1ac7fe8711864447fd07334f73b708f8010b71e1ade1b95` |
| 104 | `instance` | [Multiplicative.group](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-group.md) | 424 | `declaration-track:73fa6845b30da449709be2de8ef106b833d34835316a5c3bbe60ebd74a3875be` |
| 105 | `instance` | [Additive.addCommGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-addcommgroup.md) | 427 | `declaration-track:124c18007920df330f9726d4636cdef0a5b8f29b36a1f0f9e84599fc2f9e14f1` |
| 106 | `instance` | [Multiplicative.commGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-commgroup.md) | 430 | `declaration-track:a09cd559a1d67ecc07a163f898a9e1dccc0116001258730d9566485275007a98` |
| 107 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-7.md) | 433 | `declaration-track:b15f282aa5636da5d5cb60fcd76ab5a6ce526c6cea4f5940c5cb96981b3af6f0` |
| 108 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/instance-source-edition-8.md) | 436 | `declaration-track:b977400374a81e4ff28482619cd29123ebd66cd874419408832871b8ded5544a` |
| 109 | `instance` | [Additive.coeToFun](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/additive-coetofun.md) | 445 | `declaration-track:3114e596b5e5a4c4e1582d74bed049d485408d43e5f084b722aa34381bfb7e26` |
| 110 | `instance` | [Multiplicative.coeToFun](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/multiplicative-coetofun.md) | 455 | `declaration-track:b456ab95b1bb9b1172568fd6b28cd0f56ad68240408f8fd8ba06e21d6757fcf1` |
| 111 | `lemma` | [Pi.mulSingle_multiplicativeOfAdd_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/pi-mulsingle-multiplicativeofadd-eq.md) | 459 | `result-track:ad332849a0c0b7ceaed81470eb737975e3458fbd8687466534dd0897cca51dc3` |
| 112 | `lemma` | [Pi.single_additiveOfMul_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasic.lean/declarations/pi-single-additiveofmul-eq.md) | 467 | `result-track:d892584be9927f001689c8f5d4d57b4c316da9ac7fbd73e8182d18cfa7c72ec0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8bbb8c8b1bacbecc174191c73f6224548c63297ed190d64fc836c6046847d46d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant5c084b7f7f93035c9a6118885d721026ffec3374880180fa57356129e68883d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
