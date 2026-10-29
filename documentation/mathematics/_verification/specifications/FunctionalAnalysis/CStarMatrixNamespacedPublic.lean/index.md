# Verification target: CStar Matrix Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be1a38097998dad5c98fe948b6b723db534af057",
  "lexical_observation_count": 149,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be1a38097998dad5c98fe948b6b723db534af057`.

Source path: `GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean.json)

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
| 1 | `def` | [CStarMatrix](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/cstarmatrix.md) | 52 | `declaration-track:91b878e8af80809e0bd4a2d0d1fad3ef7f4670e1c60bd621370934c7e74a41d2` |
| 2 | `def` | [ofMatrix](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix.md) | 62 | `declaration-track:8a2185b00e90b62870ed307c8ae56de3fc1a77e8766547a5e8881cd811c78463` |
| 3 | `lemma` | [ofMatrix_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix-apply.md) | 65 | `result-track:50987be147969be182fa91834390025349a61871a197935923843d88d1d368c3` |
| 4 | `lemma` | [ofMatrix_symm_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix-symm-apply.md) | 68 | `result-track:2200da84966208169e0fdc0687be4661efad32106df5ad8d3af1a3d7bfffdcc7` |
| 5 | `theorem` | [ext_iff](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ext-iff.md) | 70 | `result-track:8850ec41642e2b0e669d584030758119cf854d8af364088f1acdfe3f07b1c4a4` |
| 6 | `lemma` | [ext](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ext.md) | 74 | `result-track:50224a8fd0a764cf0686d9ded25dc650178f515f7139ebfe642ab68c867d173b` |
| 7 | `def` | [map](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map.md) | 77 | `declaration-track:10bb629879eeee72012d2dae6fc19b732d595761d9d4b7b925cdbeacdc5cbb57` |
| 8 | `theorem` | [map_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-apply.md) | 81 | `result-track:70eb1e5cd0ff9758292c6ee539f0a6511ceeb6a54a57148c93a0d4dc94e10843` |
| 9 | `theorem` | [map_id](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-id.md) | 85 | `result-track:ca32b21a6880ca9b826c24d10e150941d139e8ef5f85666f32449b9e35d31f26` |
| 10 | `theorem` | [map_id'](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-id-source-edition-2.md) | 90 | `result-track:e3523b441f8afa41a4a338fe799bc7c0c737ecb1a908bef365fa7c2e71f8afb2` |
| 11 | `theorem` | [map_map](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-map.md) | 92 | `result-track:85399f5b9a82020d5ef6d5bea1f5f2933d2939456d88dafa5e60cb28046ca285` |
| 12 | `theorem` | [map_injective](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-injective.md) | 95 | `result-track:f6f2c4c267b8e23f0e9738bc96aa4a064811f977934051a5f86d3973e98629d5` |
| 13 | `def` | [transpose](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/transpose.md) | 100 | `declaration-track:b27d0b1d4103bd458ee249c8812be4aed8ed229320eea08548dbd2752002337f` |
| 14 | `theorem` | [transpose_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/transpose-apply.md) | 104 | `result-track:6384105c4e506c95cd72b9dbb0539e0779fad40c453e5dd4ff002b4fc8532f6f` |
| 15 | `def` | [conjTranspose](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/conjtranspose.md) | 108 | `declaration-track:dfe3064aeacccfa93e30b2b3ebb3b61f4c1759f42b59c4b90d5159439bce8336` |
| 16 | `theorem` | [conjTranspose_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/conjtranspose-apply.md) | 112 | `result-track:b24e4d62821d1748904979b4d7cef44de09a3560248db25061facc217d15427b` |
| 17 | `instance` | [instStar](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inststar.md) | 115 | `declaration-track:b2139f615e5789ce1fa1f03a1ff16644f3721bb478a4d25f17267c0d6ecb6d71` |
| 18 | `lemma` | [star_eq_conjTranspose](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/star-eq-conjtranspose.md) | 118 | `result-track:c563efcbcdb81c99924d61c8f28510f991084b7bcb8dd247de88741f8a964044` |
| 19 | `instance` | [instInvolutiveStar](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instinvolutivestar.md) | 120 | `declaration-track:48113be9a215bb49bf4d390967145004d061e8bd82b34bbcb70865569f494886` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instinhabited.md) | 123 | `declaration-track:ac73de12ca5f71b52a64ea90e6f8b04da75ad4a4c5988473124d3dd364582c5b` |
| 21 | `instance` | [instDecidableEq](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instdecidableeq.md) | 126 | `declaration-track:bcdc6f6d5aa86ebd0a298ed9c5e8077afda03b230e963321aa8619162a612e7d` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instance.md) | 130 | `declaration-track:19511877e54538c292190c9318d8afc6e0544729ad073f3a91264cecbafa8736` |
| 23 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:72051ca6a82f910cb2b2e7fb3556ce1e5e6c1af14cca4991d3148fc41c91d954` |
| 24 | `instance` | [instAdd](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instadd.md) | 137 | `declaration-track:73977ba505ffa14df0bcfe1ca0aa4af65ab6abcccf667cb81fa9c49f00cd55b5` |
| 25 | `instance` | [instAddSemigroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddsemigroup.md) | 140 | `declaration-track:7a6ff0f6a34bec094987f8f298ade657c291c203ea2a1e91865b279e7d2b72e0` |
| 26 | `instance` | [instAddCommSemigroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddcommsemigroup.md) | 143 | `declaration-track:473dd54c3c5ea3684b3c31a7a42ddc704bca96cdd0ea24a9cb702761b5e2e2bd` |
| 27 | `instance` | [instZero](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instzero.md) | 146 | `declaration-track:6884732ef4f4571a01cee0453e5e4a7c7c319cdfa820829860f944113d485115` |
| 28 | `instance` | [instAddZeroClass](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddzeroclass.md) | 149 | `declaration-track:aedc2effcb471a9ef86a80b959f67d759e47ab48165894d37bf252639a5cb70c` |
| 29 | `instance` | [instSMul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instsmul.md) | 152 | `declaration-track:6990e80eb72649e81266af04491ff8a1ee128aa423b1a32c55e33acecfdc8e3e` |
| 30 | `instance` | [instAddMonoid](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddmonoid.md) | 155 | `declaration-track:975a1f89ad1de16ff08edad25d2cae93666c1e4a9036242c9141e17e1a0bdc73` |
| 31 | `instance` | [instAddCommMonoid](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddcommmonoid.md) | 159 | `declaration-track:59dce60d323ca295c01124966bdc143ec24898aa41ed9ab4cf7f35b074c2a727` |
| 32 | `instance` | [instNeg](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instneg.md) | 162 | `declaration-track:d0f98863a92a74fa910cbe087bc57f0db13864470b3f8497b1e5ba6f7d72ab77` |
| 33 | `instance` | [instSub](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instsub.md) | 165 | `declaration-track:2cb4e19cdfcd510ebc268592b560149efe1aed3ae855210cc922fae745e7d82f` |
| 34 | `instance` | [instAddGroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddgroup.md) | 168 | `declaration-track:8b99497ade08f9e63ad49bd7b7eea1af28d2253b74280bc3037f38dbf5657b2a` |
| 35 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddcommgroup.md) | 172 | `declaration-track:fd766b137e6b248f4f84b2ccae5b0a673872e043badf4928bc943a6a3c75fff5` |
| 36 | `instance` | [instUnique](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instunique.md) | 175 | `declaration-track:934334476000da4426a23b140178bc41fbd392f270a43dbb9d9abc205aff1ae4` |
| 37 | `instance` | [instSubsingleton](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instsubsingleton.md) | 178 | `declaration-track:4c83dd26785fcf6b2f3b27cc8510beaaa15150323c6502311f92eedc655e88de` |
| 38 | `instance` | [instNontrivial](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnontrivial.md) | 181 | `declaration-track:cdfccf9cd075b6bf5e9a5a7a7c4a0d0ffbe4bd6c075c7b6e7e0787ca01249966` |
| 39 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instsmulcommclass.md) | 184 | `declaration-track:b5353d63dc196aaead4c1049a9fb02878dbcdbe2e74066c0317b98060b37edbc` |
| 40 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instisscalartower.md) | 188 | `declaration-track:bf910f155e107fb075d4259d2c7e3040fc0558b3a6b264da6161d061750df0ad` |
| 41 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instiscentralscalar.md) | 192 | `declaration-track:7ff55251e79e6a6d3f092f02b013629271050a2f1f667fcdd3766cd0f38b42f4` |
| 42 | `instance` | [instMulAction](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instmulaction.md) | 196 | `declaration-track:9a1c883876b4733d7821ca66cb48468d12eb63b86b5f8cb07f341b47e8f197c5` |
| 43 | `instance` | [instDistribMulAction](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instdistribmulaction.md) | 199 | `declaration-track:4a49094dcd2d5242e9346a1afb6e0fb71bc80820753ad9d22922f9faa5d2ac25` |
| 44 | `instance` | [instModule](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instmodule.md) | 203 | `declaration-track:f3f39ce0b133027f4e402922a17d2f69c96fd5b08eeb0ae3103dc75096c8cb14` |
| 45 | `theorem` | [zero_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/zero-apply.md) | 207 | `result-track:5fe99fc363079e8be6ea60d4a6c54b1aae3fcdfb791d86d18732b941ed7ea1b2` |
| 46 | `theorem` | [add_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/add-apply.md) | 209 | `result-track:fb2ea6fc093336870ea011e43ae699a94dc507b77770d76b4f8a1acf0ce160db` |
| 47 | `theorem` | [smul_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/smul-apply.md) | 212 | `result-track:21e3427c02620c28216680ce0990f6711d2ae59c63f9f8bd73bdfbb2700b1e4c` |
| 48 | `theorem` | [sub_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/sub-apply.md) | 215 | `result-track:a33622b8b3aeeea3267aeef8b5a63e98744042fd9879aea5b73b7e9da2fdd953` |
| 49 | `theorem` | [neg_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/neg-apply.md) | 218 | `result-track:20acbf32883fb8ff6fdd63110721b1578f6035a2db4cd650580a7ee5e684cd2b` |
| 50 | `theorem` | [conjTranspose_zero](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/conjtranspose-zero.md) | 222 | `result-track:da953b9afac03c95cd1c5e4dc69b44e27338487d48a3e14eb12ed5336af6a556` |
| 51 | `theorem` | [of_zero](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/of-zero.md) | 227 | `result-track:5f6702e093c39603947d3425bf7b99ad1bca80c28a26eaa83bd272163facbb50` |
| 52 | `theorem` | [of_add_of](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/of-add-of.md) | 229 | `result-track:fe7e01ec3be305a2467a0caf6d798ae4ff1e7b0aa46abc3499211068443e12fc` |
| 53 | `theorem` | [of_sub_of](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/of-sub-of.md) | 233 | `result-track:dc4bfded8ff700905b4ebacf3a979576cec965c9a2cc03ea7377da92d5ba2eea` |
| 54 | `theorem` | [neg_of](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/neg-of.md) | 236 | `result-track:bda7519d39f14a1c6d252c5e66e0fc97fad88f95773ed1209a2ac15d6074378b` |
| 55 | `theorem` | [smul_of](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/smul-of.md) | 238 | `result-track:e5a0bdbe50a6cbade049c5856ff1f6f6c1c0c418c7262bf5fe13291c4225138f` |
| 56 | `theorem` | [star_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/star-apply.md) | 241 | `result-track:1376998ae9ad4d4076e099cd6a0a9126cab24967cee8c103373595665cbb6da2` |
| 57 | `theorem` | [star_apply_of_isSelfAdjoint](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/star-apply-of-isselfadjoint.md) | 245 | `result-track:d11011af3bc1ab9f48340e3ab17d72c66e1465b1f0fdbdb1773d0fb0baec089a` |
| 58 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inststaraddmonoid.md) | 249 | `declaration-track:e8cd35925f50df7aafeed6b6b66c62ab2257ae598449eed548c7e53699df2c63` |
| 59 | `instance` | [instStarModule](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inststarmodule.md) | 252 | `declaration-track:245098a746f98859a6e1df0e36b67d1f9ec682cd9c97a0e73c7cfd5bf2bceec6` |
| 60 | `def` | [ofMatrixₗ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix-source-edition-2.md) | 257 | `declaration-track:b75a554cc9055df6e246ab7c09e7cc260a172148564a098da19da52be7f61865` |
| 61 | `def` | [mapₗ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-source-edition-3.md) | 262 | `declaration-track:e52c876590521868d21225a93592a58b098aea175dd93e4c27577d559fe61a5c` |
| 62 | `instance` | [instOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instone.md) | 276 | `declaration-track:6250178cc34c797f412cc2d278c5c3e343532645e962eb2d592446856acf0124` |
| 63 | `theorem` | [one_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/one-apply.md) | 278 | `result-track:eb5f004eaefe83c8687c047eceecce1e3a925f69643c86b08783e1883c6d095c` |
| 64 | `theorem` | [one_apply_eq](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/one-apply-eq.md) | 281 | `result-track:a3b093a37ab5fa2cf844ccc6425a3206f40de95c43df98d17c46437afee09ab1` |
| 65 | `theorem` | [one_apply_ne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/one-apply-ne-source-edition-2.md) | 283 | `result-track:f98be9a7b3c4fc70038f74a835117a9a24ec55d9fa3b9c1e34078ed48fc0c7f3` |
| 66 | `theorem` | [one_apply_ne'](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/one-apply-ne.md) | 285 | `result-track:9703b989e4bc8e277da68058652f6556193f51710bf23a548b791bd24e608741` |
| 67 | `instance` | [instAddMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddmonoidwithone.md) | 289 | `declaration-track:f5702ea31e8cfe7b6c21097031a8cc2f16d6e12e451ec68da618af41b37e85b7` |
| 68 | `instance` | [instAddGroupWithOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddgroupwithone.md) | 292 | `declaration-track:d2c86e0ff1874d2938792dba99e378f19d28e517f1ffba707b9b40807d826be7` |
| 69 | `instance` | [instAddCommMonoidWithOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddcommmonoidwithone.md) | 295 | `declaration-track:442c80ea4b3a87241281a5f932d95defab5a3d8e88a95bc04e126665140e7a34` |
| 70 | `instance` | [instAddCommGroupWithOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instaddcommgroupwithone.md) | 299 | `declaration-track:c73097cfe2777eae06e1a9a5939340d24dfe5ec4ff02f87972808cbd7a00915a` |
| 71 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 306 | `declaration-track:695525b661243c0e8ded6c5bb257a7071b5df3bbbd462ae7dbb4371a844c3891` |
| 72 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 310 | `declaration-track:7a485dfd4b61a640b9f3121155c2d0c0c2a8304543329e83860591b55b53b322` |
| 73 | `theorem` | [mul_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-apply-source-edition-2.md) | 314 | `result-track:a6e5381db2058cebc6111aac1bf8c9517af0dcd82c0b002ff848bed1ad4b2d9d` |
| 74 | `theorem` | [mul_apply'](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-apply.md) | 317 | `result-track:3851a7a8de69e85dfb7113482b273d64e0117b63180fd5f5d69f2917896958ea` |
| 75 | `theorem` | [smul_mul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/smul-mul.md) | 321 | `result-track:a0756359b8b42f56313a298b29f209ef40be27250df11f3eab36dde739e4d358` |
| 76 | `theorem` | [mul_smul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-smul.md) | 325 | `result-track:276c9c2e5e921ec044b811b22d7052743480e1a4ec437a7756908959b0648e4b` |
| 77 | `theorem` | [mul_zero](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-zero.md) | 330 | `result-track:53d340a698a63256e0cb8933eb88a38d44baacc0bd1fcc26abd093aad97eb8bd` |
| 78 | `theorem` | [zero_mul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/zero-mul.md) | 334 | `result-track:718c60419b35da4f7303daaea26ee25cba2a95ee9d59b46bf963b9292dcc3fbc` |
| 79 | `theorem` | [mul_add](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-add.md) | 337 | `result-track:5a8a5ae40771d51913e12340847f339c9ca852170d5bdc911c87370a07676177` |
| 80 | `theorem` | [add_mul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/add-mul.md) | 341 | `result-track:3d9fb4d5d96adc9e68d84eb225c4b8af64fdd94864c6baab400850b86c0a4e24` |
| 81 | `instance` | [instNonUnitalNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalnonassocsemiring.md) | 345 | `declaration-track:c259909961b510a8f4288c8e982684858e5607deeddd279904ed0dc518d035f6` |
| 82 | `instance` | [instNonUnitalNonAssocRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalnonassocring.md) | 349 | `declaration-track:6a78092f3bdae06f50207b8c7303a449caf0f83350dec0b24a28dd95c6814e0a` |
| 83 | `instance` | [instNonUnitalSemiring](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalsemiring.md) | 353 | `declaration-track:6fb9078c5cbd7d37212ab8b693df3594c00954491e6e4c489f510b963c7748d1` |
| 84 | `instance` | [instNonAssocSemiring](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonassocsemiring.md) | 357 | `declaration-track:04353ffe67478ed6529789eea0b8743cc31642f0641f82a78ee79b868dd43508` |
| 85 | `instance` | [instNonUnitalRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalring.md) | 361 | `declaration-track:9a57d4bf2c30f37846c5a7547fbf003fe17c9e72a373d889762829c3ed2686af` |
| 86 | `instance` | [instNonAssocRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonassocring.md) | 365 | `declaration-track:3b27956772bf8eb2d6bf121b7a55574205a401284e7d9c85d0870e2ddd9061a0` |
| 87 | `instance` | [instSemiring](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instsemiring.md) | 369 | `declaration-track:b9c1633cd4d0c65a73c92a295dff19ec4493a103e317e38412acda95ce4a7c35` |
| 88 | `instance` | [instRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instring.md) | 373 | `declaration-track:ac4b98b6f78faf0a59678180d3a3964e8c40831f3bcc3ecdb59abed993cd0153` |
| 89 | `def` | [ofMatrixRingEquiv](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrixringequiv.md) | 377 | `declaration-track:b1ef7d1f2baab05dea7448b7bf00ec2d60ca175d26a86041571dcebdfbd38db0` |
| 90 | `instance` | [instStarRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inststarring.md) | 383 | `declaration-track:2376162945f1ed666a9aa526e1c857a00ef760c3a0de20575d44a43b9440937b` |
| 91 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instalgebra.md) | 386 | `declaration-track:b347b5890c0a468fa1dc68f2a1836e85d62f47a29151806085d864ef58fe8128` |
| 92 | `def` | [ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrixstaralgequiv.md) | 390 | `declaration-track:d620a77d60f548a43b46602ecd1e9f0f69dcc8fa39eb666d90e550cff00da7f6` |
| 93 | `lemma` | [ofMatrix_eq_ofMatrixStarAlgEquiv](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix-eq-ofmatrixstaralgequiv.md) | 396 | `result-track:65ede3319f359e82f3ede2cc0874894fcca422f880d59387bab9eaee003621cb` |
| 94 | `def` | [reindexₗ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/reindex-source-edition-2.md) | 404 | `declaration-track:f62b8f534d405e71c4546d6e4875af2d99cc298d5443bb1d1c01b599530a2492` |
| 95 | `lemma` | [reindexₗ_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/reindex-apply.md) | 411 | `result-track:8437f9390919923032f103f1cd9460f67f8f6c3c7f50e0e241db889675da9aa8` |
| 96 | `def` | [reindexₐ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/reindex.md) | 418 | `declaration-track:54393a69e51fb2bac500153f240d062ad78f51aa37812bb18ae498285fa71bbc` |
| 97 | `lemma` | [reindexₐ_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/reindex-apply-source-edition-2.md) | 436 | `result-track:9f0960883650a7fe074f67460c3c3049dd335ceeb34cbbc9621938c87e0ac596` |
| 98 | `lemma` | [mapₗ_reindexₐ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-reindex.md) | 440 | `result-track:16b41c352af2cbfe42dbdd430b74109d9f658147fa5cd9c01fc8d89c67e3f193` |
| 99 | `lemma` | [reindexₐ_symm](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/reindex-symm.md) | 446 | `result-track:051bbf394a73feb10b0bcaa3a5c8a091b2ac4a1ee45fe3655b5daeaf938173c4` |
| 100 | `def` | [mapₙₐ](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/map-source-edition-2.md) | 454 | `declaration-track:ac47f656344aeb81e5c3186fc65874c7efdbfb57b4db8d13df5b02264c70a16a` |
| 101 | `theorem` | [algebraMap_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/algebramap-apply.md) | 468 | `result-track:ea0e2d6a9d19c363bd453163b6d88d87f9889fe070a407966184f0d2440b69a7` |
| 102 | `def` | [toOneByOne](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toonebyone.md) | 475 | `declaration-track:094c082d6ad7c929f52ecee49d9a6d4fb759f2955b60a4294915b63576375ba8` |
| 103 | `def` | [toCLM](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm.md) | 495 | `declaration-track:6aa5a824b6705e25a0864adea7762cd7cd3898bf5f33d5163ca88be8147d2142` |
| 104 | `lemma` | [toCLM_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm-apply.md) | 513 | `result-track:e5cc32dc56a74e04603ea596d3e9225fd4d981c8a345f2563a7465fee050a519` |
| 105 | `lemma` | [toCLM_apply_eq_sum](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm-apply-eq-sum.md) | 516 | `result-track:952e80e866985ccfdb2d6f79da543ce4274d1b85f1c51d48b50b947d02765dbb` |
| 106 | `def` | [toCLMNonUnitalAlgHom](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclmnonunitalalghom.md) | 526 | `declaration-track:89e51bb54041fa9ed30f56d9983ca3d64532984c110ec2e07bdceaedb55b20ab` |
| 107 | `lemma` | [toCLMNonUnitalAlgHom_eq_toCLM](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclmnonunitalalghom-eq-toclm.md) | 538 | `result-track:222fe866a392f33fda22f6bd89e1bbdc63f343d23e6d903f28005924048e90bb` |
| 108 | `lemma` | [toCLM_apply_single](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm-apply-single.md) | 544 | `result-track:15403c27c3c2e9511a76d6f49eb265a7e8f5a6bcef659b6304bbdc244d42a2a2` |
| 109 | `lemma` | [toCLM_apply_single_apply](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm-apply-single-apply.md) | 550 | `result-track:71ba81c9baa9776062487fc6a9389952772af21745551cea1d0e4c9626f1ee09` |
| 110 | `lemma` | [toCLM_injective](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/toclm-injective.md) | 553 | `result-track:2d3281c045d9381fdf55d1887871f010c98d3eeae4f5fb5fb3e3b1788bb2061d` |
| 111 | `lemma` | [mul_entry_mul_eq_inner_toCLM](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/mul-entry-mul-eq-inner-toclm.md) | 565 | `result-track:7610836666e4bf7b4e2f73b190355dff3267fb3b31527bb2e6452c46fb649649` |
| 112 | `lemma` | [inner_toCLM_conjTranspose_left](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inner-toclm-conjtranspose-left.md) | 575 | `result-track:a026ecf46a4136a2e18fd6495bb8b34a3d7b434f7afd15408e07f6f052923c32` |
| 113 | `lemma` | [inner_toCLM_conjTranspose_right](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inner-toclm-conjtranspose-right.md) | 583 | `result-track:7b49071eed0f0db74a30b00ce1e2f00ac9114ec799a73c8a080a7455ded2e92f` |
| 114 | `instance` | [instNorm](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnorm.md) | 589 | `declaration-track:5852b21e78ecf5f0d4da84a23c9d18feef0780fc54e5bca7fa700c415fcc6567` |
| 115 | `lemma` | [norm_def](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/norm-def.md) | 592 | `result-track:40aeaa601966851ad097c7e9832cf239766c371ddd0cdbb80792f10f7090811b` |
| 116 | `lemma` | [norm_def'](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/norm-def-source-edition-2.md) | 594 | `result-track:a4026fcb98f3242423496edfd0bd696906b074b7ea1a4f5ffbba7650e9cb3516` |
| 117 | `lemma` | [normedSpaceCore](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/normedspacecore.md) | 596 | `result-track:b180978ae3fc02043b0286cd2b981d77da21d907782b3ed898fa7651cf94a44f` |
| 118 | `lemma` | [norm_entry_le_norm](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/norm-entry-le-norm.md) | 604 | `result-track:97ad54c041a8ddd41818f7526c71289368f56d9ac9e8b622080f7ea633ec2750` |
| 119 | `lemma` | [norm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/norm-le-of-forall-inner-le.md) | 617 | `result-track:144cbb8a5f7789c6a37f99170734031efe476f25f9023925bfb5e371656caf2e` |
| 120 | `instance` | [normedAddCommGroupAux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/normedaddcommgroupaux.md) | 650 | `declaration-track:abc70c65b707ac0785d3a1155d0422d8b9767655614c632db4ed6b832677156f` |
| 121 | `def` | [normedSpaceAux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/normedspaceaux.md) | 655 | `declaration-track:124c74c486c5c3501a38d278b0a163814c9efccad46804036f4ecf846ef689a2` |
| 122 | `lemma` | [nnnorm_le_of_forall_inner_le](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/nnnorm-le-of-forall-inner-le.md) | 663 | `result-track:7ad6c55b1b8151362e488370a713d1f6397b14d35b46d7f18f8c591e29262e8c` |
| 123 | `lemma` | [lipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/lipschitzwith-tomatrixaux.md) | 668 | `result-track:8677f65b8c58723b4d4efacae73e3e44f816d66555ba6f5ff00c8f0c7732ee9e` |
| 124 | `lemma` | [antilipschitzWith_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/antilipschitzwith-tomatrixaux.md) | 675 | `result-track:86c2871b2c1a9ac1839b9bf358556cf26f3a2ea40832b6126356921a29f9718f` |
| 125 | `lemma` | [uniformInducing_toMatrixAux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/uniforminducing-tomatrixaux.md) | 697 | `result-track:673ed3ee1b0f3c9a7296462f5747c404bb7247be9ea9b8a8bab2430cd275ecfc` |
| 126 | `lemma` | [uniformity_eq_aux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/uniformity-eq-aux.md) | 703 | `result-track:6c49157e79c047f383da42470064f9acca286d946c38f5917444a21c5b254919` |
| 127 | `lemma` | [cobounded_eq_aux](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/cobounded-eq-aux.md) | 714 | `result-track:6eaa69469bbda19ca7c193b02469c22dc6c8a94e944d0d20df9a24cf3ce3c13b` |
| 128 | `instance` | [instTopologicalSpace](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/insttopologicalspace.md) | 734 | `declaration-track:2ae22cb6b2f0b71fe3253a17141dd3ff12e33bc41fc6e728cea71edf911fc8e9` |
| 129 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instuniformspace.md) | 737 | `declaration-track:703c8531f317c20a689c7686d6522cbd1768e566b60fc896c8908a1d54f53572` |
| 130 | `instance` | [instBornology](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instbornology.md) | 741 | `declaration-track:89854f8770a37f6b9ce5add2c839ebb5da2de36a6c6d3fb001649e8c243c94ce` |
| 131 | `instance` | [instCompleteSpace](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instcompletespace.md) | 744 | `declaration-track:b368c3b3ce480f53c6c4f17ba500253880317c0bfbac205198742bf9c8f32db1` |
| 132 | `instance` | [instT2Space](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instt2space.md) | 747 | `declaration-track:45f6eb5b05ee328ed15dfdbd1fb6b06e7c2d4e85a73268ec594b2351cd9cd414` |
| 133 | `instance` | [instT3Space](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instt3space.md) | 748 | `declaration-track:2a1109f99b5e987db3968b7e081d66af8422abfcd64a1bfaa30086c2c00c24c8` |
| 134 | `instance` | [instIsTopologicalAddGroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instistopologicaladdgroup.md) | 751 | `declaration-track:9fa4070b88c37513f7ba611cfeef34b774b7ecbaae2ebf0c7503f4d195ecf4ae` |
| 135 | `instance` | [instIsUniformAddGroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instisuniformaddgroup.md) | 754 | `declaration-track:f39a40e49d343c2bf434a45f00d1233a856c1ab025fa2ff8d06d3dd9cbf7a299` |
| 136 | `instance` | [instContinuousSMul](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instcontinuoussmul.md) | 757 | `declaration-track:a4f9632369a2f7df130fc967c40f1a1b3d6b6da7e2905223e7f5962c500456c9` |
| 137 | `instance` | [instNormedAddCommGroup](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnormedaddcommgroup.md) | 761 | `declaration-track:0497494d4764c4be3e4e819343be65711e5efc0def891b4b696b6ec46e73efe3` |
| 138 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnormedspace.md) | 767 | `declaration-track:a2d2f6340b34965eeb591ecbba119f3a6370e77e2c7eec25acb50f7bb4312542` |
| 139 | `instance` | [instNonUnitalNormedRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalnormedring.md) | 770 | `declaration-track:9ce436d28618882db827ca493fc765e1d084fcc6a9cfffddad0de3de65aeda25` |
| 140 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instcstarring.md) | 778 | `declaration-track:03dbd7c012559743264b836e01693eb4e4e907960fe4701ce41c794e2beb46ee` |
| 141 | `instance` | [instNonUnitalCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnonunitalcstaralgebra.md) | 806 | `declaration-track:ba87e5f4712901e27f3de621861808d6868d600af882881a476c7691c0ce39af` |
| 142 | `instance` | [instPartialOrder](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instpartialorder.md) | 811 | `declaration-track:13d43d6f6b37e048cc81c728354e2160cc6b4f9607e6244c9efa411b8f9c99d2` |
| 143 | `instance` | [instStarOrderedRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/inststarorderedring.md) | 813 | `declaration-track:d7ecf517db341a99607187e63af1ef80c3aa7029f1657fbc5a89732d0b5d0e90` |
| 144 | `instance` | [instNormedRing](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnormedring.md) | 824 | `declaration-track:14870a4f45f31c272eb950b12ab6872dcffbcf4a00075670a19e52401659f8c6` |
| 145 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instnormedalgebra.md) | 828 | `declaration-track:58ebccb1cc249c0415847de23a669544a66298a50fec0947295303253c6ecd52` |
| 146 | `instance` | [instCStarAlgebra](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/instcstaralgebra.md) | 832 | `declaration-track:818359e7e2c96cb0bb55fd831c6584645520d3f8d86d4a93088d633b1b76a640` |
| 147 | `lemma` | [uniformEmbedding_ofMatrix](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/uniformembedding-ofmatrix.md) | 840 | `result-track:bfe836c34d2956d1363fe6cc05ef822708c9db6a2d6488472e8e7c1b44c735bb` |
| 148 | `def` | [ofMatrixL](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrixl.md) | 846 | `declaration-track:5d94f0ccebaf0867de6e8a77f85babf0ac86725e2a90e4af10f583d796287754` |
| 149 | `lemma` | [ofMatrix_eq_ofMatrixL](../../../../FunctionalAnalysis/CStarMatrixNamespacedPublic.lean/declarations/ofmatrix-eq-ofmatrixl.md) | 851 | `result-track:c7721252b85e671547aad94f48a6ad0dcbf41bec7a60b922c70a2f523d7b36b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00605352a82f399fec586d1941226b48fa27219acdd1d839b4bec779779fb925 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean","GRWTSK/_verification/specifications/Analysis/CStarMatrix/Variant979fabaf7589313b77f15cb771fb3ea74344e1942d6817b1c53648b8a2dbda77.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
