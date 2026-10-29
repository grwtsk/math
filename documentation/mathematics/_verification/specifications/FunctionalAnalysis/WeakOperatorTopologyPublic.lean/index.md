# Verification target: Weak Operator Topology Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2633257d7b4f13e712f9261861c86375a97a8964",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2633257d7b4f13e712f9261861c86375a97a8964`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean.json)

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
| 1 | `structure` | [ContinuousLinearMapWOT](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuouslinearmapwot.md) | 59 | `declaration-track:61cabb140ef741c4bc1c96859a4006d2495351dc27e174dfe716333d560f761c` |
| 2 | `def` | [delabOfCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/delabofclm.md) | 76 | `declaration-track:a1c0bd3fca597ed6226fea2ce0b10fcc401927533ceb766c29ad4bb565270e39` |
| 3 | `def` | [equiv](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/equiv.md) | 104 | `declaration-track:36ffabb14fc6e92a013fce1194a92e82b6a7a04b87d98ff8d157bc3db81878aa` |
| 4 | `lemma` | [toCLM_injective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-injective.md) | 111 | `result-track:fed5cb7c4ef4f65bb729df7db248c7f1b541a60f299572156f9f3d3516511fb3` |
| 5 | `lemma` | [toCLM_surjective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-surjective.md) | 115 | `result-track:f1bd326bfd229ba4f0caf8eab1790b229374f54d7a908ce8354943bcf92e9718` |
| 6 | `lemma` | [toCLM_bijective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-bijective.md) | 118 | `result-track:479b70d2c26bcaef47872893699c4432a035cc436e07d18e6fb6a760d738076f` |
| 7 | `lemma` | [ofCLM_injective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-injective.md) | 122 | `result-track:3bc396b6d2f26283dba202096897e81e1842af5c62c3c9c2491d7cd45fed39ef` |
| 8 | `lemma` | [ofCLM_surjective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-surjective.md) | 126 | `result-track:dad282f1b4a29d95395dac7293a00b1974054f5f6b9b81896125a111c875526c` |
| 9 | `lemma` | [ofCLM_bijective](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-bijective.md) | 129 | `result-track:e8dd5196c9a6acaaf8184f1faf30baef476f141033e4136b7ce95560a822884f` |
| 10 | `instance` | [instAddCommGroup](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instaddcommgroup.md) | 132 | `declaration-track:108ee0a4c98cf63dd434e6725b27d1e6dc782fd32cc9f8c7ee690f830e96641f` |
| 11 | `def` | [addEquiv](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/addequiv.md) | 138 | `declaration-track:4f91b3aa100090e132c392e0172010aba32aa11de238dc14895fa12ebe28e22f` |
| 12 | `instance` | [instSMul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instsmul.md) | 142 | `declaration-track:1878f635004df3b323c7bd504392deeed1acd9177fedd4618ff1859f5611443d` |
| 13 | `instance` | [instModule](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instmodule.md) | 146 | `declaration-track:80b8d1f416980494860fd04b41ab115d3355c6d3a8c3175efc2b44719e44dbae` |
| 14 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instisscalartower.md) | 151 | `declaration-track:69dc42b66926d69dd282795ff3e654c984d721d8455438dba2b7f494cd3ff35e` |
| 15 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instsmulcommclass.md) | 157 | `declaration-track:783555b9e08e4625d2641bb0dd61313245beeff2a4877ddf268dc565226948ac` |
| 16 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instiscentralscalar.md) | 163 | `declaration-track:17394e9e18403ea83080b24f1c7ed51db2994f55468216c96d79b0bb0ef2c605` |
| 17 | `instance` | [instRing](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instring.md) | 168 | `declaration-track:6fbe1f6f70ea378e2d8af4acf6c4efd697e0362230d75598b2b91d129982f585` |
| 18 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instalgebra.md) | 171 | `declaration-track:95cb2f84c81b14617771e697721d066a1b23260509e8e6f60ed7c85a15dba7d8` |
| 19 | `def` | [linearEquiv](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/linearequiv.md) | 178 | `declaration-track:50666c2883e0c033dc3e8e80a206c83886af7f642a316c07af14d4bf2775b8ef` |
| 20 | `def` | [ringEquiv](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ringequiv.md) | 185 | `declaration-track:903222b554b312095d2f549ec76936af481472cb5bfc0c755c7f0ddc7e6455d3` |
| 21 | `def` | [algEquiv](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/algequiv.md) | 190 | `declaration-track:8c46feb800071e3f61a9f1a895f843d8ca2f81d08b5ce8555de18b5100382d29` |
| 22 | `instance` | [instFunLike](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instfunlike.md) | 196 | `declaration-track:07e74edc0750e94d5b779ece7888d7932676c0def01555e8f54d0b063dab661f` |
| 23 | `lemma` | [coe_toCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/coe-toclm.md) | 201 | `result-track:d0d06e74dfff403468634390ba40409f7c7ec18dc21bfbab813bfe89621691d9` |
| 24 | `lemma` | [coe_ofCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/coe-ofclm.md) | 204 | `result-track:8c96dea72c086f9f8c0f804ec392d9dcdfde16716770a413cf692a12452bb2c1` |
| 25 | `instance` | [instContinuousLinearMapClass](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instcontinuouslinearmapclass.md) | 206 | `declaration-track:3cd62796a14eb9f01a72f8f374e4ead5eccac6db9cf5bbc5ec332adaf7d9f2a0` |
| 26 | `lemma` | [ofCLM_toCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-toclm.md) | 212 | `result-track:ed16cff9479e5100fa3114f2671ba68f2a52fdb5387f2d2eb6fcd5395d8cd8bf` |
| 27 | `lemma` | [toCLM_ofCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-ofclm.md) | 215 | `result-track:feefb99804bdb4368bb538a8142ea652724a35530a2de62ff03bcb722b68d6df` |
| 28 | `lemma` | [toCLM_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-apply.md) | 218 | `result-track:134a9fd578a42b2d8a807a5ed8d5822402fa1e0c74155f0fa614273f4eb753cf` |
| 29 | `lemma` | [ofCLM_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-apply.md) | 221 | `result-track:29eb1486c5d3b2b6c635add1e6753515ea598ac9386ee1d7e4d20347e10018d2` |
| 30 | `lemma` | [ext](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ext.md) | 226 | `result-track:623cb90fbdbdce39605bbf2d9336cf75d3a824e0f97f2d7416ccc47569d30429` |
| 31 | `lemma` | [ext_dual](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ext-dual.md) | 233 | `result-track:66702f1cd0e70130578df4282c32e24b9fe00604dc46e9298692b862f136d871` |
| 32 | `lemma` | [ofCLM_smul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-smul.md) | 243 | `result-track:4694100d2febd035e8485e09d608e5248f8fc0c710fa556f24a90b5ea3b5a6d3` |
| 33 | `lemma` | [toCLM_smul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-smul.md) | 244 | `result-track:23798aed50cf39117d2914f961bae4013b12d3cdeafc8b88ca8423ce6c038484` |
| 34 | `lemma` | [smul_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/smul-apply.md) | 245 | `result-track:1bfab19e2f4caad3507c3a309fab7c629eb486f777d4998df68d5b7c1f050ff2` |
| 35 | `lemma` | [toCLM_algebraMap](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-algebramap.md) | 254 | `result-track:0f72431c044b130ac9a8b0a474f2df3cb6868e219f6c9f1795c30dedb18fb9d6` |
| 36 | `lemma` | [ofCLM_algebraMap](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-algebramap.md) | 258 | `result-track:a6565baeda21241dc009069904bec5c772b53d8fb2f60c3cf9fc6e77c0183e12` |
| 37 | `lemma` | [algebraMapCLM_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/algebramapclm-apply.md) | 262 | `result-track:04443e1b8201ec499428fd6d5be4dd420191253846187303edb3c6be02b4f34d` |
| 38 | `lemma` | [ofCLM_zero](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-zero.md) | 270 | `result-track:52ef1feca490d9a3a5a8b0e5b18fa6fba1ca893d234207b1a710f203c5f1fd70` |
| 39 | `lemma` | [ofCLM_add](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-add.md) | 271 | `result-track:4decf5d8b06b6a4a6e678bdff851f2d7d118204fbc3f309d3bc9cc1d5cc0317e` |
| 40 | `lemma` | [ofCLM_sub](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-sub.md) | 272 | `result-track:7bac601c3093726078370fb634de958f989d582cae37538106d3fd04a5056980` |
| 41 | `lemma` | [ofCLM_neg](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-neg.md) | 273 | `result-track:98c2f909629c50bb9ac6f65af8169ccea8c460a5042156afab2f6a8ebafbb9ad` |
| 42 | `lemma` | [ofCLM_mul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-mul.md) | 274 | `result-track:e3a427399f3635eabee927af52523e251e254581bac5272d37c59b722370f622` |
| 43 | `lemma` | [ofCLM_one](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-one.md) | 275 | `result-track:dfd260584c262ddc82f7fbfd2e299b875b36f21c2fc433a42cdda203b012b0f5` |
| 44 | `lemma` | [ofCLM_pow](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-pow.md) | 276 | `result-track:7da4655dc7c0d7e2fd736e305aaeb6bf250be769bd92e82156f7dfba498f45d7` |
| 45 | `lemma` | [ofCLM_natCast](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-natcast.md) | 277 | `result-track:b3424e81b4336f00df80bcbab660773dce1470ddcffffcb169c8cc07784462e3` |
| 46 | `lemma` | [ofCLM_intCast](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/ofclm-intcast.md) | 278 | `result-track:00b46cccc0602860c76b3fb88a767f3ac9f5c9ed3af3ea895b7bbfd7413d7f3c` |
| 47 | `lemma` | [toCLM_zero](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-zero.md) | 280 | `result-track:1e6d96f890e4aad56b64b8e43c804976b8aa014a65a5c2f4847a7a3348ebecb5` |
| 48 | `lemma` | [toCLM_add](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-add.md) | 281 | `result-track:e14c7d1698ceac34bcbc69d8f343b5da2d50144a1a9b68ac3eb907082133085b` |
| 49 | `lemma` | [toCLM_sub](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-sub.md) | 282 | `result-track:49863cea7ef835bb11a7675333e68f1ea9ea49a80e79658497f55fa015318a6b` |
| 50 | `lemma` | [toCLM_neg](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-neg.md) | 283 | `result-track:d3732863f52b1750d40d6b638894e5238bcdfbce8332ee6cfb3b804dd77329d0` |
| 51 | `lemma` | [toCLM_mul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-mul.md) | 284 | `result-track:07ad0e3d045371cee03eccc4f713ac2363fe7a8e11bc719b58ed423c07412c04` |
| 52 | `lemma` | [toCLM_one](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-one.md) | 285 | `result-track:d06f352d7ee0a24cb4208197899b4240123d4042e2f972119687ac02b5cce4a2` |
| 53 | `lemma` | [toCLM_pow](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-pow.md) | 286 | `result-track:902f86d779a50aba7ed8f146c7ce8fa92c206d80be1fdc54497323ebb044eed4` |
| 54 | `lemma` | [toCLM_natCast](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-natcast.md) | 287 | `result-track:e095950bb3d004666fe401dda2274fd972eb0386c8b9f26f04f0cdbc0ea273f6` |
| 55 | `lemma` | [toCLM_intCast](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-intcast.md) | 288 | `result-track:327b90ae5d5ed27cc0958492f8f42c417a37262e70a5658786f7e7433103e714` |
| 56 | `lemma` | [zero_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/zero-apply.md) | 290 | `result-track:4365805e18202d02cdc4a439194d733908910bd1d7c8a5b0717eb023c2af4ce0` |
| 57 | `lemma` | [add_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/add-apply.md) | 291 | `result-track:a6be1e60589c6a7a7203047d6188d3fbec1fe6ac980e9b8e1424e7406c4b52d9` |
| 58 | `lemma` | [sub_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/sub-apply.md) | 292 | `result-track:d4724f96fb8da1cab5ef07fb00650194964aedc765be9f7fcc94ffe0631fbe8c` |
| 59 | `lemma` | [neg_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/neg-apply.md) | 293 | `result-track:b733a1fb98c5d6a41bcc727fea3530cd423c0499ac4362e2f21be65d5d6b6183` |
| 60 | `lemma` | [mul_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/mul-apply.md) | 294 | `result-track:cb9d434c445e4c05a213be49e9d0540b46fdbfa160fb9342f564f2e851081213` |
| 61 | `lemma` | [one_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/one-apply.md) | 295 | `result-track:29ea91b5cfa57ffb525aac7dae38b3fd044eb8fab4d389875b55074e5b366fea` |
| 62 | `lemma` | [natCast_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/natcast-apply.md) | 296 | `result-track:08555a9ac529464bd47a1e71ec92376786487176e6dd50faae972304dc7a34ea` |
| 63 | `lemma` | [intCast_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/intcast-apply.md) | 297 | `result-track:5134d2b5a0a55b81f8785c94c5aa26ac76e7ce9ec99c45b2c49673695e6b54f1` |
| 64 | `def` | [inducingFn](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/inducingfn.md) | 315 | `declaration-track:8a28366f3dce866b9d3353cc3d3dcaeffc60924c92928e17e1f41d67df4e16d7` |
| 65 | `lemma` | [inducingFn_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/inducingfn-apply.md) | 321 | `result-track:d0a36f9e0a9f6b8fe962542492687a7a5ae622ca208172f2e6edaebe82220a3d` |
| 66 | `instance` | [instTopologicalSpace](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/insttopologicalspace.md) | 327 | `declaration-track:a8804b33c2436a4882335cac57068f417f6173a7961abb41141c049b713834c8` |
| 67 | `lemma` | [continuous_inducingFn](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-inducingfn.md) | 331 | `result-track:eec1a3f758695d0ddf9207e7c086bedbeb50920d6ebec6d563b19a48971fac31` |
| 68 | `lemma` | [continuous_dual_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-dual-apply.md) | 334 | `result-track:167a65223924d580bb3b5f12a4452bfcc562afa7e89d6049aa7864e453c12c08` |
| 69 | `lemma` | [continuous_of_dual_apply_continuous](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-of-dual-apply-continuous.md) | 338 | `result-track:ad26a42efa3833198e906438d06f9a89392299952b56ac71f217dc1b9722809a` |
| 70 | `lemma` | [isInducing_inducingFn](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/isinducing-inducingfn.md) | 343 | `result-track:5016feeeea7ecf2853bb9a4e7a2a7b0dbfb0a9015aa6eeaac602eafe6964f9a5` |
| 71 | `lemma` | [isEmbedding_inducingFn](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/isembedding-inducingfn.md) | 346 | `result-track:9ed0bab534fb8b937cf7c66c640b624ac8934e420a2735296288d899b5cebeef` |
| 72 | `lemma` | [tendsto_iff_forall_dual_apply_tendsto](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/tendsto-iff-forall-dual-apply-tendsto.md) | 354 | `result-track:0680140f4987a686b6986b30f8d6996010c15590585f29779833a4fa92dc1972` |
| 73 | `lemma` | [le_nhds_iff_forall_dual_apply_le_nhds](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/le-nhds-iff-forall-dual-apply-le-nhds.md) | 359 | `result-track:9bb1cc5010bb15484085a7b463a1da13f3bbb0f3a8f3d53fdc881d6a3bf3da1d` |
| 74 | `instance` | [instT3Space](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instt3space.md) | 363 | `declaration-track:462ab9276c0d22012dc4e5531796faf903f96347d028777d5633fd51de62b78e` |
| 75 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instance-source-edition-2.md) | 366 | `declaration-track:bf951006bb8ae52ac2984c82e875f8a7b844b89629ebec737efd8d3091ec4191` |
| 76 | `instance` | [instContinuousSMul](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instcontinuoussmul.md) | 374 | `declaration-track:f4e30a90468bab44ead8d71e60f964d2931515727d4216ed87334c3446f28561` |
| 77 | `instance` | [instIsTopologicalAddGroup](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instistopologicaladdgroup.md) | 379 | `declaration-track:b59b24fd7b54f71ed3365b67c3ba4674e78ef3df65b08c8d944761e5df66da1f` |
| 78 | `instance` | [instUniformSpace](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instuniformspace.md) | 383 | `declaration-track:d8364b286b2feacf123285fe3dcfb5d03ec45fdaaa56555c40c826ce1a99deb3` |
| 79 | `instance` | [instIsUniformAddGroup](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instisuniformaddgroup.md) | 385 | `declaration-track:a0a7d5e9068bf4902de72b5d41c981c9cbac4b6506d293f5763735a39e0365eb` |
| 80 | `def` | [seminorm](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/seminorm.md) | 396 | `declaration-track:13e90567331e223d99ed47d08166fdc14de24bf75330af88b8525b76c5746103` |
| 81 | `def` | [seminormFamily](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/seminormfamily.md) | 406 | `declaration-track:d051a425fd63bf07f81a0fb302b52fdfe6223e6ec99d794a8517377d4665a439` |
| 82 | `lemma` | [withSeminorms](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/withseminorms.md) | 409 | `result-track:5316960d97fbc7403c175f2285ccddc5d4eb1d3a617f7227a59cb0d81df113de` |
| 83 | `lemma` | [hasBasis_seminorms](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/hasbasis-seminorms.md) | 414 | `result-track:ceedcd47c11e943154a60543fba764d86d7ce6d6f80fa9b978aeb270ee6b422e` |
| 84 | `instance` | [instLocallyConvexSpace](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instlocallyconvexspace.md) | 418 | `declaration-track:8bd4e8d5682c0e12a47311d6e0e2f109b0eae22bdb8292a809fa974c1d4fa4c8` |
| 85 | `lemma` | [continuous_ofCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-ofclm.md) | 432 | `result-track:bec85190e6f1ef55da3acbc3eb46b9e85a6602509dbedce504f37cfb7d5f68be` |
| 86 | `def` | [_root_.ContinuousLinearMap.WOTofCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/root-continuouslinearmap-wotofclm.md) | 440 | `declaration-track:122c70a88e2c5d45771fcd7e5cce59193c3eae8f409e414723b0950efbdd1686` |
| 87 | `def` | [id](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/id.md) | 466 | `declaration-track:97d05045e5adc94183ee67f2ba9762c5c97d395597c7e8e8a296a488779f3bab` |
| 88 | `lemma` | [toCLM_id](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-id.md) | 469 | `result-track:efa8f84bf722b54726c98eb26458ab442aba030ec4247b5bf36a0f2eea110135` |
| 89 | `def` | [comp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/comp.md) | 473 | `declaration-track:e0226f7f59060cebcd9b75f7dc946a905f8ac1d53aebbe3634bd68b30d7acb07` |
| 90 | `lemma` | [comp_apply](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/comp-apply.md) | 477 | `result-track:7303730e968015e6ef2ba1abff7485c2c2b72d9c55c8b6b779d26928c3daebca` |
| 91 | `lemma` | [toCLM_comp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/toclm-comp.md) | 481 | `result-track:b9ee181f94fd229d82cc8efdb5bcca02c2e73d8a00d068e1ea73345b2d87536b` |
| 92 | `lemma` | [comp_id](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/comp-id.md) | 485 | `result-track:8a6b26f5a995848e810f277c56fbf9b0f03f32f0856e93c520ecea3317fcf575` |
| 93 | `lemma` | [id_comp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/id-comp.md) | 486 | `result-track:bb9c121d5d869481bc71fc6911ecf305338b77842f594b8bc92418c2857984a2` |
| 94 | `lemma` | [comp_assoc](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/comp-assoc.md) | 488 | `result-track:201f917acdcede41ccfdd8dfef2e561a195971094c744371f141fcef45e667a6` |
| 95 | `lemma` | [mul_eq_comp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/mul-eq-comp.md) | 492 | `result-track:5e9ca6e644a3e15d42971e74ae75a9fc71a9d9f6e81e97f88d7825bd3b563f4a` |
| 96 | `lemma` | [continuous_precomp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-precomp.md) | 495 | `result-track:5de98b212a1569cd9200b8cf9fc9abea8da87f3c9112c73cf135d34cecd0cbef` |
| 97 | `lemma` | [continuous_postcomp](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/continuous-postcomp.md) | 508 | `result-track:d7180e8418ce84a31566e467aebd11882ebb789999bb2d28c0f6e4b873813e15` |
| 98 | `def` | [precompCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/precompclm.md) | 526 | `declaration-track:2d116ab56718953945e29706eb87a722df3099f2a22380848e89f01d7dfb8825` |
| 99 | `def` | [postcompCLM](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/postcompclm.md) | 534 | `declaration-track:bdac6e58c42dac76b0bed3f1bbe725467d1277f93947010349d088db70911058` |
| 100 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/WeakOperatorTopologyPublic.lean/declarations/instance.md) | 540 | `declaration-track:4017fae3ac23154073649165c7f5a00036a57cac383a729d3e36c2ff0b961631` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1163073d1075b917d842b55f74124dfe9733e52941adcef62999bd946f03a5c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WeakOperatorTopology/Variant6727493f5d65bcffa4060c9e46f5dc32c3bd3eb49001ca25c15e437de5065c8b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
