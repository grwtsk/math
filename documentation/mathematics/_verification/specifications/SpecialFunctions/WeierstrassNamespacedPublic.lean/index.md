# Verification target: Weierstrass Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50cd53bb41662dfea7ffa092778592ba86849027",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/index.md) · [Full source](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50cd53bb41662dfea7ffa092778592ba86849027`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean.json)

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
| 1 | `structure` | [PeriodPair](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/periodpair.md) | 68 | `declaration-track:d2ce75eedcb34293dbc823efed60f1996f24cdbf18196fa53087ac62098557b1` |
| 2 | `def` | [basis](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/basis.md) | 80 | `declaration-track:e373e59bc4dd668d046896ba717062fb7b4f666c356c31056990d2f78b4c026d` |
| 3 | `lemma` | [basis_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/basis-zero.md) | 83 | `result-track:55b4e7aa9845477eef82db2e07e8358ce8885b62a0fad7bf51a1d5a02de6af03` |
| 4 | `lemma` | [basis_one](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/basis-one.md) | 84 | `result-track:b1daf40b342528e0f7b253ffe7667431a82b59f609d19606a875d6c4e5bb1f1e` |
| 5 | `def` | [lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/lattice.md) | 87 | `declaration-track:ceb68a716ae60a2980da4c9081779817a3312db92f58eee2f0104bc3e6ac6e63` |
| 6 | `lemma` | [mem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/mem-lattice.md) | 89 | `result-track:0c8c7ecc9f8f5413f34b5f9d990d7b5451020b4ff85a230b56d1f84c0bbf4ab6` |
| 7 | `lemma` | [ω₁_mem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/mem-lattice-source-edition-2.md) | 93 | `result-track:bf1bc7521f5a4cd6109a49e3f09ff0c2695880e4929c5850d9fcbf8b87a0d6ae` |
| 8 | `lemma` | [ω₂_mem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/mem-lattice-source-edition-3.md) | 94 | `result-track:e5fd3341ab1836d07fe4e942d8e5402f1614c09f6bec3c6e8c3dab40da6f9b7f` |
| 9 | `lemma` | [mul_ω₁_add_mul_ω₂_mem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/mul-add-mul-mem-lattice.md) | 96 | `result-track:53f41006721175f5d9cd5704ceb62f444318ac2070136ac97e4632421a6eebb7` |
| 10 | `lemma` | [ω₁_div_two_notMem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/div-two-notmem-lattice-source-edition-2.md) | 111 | `result-track:b41b51d6d2a5b78c34b8ee8ffadcad929e83ee1957ab1a6b8b70448c3ea0b876` |
| 11 | `lemma` | [ω₂_div_two_notMem_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/div-two-notmem-lattice.md) | 115 | `result-track:02ee074c3ee1a6c8b236f4739d291a429377d8e8536bc80cdb2cb0e5defd3a45` |
| 12 | `lemma` | [lattice_eq_span_range_basis](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/lattice-eq-span-range-basis.md) | 120 | `result-track:80468795f0b9e6ec879f5c4cae2d32374494a471f368a462b68cb17f0d582a05` |
| 13 | `instance` | [(anonymous)](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 126 | `declaration-track:e3795320b2aea369a59fd43bd15c703b0b41e34a38d0849570a866724e982264` |
| 14 | `instance` | [(anonymous)](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/instance.md) | 128 | `declaration-track:a831c38d1cba17c55f78dbf9d2d4cbd3ab67d169fa7495c9d7a8f34d72a53c98` |
| 15 | `lemma` | [isClosed_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/isclosed-lattice.md) | 132 | `result-track:b74fd79d73f0c1238b9b0e4980b5d61bf63c4370faccfb1e56af9972ddc95790` |
| 16 | `lemma` | [isClosed_of_subset_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/isclosed-of-subset-lattice.md) | 136 | `result-track:1a8d8a6230f33519ff834138bae5fdc6d73d023c906dc96edf3ff840cbdbe9eb` |
| 17 | `lemma` | [isOpen_compl_lattice_sdiff](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/isopen-compl-lattice-sdiff.md) | 142 | `result-track:19255b832aa02090127820e51080d9eb1a18c8341288018560994b95aa7ca2c5` |
| 18 | `lemma` | [compl_lattice_sdiff_singleton_mem_nhds](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/compl-lattice-sdiff-singleton-mem-nhds.md) | 148 | `result-track:eab3c1e55b0d02c8d272ffaddf2e7362d71b8bd9c2ca3b2948c2d5b6470959ad` |
| 19 | `instance` | [(anonymous)](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 154 | `declaration-track:c93fffb5bb2a9bada8122b354a98eed74ae4c9db1afdba6d38d6d852f1bda913` |
| 20 | `def` | [latticeBasis](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/latticebasis.md) | 157 | `declaration-track:dd9b1abde5891b1980b5f93421ce23623c363c92ab0633a55ae67a7dd590c63d` |
| 21 | `lemma` | [latticeBasis_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/latticebasis-zero.md) | 161 | `result-track:5ef7c767a247415b6dd34edebb66352980ac08c916672010c411f024aa7bd3ae` |
| 22 | `lemma` | [latticeBasis_one](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/latticebasis-one.md) | 162 | `result-track:ff703f0d7c6d477d655d9e3746503736154d23b104ac44fe0e27e47ff166ca7c` |
| 23 | `lemma` | [finrank_lattice](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/finrank-lattice.md) | 164 | `result-track:f7b9f58c1167d69e2ca849f4a91e6e75a20d747d474bb692251f9bea17c2fe30` |
| 24 | `def` | [latticeEquivProd](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/latticeequivprod.md) | 167 | `declaration-track:8bbc92ef3da17bde4174136c1a41be63fe3a1b97277adb7bf160b6a552f07745` |
| 25 | `lemma` | [latticeEquiv_symm_apply](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/latticeequiv-symm-apply.md) | 170 | `result-track:66309e0dfef84a0f3e6d72e47d7223a8bb5e41fe6604e87eaff22de0ab958d1b` |
| 26 | `lemma` | [hasSumLocallyUniformly_aux](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassumlocallyuniformly-aux.md) | 174 | `result-track:79b0e371fbc391a1be29eab8480238f84ae341cb6172f70acdb541987fcbc2d0` |
| 27 | `lemma` | [weierstrassP_bound](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-bound.md) | 194 | `result-track:10cd23ed3ecc117d258dce0b12778d1d2c1abf2198eb0b614fcf71ba219ee1ec` |
| 28 | `def` | [weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept.md) | 227 | `declaration-track:910f71ca51bdd15bc02a2938663a8cf8743678dccb91052288860ca98965c6cd` |
| 29 | `lemma` | [hasSumLocallyUniformly_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassumlocallyuniformly-weierstrasspexcept.md) | 233 | `result-track:1ccd092a5c7212b63167ea1eea40c06ea6b0b136a073939ab4e284656e591abd` |
| 30 | `lemma` | [hasSum_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassum-weierstrasspexcept.md) | 245 | `result-track:b08735c01525aecba74e27aed86b7742b013951dd268384038df1f67d969bf27` |
| 31 | `lemma` | [differentiableOn_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/differentiableon-weierstrasspexcept.md) | 251 | `result-track:00d19d7960a449108284afe68ea60f3423437935f18d5a10c4721997ae4a9ec7` |
| 32 | `lemma` | [weierstrassPExcept_neg](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-neg.md) | 259 | `result-track:a253495a500ec36d42289be9ebf748845fa244afc8ffaa89ba0ba76db77eb673` |
| 33 | `lemma` | [weierstrassPExcept_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-zero.md) | 268 | `result-track:edf3910f730d692f676698fdeba0e699b8c348bb5f1666729777be1da24e4516` |
| 34 | `def` | [weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp.md) | 276 | `declaration-track:53e6e8a3b0f29be1c70b7a6b3663e8138f239cb613d5facf817414ef25c59417` |
| 35 | `lemma` | [weierstrassPExcept_add](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-add.md) | 280 | `result-track:369ca535811c615f0b58b66fb1a32b5cf9dea395bfdadd01890c0e55113768d1` |
| 36 | `lemma` | [weierstrassPExcept_def](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-def.md) | 289 | `result-track:392bd74cd0f58a434f0323c4ec38fac8f27b9ba37b10ff20a1a688e73995157c` |
| 37 | `lemma` | [weierstrassPExcept_of_notMem](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-of-notmem.md) | 294 | `result-track:01f82bd66eb250388ef2197a64a297e8428725ad6558601d26a5f04b51b588f9` |
| 38 | `lemma` | [hasSumLocallyUniformly_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassumlocallyuniformly-weierstrassp.md) | 301 | `result-track:54eeaf1c5d9eb76fe87b9092199a31b6c85eb77f2f9ea0f3457cf05fbad99150` |
| 39 | `lemma` | [hasSum_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassum-weierstrassp.md) | 307 | `result-track:5d911ada59982e633bc2ba5d67faf532ca9747482c1430c0b2562db949d83db2` |
| 40 | `lemma` | [differentiableOn_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/differentiableon-weierstrassp.md) | 311 | `result-track:8bbd7880f36ce299d898e068fbd376c2dca480724dd9ee3300310fb6952f935d` |
| 41 | `lemma` | [weierstrassP_neg](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-neg.md) | 318 | `result-track:cc9cf52a31c376e1a7a802aa100607f5267b6ef119efe193cae6f94a4f171930` |
| 42 | `lemma` | [not_continuousAt_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/not-continuousat-weierstrassp.md) | 325 | `result-track:73ed0fa0ca98100e1fa6864bd42f20ceff79e1dadaffa4b8ae6362076a321df7` |
| 43 | `def` | [derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept.md) | 343 | `declaration-track:9e9788ad8e07a776342ff1805644fc9a5664e97621b7f8dd2966073e4cab1132` |
| 44 | `lemma` | [hasSumLocallyUniformly_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassumlocallyuniformly-derivweierstrasspexcept.md) | 349 | `result-track:a9d60ad6974e6486e5440af261662682de59bde5529be62fb98157ce6fb56063` |
| 45 | `lemma` | [hasSum_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassum-derivweierstrasspexcept.md) | 371 | `result-track:d122e542fa6d7d006987ecd7b516361c58f56691f016f1feec937f4877f19d34` |
| 46 | `lemma` | [differentiableOn_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/differentiableon-derivweierstrasspexcept.md) | 376 | `result-track:388cde457d746b3de3572f7f440e918388f05c0f2497336b61d6e9447e160455` |
| 47 | `lemma` | [eqOn_deriv_weierstrassPExcept_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/eqon-deriv-weierstrasspexcept-derivweierstrasspexcept.md) | 387 | `result-track:b0867e153224162e5061ceabad30867f37e65f11697a872572d45ba58d2d1d0c` |
| 48 | `lemma` | [deriv_weierstrassPExcept_same](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/deriv-weierstrasspexcept-same.md) | 421 | `result-track:15c1017daf50a8067d42fbc1b2251407c6b339b364039d722b927adcfb699e19` |
| 49 | `lemma` | [derivWeierstrassPExcept_neg](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-neg.md) | 424 | `result-track:96c4d37688e659be66a9bec11cdfbae4a0eedb91f33ad9186e4db11b93f7ca91` |
| 50 | `lemma` | [derivWeierstrassPExcept_zero_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-zero-zero.md) | 434 | `result-track:ae81ada0b7831233053461f2311c662b53fe8a498b65e58fe0a15d309db9ea3f` |
| 51 | `lemma` | [derivWeierstrassPExcept_add_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-add-coe.md) | 441 | `result-track:535b1b5c6415db2590807591984c87594122c3c4e1d32caa677583837d27c98f` |
| 52 | `lemma` | [weierstrassPExcept_add_coe_aux](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-add-coe-aux.md) | 448 | `result-track:9c11841427c9d730e7f8f74a60d46231c6308ccd0c178452893c72f5abee585d` |
| 53 | `lemma` | [weierstrassP_add_coe_aux](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-add-coe-aux.md) | 474 | `result-track:190882f82ee9799ea1d9c3fa03bed8e13d0e99d755ceea869b28011ef2d0605a` |
| 54 | `lemma` | [weierstrassP_add_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-add-coe.md) | 492 | `result-track:66ad241a6f5b6d503f22298519282df0a4877c1f5d36d73bbec936529fb1e840` |
| 55 | `lemma` | [periodic_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/periodic-weierstrassp.md) | 507 | `result-track:a20e14da9cf769c0ec559c210c93701c2134364942ae838b2de523c35090f466` |
| 56 | `lemma` | [weierstrassP_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-zero.md) | 511 | `result-track:359501e6387b3f4e1f5aff9359eed8f343cb522a245343b604d4cd15629ccf1f` |
| 57 | `lemma` | [weierstrassP_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-coe.md) | 514 | `result-track:da265e9a3885eaaa0eedbafe01ba7610a45ed9e53f9caba581a91466a35b18ab` |
| 58 | `lemma` | [weierstrassP_sub_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrassp-sub-coe.md) | 518 | `result-track:5ea7c7b50e93b845a70da78928af057b843c5758c6ba075eb385153b6b8b902f` |
| 59 | `def` | [derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp.md) | 527 | `declaration-track:fd20bcd2b3f3e62e9139b3f08e36623a8b171c5691c37d28f6cc6b2295d6ea6f` |
| 60 | `lemma` | [derivWeierstrassPExcept_sub](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-sub.md) | 531 | `result-track:20f84e16af29bf6d5e448aae19f988318918132199ffc50a97dcf52f86d69430` |
| 61 | `lemma` | [derivWeierstrassPExcept_def](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-def.md) | 540 | `result-track:2ef4e75a4161a7970a332aa9539a888ae276467c689d62d235255717389f8ea5` |
| 62 | `lemma` | [derivWeierstrassPExcept_of_notMem](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexcept-of-notmem.md) | 544 | `result-track:be57e77b2d827db31f61df67ffea729866a4d8c3c304626e7793e3c429a55506` |
| 63 | `lemma` | [hasSumLocallyUniformly_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassumlocallyuniformly-derivweierstrassp.md) | 552 | `result-track:30a0fd92fe7881a323a2dc0fa3884a611c837446ec8389f74f5674fdfdcd73aa` |
| 64 | `lemma` | [hasSum_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassum-derivweierstrassp.md) | 558 | `result-track:1cd2b03de010cc91f277e78a26deb8b48253300bdf31727bef78e9c6beb2595d` |
| 65 | `lemma` | [differentiableOn_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/differentiableon-derivweierstrassp.md) | 562 | `result-track:a79e03095f5435cafd504e1ccbd83eee7e0f1342e3fb385f758bab12d559833a` |
| 66 | `lemma` | [derivWeierstrassP_neg](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-neg.md) | 569 | `result-track:84a38e514afa2d862526c0a0e68e9c8c4b26f0d91d1f734f19cc163eb3cccfa0` |
| 67 | `lemma` | [derivWeierstrassP_add_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-add-coe.md) | 578 | `result-track:88c5342053ce7ddd5c3ee5d9c0290d28f37af4846966cd0e74900f9616ce0c59` |
| 68 | `lemma` | [periodic_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/periodic-derivweierstrassp.md) | 584 | `result-track:05e34891678349cd16673355b5f70dd45a3139796865c213d02ede46a4599981` |
| 69 | `lemma` | [derivWeierstrassP_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-zero.md) | 588 | `result-track:b175f707b600dc2a012df45ed6daa550dbed7e2e310bf463e005c9dff01de0bd` |
| 70 | `lemma` | [derivWeierstrassP_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-coe.md) | 592 | `result-track:a48100bfd3133133764a46efe2b8fb3baa37f6a09f3ede3d7f3d2c05f9b9fd35` |
| 71 | `lemma` | [derivWeierstrassP_sub_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-sub-coe.md) | 596 | `result-track:b3de0bcd459f43e277359f660d69fbe85c64e9c2b0e92eed700345f698e5051e` |
| 72 | `lemma` | [deriv_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/deriv-weierstrassp.md) | 601 | `result-track:9aac3ecf47b90490aff9adcbf709b0670aaa977cd3ec9fa0e49427b7de3601c8` |
| 73 | `def` | [sumInvPow](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/suminvpow.md) | 615 | `declaration-track:71e71f5d099d835ba94929ae87dbb69e2c59d7fe0f338a51c782408ed391b8c7` |
| 74 | `lemma` | [hasSum_sumInvPow](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hassum-suminvpow.md) | 617 | `result-track:97c4147b3b149fd1463c09ce8ca94a6fe237f06c5edaa2bb1eb78f7ec6952406` |
| 75 | `def` | [weierstrassPExceptSummand](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexceptsummand.md) | 627 | `declaration-track:33c43643ce1cd883aca850fa72020045f1857d8ad436e769bbe5effdc1cecd0a` |
| 76 | `def` | [weierstrassPExceptSeries](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexceptseries.md) | 632 | `declaration-track:821f6e0753ba3ed8ec926ffb3f92d12ffd3abd2d280f7d577fed9af938dcd848` |
| 77 | `lemma` | [coeff_weierstrassPExceptSeries](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/coeff-weierstrasspexceptseries.md) | 637 | `result-track:db927b82972b2fb022eb7d8121de04839a8d6179acef5007e0141e2c98d8a09c` |
| 78 | `lemma` | [summable_weierstrassPExceptSummand](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/summable-weierstrasspexceptsummand.md) | 671 | `result-track:18ec086c595fc87811d047dfb67e3ac9302863e25a70caf64f0d703b80dad063` |
| 79 | `lemma` | [weierstrassPExcept_eq_tsum](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexcept-eq-tsum.md) | 721 | `result-track:6d2e267e01fea7231df5fab953f0d29471a6701cc4e1476f3b5c01cde5ea34ff` |
| 80 | `lemma` | [weierstrassPExceptSeries_hasSum](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexceptseries-hassum.md) | 739 | `result-track:5bb88d3606f5ad947573f6bcee956d2f876439de65d8d6c5a8ddb96f158aba77` |
| 81 | `lemma` | [hasFPowerSeriesOnBall_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hasfpowerseriesonball-weierstrasspexcept.md) | 746 | `result-track:455121dc7256ed73cdf330f5e5870c8c4d89d0936a9cfaf1d51ea41de7f39407` |
| 82 | `lemma` | [hasFPowerSeriesAt_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hasfpowerseriesat-weierstrasspexcept.md) | 772 | `result-track:13a4c4ac195c741d434a3024db2362bcb517854853fca012b995e0b8addfd591` |
| 83 | `lemma` | [analyticOnNhd_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticonnhd-weierstrasspexcept.md) | 781 | `result-track:d38b32f8090a77b6457d95a645cbb719607aefe2ce828948e1fe72ec327dbf8c` |
| 84 | `lemma` | [analyticAt_weierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticat-weierstrasspexcept.md) | 785 | `result-track:f9bdf2a0ac22bf6d849398d2fa68fe30be5ff687c5a680688b62b44662e91bba` |
| 85 | `lemma` | [iteratedDeriv_weierstrassPExcept_self](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/iteratedderiv-weierstrasspexcept-self.md) | 789 | `result-track:f01a89a23b8cde24e6b091627dc55887962af5e41d8c64ee8972ab46da096d72` |
| 86 | `def` | [derivWeierstrassPExceptSeries](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrasspexceptseries.md) | 805 | `declaration-track:5a38f8c50ec5975decff61f54c0b99ca3bc5f2f9f07347cfcddd1b8229288e48` |
| 87 | `lemma` | [hasFPowerSeriesOnBall_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hasfpowerseriesonball-derivweierstrasspexcept.md) | 810 | `result-track:2f3838b277e0bde539156b6701b01cbafa79143396d76895882a258b99501353` |
| 88 | `lemma` | [hasFPowerSeriesAt_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hasfpowerseriesat-derivweierstrasspexcept.md) | 822 | `result-track:a509d25a55120c1ee3da8a1c1957ba076f08b6c8cbc6837c67d2e31bf91e733a` |
| 89 | `lemma` | [analyticOnNhd_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticonnhd-derivweierstrasspexcept.md) | 830 | `result-track:a0509f51ccf3b2de0a314c65a60cd3805bd610b82c6b9e1e9015ebb81b62dd3b` |
| 90 | `lemma` | [analyticAt_derivWeierstrassPExcept](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticat-derivweierstrasspexcept.md) | 835 | `result-track:b1bc76fc1ae5fc0e599cd61bfed31cfdcfc10c41bd810d3740a971f14936e165` |
| 91 | `lemma` | [iteratedDeriv_derivWeierstrassPExcept_self](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/iteratedderiv-derivweierstrasspexcept-self.md) | 839 | `result-track:d560395e81d5607cf9b7c5544cdc48470d356818576d0741ae3171aff37cfc69` |
| 92 | `lemma` | [deriv_derivWeierstrassPExcept_self](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/deriv-derivweierstrasspexcept-self.md) | 848 | `result-track:57dd5f33e9845ec2c2ff3bf4ba9a284e45574e74759e2b3000378343cadce8e5` |
| 93 | `lemma` | [analyticOnNhd_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticonnhd-derivweierstrassp.md) | 852 | `result-track:2c3e7f7582c020690b294077a3a32ab82430903e6f2f1f63d711d7bab02a3a23` |
| 94 | `def` | [weierstrassPSummand](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspsummand.md) | 862 | `declaration-track:3b0bb5dc6adf392f85cc7309d50d9657ad420797639b725d56d119bb18a72711` |
| 95 | `def` | [weierstrassPSeries](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspseries.md) | 867 | `declaration-track:8715bdec12943ea484fa7bb5ec3d81b7e7761a08304cc80aad63f8213f0ed33e` |
| 96 | `lemma` | [weierstrassPExceptSeries_of_notMem](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexceptseries-of-notmem.md) | 870 | `result-track:7e2b4fad24460ad4ad9d3ead36298adc0e3e1195da0ef9a5a05f6e7dc169e40d` |
| 97 | `lemma` | [weierstrassPExceptSummand_of_notMem](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspexceptsummand-of-notmem.md) | 877 | `result-track:52ecb07433e62b475eb9e41b9c291921d37feb19fd3d7d2e16b0c0db3b70c1bd` |
| 98 | `lemma` | [coeff_weierstrassPSeries](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/coeff-weierstrasspseries.md) | 881 | `result-track:079bd25a35a933baee9a6310200c1fba53da5cca50a6a47d3ca86143213b4277` |
| 99 | `lemma` | [summable_weierstrassPSummand](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/summable-weierstrasspsummand.md) | 887 | `result-track:6ce1f72ff1bb125839100e28e4f47e918ec3036c07e7080aaa028b6666dcc572` |
| 100 | `lemma` | [weierstrassPSeries_hasSum](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/weierstrasspseries-hassum.md) | 893 | `result-track:84af45aa0b95175d7185849fcb9ebc3dda727afa1af66b0d3873b8ca54c3f4b0` |
| 101 | `lemma` | [hasFPowerSeriesOnBall_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/hasfpowerseriesonball-weierstrassp.md) | 899 | `result-track:e0204ffd39f40ca5d67f3f2a96ac1a6ae0a1de261cacf9cc46323a771a2fac4f` |
| 102 | `lemma` | [analyticOnNhd_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticonnhd-weierstrassp.md) | 907 | `result-track:65b265e99eda66179bb35846abf1466b18a74799f517b7770250ac39753db783` |
| 103 | `lemma` | [ite_eq_one_sub_sq_mul_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/ite-eq-one-sub-sq-mul-weierstrassp.md) | 910 | `result-track:49d1ecfa947d21782e5fcab50a88c26a3348b5a7fc149f359575f64f16c29f27` |
| 104 | `lemma` | [meromorphic_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/meromorphic-weierstrassp.md) | 916 | `result-track:911c0325554166edb2f47fd684075ba3097ac65346cadd18118889bb278238ae` |
| 105 | `lemma` | [meromorphic_derivWeierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/meromorphic-derivweierstrassp.md) | 925 | `result-track:e25c7ec0766f26b41bc713ef624ad94ea0274f6302cad4c0045c5b1d3ef9e62e` |
| 106 | `lemma` | [order_weierstrassP](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/order-weierstrassp.md) | 929 | `result-track:e0d51f88ac6c85ff9ed97b33c4b1bf53c79c3dd08fabc8c4a55ddb8c2e1aa612` |
| 107 | `def` | [G](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/g-source-edition-2.md) | 953 | `declaration-track:bde514c8ea3281939d7e3ab2b4bca56f72dd85bbbfe5800e886cdd522398186e` |
| 108 | `lemma` | [sumInvPow_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/suminvpow-zero.md) | 956 | `result-track:141af8a0305880deaa0262ac2789c466079a16fe6c716e0341fc042da1464215` |
| 109 | `lemma` | [G_eq_zero_of_odd](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/g-eq-zero-of-odd.md) | 959 | `result-track:1b9d4c1d09d54aefc7f0dcc714d4cbb6b81c5269547362bd08927ba7bd9fc0d8` |
| 110 | `def` | [g₂](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/g.md) | 965 | `declaration-track:9f36b47e6616297ad2ddadf8ddfb97a9dc33cf82169d001ba371c9d70557dd31` |
| 111 | `def` | [g₃](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/g-source-edition-3.md) | 968 | `declaration-track:ed314a3da89e46a4fa535b1f3a28cbbb67cee68c47d61e4c5225b3cccc62cc01` |
| 112 | `def` | [relation](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation.md) | 972 | `declaration-track:fe8864965c43b8370f3f85b107842513f218a0b117d170edce811a14881d9f02` |
| 113 | `lemma` | [meromorphic_relation](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/meromorphic-relation.md) | 977 | `result-track:0cc99688f47ffc3511bff57da3642cb61ffdcc96bae5799614ab82c0ab7d49eb` |
| 114 | `lemma` | [relation_mul_id_pow_six_eventuallyEq](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation-mul-id-pow-six-eventuallyeq.md) | 984 | `result-track:06e8c2ccd1451f0f392637fd3a36817f81ab4ee4e3152bf8211e9ab9327264c5` |
| 115 | `lemma` | [analyticAt_relation_mul_id_pow_six](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticat-relation-mul-id-pow-six.md) | 999 | `result-track:4d41ed2761d356c05783b8af6e86edb1dc7951db77a9e3e2b8da46fffc282c9f` |
| 116 | `lemma` | [relation_neg](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation-neg.md) | 1005 | `result-track:8c242362bf393a28ce8430b9ef5fd3d7336c136887f6a452f40518a2fcf8198a` |
| 117 | `lemma` | [iteratedDeriv_six_relation_mul_id_pow_six](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/iteratedderiv-six-relation-mul-id-pow-six.md) | 1009 | `result-track:357d85977716c4e5ba7e20a0ca693bff3f4ecedcc5a923de046375917edd60da` |
| 118 | `lemma` | [analyticAt_relation_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticat-relation-zero.md) | 1021 | `result-track:588dbb50c2b26bbd8a80b1ee257fc45ff7f9c89d1ce4adeedba3b4c148342652` |
| 119 | `lemma` | [relation_add_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation-add-coe.md) | 1048 | `result-track:1a77e6e8a9f80154b0efaec057d995857030b8da23d8a8953684ac7943040eed` |
| 120 | `lemma` | [relation_sub_coe](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation-sub-coe.md) | 1055 | `result-track:5747d51b7e36cb23a98a5f4b3a94846c81da2091703a53fae4d1f6feb63ce411` |
| 121 | `lemma` | [analyticAt_relation](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/analyticat-relation.md) | 1059 | `result-track:626855bf3b471693fb89a226c3490fff61a145f2a0614b2be843092d4377a8e5` |
| 122 | `lemma` | [relation_eq_zero](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/relation-eq-zero.md) | 1075 | `result-track:71d76818f889a2a7d294143c91e20f7a17ac7d9a3d2673f944bba43157d30d2c` |
| 123 | `lemma` | [derivWeierstrassP_sq](../../../../SpecialFunctions/WeierstrassNamespacedPublic.lean/declarations/derivweierstrassp-sq.md) | 1083 | `result-track:f60bf9e982e2f291cbb0c82b9dc57169f32067236dbf0d6b155e29c5ed25eddb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09dfe35a25689f30f714d3ea8fdfc0dceab0b5b244a62c1aaa4e54b8d35aec2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Weierstrass/Variant35fd80ec813d055758a902eda0aeda602969eaa91bcc0422a260b32d785205d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
