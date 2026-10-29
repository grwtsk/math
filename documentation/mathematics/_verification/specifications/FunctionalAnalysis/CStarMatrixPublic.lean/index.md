# Verification target: CStar Matrix Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b93218a6b4e0f9cf948ca82624fb79f93940ecf",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CStarMatrix/Variant29b8d11813411e2628702cddcfd729d0ba1666d3b02bcbea88f3c57178cbc894.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b93218a6b4e0f9cf948ca82624fb79f93940ecf`.

Source path: `GRWTSK/Analysis/CStarMatrix/Variant29b8d11813411e2628702cddcfd729d0ba1666d3b02bcbea88f3c57178cbc894.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CStarMatrix/Variant29b8d11813411e2628702cddcfd729d0ba1666d3b02bcbea88f3c57178cbc894.lean.json)

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
| 1 | `def` | [CStarMatrix](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/cstarmatrix.md) | 44 | `declaration-track:02dc15e5eddbede12006b4c4a9265378d8956e7679537889bc2711eea61e48c3` |
| 2 | `def` | [ofMatrix](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix-source-edition-2.md) | 54 | `declaration-track:e1023b64813172a76ee65f11fd6dc6bc915b60f3c5e73f2caab05e6d1f8249e4` |
| 3 | `lemma` | [ofMatrix_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix-apply.md) | 57 | `result-track:a0747694e95915a62126bf52a837964faf97fe4a17fde48f791b6bf6ecb4c42c` |
| 4 | `lemma` | [ofMatrix_symm_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix-symm-apply.md) | 60 | `result-track:9748a8f4fdeb38f058a6f7011590eea1c5c516abd4a2c7407aebd1ecabdab819` |
| 5 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ext-iff.md) | 62 | `result-track:f3eafd2aa87e73c0d6b605dbe3cad701de10a648663a649b22b209eed4d2f4c2` |
| 6 | `lemma` | [ext](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ext.md) | 66 | `result-track:141ba1d756f8acca76a1e984ff822bc66691914b055e5a7b210811d7e81301c0` |
| 7 | `def` | [map](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map.md) | 69 | `declaration-track:2489305374b23f452df4380d1d49a9656e0f62a04ed2ee9f6a67e32e00171a9d` |
| 8 | `theorem` | [map_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-apply.md) | 73 | `result-track:8dfa979ec4ed62141b046341fd68b5a5657ef83c5a920770364415c860afb8dd` |
| 9 | `theorem` | [map_id](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-id.md) | 77 | `result-track:a3c723836ba7d2578da9c35134f863cf9516b9e6f4899cf9c1f40f774944243c` |
| 10 | `theorem` | [map_id'](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-id-source-edition-2.md) | 82 | `result-track:c8c39a93c50efa270202a954d55552657ced2ef1ffacd846cb3c724c0de7e444` |
| 11 | `theorem` | [map_map](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-map.md) | 84 | `result-track:e71ca7263b159584a7b8ffd292932d120094a83fb712be1fd228316ed615e99d` |
| 12 | `theorem` | [map_injective](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-injective.md) | 87 | `result-track:47f4467d11b69b852ade13e8ced2f9b89b54d6f01776447479a86360d19fb62a` |
| 13 | `def` | [transpose](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/transpose.md) | 92 | `declaration-track:5b80ff4940f2f017145a9d77e8a5767ae9e8aaf89e246ea61e9984367dd13e8f` |
| 14 | `theorem` | [transpose_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/transpose-apply.md) | 96 | `result-track:e555fdd66e638b0a662b7aa5be6de6bfad4e191f5506a5356e1533f3f1a1d649` |
| 15 | `def` | [conjTranspose](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/conjtranspose.md) | 100 | `declaration-track:49830d2edc63d555ed39fd08436bbae0a4d37a67850e915f74d59117d41c1a8a` |
| 16 | `theorem` | [conjTranspose_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/conjtranspose-apply.md) | 104 | `result-track:592b9cc49604ef82ccca50d3a381182a6e46ce85c15a47054c5f2c2f34e8fb9d` |
| 17 | `instance` | [instStar](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inststar.md) | 107 | `declaration-track:03ae8bbb77107b559086661d00d185784da27184ee78bf37812b57c0c4e53e06` |
| 18 | `lemma` | [star_eq_conjTranspose](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/star-eq-conjtranspose.md) | 110 | `result-track:0a32889679e5e05df47977886370ece7457d07c5b24ba7edb70359cb4796f87b` |
| 19 | `instance` | [instInvolutiveStar](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instinvolutivestar.md) | 112 | `declaration-track:f0f96bf271df701a18471e86e0fd3f1ca588e6cd532fb04b267b232095e752f9` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instinhabited.md) | 115 | `declaration-track:ff5e0588900593b68e83c2951e7088aa30c1c721c3a328ff621ae82b52f2959d` |
| 21 | `instance` | [instDecidableEq](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instdecidableeq.md) | 118 | `declaration-track:fc82e8495142671d43b832103f4589a6bbc8af070c96bf6d07e04b7811d7fc67` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instance.md) | 122 | `declaration-track:259f8018e4f694ffd354e96dc861c7b158344cb209efd650c16d7d83c17d7914` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instance-source-edition-4.md) | 126 | `declaration-track:e9b8f913f418b0625f52e6ab8d73d73d88ea5bba58f2ee935dd43f3e653cdf42` |
| 24 | `instance` | [instAdd](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instadd.md) | 129 | `declaration-track:eb5b2263f38ef34307f17059d63b23604f4431804657ac8fafe35b4bac7330c1` |
| 25 | `instance` | [instAddSemigroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddsemigroup.md) | 132 | `declaration-track:75d6dfddc6caaea030912846ced2f6ee57eb2b2905be573e73fb128b8edf966e` |
| 26 | `instance` | [instAddCommSemigroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddcommsemigroup.md) | 135 | `declaration-track:dda829cce9ab3ed81f5d6f415d97009f671a448da1de1c56d75634a6de0ad417` |
| 27 | `instance` | [instZero](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instzero.md) | 138 | `declaration-track:8679c2549f8394801bc668234e927b4e6f0883b978717b21cda42dca54250890` |
| 28 | `instance` | [instAddZeroClass](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddzeroclass.md) | 141 | `declaration-track:eee83628efe97ed7814b0b89ffa62e6a27ac0b89ab3b573096d7822cf8eedd3e` |
| 29 | `instance` | [instSMul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instsmul.md) | 144 | `declaration-track:3a606f3e6126ed1be172690719905ef71ad7b78a87d2a538b64658e86dc8d88c` |
| 30 | `instance` | [instAddMonoid](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddmonoid.md) | 147 | `declaration-track:da4c1b7e00baf67e84bdf7c7744493ffce493b21ce423918df1064e02bdd5b5d` |
| 31 | `instance` | [instAddCommMonoid](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddcommmonoid.md) | 151 | `declaration-track:4e180309e7dfa4f4bf5ed026b6ea391bbbde940bdeb29f84678f60d5e4820130` |
| 32 | `instance` | [instNeg](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instneg.md) | 154 | `declaration-track:56a723ca56ace3413fb4afa5660389e81f733dcf3663b3b35f5dde24efd7b84b` |
| 33 | `instance` | [instSub](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instsub.md) | 157 | `declaration-track:c199cbf64cd8807743184f84bebfa780b93a5b8152a9f341fcbbaa861fec311d` |
| 34 | `instance` | [instAddGroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddgroup.md) | 160 | `declaration-track:393b091a0115e0d32557359bd621403161abd06b0646b1b3538c4a75fd248635` |
| 35 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddcommgroup.md) | 164 | `declaration-track:5307d66af1e9c2768e2efd05de8651e07e873b365b17dd4b7f28ebfccad92a35` |
| 36 | `instance` | [instUnique](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instunique.md) | 167 | `declaration-track:99f8fe13febabc651bd9de1daf7690c6f3f07276e95cc74fe07e0b94394dbf1d` |
| 37 | `instance` | [instSubsingleton](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instsubsingleton.md) | 170 | `declaration-track:2d92631a0b9dc2abd9fa99a1ad247f089ff8704e2dfcefb61999f2952ea3c385` |
| 38 | `instance` | [instNontrivial](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnontrivial.md) | 173 | `declaration-track:9c2147d569fe65403568f8b6234d80e285f6c7d1dc94013eb43c2dcc33ed9737` |
| 39 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instsmulcommclass.md) | 176 | `declaration-track:93896e7aeb540914eb2b0a80356256edde69dc55d0d7c93439d3425e0bccaa61` |
| 40 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instisscalartower.md) | 180 | `declaration-track:e63f39778d6bb299889f75a16271d6006afdb3b267b79cd77956fdb2d01f6e19` |
| 41 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instiscentralscalar.md) | 184 | `declaration-track:2514805014e89df00e7a90bbd208b9b690d421d965b4306fa47514fef72d1ccf` |
| 42 | `instance` | [instMulAction](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instmulaction.md) | 188 | `declaration-track:f900c9591094139f6ec2903eab0b7825634a51d432245938c5bbfcd34bf78808` |
| 43 | `instance` | [instDistribMulAction](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instdistribmulaction.md) | 191 | `declaration-track:30901b766c29103eddfc935301871d8e3b0e2cedc41bbe5e893212a8bff00448` |
| 44 | `instance` | [instModule](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instmodule.md) | 195 | `declaration-track:de9d689d356783aae625e2b1badd72255cdc55e2b905d6af77650854527d1658` |
| 45 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/zero-apply.md) | 199 | `result-track:87e7aca6f15dbf06386e2d8eb8d16c724f4e5b28d21bd669a0ba0e309b6ec930` |
| 46 | `theorem` | [add_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/add-apply.md) | 201 | `result-track:07b742c174d2f4b0d55ee0d118898d71ab3249dea5ef3971e78dbded200f6cf5` |
| 47 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/smul-apply.md) | 204 | `result-track:a0dc3626a41b49a214ced64ce8dd778e5854ffc5bb222f5bd575ec625fef77c7` |
| 48 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/sub-apply.md) | 207 | `result-track:7ee129169778936d2d99c5d213362ac90b5d0fd667a78e1f36c7d65d57c337a7` |
| 49 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/neg-apply.md) | 210 | `result-track:b90e44b883045139479317a6bba6adcfc31418b5611b04933877605917f7a75f` |
| 50 | `theorem` | [conjTranspose_zero](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/conjtranspose-zero.md) | 214 | `result-track:61315c159ec1fe788865d3153283cdfd8e578cdcfcd972df563bf528e54ad22f` |
| 51 | `theorem` | [of_zero](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/of-zero.md) | 219 | `result-track:3f83b71be8e7f1a040202374d923d9e6cdfadb1c06e7d5acf76aca3248eed6c1` |
| 52 | `theorem` | [of_add_of](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/of-add-of.md) | 221 | `result-track:f11c03c960f98bc1badfad1fa6e16d8efdfb81a7359983d426f53e4cc46f5fe8` |
| 53 | `theorem` | [of_sub_of](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/of-sub-of.md) | 225 | `result-track:4a1774a7de4a608c8cb5b273a55100402aee13d4e4d5b494abcdb9b355178ff8` |
| 54 | `theorem` | [neg_of](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/neg-of.md) | 228 | `result-track:af8f3c2ac8211100c6623ec0b6b1ece08aeaae0f7c39edd4d9d330d61022762b` |
| 55 | `theorem` | [smul_of](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/smul-of.md) | 230 | `result-track:0c177f546e38d8daba40458550bf027f64e6cef93bdfe0f62717ba1bec998baf` |
| 56 | `theorem` | [star_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/star-apply.md) | 233 | `result-track:53cb67310da96bca0276921063bca175876ded3c1764bf269669de0d3c3b22a3` |
| 57 | `theorem` | [star_apply_of_isSelfAdjoint](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/star-apply-of-isselfadjoint.md) | 237 | `result-track:81e613fad4d6b941e1ff2f54fc8d13edcd302594d14ac79bde836c7aa80bcf4d` |
| 58 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inststaraddmonoid.md) | 241 | `declaration-track:f1947224135a49d928b00c897877d4a971ff3f1b8d742d0a496633ef27133c09` |
| 59 | `instance` | [instStarModule](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inststarmodule.md) | 244 | `declaration-track:bcd4368acfe31239a24416795e6dff5af1e2ebb8029d94699ea6b59bc7bcdb6b` |
| 60 | `def` | [ofMatrixₗ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix.md) | 249 | `declaration-track:ba6a1cd2e306a228c2583ee646c3f5a3740e92ac9ceacb1a67f944aacf0776e7` |
| 61 | `def` | [mapₗ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-source-edition-3.md) | 254 | `declaration-track:fab734f82f46d4c50e79049776879c212532a9d2c2950291012cf8e2fa47ba95` |
| 62 | `instance` | [instOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instone.md) | 268 | `declaration-track:154e1da0c0976f0746bec9248aa5e4c00b886c9d0f92accce372b7c7f11d479a` |
| 63 | `theorem` | [one_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/one-apply.md) | 270 | `result-track:d35095ff5c23d4b5534197bbfed5a81fe67f775229047c7a12dd867beff27ce3` |
| 64 | `theorem` | [one_apply_eq](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/one-apply-eq.md) | 273 | `result-track:557f90f08bd20e69dc8eb7e53e39bea957371bf5c2f147c98301601ac0c2b897` |
| 65 | `theorem` | [one_apply_ne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/one-apply-ne.md) | 275 | `result-track:766952509b66ab1b4326b4854d4de8c7f651b3b344d1186ccfc0088fed3fa973` |
| 66 | `theorem` | [one_apply_ne'](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/one-apply-ne-source-edition-2.md) | 277 | `result-track:d03ec011691d5cb4f5c404a711e1a5a57566e9fa8cbdc28b8bc78b63b155fcb6` |
| 67 | `instance` | [instAddMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddmonoidwithone.md) | 281 | `declaration-track:13e34641b35b6c7c8a58831826e1485938b7a417c41e887f15783ee6ab1f20b2` |
| 68 | `instance` | [instAddGroupWithOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddgroupwithone.md) | 284 | `declaration-track:f3c9c7593996c47c75f41c3a1ab3cb86c6b8d50d647c6b5fe7ce805ca85bd79f` |
| 69 | `instance` | [instAddCommMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddcommmonoidwithone.md) | 287 | `declaration-track:405c0e5ea9ba319f729d86a0666bc9755c935cb60e7faec4a4da0bf94db46caf` |
| 70 | `instance` | [instAddCommGroupWithOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instaddcommgroupwithone.md) | 291 | `declaration-track:d92fa0a988fb53ef4f289057c4befce35d65f130878dae1dd0a944c319717232` |
| 71 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instance-source-edition-2.md) | 298 | `declaration-track:af1fea11154e01626e1de1582fcb6c5e04b63d6b3bb2aa90c7754218bc1675f8` |
| 72 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instance-source-edition-3.md) | 302 | `declaration-track:d48f7144709dfa0ff0d3e1069ce918b4dd37ec162fb24dcd7d7d5d31bb0e38f6` |
| 73 | `theorem` | [mul_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-apply-source-edition-2.md) | 306 | `result-track:9bde9de4a47f12f52b01d111095d4e37798c3c26ef4afa145e7ba245987dffd9` |
| 74 | `theorem` | [mul_apply'](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-apply.md) | 309 | `result-track:99705ef1a62cc1604a0b593e8379aff5f9e71cee431da6f9b00d30fbb84b2ea8` |
| 75 | `theorem` | [smul_mul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/smul-mul.md) | 313 | `result-track:62a18d222de57ece8099584897e9da51f4a4cbc70fb98fcfe37c61343732e494` |
| 76 | `theorem` | [mul_smul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-smul.md) | 317 | `result-track:6cb9e76920b8171f2de18acf9cd8a3dc7da232495f6f4a486a7f905d199408ca` |
| 77 | `theorem` | [mul_zero](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-zero.md) | 322 | `result-track:7fc5e918a7f7b94fbd30ef1f843a6e2a95b816aec129555d5e95eb8b3ac393be` |
| 78 | `theorem` | [zero_mul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/zero-mul.md) | 326 | `result-track:7135693a50943c23b4a06169b421c7b831d60306803b02cd9eeb78a94dc9ef21` |
| 79 | `theorem` | [mul_add](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-add.md) | 329 | `result-track:7e5d0d6539320361c660580f6b3196c6d08d9a216f7cdcc6cafe83caa1e2b913` |
| 80 | `theorem` | [add_mul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/add-mul.md) | 333 | `result-track:70fce97bab69248ee43a0ce3a23353cd6a7a7f5fc68e4656c21fff964d5d4960` |
| 81 | `instance` | [instNonUnitalNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 337 | `declaration-track:5a488f28a4df922f2ad0849f265016f17b6f3f8fbc2f9b237b4baf3477abf187` |
| 82 | `instance` | [instNonUnitalNonAssocRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalnonassocring.md) | 341 | `declaration-track:ab54992ccb6d261f46cc04693e99162204c82f8a801326dde5a78bd5731cd381` |
| 83 | `instance` | [instNonUnitalSemiring](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalsemiring.md) | 345 | `declaration-track:8526c65b02fdda24f0a34bdac913cd353ca81e737c69a819442ac3c5c98dbae5` |
| 84 | `instance` | [instNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonassocsemiring.md) | 349 | `declaration-track:79f913f1597efbc0d1947d8c212280dccc2860edcd4933f5bb39f7be7a61cdac` |
| 85 | `instance` | [instNonUnitalRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalring.md) | 353 | `declaration-track:f6c20985b814754f9efcb84cea02e2bcf3c5419239de70257d220d73d551265a` |
| 86 | `instance` | [instNonAssocRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonassocring.md) | 357 | `declaration-track:b5aaf04b804b4bbe8b4fecfdfe77b79e6d76f6b56a9af15bd5adcea9a15dcade` |
| 87 | `instance` | [instSemiring](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instsemiring.md) | 361 | `declaration-track:31391d9566da1daf2302a9dd8c073d6c546eb4caf41e5b75c1d6f9c2558ca7e0` |
| 88 | `instance` | [instRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instring.md) | 365 | `declaration-track:6924f31f35a7e52158baaaa3d1aadf6813b3c0a3f7078330b16fd132aa01f1df` |
| 89 | `def` | [ofMatrixRingEquiv](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrixringequiv.md) | 369 | `declaration-track:b112cec6f2c3ec1d7758f3b7ba9ebb11f023738acad8aa18ec96d409d27740fa` |
| 90 | `instance` | [instStarRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inststarring.md) | 375 | `declaration-track:45d9329e3a2b4f2feac1c6715ba6f3dae790e305fea0540ebcb86af88cddd5f2` |
| 91 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instalgebra.md) | 378 | `declaration-track:a58208604e18ed2ff4d9dda887621bd1e860d63a150ff0df797189b9d0aa7e87` |
| 92 | `def` | [ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrixstaralgequiv.md) | 382 | `declaration-track:76833078e0c84a62ec57b73d65a8a2ddef224530240ac8624d4c4f38bab9f275` |
| 93 | `lemma` | [ofMatrix_eq_ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix-eq-ofmatrixstaralgequiv.md) | 388 | `result-track:889fa58a4c8880a659dad8bc170fb417098ddac3eb4759429f41d06596d03b96` |
| 94 | `def` | [reindexₗ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/reindex-source-edition-2.md) | 396 | `declaration-track:e566cb7656d370811df12c2e1c63ea3506e8f5b176079d75ed22c3e6902b7fa0` |
| 95 | `lemma` | [reindexₗ_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/reindex-apply.md) | 403 | `result-track:7244295fc53910aaca843a34d8060a37c074c124b126f3fa268c5a1493c45a58` |
| 96 | `def` | [reindexₐ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/reindex.md) | 410 | `declaration-track:1cde342867a85aca0cb9ec6288fef08b436d7d7f194f4c6c3ad2f173378dff9b` |
| 97 | `lemma` | [reindexₐ_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/reindex-apply-source-edition-2.md) | 428 | `result-track:9688bc1178d2a66f5c2e952eb1eca04bb2fa36f13fd7de2cf0922c4e2906b1e5` |
| 98 | `lemma` | [mapₗ_reindexₐ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-reindex.md) | 432 | `result-track:857bce082be968541607f21ea5039a1b271b4beeab64982c69d8da996eda3f21` |
| 99 | `lemma` | [reindexₐ_symm](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/reindex-symm.md) | 438 | `result-track:88b5c11a4ef7e4765ff70b980076d65ccbc33ad06d92bd3e093df023f1b1006f` |
| 100 | `def` | [mapₙₐ](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/map-source-edition-2.md) | 446 | `declaration-track:c91d63361b1ca51488e84eb2370f330c7fae8e35f1592a973d832fbb56be83e0` |
| 101 | `theorem` | [algebraMap_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/algebramap-apply.md) | 460 | `result-track:7d038e78126d56cd29f3132416557d0d3866bd2b21fd0c8efee2d4480ea7d0eb` |
| 102 | `def` | [toOneByOne](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toonebyone.md) | 467 | `declaration-track:b3378104621d2ceb35758d3a4d764fa064062da07ea7e9a5a8e390ee89d1eb88` |
| 103 | `def` | [toCLM](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm.md) | 487 | `declaration-track:87cb331542179f26a35a1fae454107f5ecee09fb2f53627ad9ff5cf25e41e28c` |
| 104 | `lemma` | [toCLM_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm-apply.md) | 505 | `result-track:baa10869bdad03a617f5049209fe7d2c27a71a80077aab8ea81f9104376603b9` |
| 105 | `lemma` | [toCLM_apply_eq_sum](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm-apply-eq-sum.md) | 508 | `result-track:82226c072e8b49a7f89b142fa5568b212c135ed88599744e02ac06d306ff884c` |
| 106 | `def` | [toCLMNonUnitalAlgHom](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclmnonunitalalghom.md) | 518 | `declaration-track:3cd4fd327b86c17c1d5d09f3bc317c891e38e9126bd5ba913a804b8f7d5a2304` |
| 107 | `lemma` | [toCLMNonUnitalAlgHom_eq_toCLM](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclmnonunitalalghom-eq-toclm.md) | 530 | `result-track:7585314be3818b893ef06cd3a32b28efcc51ebc934036f25fba901b5e643e57c` |
| 108 | `lemma` | [toCLM_apply_single](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm-apply-single.md) | 536 | `result-track:3098b6b3905e706c8a2f69a7cc7198b260b24acf35c4e52a719e10691b1d5d11` |
| 109 | `lemma` | [toCLM_apply_single_apply](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm-apply-single-apply.md) | 542 | `result-track:6c017c5357aa0ce7bcf6c9b33767d704c4af120486f9539e8abca03a6423e966` |
| 110 | `lemma` | [toCLM_injective](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/toclm-injective.md) | 545 | `result-track:c8aa32d2be583add9b22ebe7c58a8269aa5f76a03aeffaba785272ccbcb8d8ef` |
| 111 | `lemma` | [mul_entry_mul_eq_inner_toCLM](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/mul-entry-mul-eq-inner-toclm.md) | 557 | `result-track:c55606a3fe45f5c7ad189a44068ec0d3a5f24e06821dc9d63fa803eb0dde6f03` |
| 112 | `lemma` | [inner_toCLM_conjTranspose_left](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inner-toclm-conjtranspose-left.md) | 567 | `result-track:c6bac2f5c0e6a3a76e5a4e9f7f5fa149aca6aa29b0fd04ea9be2cc0a1e804219` |
| 113 | `lemma` | [inner_toCLM_conjTranspose_right](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inner-toclm-conjtranspose-right.md) | 575 | `result-track:a47e4dbed6d08f66c6c6c6214e8bd338970891e82ef2b1c8e54b2d109051aef4` |
| 114 | `instance` | [instNorm](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnorm.md) | 581 | `declaration-track:7029e0c1a8fbccf5c2b37349300138737b3ee470a0c27f8c5f5e042fe206d4e7` |
| 115 | `lemma` | [norm_def](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/norm-def-source-edition-2.md) | 584 | `result-track:7a93e232d5f81bc1851ea0664446afa8199b4e85c494cbc670188560374a9c46` |
| 116 | `lemma` | [norm_def'](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/norm-def.md) | 586 | `result-track:664567ab1310c3b4b9ce71fece98aab5a3882dc33a35fba5fb1c0c81849e644c` |
| 117 | `lemma` | [normedSpaceCore](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/normedspacecore.md) | 588 | `result-track:7037a73e7014b0830d974128740c07611f7bab82dcb1d2024ad2c60cf8506c41` |
| 118 | `lemma` | [norm_entry_le_norm](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/norm-entry-le-norm.md) | 596 | `result-track:ec22c2d15febf0faad551a0263334de07cfea0819f15cb31af552edadbcefbda` |
| 119 | `lemma` | [norm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/norm-le-of-forall-inner-le.md) | 609 | `result-track:2bf650b024a8687d671802d07ee16b12b72e0d8ae9b4e2cc598391c197b408d2` |
| 120 | `instance` | [normedAddCommGroupAux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/normedaddcommgroupaux.md) | 642 | `declaration-track:18e5866623303fedf20c49b0957c8ba386bc3179116e43e4628fa56d607e72a0` |
| 121 | `def` | [normedSpaceAux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/normedspaceaux.md) | 647 | `declaration-track:65d0328699ae6bb6630efceedd56ab5bf383f3220f18251eebc84dd62387de39` |
| 122 | `lemma` | [nnnorm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/nnnorm-le-of-forall-inner-le.md) | 655 | `result-track:2e70076eadd1c4d5cbf2e17fdbc4928389574c296c84f4b16f0d522a61a99169` |
| 123 | `lemma` | [lipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/lipschitzwith-tomatrixaux.md) | 660 | `result-track:957018ae0900e66b5012a85d2bc1358edb040f58dbe98974c8283cb00d1c135a` |
| 124 | `lemma` | [antilipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/antilipschitzwith-tomatrixaux.md) | 667 | `result-track:cbfa61ebbb6eae1f86e5b68ec9fcfd71234e5d47ebfec1c4077acb3acb590f1f` |
| 125 | `lemma` | [uniformInducing_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/uniforminducing-tomatrixaux.md) | 689 | `result-track:6e5894686b2691452aff3d39c29529fcbce0b674de3dbc0fd9e95b3060c4efd3` |
| 126 | `lemma` | [uniformity_eq_aux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/uniformity-eq-aux.md) | 695 | `result-track:d5fa7af713098557b1f9fae261121eb9a3661ccbd691c31547963e983ae2acf7` |
| 127 | `lemma` | [cobounded_eq_aux](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/cobounded-eq-aux.md) | 706 | `result-track:cdb874a16e3bdd00b0d08d6c6d4a2096fecb0fd3e589e4f34bc124e5f5539888` |
| 128 | `instance` | [instTopologicalSpace](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/insttopologicalspace.md) | 726 | `declaration-track:1b6525fc716b7f03b1189b3a562f30e87367f5926f857833f2613642bc8e2823` |
| 129 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instuniformspace.md) | 729 | `declaration-track:6dc571e58aa2a21b136d0b58b3e3f407b570f6f230b83acc2ac211274943a4b5` |
| 130 | `instance` | [instBornology](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instbornology.md) | 733 | `declaration-track:2b7d980ded36889a64fa43e0f048583fcb492cb86b1a650991939d0faddb3a39` |
| 131 | `instance` | [instCompleteSpace](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instcompletespace.md) | 736 | `declaration-track:9137ec9c7c9b112bb1ea1c427415e2fc98a23a4ea4ff3ed64bfab32d920fe099` |
| 132 | `instance` | [instT2Space](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instt2space.md) | 739 | `declaration-track:dc6c59dfc22a01521b744d8e3599d8201ffadb6171b7d0aa5681a0e9339cbabb` |
| 133 | `instance` | [instT3Space](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instt3space.md) | 740 | `declaration-track:8668975f7149989bdc8b138b161147ec44c84c5f6c4474365416ca8c9b43fc15` |
| 134 | `instance` | [instIsTopologicalAddGroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instistopologicaladdgroup.md) | 743 | `declaration-track:117fd371bd4422a8ead3a66d2c08ef8838085ae6d472cbd849b1d41112dc9b8a` |
| 135 | `instance` | [instIsUniformAddGroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instisuniformaddgroup.md) | 746 | `declaration-track:daf46c75ccc26622be028e2fb8420a9551b4d4908699e4b0dbf7d90c96067698` |
| 136 | `instance` | [instContinuousSMul](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instcontinuoussmul.md) | 749 | `declaration-track:64bd66e80ce4d390685722828bcf275ac2d6cfda1fb94a5f69a516c440bce781` |
| 137 | `instance` | [instNormedAddCommGroup](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnormedaddcommgroup.md) | 753 | `declaration-track:76ab78e45296727d34a353f5cea3b5e2782efd646c67b8e9c45f73207860dbf4` |
| 138 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnormedspace.md) | 759 | `declaration-track:5263896a50b158ea360eadfb7d0b6265aeec8bedfe9c72bc5b9831be88bc6a72` |
| 139 | `instance` | [instNonUnitalNormedRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalnormedring.md) | 762 | `declaration-track:5483a7944426cf52573f19b7756642b8421efa4b96053605ad459b8736c619b7` |
| 140 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instcstarring.md) | 770 | `declaration-track:aa2d3f4a1a340086dd4d3a7789d3977b0daca0e20995170476aa5c53608cf66f` |
| 141 | `instance` | [instNonUnitalCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnonunitalcstaralgebra.md) | 798 | `declaration-track:2413f5d07f7ab8739696b2183f099bda3031ea444ea3867f1e64ea6bb43ffc8f` |
| 142 | `instance` | [instPartialOrder](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instpartialorder.md) | 803 | `declaration-track:86b62ef82423e3beb623740e67ad2785b72e458679b6e9c2ee2cd0c2e6e8ef4c` |
| 143 | `instance` | [instStarOrderedRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/inststarorderedring.md) | 805 | `declaration-track:de8cf6100986b53801fcbb2e19f4c352cebeee8ffce3e3cc3cfc9ab4531b60a9` |
| 144 | `instance` | [instNormedRing](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnormedring.md) | 816 | `declaration-track:f083f4fbb1416eab6a61c7c25436b537cd51c220e922f25f7d35c3b69224065e` |
| 145 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instnormedalgebra.md) | 820 | `declaration-track:0cb68b30bf975b0ac8b4322b071a784ce22794d69499469f3effb04de192dce1` |
| 146 | `instance` | [instCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/instcstaralgebra.md) | 824 | `declaration-track:d621538b6b771eaff67c4ddeabdf8c16f60b74c8319bbc477f8d1576b0d5da57` |
| 147 | `lemma` | [uniformEmbedding_ofMatrix](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/uniformembedding-ofmatrix.md) | 832 | `result-track:66110ccc7a7a83c52767c45d5712f5b69cbc62716ac4980eef258c58c0951762` |
| 148 | `def` | [ofMatrixL](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrixl.md) | 838 | `declaration-track:5de57218d9dc19d4a65133551143c3179449906b8cc8f856933f1a380eb33178` |
| 149 | `lemma` | [ofMatrix_eq_ofMatrixL](../../../../FunctionalAnalysis/CStarMatrixPublic.lean/declarations/ofmatrix-eq-ofmatrixl.md) | 843 | `result-track:aaf8aa49036b0a9aa59a3d16328276bf1b143c1b142ba6f1c81ccaff2136cd98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=260f1f98fc95d1e5fdcf51a2a2537c93ec7eff7ea4917786ef870a2564fb6c38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CStarMatrix/Variant29b8d11813411e2628702cddcfd729d0ba1666d3b02bcbea88f3c57178cbc894.lean","GRWTSK/_verification/specifications/Analysis/CStarMatrix/Variant29b8d11813411e2628702cddcfd729d0ba1666d3b02bcbea88f3c57178cbc894.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
