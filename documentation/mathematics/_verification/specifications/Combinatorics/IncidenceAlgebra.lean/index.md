# Verification target: Incidence Algebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4bdff0d9a680ecb74791d8385109e7bf4facfd1",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/IncidenceAlgebra.lean/index.md) · [Full source](../../../../Combinatorics/IncidenceAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4bdff0d9a680ecb74791d8385109e7bf4facfd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.LocallyFinite` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IncidenceAlgebra](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/incidencealgebra.md) | 75 | `declaration-track:c15b711e09f241156a6a87c710edf6f9fe08e84acdeda3932f7670ffa0fbb46d` |
| 2 | `instance` | [instFunLike](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instfunlike.md) | 87 | `declaration-track:30e949b495a63344313444ad2bad81030fec54763976b5e817a442e4d3dc4e2c` |
| 3 | `lemma` | [apply_eq_zero_of_not_le](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/apply-eq-zero-of-not-le.md) | 91 | `result-track:01fd877aa150cb44e1faeb3682b6b958b5996a14fbfe920a0715ab74bb63d234` |
| 4 | `lemma` | [le_of_ne_zero](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/le-of-ne-zero.md) | 94 | `result-track:6f1d05dbb3a33f04371ff5a3dfc34c576fafb47f51aa9e249791ce4f1af95a99` |
| 5 | `lemma` | [toFun_eq_coe](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/tofun-eq-coe.md) | 102 | `result-track:408ea361be74b217b4848ea8355f16232c207cddc176a02ba2f67a9ec224b50c` |
| 6 | `lemma` | [coe_mk](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-mk.md) | 103 | `result-track:406aa1939d903cba30e7af37cd89444c26dfba453641d234d94ed0c7337f63a3` |
| 7 | `lemma` | [coe_inj](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-inj.md) | 105 | `result-track:9ea023b33cc35a2d77667b82207830fd4d6bc66a0a73d209919671e25d50f44d` |
| 8 | `lemma` | [ext](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/ext.md) | 109 | `result-track:43ec84405a0af2690715adc02aed04f09acf61a71ee76e45abb7c0e51c1576da` |
| 9 | `lemma` | [mk_coe](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mk-coe.md) | 115 | `result-track:863afe7c73d7c895d730420dd149cf0804832f267ce6e5f45ab5499896fb4ef0` |
| 10 | `instance` | [instZero](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instzero.md) | 121 | `declaration-track:c09b8ad24ca38d995ebe4bda3238b05b078569741304b257b3dddb7f4325ab5e` |
| 11 | `instance` | [instInhabited](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instinhabited.md) | 122 | `declaration-track:a30d1cde96f915268c583da8422ac1ba13cbec68a8afcb29a372e58c8f8b6785` |
| 12 | `lemma` | [coe_zero](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-zero.md) | 124 | `result-track:54259fc31d8fd213a7236b7dd83259fc9cc71a5167026218c6de7b8056bccac3` |
| 13 | `lemma` | [zero_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zero-apply.md) | 125 | `result-track:88f3310085b142ae07febd381b6397a8493866dab5644472ccd7f03efa6026ab` |
| 14 | `instance` | [instAdd](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instadd.md) | 132 | `declaration-track:45b74e06138e7ed1d2ff4fb4fa8446fe9c9b9f080f552df1a77debd1609e52e4` |
| 15 | `lemma` | [coe_add](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-add.md) | 135 | `result-track:bbff9e5a4692ade49dbfb4e42284d7bad89235fee18ab7fafa3aa16a98db0a32` |
| 16 | `lemma` | [add_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/add-apply.md) | 136 | `result-track:79a6e58e2a4748fa49121ecdf38de3d27c4fbb0858569df14028d327f3c3a18f` |
| 17 | `instance` | [instSmulZeroClassRight](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instsmulzeroclassright.md) | 143 | `declaration-track:38cc88649f3d57d3f6792d0bad2f8cd505df004342150deb67b1ac2b333fffc8` |
| 18 | `lemma` | [coe_constSMul](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-constsmul.md) | 148 | `result-track:b2276e30a95b07c6517d157dacafd1f85f382b27b087ba4977fc0e66cd44d982` |
| 19 | `lemma` | [constSMul_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/constsmul-apply.md) | 150 | `result-track:9721e3965e5da561041b4beacf0f265d46cd68fb83025690e4f433ac063397c7` |
| 20 | `instance` | [instAddMonoid](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instaddmonoid.md) | 154 | `declaration-track:82b8c6219490337527afa5d5c9b6d754bd5c76667c0e42428eb736372a8bec53` |
| 21 | `instance` | [instAddCommMonoid](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instaddcommmonoid.md) | 157 | `declaration-track:87f0f8dce963ddb247f0ace051acbe649c7b5e97ff1526e504bd1bcfb6d00c08` |
| 22 | `instance` | [instNeg](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instneg.md) | 163 | `declaration-track:198fa7f0e236c09475dd55d451d69718900a1f02bff8f8c812ec9d4042386297` |
| 23 | `instance` | [instSub](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instsub.md) | 166 | `declaration-track:47c675e9c89677ef09e88b517b9f60a8d04df12ec86684533791a447992f089e` |
| 24 | `lemma` | [coe_neg](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-neg.md) | 169 | `result-track:9f4d0670eeefefae2031970cca67a6e5538adf20d2614db4ac4ea848ef6df3f3` |
| 25 | `lemma` | [coe_sub](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/coe-sub.md) | 170 | `result-track:67de83350c5fc2564dad7d3bf7493028e7fba7db59aaea651d3ae1cfbf098c2c` |
| 26 | `lemma` | [neg_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/neg-apply.md) | 171 | `result-track:1ce333651da268e550bca46d314c22159f67b89892994d1d94ed41621b9c04ce` |
| 27 | `lemma` | [sub_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/sub-apply.md) | 172 | `result-track:1ae594357a36f1ed5533786ac7651878a56e0900696ad5347ac60351bfcc2e22` |
| 28 | `instance` | [instAddGroup](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instaddgroup.md) | 174 | `declaration-track:daf0d83029edc8878d0fb4619dba373895a5fa478bb6205864453bf874490b92` |
| 29 | `instance` | [instAddCommGroup](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instaddcommgroup.md) | 179 | `declaration-track:8f6faade46fe812b441a288e2f4900e6e8684bc2c053c97d09d57bc1e5c9542e` |
| 30 | `instance` | [instOne](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instone.md) | 188 | `declaration-track:e2cf1cae897c6aa9c0463a12b7dbaeb335cc64c38a8ded4c7ee7d9a05b296e92` |
| 31 | `lemma` | [one_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/one-apply.md) | 191 | `result-track:f02cace3ace9af656bb47392c25099b4276a4cf770e4a02cf35fcc469045b9fd` |
| 32 | `instance` | [instMul](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instmul.md) | 202 | `declaration-track:a99102c789b13bcfca79ca9d979739a4214425b5aac3624302cb8765b7c48451` |
| 33 | `lemma` | [mul_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mul-apply.md) | 206 | `result-track:db6b625e23ebb209b8dcb3688be0139345d5e44f226f1f6967ecb1894c146f0f` |
| 34 | `instance` | [instNonUnitalNonAssocSemiring](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instnonunitalnonassocsemiring.md) | 211 | `declaration-track:421a6b2501b9cefc03e16e7ab544f3ed8e2656e634e110848234b4d48e53125b` |
| 35 | `instance` | [instNonAssocSemiring](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instnonassocsemiring.md) | 223 | `declaration-track:60807836b7d453782eabef7db7b326bce14fc1f7020d1637ed810fc24f20cbbd` |
| 36 | `instance` | [instSemiring](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instsemiring.md) | 232 | `declaration-track:c41b8ac1f4f2056c056a7d71ec269cec634eb8bfb2b2baf5e3fa1c547af4288e` |
| 37 | `instance` | [instRing](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instring.md) | 244 | `declaration-track:98d605192869a5af06880ec0c4198922f63db6aa3ca6d7ca33c1e6e5b8754630` |
| 38 | `instance` | [instSMul](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instsmul.md) | 254 | `declaration-track:c55f3a27f7d86e2143a3abd1a63bca4e0bc2023c3cfc1e54b0627c8e808f6ef5` |
| 39 | `lemma` | [smul_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/smul-apply.md) | 259 | `result-track:9707afb51bed344a2dd6d46164833f2b6e3a5aac0670aa9949e42dbeafcba53e` |
| 40 | `instance` | [instIsScalarTower](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instisscalartower.md) | 265 | `declaration-track:2b34adba739b6968ceef559e2801dd117c1e2f93617058cddd0825eca0805dfd` |
| 41 | `instance` | [(anonymous)](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/instance.md) | 274 | `declaration-track:6b6456b952b8b2a7209a4219bda2559ac61177caeca840ed9a307585d60ce384` |
| 42 | `instance` | [smulWithZeroRight](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/smulwithzeroright.md) | 284 | `declaration-track:f233c380012cabb61c1833b00924ecf625da96c7fd1a9c2211f60b7b9469c66d` |
| 43 | `instance` | [moduleRight](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/moduleright.md) | 289 | `declaration-track:320a23c25e7daed62aefbb8f59ce351210e34616d914524dfd962d35fa234d64` |
| 44 | `instance` | [algebraRight](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/algebraright.md) | 294 | `declaration-track:e85e0447224905684ac387119feabc4e390c7886d8682230644ea2fb5baa9e89` |
| 45 | `def` | [lambda](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/lambda.md) | 326 | `declaration-track:5702d0cae5e7f0ae84894158bcdcb8eb2a5125b5622c0a21829cd68b7ba6ef2b` |
| 46 | `def` | [zeta](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta.md) | 338 | `declaration-track:a6dc4ec64cfcdbb86d9965c6eb29e3583624fa47754fbde3f88639224f573fd3` |
| 47 | `lemma` | [zeta_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-apply.md) | 342 | `result-track:a3a6416a09541adcd2a24588862e3709d0ff0d2d9a73b1dcbd616fc4f391bc33` |
| 48 | `lemma` | [zeta_of_le](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-of-le.md) | 344 | `result-track:83b4e97aa51da0218df84babb47231b611804892da5f3a63375e0268567beaa0` |
| 49 | `lemma` | [zeta_mul_zeta](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-mul-zeta.md) | 348 | `result-track:17e052a1efc2a1ceef1faafae3c085f4ccb4c84a08a57cfc5a670bd8a31f53f9` |
| 50 | `lemma` | [zeta_mul_kappa](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-mul-kappa.md) | 355 | `result-track:67403175ddcfb91431e865ac316426947cfc70f84175abb2094c739297d99e5a` |
| 51 | `def` | [muFun](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mufun-source-edition-2.md) | 366 | `declaration-track:ffef497115e32acffaf263cc55e0ffd2b53b782204f4e3aafcd4c1cc99efd89f` |
| 52 | `lemma` | [muFun_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mufun-apply.md) | 377 | `result-track:6613bf80afed06fbfda8809a085af1f2569531c663c07ab30bc2a2f46b64f5cd` |
| 53 | `def` | [mu](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu.md) | 381 | `declaration-track:55eadb7d150c90e8c1912a9890a142925a091da398e91d7e3bc2951d3c918182` |
| 54 | `lemma` | [mu_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-apply-source-edition-2.md) | 392 | `result-track:ee5e545d18eae3cfaf888d7c15968ca70375f4409ae450227e84c7a45844b590` |
| 55 | `lemma` | [mu_self](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-self.md) | 395 | `result-track:b3b5c9b8092afc855338819c5a82f95a7ec8a6f348031e3407e1b97d4e33a1b0` |
| 56 | `lemma` | [mu_eq_neg_sum_Ico_of_ne](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-eq-neg-sum-ico-of-ne.md) | 397 | `result-track:e4c0c08c39bf67760ce76e476a435d43e5ba6011487035d861db5c102da77191` |
| 57 | `def` | [eulerChar](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/eulerchar.md) | 402 | `declaration-track:d3bcd0f757a27aab3519a17887e13c656aaafd89bea55ccbaef0e351d23e9c62` |
| 58 | `lemma` | [sum_Icc_mu_right](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/sum-icc-mu-right.md) | 409 | `result-track:e1636ddce9102f21c8a457d4729bfba9c66151017381b0d230c65bf953458792` |
| 59 | `def` | [muFun'](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mufun.md) | 423 | `declaration-track:6f55845cc4d26404a6b7371a41a64a2e1cc28231f2699d16b9901fe2acc418d1` |
| 60 | `lemma` | [muFun'_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mufun-apply-source-edition-2.md) | 434 | `result-track:c2eeaf99f56325b077e7bc36975a41da55c28dd5331a2d5691664643107785db` |
| 61 | `def` | [mu'](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-source-edition-2.md) | 440 | `declaration-track:9460e2da4533d08e4a08b5149ab0686154c541bc4dd65834130e8d3e15356235` |
| 62 | `lemma` | [mu'_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-apply.md) | 453 | `result-track:95520f057cf3afabe550e72d4a415bf3c181f78d3aadeae6ef9c59c7797aa787` |
| 63 | `lemma` | [mu'_apply_self](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-apply-self.md) | 456 | `result-track:ff5e286d67d0c29deee7c866292303fcfed2a2c604d83e06466c7d130ee7e918` |
| 64 | `lemma` | [mu'_eq_sum_Ioc_of_ne](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-eq-sum-ioc-of-ne.md) | 458 | `result-track:fc0a27780fd519668b9268b699f95530aebdc455e06067caa671634d83093b3b` |
| 65 | `lemma` | [sum_Icc_mu'_left](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/sum-icc-mu-left-source-edition-2.md) | 466 | `result-track:b6d7bd76546b1389dea31507cc98f48e1eaafaa8d3aa0accc1d9385ed2cbbe11` |
| 66 | `lemma` | [mu_mul_zeta](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-mul-zeta.md) | 480 | `result-track:f2645d7828e56f8d78c8bcf2fa5c1a7419be0345267e29c8366c28b8555d65b0` |
| 67 | `lemma` | [zeta_mul_mu'](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-mul-mu.md) | 486 | `result-track:8a65252ce8f773add89d30e3e91674acf3b35efa5657a05e21267707cf390cf9` |
| 68 | `lemma` | [mu_eq_mu'](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-eq-mu.md) | 497 | `result-track:a5338328e53fc0a492f108c85f4240af2729410ed9188436003b94597a5e15bc` |
| 69 | `lemma` | [mu_eq_neg_sum_Ioc_of_ne](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-eq-neg-sum-ioc-of-ne.md) | 501 | `result-track:a8a5d1ea6cd7f9d7be1c6f010ded5d4344fdbd83de8a0cf0e82e069cd9d544cd` |
| 70 | `lemma` | [zeta_mul_mu](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-mul-mu-source-edition-2.md) | 504 | `result-track:eaed71c7f60a758a1b011ca9db93d8409ba9f499d71e47c493f8c107b3a6fabb` |
| 71 | `lemma` | [sum_Icc_mu_left](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/sum-icc-mu-left.md) | 507 | `result-track:74e738c0e3d8be744682aedd06b72aecc728d497a6ed54bc25039496db2352a9` |
| 72 | `lemma` | [mu_toDual](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-todual.md) | 516 | `result-track:c4c14be193e14c3e9082a659f8b147006296c106d6eddfdc052ea3cd05f9c8d2` |
| 73 | `lemma` | [mu_ofDual](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-ofdual.md) | 537 | `result-track:c8791d224db8451f4399e6a12b00d88bbf84d4e82cab5ec2ffc7d473b356fad4` |
| 74 | `lemma` | [eulerChar_orderDual](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/eulerchar-orderdual.md) | 540 | `result-track:eb8fffe37cf918d710b049b188f62713f585618b152b1dbac633f08b1d6db531` |
| 75 | `lemma` | [moebius_inversion_top](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/moebius-inversion-top.md) | 550 | `result-track:ef3255056cd0314bffbeff5cf198b7baa55b91937be46366ec2bd5f283bbcc2e` |
| 76 | `lemma` | [moebius_inversion_bot](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/moebius-inversion-bot.md) | 585 | `result-track:af64099a53d6808c74bdc8513754405d4fd2921f8e92aa39794bac878133c74e` |
| 77 | `lemma` | [zeta_prod_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-prod-apply.md) | 602 | `result-track:35067576e3d4a7fc46be5014aa010694959d1ecd32eff2277de05516c6ac6388` |
| 78 | `lemma` | [zeta_prod_mk](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-prod-mk.md) | 605 | `result-track:781f0e0f1b8b03495b1aa704c6a34871039a02986338121efedaaab3635b8da6` |
| 79 | `def` | [prod](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/prod.md) | 613 | `declaration-track:33546ad36090ab4d69d8069b8df68e40e00d655c7280ee82ee894f9780f34e3b` |
| 80 | `lemma` | [prod_mk](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/prod-mk.md) | 619 | `result-track:d4e9f64824afa64af66a2113163c387a73b94ddbc019d9c98976dfc83a806414` |
| 81 | `lemma` | [prod_apply](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/prod-apply.md) | 620 | `result-track:e8facb883528a0e3e3152f9bf5562573350baf2213c6dd8328c083d4ad863d1d` |
| 82 | `lemma` | [prod_mul_prod'](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/prod-mul-prod-source-edition-2.md) | 623 | `result-track:c9a2cfce4f1845a5b063271ee0ed61afb3b9527f6c60fc327a8fa1f8cde0153e` |
| 83 | `lemma` | [one_prod_one](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/one-prod-one.md) | 630 | `result-track:12bbebcbb927ee62aa7deaebc92647ed5177a0bb54f6681f66f66368145bcfa9` |
| 84 | `lemma` | [zeta_prod_zeta](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/zeta-prod-zeta.md) | 635 | `result-track:8ea3c7ea172b89ab91344264a8062568a0e09784ef2732002719c97f2affc235` |
| 85 | `lemma` | [prod_mul_prod](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/prod-mul-prod.md) | 646 | `result-track:b9949049ab2f11b39dd030b41d31df362db348a204252ffa1729513f9a843269` |
| 86 | `lemma` | [mu_prod_mu](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/mu-prod-mu.md) | 659 | `result-track:c40fb1fa7b6a89b73f107815fad6b20b94c31acfd902fe22cfc1c4b6e54f11fd` |
| 87 | `lemma` | [eulerChar_prod](../../../../Combinatorics/IncidenceAlgebra.lean/declarations/eulerchar-prod.md) | 665 | `result-track:a48b89dd219ff479f684e886801b16421cf85595eacfe99acce19ab181cd02c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fef48b07c98ffa1a7ff798f329859589fe3aedce2e3f4c8dc004c37ecdee4a24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variantc9e2b455a1338b127b98e2ac03c6da1e25236c5ae23e8acc5d28e6ebb4630ca4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
