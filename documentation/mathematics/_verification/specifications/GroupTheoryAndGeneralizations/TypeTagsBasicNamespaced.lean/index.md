# Verification target: Type Tags Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55aed92411b5d969aa72977c6a861d322cd60891",
  "lexical_observation_count": 112,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55aed92411b5d969aa72977c6a861d322cd60891`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pi.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Torsion` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.FunLike.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Iterate` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Set` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AssertExists` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Additive](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive.md) | 49 | `declaration-track:928705b2d90b77cfaadd21f4306cbdb5b5df29459d3df456f597820eb99b421f` |
| 2 | `def` | [Multiplicative](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative.md) | 53 | `declaration-track:01932b5fd85acbe829cc79be43e9ba75a6bb1d986a0c42ba9532b68b9d03c135` |
| 3 | `def` | [ofMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul.md) | 58 | `declaration-track:90cacbb575db4f610ee6f5d123abe3ceb867aebbd32d3d6897060caf82991cd6` |
| 4 | `def` | [toMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul.md) | 62 | `declaration-track:5a49ad5d00ec94de648bbf3a4e014f6eede7226a6b52c1de982a354b7a3f8070` |
| 5 | `theorem` | [ofMul_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-symm-eq.md) | 65 | `result-track:9de3a9bc4a8a763366d0fd83cbe9872153bc7f95fcecc1f57aabb5e44d22fd9c` |
| 6 | `theorem` | [toMul_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-symm-eq.md) | 69 | `result-track:101007cb172f9ec2146b31b8791797be136c83ac1dc50deaf77e9a70bb377614` |
| 7 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ext.md) | 72 | `result-track:281620283d3f474162e93692dac2d379665178ccc2669aace3aee527467bf951` |
| 8 | `lemma` | [«forall»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/forall.md) | 75 | `result-track:908a1b8d82d21e618ada498b7e4e205a9de4e5c6cbd64e7d164bd28eceafac64` |
| 9 | `lemma` | [«exists»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/exists.md) | 78 | `result-track:94308f9222b05e7c8e69ad786d7f3144d174b6f73e0da20113a418190dd4c52c` |
| 10 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/rec.md) | 82 | `declaration-track:083af310732325464d2c38366e135cdddca76dc65f1ac8c9c32034851a606df1` |
| 11 | `def` | [ofAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd.md) | 90 | `declaration-track:80788e8ec2149eb47e0cfae2f16d93096a4f6fb4a59ca09d96296d74677fdfa4` |
| 12 | `def` | [toAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd.md) | 94 | `declaration-track:a8d9628be623c046a0e1bb4750d4ae1c4b94c16c041221efab715598e48e6465` |
| 13 | `theorem` | [ofAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-symm-eq.md) | 97 | `result-track:2c38b78e302997de4e76588d921b680d52f334a7ae94fbb19a95d598331781c5` |
| 14 | `theorem` | [toAdd_symm_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-symm-eq.md) | 101 | `result-track:cf247446410907ec90e16f0007d843712f9eed319adde19cf4656e21511d5697` |
| 15 | `lemma` | [ext](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ext-source-edition-2.md) | 104 | `result-track:2964c971ebfa7f290c3c8e6eb932e63ddbdd46872b18a834c50d1f2e2c695315` |
| 16 | `lemma` | [«forall»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/forall-source-edition-2.md) | 107 | `result-track:e09942842319c9edc08b6c18bfd2f30ba721bb0229db69a71893542963d114fe` |
| 17 | `lemma` | [«exists»](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/exists-source-edition-2.md) | 110 | `result-track:b88bf2138e702701775370df8dfd12c3245f684c4a11764b9ce1d483119879c1` |
| 18 | `def` | [rec](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/rec-source-edition-2.md) | 114 | `declaration-track:c2da793445d830f1ef15df599aa226f17bb1a46e497a4d05004e17837b88a4fc` |
| 19 | `theorem` | [toAdd_ofAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-ofadd.md) | 123 | `result-track:f572c296e27fd5a2f136c46b54a224749275a77830147192a7368f56e95bfb7f` |
| 20 | `theorem` | [ofAdd_toAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-toadd.md) | 127 | `result-track:e31d84f0db0cf1ec67f72d5ea7f582ecb954eb90a7c2e7c1a520127d97a51d1d` |
| 21 | `theorem` | [toMul_ofMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-ofmul.md) | 131 | `result-track:470a734fcb8faaf9b0ed458df6ac62a0e9833ed0f982ab9264468071c6b60fe2` |
| 22 | `theorem` | [ofMul_toMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-tomul.md) | 135 | `result-track:3a7b560039262e356bd43529723bf27b18941f7e4e1d6e0089dcd9ca78e79c02` |
| 23 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 138 | `declaration-track:9e12a31abbef4dafadefcdd36d5836186d20dbffdc3627c476b3b99fcd9ae4e7` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-11.md) | 139 | `declaration-track:c61731970c6af09647b1346ec453135597c79d87c71ef777d2cec624383c612e` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 141 | `declaration-track:559496ae65a96efc7a6de228e6e28bada14b7b0a24d707125b9297a2def83d8c` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 144 | `declaration-track:17dde5e45927a6967bc36babea98de9aa6934a9594c2f9cdfad021e326930942` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 147 | `declaration-track:4b3ce09aa9b14c1aa93c3cf37d6d51e06c7a5d88c9de1d21a1b87b1135539acc` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 148 | `declaration-track:518eb28f56606f1e131c77c005860972abc1a29367e5eadb344dc86d65fb02c4` |
| 29 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 150 | `declaration-track:c35b082ce139e892d22fa3e52ce4815cfe104ae7e2255141bd07e633181dd1fa` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance.md) | 152 | `declaration-track:0ecf0213948b186b2c0a1bd0088aa9b64e29f27a4a428dd21d9fe2105187d5a1` |
| 31 | `instance` | [Additive.instNontrivial](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-instnontrivial.md) | 154 | `declaration-track:13c76ac63f9ddd8ba4aec55c305b51274cda5d5c15e2262455aee6caf783623e` |
| 32 | `instance` | [Multiplicative.instNontrivial](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-instnontrivial.md) | 157 | `declaration-track:9c2255a8068050b449ab40d234c26180bea612fcff117348c50898b2bb77d348` |
| 33 | `instance` | [Additive.add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-add.md) | 160 | `declaration-track:996a24e86b67a20df14492fcf2d0f8e202628909e6ab81b58af38c8fe16af83e` |
| 34 | `instance` | [Multiplicative.mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-mul.md) | 163 | `declaration-track:ce1de75169018052f8961e234b07a26779669eb1bd5fd7b4cd3b230e3df7cfa0` |
| 35 | `theorem` | [ofAdd_add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-add.md) | 167 | `result-track:419a09b60a167925a1da2a12b6abbb1d781e88d8c8f3cb79d5b84be3146c6a7d` |
| 36 | `theorem` | [toAdd_mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-mul.md) | 170 | `result-track:8cebb1cea7fd412e6a6dc74ad395a0377677986501103a6fac8b6a2e744ba454` |
| 37 | `theorem` | [ofMul_mul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-mul.md) | 173 | `result-track:cf01ef32bb79d420ade26b353ad2734bb401299ac4c1434d5a216f2ccefc5475` |
| 38 | `theorem` | [toMul_add](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-add.md) | 176 | `result-track:3a70d6762d4199386e36d848c989ffcb85473b485cfd9a736dfcbb24a4e4da13` |
| 39 | `instance` | [Additive.addSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addsemigroup.md) | 178 | `declaration-track:caf10309d7d7f820a5f69373140c7bbd3efea80a6f8bc07763b880e2b888e455` |
| 40 | `instance` | [Multiplicative.semigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-semigroup.md) | 181 | `declaration-track:537b44885fe7a567aa2a6327d53914dc68ae11a567ad280b0e22421382064c47` |
| 41 | `instance` | [Additive.addCommSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addcommsemigroup.md) | 184 | `declaration-track:235affa9fa0a300008d8d54533657f277381a74436d0f1666561d38f868bc18d` |
| 42 | `instance` | [Multiplicative.commSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-commsemigroup.md) | 187 | `declaration-track:a534b1d29089d126fadd25eaccd2a36990cafc6f93034e9be5a88739df665fb8` |
| 43 | `instance` | [Additive.isLeftCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-isleftcanceladd.md) | 190 | `declaration-track:816c3dc08a658ac7493d0ee02016abe7544d4f4dadfe321d53e0e17fe21ddf9e` |
| 44 | `instance` | [Multiplicative.isLeftCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-isleftcancelmul.md) | 193 | `declaration-track:94afa439887e7f908116c16b41995720de9a9ad21f8e9984c6a1024cb970c127` |
| 45 | `instance` | [Additive.isRightCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-isrightcanceladd.md) | 197 | `declaration-track:d04d58fa04a6451fa8afcf857bf5d12859beadbf881bd764afa14b0697c052d5` |
| 46 | `instance` | [Multiplicative.isRightCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-isrightcancelmul.md) | 200 | `declaration-track:a6c3b29d09f4aa3dacc07480ea57452d337db1910c170a67b12c1426b74c3aa2` |
| 47 | `instance` | [Additive.isCancelAdd](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-iscanceladd.md) | 204 | `declaration-track:ba84b6690e1235fb222e9260d171b189adee20a916ae19e1e61e2c1309e45b03` |
| 48 | `instance` | [Multiplicative.isCancelMul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-iscancelmul.md) | 207 | `declaration-track:78aabc7d1675a642c50c3bfb14892eab44badd1ee41129bd87dcbcb8d3ec37f6` |
| 49 | `instance` | [Additive.addLeftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addleftcancelsemigroup.md) | 210 | `declaration-track:e0eeec881cc24fc9e05e2ed06a9654d9cf1a1160be2c338eac9c4730350bc17a` |
| 50 | `instance` | [Multiplicative.leftCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-leftcancelsemigroup.md) | 214 | `declaration-track:03f6d813476fc6e3254b00c239526ee5f11cea70daf8015659926e7cea7cd6dd` |
| 51 | `instance` | [Additive.addRightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addrightcancelsemigroup.md) | 218 | `declaration-track:4cde83e2c98a72cd0fc3dc590f764c002959807dcf7e1c04739e7972e8adcc25` |
| 52 | `instance` | [Multiplicative.rightCancelSemigroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-rightcancelsemigroup.md) | 222 | `declaration-track:0c31f895cd5b70a617d2d1958647b9599f81b8cc12ac045ac4618b42e5a16b3c` |
| 53 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 226 | `declaration-track:84b55da12c85e70068246be01065984dcd3bbbc7cbeff845ce9955916cd57406` |
| 54 | `theorem` | [ofMul_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-one.md) | 230 | `result-track:882e8c0f604b1c02ceb3a5019311f33f0af0d9306b663ec71b7330775441d351` |
| 55 | `theorem` | [ofMul_eq_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-eq-zero.md) | 233 | `result-track:42dc27c79fc70d7f2f8d64620a84b016ad00ee7fd04a7faeb1d20866d0f81955` |
| 56 | `theorem` | [toMul_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-zero.md) | 236 | `result-track:1a1090fd0f392aa6e39a982f258e13b2a370c6d3fff9082fe21ce176ad4e213b` |
| 57 | `lemma` | [toMul_eq_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-eq-one.md) | 239 | `result-track:1d48cf94f7ff3ed6b0d17ba38de47075202599e7375db41698d8fc3606dd7c20` |
| 58 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-10.md) | 243 | `declaration-track:c4935895821490ad1f6bb6a39c64f1ddcc3db98535cd16f1d30383e98425dc11` |
| 59 | `theorem` | [ofAdd_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-zero.md) | 247 | `result-track:135ebeeee8539015e976a0a813b4bab37fede64b461cdb0b8491fc04f7fc4f8e` |
| 60 | `theorem` | [ofAdd_eq_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-eq-one.md) | 251 | `result-track:ed3e9a5d655895d12941a976fbd7e6d993475ce972652ebc8f5ffa53ad9256bd` |
| 61 | `theorem` | [toAdd_one](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-one.md) | 255 | `result-track:9c4b0636670f76abeb3032933b3017b1d6b04b20816c27219b8ae4f1bc9ded35` |
| 62 | `lemma` | [toAdd_eq_zero](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-eq-zero.md) | 259 | `result-track:f4aca23b3be7dd4d558f81cbba1ee3bd080e855336d552bd2ccab4b0e8f06fbd` |
| 63 | `instance` | [Additive.addZeroClass](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addzeroclass.md) | 263 | `declaration-track:587093c20a523f0530156319c3ba11ed89d971f8fe0cf7c1b10080bf00209fb2` |
| 64 | `instance` | [Multiplicative.mulOneClass](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-muloneclass.md) | 269 | `declaration-track:696af36bead8a889618897c832577b2a1715eae757afe942cd9a60781d910547` |
| 65 | `instance` | [Additive.addMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addmonoid.md) | 275 | `declaration-track:43144a71b935e5ca8675cde965b01e8b53ff027b0ee306b6ade192c69664ae47` |
| 66 | `instance` | [Multiplicative.monoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-monoid.md) | 281 | `declaration-track:0cb9b4f059d99f5d0e46992e2bb09849bf9c00a478d8041117d8a011e01685d1` |
| 67 | `theorem` | [ofMul_pow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-pow.md) | 288 | `result-track:f50fc1cb9d62b3601b11169ea9fddea8a6a53f7bb7228a1c94975b277358ae2b` |
| 68 | `theorem` | [toMul_nsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-nsmul.md) | 292 | `result-track:a3415f78415bb4972ff1a91cc457830346caa563a87e1d739e52626884dbfdaa` |
| 69 | `theorem` | [ofAdd_nsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-nsmul.md) | 296 | `result-track:9e3f553e3f62cb52a234dc448561d02bb4164e36e9fa1d9fc0612af0644e2a10` |
| 70 | `theorem` | [toAdd_pow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-pow.md) | 300 | `result-track:11409b871e30339588f9bc34ef55faf988d861da13b57b5754d97bfd89205f21` |
| 71 | `instance` | [Additive.addLeftCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addleftcancelmonoid.md) | 303 | `declaration-track:3f69fa2c016cd69d8b7089d44f2a5c1faee886d8ec090802f181f8fce2829f44` |
| 72 | `instance` | [Multiplicative.leftCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-leftcancelmonoid.md) | 306 | `declaration-track:50714ebcb39742cff670ead895cc0d52d7e85fa3261e27693fc7c695a6e88757` |
| 73 | `instance` | [Additive.addRightCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addrightcancelmonoid.md) | 310 | `declaration-track:c06362bcf6ad7f81609f9291e3bf1c442481273e5e9133bd41c8a42b94b8f253` |
| 74 | `instance` | [Multiplicative.rightCancelMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-rightcancelmonoid.md) | 313 | `declaration-track:3b16489f4843894b9c9f4cc5655d8843c6ac4ab8024198ab89d6cce1d03aaaaf` |
| 75 | `instance` | [Additive.addCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addcommmonoid.md) | 317 | `declaration-track:5f08989a3f6a157d2476f474cb848e39f5beb77e3ab8bb74c47b3af1b08fe67f` |
| 76 | `instance` | [Multiplicative.commMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-commmonoid.md) | 320 | `declaration-track:645ac11f18fbd3f66c8452b5774dd942a867ab1cab69ba8971ec2622b7799a8a` |
| 77 | `instance` | [Additive.instAddCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-instaddcancelcommmonoid.md) | 323 | `declaration-track:2f33e9c20f7182933a467d6725c0d75eb7784a51fdbc7283ccd1cc28955417c5` |
| 78 | `instance` | [Multiplicative.instCancelCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-instcancelcommmonoid.md) | 326 | `declaration-track:4338e0944479c7b5acf621c7d108fa77d148cef96fede83e0d3d0496f5cfe6ee` |
| 79 | `instance` | [Additive.neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-neg.md) | 329 | `declaration-track:9ebca01db3dd81f4ba6cdc2642feedf7fdb9dcc24c34fd71df4ef0db5900a7d5` |
| 80 | `theorem` | [ofMul_inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-inv.md) | 333 | `result-track:b01d06871b38cef8be7ed219cff41327d1fd51e76b643ae4f380a2d206594a7e` |
| 81 | `theorem` | [toMul_neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-neg.md) | 337 | `result-track:26692fa95ee9f822a5791ff88efe2062f1f8cf092cf676a2c7b16454046a2ef4` |
| 82 | `instance` | [Multiplicative.inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-inv.md) | 340 | `declaration-track:5c4be70dfb6a1b4684dd206155f8fe2f98c40d1d8fa60745d7b58491003c50d2` |
| 83 | `theorem` | [ofAdd_neg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-neg.md) | 344 | `result-track:ba365baafe7f03c723177ec602611e35da78c2115e583d08113513746b1efb80` |
| 84 | `theorem` | [toAdd_inv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-inv.md) | 348 | `result-track:10104f1837b8ee72f64da27c547cbb5204d06219d9299dc271773963fdb277f9` |
| 85 | `instance` | [Additive.sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-sub.md) | 351 | `declaration-track:92c9cc8580a4745f7da685f88afb38589fa4a371e11b845c28896414a80dc633` |
| 86 | `instance` | [Multiplicative.div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-div.md) | 354 | `declaration-track:3861b13019a5ac9cd4666bcd18ffd026b7a47074234a37e4139811198be133d8` |
| 87 | `theorem` | [ofAdd_sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-sub.md) | 358 | `result-track:0f21366ca0a9d307e95d828763581165275bdba6b5c6e7695456c8be2f4f2975` |
| 88 | `theorem` | [toAdd_div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-div.md) | 362 | `result-track:cefaf2973122df9eaa29d036c2f9545de51bc5100135d8bbf73e40bbee558a78` |
| 89 | `theorem` | [ofMul_div](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-div.md) | 366 | `result-track:0c0c8e55ea90080526e53f30a943a84fcc85e1e2eb1b73dc085c3d4af9c94135` |
| 90 | `theorem` | [toMul_sub](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-sub.md) | 370 | `result-track:63a6a85b99ea5e663ef31d9bf9977f2697b335d437c14f83b1701db96aa93e01` |
| 91 | `instance` | [Additive.involutiveNeg](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-involutiveneg.md) | 373 | `declaration-track:7820b1fdc5731fe23fcb45849f3da5331d0226f34b06962fbd632b3f35585d7f` |
| 92 | `instance` | [Multiplicative.involutiveInv](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-involutiveinv.md) | 376 | `declaration-track:09ca96148d3430b28fbdf3faef9b1c1eab7af5cd49149639fd31424d38d62f1e` |
| 93 | `instance` | [Additive.subNegMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-subnegmonoid.md) | 379 | `declaration-track:76186f648ba4b2489e75f190ead71c5b775fa34bf83042c0c77c74e68ee47aa4` |
| 94 | `instance` | [Multiplicative.divInvMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-divinvmonoid.md) | 387 | `declaration-track:4f490a97a2f4ce9a229778b56be2ee8f445db29b0eb413a6c426db612b33adc8` |
| 95 | `theorem` | [ofMul_zpow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofmul-zpow.md) | 396 | `result-track:9e2d262d2a219d8c9acea1ca9414b7e266b09b04dd8a5e39f75dac43840b8e0c` |
| 96 | `theorem` | [toMul_zsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/tomul-zsmul.md) | 400 | `result-track:097c5ab95b9589e665b57ef2bacb3fe32213567afd1cc8ba780d813b0c8114b2` |
| 97 | `theorem` | [ofAdd_zsmul](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/ofadd-zsmul.md) | 404 | `result-track:8d3d2f8cc9545e1b27be02644d6f740b91bcb6043e6c252cbd5d58aa97f5ab6f` |
| 98 | `theorem` | [toAdd_zpow](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/toadd-zpow.md) | 408 | `result-track:a5b7a0ccd1336daf800edc2e39df798b63234c1b9450675f8bbb717ab3c5461d` |
| 99 | `instance` | [Additive.subtractionMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-subtractionmonoid.md) | 411 | `declaration-track:894c8ec7a7ca0e567c166b302305a2b424a04a9108bb09b973e53c6afb2e5d87` |
| 100 | `instance` | [Multiplicative.divisionMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-divisionmonoid.md) | 416 | `declaration-track:6be55a23933d1bce0e2c465cb6ed5e2bcbb9574c54c9b79cac369f1d7fd35fa5` |
| 101 | `instance` | [Additive.subtractionCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-subtractioncommmonoid.md) | 421 | `declaration-track:d554535fea58253ea44243361f3a983810b7417bba25d4c3124d82f838f3e55b` |
| 102 | `instance` | [Multiplicative.divisionCommMonoid](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-divisioncommmonoid.md) | 425 | `declaration-track:02a31ada34be18b6698944a6606c6c9748bedce738c3a83c33a2435107d25b4c` |
| 103 | `instance` | [Additive.addGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addgroup.md) | 429 | `declaration-track:a4ba27ed4f7731b769cf8d3ca7345813bc287094ffe84780aa37708322b6b380` |
| 104 | `instance` | [Multiplicative.group](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-group.md) | 432 | `declaration-track:0fa2237137b2ff98398847092db26aa193cb9a48a1fda3b3da8f6ff421138efa` |
| 105 | `instance` | [Additive.addCommGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-addcommgroup.md) | 435 | `declaration-track:0f3c0aa407371c0e207ddb5bd0a615237ac6bf6ec62554858f255595cf8ecc0c` |
| 106 | `instance` | [Multiplicative.commGroup](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-commgroup.md) | 438 | `declaration-track:9561f496ab9bf15fe7abb829ee1ebf75424e92dfe3a148a8f6a325153bbd9733` |
| 107 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-12.md) | 441 | `declaration-track:ecbb85c027f119c7493d386b55103cd41e283881cc8e1088551d30c95f6489b8` |
| 108 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 444 | `declaration-track:2b3ae412197ef21c22712ee6d02c4ffc85a145debeb647f3e1969e622a63f7c0` |
| 109 | `instance` | [Additive.coeToFun](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/additive-coetofun.md) | 453 | `declaration-track:9d2f55973e26565deb90143a6154682c9e4096fdaeb2190ff4d028c7a4d9fe61` |
| 110 | `instance` | [Multiplicative.coeToFun](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/multiplicative-coetofun.md) | 463 | `declaration-track:9422ab93084550e8dd253228913dec0d829b245282d8ad70b50947bd13397f96` |
| 111 | `lemma` | [Pi.mulSingle_multiplicativeOfAdd_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/pi-mulsingle-multiplicativeofadd-eq.md) | 467 | `result-track:283b071843f77bfd6fb3817d89d4fb9e5e08347a62c91404dacbd4a51ab0a52c` |
| 112 | `lemma` | [Pi.single_additiveOfMul_eq](../../../../GroupTheoryAndGeneralizations/TypeTagsBasicNamespaced.lean/declarations/pi-single-additiveofmul-eq.md) | 475 | `result-track:b2703d017288be273f592c605f9cc5bd8aa79d562c8b813acaf3b305721a54c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=607eaf9815cdfb9cd524c2273f446c468f7bc46ab4fc5e39cff39f50d4d6e8c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantd565fea129cb4ad6957239cf0fcb55a67e78c0d999f3b99a2c82da1f3cca0415.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
