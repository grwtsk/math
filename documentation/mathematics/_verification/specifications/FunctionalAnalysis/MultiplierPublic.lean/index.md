# Verification target: Multiplier Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0044b82b69d1836bf5ca1c42678e77b2ef939148",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/MultiplierPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/MultiplierPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0044b82b69d1836bf5ca1c42678e77b2ef939148`.

Source path: `GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean.json)

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
| 1 | `structure` | [DoubleCentralizer](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/doublecentralizer.md) | 68 | `declaration-track:ba6218e8971e0c59035550abd2d16b2fcaed4d61896e176e08f03dedde13d575` |
| 2 | `lemma` | [DoubleCentralizer.ext](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/doublecentralizer-ext.md) | 80 | `result-track:211ed53e9757f7f6f55236709128fe1cb8ff93844f923db08b7cce63456a1955` |
| 3 | `theorem` | [range_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/range-toprod.md) | 104 | `result-track:616f8362c86ff30cf197350f7ed3e07c842d4726c3bd6b9292f733941bb821f6` |
| 4 | `instance` | [instAdd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instadd.md) | 111 | `declaration-track:572ad62151b3d2a44ac3f1ab04af40fe01b7ff5f281c489fc7201c60c5a9d576` |
| 5 | `instance` | [instZero](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instzero.md) | 118 | `declaration-track:33ba45e10295a271c683e479746ab1643bbd73917c122c282e3dfcc246db546a` |
| 6 | `instance` | [instNeg](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instneg.md) | 123 | `declaration-track:c8c96742db94d8abbe852c005c4c3aa1c2946459c2eb2320cece5530ec1f23c8` |
| 7 | `instance` | [instSub](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instsub.md) | 130 | `declaration-track:2f2fde97bee3d951220096ad938b3b9d0237fcab77ac18f1fb0ba5eea43e20d1` |
| 8 | `instance` | [instSMul](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instsmul.md) | 142 | `declaration-track:8c1984cb4f43f6fa4ebf9a838b20aa3c366c164ce6df9cf4a340cd5be084d4d0` |
| 9 | `theorem` | [smul_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/smul-toprod.md) | 150 | `result-track:5fb972cc10f56548544bc212414c099f7523b9209422781f45e8fd269e5bee48` |
| 10 | `theorem` | [smul_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/smul-fst.md) | 153 | `result-track:50499e592a8dc40da78c67cf82853a673ae0b0be7218afffbb59fc476fe72d21` |
| 11 | `theorem` | [smul_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/smul-snd.md) | 156 | `result-track:ac9d8cbabfa69a152d69f99b2595f58cb118e8be3cab3ac8311fb9dab912e718` |
| 12 | `instance` | [instIsScalarTower](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instisscalartower.md) | 162 | `declaration-track:48db05d9b13d85c76932d74b3f4f6c698f9e726c6de6b970be26b5376a004b85` |
| 13 | `instance` | [instSMulCommClass](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instsmulcommclass.md) | 165 | `declaration-track:cdd819d42f21aed2b1d48d0143e4e5b4b904dd382101066a1ac666fa9a5cedc4` |
| 14 | `instance` | [instIsCentralScalar](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instiscentralscalar.md) | 168 | `declaration-track:468f4060a6880d2e071bdd9c8b8f00e215dd1db00e18a8b7f1b8ef565f9472c1` |
| 15 | `instance` | [instOne](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instone.md) | 175 | `declaration-track:6d8a04d8559a85545e447b76d90470d842956bec3d1f59ea8eee1294d47f0645` |
| 16 | `instance` | [instMul](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instmul.md) | 178 | `declaration-track:0117c7d53c7ce52657bd9aadd529312cd95463d408fef3f277836953c2375b92` |
| 17 | `instance` | [instNatCast](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instnatcast.md) | 183 | `declaration-track:22b8c7eeb6ea39d621cef1366c0e74e2020ea67c9692a945c22c76a7e350fadb` |
| 18 | `instance` | [instIntCast](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instintcast.md) | 190 | `declaration-track:abc089a7515df783f65f1beb9f6bf3a4b1de56a291b296afe15c6fced07da344` |
| 19 | `instance` | [instPow](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instpow.md) | 197 | `declaration-track:0931bb5bca5267f58d76ee3b3fb090005384dc70d6e479f4dff129b46bbbfbd6` |
| 20 | `instance` | [instInhabited](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instinhabited.md) | 206 | `declaration-track:038cce69aaa33c817493630b3bd02deb14177307f1bcaa73dcc86189e5f2e0ed` |
| 21 | `theorem` | [add_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/add-toprod.md) | 210 | `result-track:d6f2ee496b33c0f3b51729992b938910fa9e5504aeae66de5575da2513486e0e` |
| 22 | `theorem` | [zero_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/zero-toprod.md) | 214 | `result-track:bb498d8b4d27c3fb6789ed5d1d20a7771cdc392f63492ae127e25af51c4a50ac` |
| 23 | `theorem` | [neg_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/neg-toprod.md) | 218 | `result-track:2d2a1edf76276ca237885915f0048a2dcbacbfa52cdc0186f33b9f2aaa5757f2` |
| 24 | `theorem` | [sub_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/sub-toprod.md) | 222 | `result-track:c124355567fb04211e957c131456ee4292d7834ac62b0b97eda507fb224715b9` |
| 25 | `theorem` | [one_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/one-toprod.md) | 226 | `result-track:b8f215d82fd31f19f339fa04ca0fa038fee35cad13dd3fd6ad75cad89ab4b040` |
| 26 | `theorem` | [natCast_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/natcast-toprod.md) | 230 | `result-track:bb31b80db17ceb31dc1a6384389f6f4ee6f217bad14c91694775b06fd17ad9b1` |
| 27 | `theorem` | [intCast_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/intcast-toprod.md) | 234 | `result-track:b04f33bc48766dc30f3989f763f06d52ada6ac756ea6082a0fd271b49fefba4e` |
| 28 | `theorem` | [pow_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/pow-toprod.md) | 238 | `result-track:88c95abf0b92d5230ef3be7e69baf0e01ad902ff9fc301566f6e6d8a6639d4b9` |
| 29 | `theorem` | [add_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/add-fst.md) | 241 | `result-track:2a8e8a6318e89c6d82c6ff49f75a67c7001c6f45972b03f3c30cc3d64f46d76f` |
| 30 | `theorem` | [add_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/add-snd.md) | 244 | `result-track:8341b2a6bad6f804cc65fc8efca71c715bd665438b9baacef931513a2c3bd937` |
| 31 | `theorem` | [zero_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/zero-fst.md) | 247 | `result-track:ff00bb48727155f650850c9639571314f22331287540a28683019307a964c7ff` |
| 32 | `theorem` | [zero_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/zero-snd.md) | 250 | `result-track:da11ff38addad5802a4b46cf8bb1cd66dcab93b8126a6ac1eccc55df0279586d` |
| 33 | `theorem` | [neg_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/neg-fst.md) | 253 | `result-track:92f5394b8a7e588a1d752812ef8d735ef9b7e68ca5d67436b5ca81ee7e022909` |
| 34 | `theorem` | [neg_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/neg-snd.md) | 256 | `result-track:5bb791fbdaa2bc501fc98529caa76038cae428503e73b098a7235152b57cd27f` |
| 35 | `theorem` | [sub_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/sub-fst.md) | 259 | `result-track:493182575c563347f30839a59776eb2ae60379f9fd0f9d76d9c2c0a7acbde194` |
| 36 | `theorem` | [sub_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/sub-snd.md) | 262 | `result-track:5a3a90637cfc0f3647b3e94c1174661791bbe7d06e389dea397513de0b7dfffc` |
| 37 | `theorem` | [one_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/one-fst.md) | 265 | `result-track:169661833cc13637f3d2c81af204017e5702d58a3e4074d3ffcb86dd7bf0560f` |
| 38 | `theorem` | [one_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/one-snd.md) | 268 | `result-track:b2254244a84af395a14d27a3164d0723e2b21abd4d03f4fd4a447ce01a00de5b` |
| 39 | `theorem` | [mul_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/mul-fst.md) | 272 | `result-track:f09cffa56d78d524d4032f7f3f66a9e2be0b171565736ebb5292ad362fa14ef0` |
| 40 | `theorem` | [mul_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/mul-snd.md) | 276 | `result-track:81dd40b5029329fd783a8fd465cd8e70f94eb07d6f2adeddd4649109a7a3e99b` |
| 41 | `theorem` | [natCast_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/natcast-fst.md) | 279 | `result-track:44f07f62e73d30c417b5abdb4b71311634ccb908c9cf1b17b72afe25f30b66b5` |
| 42 | `theorem` | [natCast_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/natcast-snd.md) | 282 | `result-track:d7f2b427a7b3cd50d05092a11acee9da03539a8ab1ccdb7eb6f457c678693552` |
| 43 | `theorem` | [intCast_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/intcast-fst.md) | 285 | `result-track:7dcebca0db52ff02a7475ff9413a39ba3e7735924ba5b54eafaf4bb6d53b32cb` |
| 44 | `theorem` | [intCast_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/intcast-snd.md) | 288 | `result-track:a72a537d66b8db1a85db1d294b114106d020ae2fc7f4b318322b9b8bc0904797` |
| 45 | `theorem` | [pow_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/pow-fst.md) | 291 | `result-track:472af561e3ed9241d8a2541bb2c5f706054c0737d1e40e37f20aedf50f6a9ab6` |
| 46 | `theorem` | [pow_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/pow-snd.md) | 294 | `result-track:4254112065aa697ff0628d58fb4e85bf885adfbf573fea5563b9de68b46b9a50` |
| 47 | `def` | [toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/toprodmulopposite.md) | 299 | `declaration-track:fc89ee86606d489e4d9b356337cf993e23dc8b9aa7a6585beb1ed039a0a134d6` |
| 48 | `theorem` | [toProdMulOpposite_injective](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/toprodmulopposite-injective.md) | 302 | `result-track:a1c6b9fcdf4777c3f7e3d4b0405f3712d9e737d8ed1d0ecbc947fb444d04b262` |
| 49 | `theorem` | [range_toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/range-toprodmulopposite.md) | 308 | `result-track:92409c51974c0151d4821aa8c8e5bb30ed70dba7e08419ca1706de3758160730` |
| 50 | `instance` | [instRing](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instring.md) | 318 | `declaration-track:07b56480de8e4a1f9bf9053f72da26ddab1233f08445aa71b143ddafc39e5065` |
| 51 | `def` | [toProdHom](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/toprodhom.md) | 326 | `declaration-track:1bd30a78cd1688ddd4329a8b74599a7163a7e39ef8b8232d1659fef6ee3cac3e` |
| 52 | `def` | [toProdMulOppositeHom](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/toprodmuloppositehom.md) | 333 | `declaration-track:03ff5d6a5d6e41117c0a51ed0f150235dec7b7c0cc98c5441c8e4b52de3f11cf` |
| 53 | `instance` | [instModule](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instmodule.md) | 342 | `declaration-track:8f94205b3d553ba10dd1befdf904a66f5bc4628bd884f3ef4d312beb52564a98` |
| 54 | `instance` | [instAlgebra](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instalgebra.md) | 347 | `declaration-track:703118d5973f40109923ca2d9788cd26223d598736785a8a3a7735dbfde4a4ec` |
| 55 | `theorem` | [algebraMap_toProd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/algebramap-toprod.md) | 368 | `result-track:f716e46cf1be645a985fc553ee0843f90bdab4183bc2cd75098ac65c8a39e5ab` |
| 56 | `theorem` | [algebraMap_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/algebramap-fst.md) | 371 | `result-track:9f7c720625ec61b24d18ff4f66ffbd4c751fc160bbc19a3ff62cb995f0a022d2` |
| 57 | `theorem` | [algebraMap_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/algebramap-snd.md) | 374 | `result-track:ef26fc23a90854c159c42bab495c75bd1e12db0d5a4f60447d4f1b82961b2c1c` |
| 58 | `instance` | [instStar](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/inststar.md) | 388 | `declaration-track:cb6e798ce21199b95e6973fbc9ac29b1b4cca67a40073723de4b52e6f69c8a77` |
| 59 | `theorem` | [star_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/star-fst.md) | 401 | `result-track:81d2eee8501bf38f3b525355ecf7e26c19b5b969295c079a957665aecfd9ed6f` |
| 60 | `theorem` | [star_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/star-snd.md) | 405 | `result-track:6f529b185a5cd3dc864b937050c46b7071ef9845ca822d19c3f57cc7405a140f` |
| 61 | `instance` | [instStarAddMonoid](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/inststaraddmonoid.md) | 408 | `declaration-track:4d28308506882e2d57f98cb9752046f0ce0bcb8ef1bd9028b3264b9b4460cbbc` |
| 62 | `instance` | [instStarRing](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/inststarring.md) | 413 | `declaration-track:c3ad77103459a673a8bd4a33f4a0661d169cfe24c0e411e5c2ba93fd443e9aca` |
| 63 | `instance` | [instStarModule](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/inststarmodule.md) | 417 | `declaration-track:3add81807f3b9b8af7239bfae5fe5593f0c9e84a7c5a5a96684072c1f975d6c9` |
| 64 | `def` | [coe](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/coe.md) | 435 | `declaration-track:509bf26b5547337c5c84e3453be25f2efe94479b0027a9a63692cd1cf9211dca` |
| 65 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instance-source-edition-4.md) | 446 | `declaration-track:d82bf8a18b3c82a4fefeb18b9584682db1c51e14c10885d116bf856931ad0457` |
| 66 | `theorem` | [coe_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/coe-fst.md) | 450 | `result-track:ae61a56f10676fbff749a98cb7470095fdd10ae23ac27ce7b46a889ec41b82fb` |
| 67 | `theorem` | [coe_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/coe-snd.md) | 454 | `result-track:f1ee02c2b541eddb6e1e4d2162bb084835673c33c86d1fb5560bc7001e084fcb` |
| 68 | `theorem` | [coe_eq_algebraMap](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/coe-eq-algebramap.md) | 457 | `result-track:2b2ade302561c6d85ebd061c0454c8c8f4757b472222f969fd32ed03ca884fbb` |
| 69 | `def` | [coeHom](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/coehom.md) | 466 | `declaration-track:4c1b9fa29ec67b1fe9ef2056b8a835be064a310d2f6a7663a6e0e93c9e9e07bd` |
| 70 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instance.md) | 493 | `declaration-track:188580ef0a1d0d70e3a0ff499b59f6f44417697fcb3172b2c123adeae1d786eb` |
| 71 | `theorem` | [norm_def](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/norm-def.md) | 499 | `result-track:40b996199b38ba7d6526aac486e23557adf34da27da105b15d5c4bc2476cfae3` |
| 72 | `theorem` | [nnnorm_def](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/nnnorm-def.md) | 502 | `result-track:3cf8ec54b7790cbe3a4b75ea73c368a349c06039acf64cf18e518adddf3f0ec5` |
| 73 | `theorem` | [norm_def'](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/norm-def-source-edition-2.md) | 505 | `result-track:45b2a237f6359cd5ee2b5e230566f90c584488a03cf3150db55588ee12c51669` |
| 74 | `theorem` | [nnnorm_def'](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/nnnorm-def-source-edition-2.md) | 508 | `result-track:fd30214696583738da12723c54ddb19948c59f472d80364f6cf93d979cb9dcb4` |
| 75 | `instance` | [instNormedSpace](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instnormedspace.md) | 511 | `declaration-track:c666be81ea52d8c64001f20d930af9da1ca81d8e15c778b1cc7cd0d4f71aeacd` |
| 76 | `instance` | [instNormedAlgebra](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instnormedalgebra.md) | 515 | `declaration-track:94de1b082d72cc5e7ff4d87a7fd4675924a55d52ee77b6c050c8912e440f1166` |
| 77 | `theorem` | [isUniformEmbedding_toProdMulOpposite](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/isuniformembedding-toprodmulopposite.md) | 518 | `result-track:1e445dcac6a30673cd51c7855127fc43254b73e42690b81625187f9693bb5f4d` |
| 78 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instance-source-edition-3.md) | 522 | `declaration-track:704668599a61590b5ed5618d4b93b9f1c671e273f33993fed2fc3f6551cafe44` |
| 79 | `theorem` | [norm_fst_eq_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/norm-fst-eq-snd.md) | 532 | `result-track:87e57eae1dd1322f52ff0c55b80c4edb987dab2cbd0aa3b5f5aec1691cb3a4a0` |
| 80 | `theorem` | [nnnorm_fst_eq_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/nnnorm-fst-eq-snd.md) | 563 | `result-track:9d65924b79d5be2e5ffe34b7d83af4ec24d21d92a5d938150947331aed7ad758` |
| 81 | `theorem` | [norm_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/norm-fst.md) | 567 | `result-track:da78834ab6d49a449476e16a953a84376c134dd69f169f6a289956a939c31120` |
| 82 | `theorem` | [norm_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/norm-snd.md) | 571 | `result-track:173122f9431b763d28cd17a790d0bcaef0fdca1d6e5186098cc7ead37de40118` |
| 83 | `theorem` | [nnnorm_fst](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/nnnorm-fst.md) | 574 | `result-track:6b7dafc3e3c3af3ce8eddf757a856ec7ffaa42c23b6de0638c1bd38d05baf471` |
| 84 | `theorem` | [nnnorm_snd](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/nnnorm-snd.md) | 578 | `result-track:06b6bf9a5391bc10fc2f7f5c65ad99d3bcf133db114fc02579c32d454af1f0c9` |
| 85 | `instance` | [instCStarRing](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instcstarring.md) | 589 | `declaration-track:792335758e282292b0ae72c8a1f8b5906d9e6f61e497f370f750ecb97791fbf4` |
| 86 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/MultiplierPublic.lean/declarations/instance-source-edition-2.md) | 639 | `declaration-track:53f083ee78a8a00cfe993b73ff56464074250fc1e3cf08515cba35fd46aae287` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c96e2a9ffe58b227a6a5d365023c5f07b4f1f27ef306024abbabf7e854a13488 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean","GRWTSK/_verification/specifications/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
