# Verification target: Pi L2 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b67b8cc8a3eab5000f6646b8c9115c5b55a963f",
  "lexical_observation_count": 162,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PiL2Public.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PiL2Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b67b8cc8a3eab5000f6646b8c9115c5b55a963f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean.json)

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
| 1 | `instance` | [PiLp.innerProductSpace](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/pilp-innerproductspace.md) | 84 | `declaration-track:8f380a192cac2061ea433ebb01b224f50963e92b68bb3464ac5442a3a774f32e` |
| 2 | `theorem` | [PiLp.inner_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/pilp-inner-apply.md) | 104 | `result-track:2f321870ca4f4e49e5a1a8059abd60560afa434a55cf3f76011561e587bdc646` |
| 3 | `abbrev` | [EuclideanSpace](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace.md) | 114 | `declaration-track:8cebf3531fcaa240cc78017f313fee757c902f19d05b08790b3a9c45e5fbc09d` |
| 4 | `syntax` | [(anonymous)](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/syntax.md) | 125 | `declaration-track:5776d52777110057a345327c3849eb211eef40b719057c858a8582af153a1df3` |
| 5 | `macro_rules` | [(anonymous)](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/macro-rules.md) | 126 | `declaration-track:59d76c3162c3ad0c52b1f327cd5b1e83ba01aeef659866cfdd798677d6c72213` |
| 6 | `def` | [EuclideanSpace.delabVecNotation](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-delabvecnotation.md) | 133 | `declaration-track:ac9a4fe5dd73b4fb3a9e8e11bfffe5d62993060d28c22f39ec4f92d097070983` |
| 7 | `theorem` | [EuclideanSpace.nnnorm_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-nnnorm-eq.md) | 144 | `result-track:09e92122542aa672c04e8e59ffc40fadd6a4daa54fa4173b47b5df5d02de8e63` |
| 8 | `theorem` | [EuclideanSpace.norm_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-norm-eq.md) | 148 | `result-track:5062eb93ea94f6b3fb6c45e846aeb050950f65292427dc42b2a994a90a36d9bc` |
| 9 | `theorem` | [EuclideanSpace.norm_sq_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-norm-sq-eq.md) | 152 | `result-track:9be09f4fb700b43123e649eca77799496adcf3be364aef8a1402f4e19d9a91a6` |
| 10 | `theorem` | [EuclideanSpace.real_norm_sq_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-real-norm-sq-eq.md) | 156 | `result-track:f6df099912adc646514fd35a3ac764d5e04f5392b9e9d4c1bc8f10a03e97f1a8` |
| 11 | `theorem` | [EuclideanSpace.dist_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-dist-eq.md) | 161 | `result-track:0649b2fbdb78be6adbd0267c8543772c9a09bc86d15abffa2864e3290e0cbd23` |
| 12 | `theorem` | [EuclideanSpace.dist_sq_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-dist-sq-eq.md) | 165 | `result-track:a2200a698101118bbd58399b54cc63cdf0838f66ee4954671cdfb20b411a66d8` |
| 13 | `theorem` | [EuclideanSpace.nndist_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-nndist-eq.md) | 169 | `result-track:dcbc30f534c5024e0a8c2e41bc855e32de379cc3231e1f8d206fbf933df56dc9` |
| 14 | `theorem` | [EuclideanSpace.edist_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-edist-eq.md) | 173 | `result-track:1294375cd84f4752ca61590fb1559e5bfb74a30af37d6316461778c48a228257` |
| 15 | `theorem` | [EuclideanSpace.ball_zero_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-ball-zero-eq.md) | 177 | `result-track:47988d21307f2e78186a5564452ae36537332d37fa67bf3bad4c00257630a103` |
| 16 | `theorem` | [EuclideanSpace.closedBall_zero_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-closedball-zero-eq.md) | 183 | `result-track:2daf5d354b9a83cdbc54b557388c7f2726fa0f303f66806c7875057ea558e4c1` |
| 17 | `theorem` | [EuclideanSpace.sphere_zero_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-sphere-zero-eq.md) | 188 | `result-track:625f716bc9713e60bad013a8a30b9d382a407ca5b85a17e86decea45f81c7ab9` |
| 18 | `instance` | [EuclideanSpace.infinite](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-infinite.md) | 197 | `declaration-track:00127ca01fadb2bbbb9c5a31e20affed76814db8fe3318f30fdd5b2482a61cc5` |
| 19 | `theorem` | [finrank_euclideanSpace](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/finrank-euclideanspace.md) | 203 | `result-track:36fa244f50ce07f55dd3facf71294e93fea2f6bec610dfc6bf548601de7662ea` |
| 20 | `theorem` | [finrank_euclideanSpace_fin](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/finrank-euclideanspace-fin.md) | 208 | `result-track:734d96a682ebdc56ac73d9b07fea7882e09be1ce572b579739b1e019da018b2d` |
| 21 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/instance.md) | 213 | `declaration-track:f20da6f676f3f82165a8624e9d683cc091760c16d1141fb86082ea2e4f82ac2f` |
| 22 | `theorem` | [inner_eq_star_dotProduct](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-eq-star-dotproduct.md) | 216 | `result-track:23a693ec582b547bec093b5f9cb063a1bf81bc366263a563b26df9fedc9a9d3b` |
| 23 | `lemma` | [inner_toLp_toLp](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-tolp-tolp.md) | 219 | `result-track:f74028a54374eaa89ae4420af176955f15623c17f586191a9b56b25c4b122162` |
| 24 | `def` | [restrict₂](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/restrict.md) | 228 | `declaration-track:846904345359722e7f03be3255c416ae4d220991db58940432530d03ffc99918` |
| 25 | `lemma` | [restrict₂_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/restrict-apply.md) | 235 | `result-track:614180865c6c513946c746d9fd96aa4948e3f519e4c7dd0e98ceb1d41ce4cd25` |
| 26 | `def` | [DirectSum.IsInternal.isometryL2OfOrthogonalFamily](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-isometryl2oforthogonalfamily.md) | 244 | `declaration-track:9d3c63d7bd63a8c72a7aab532acd519c3fccbb55f4e5fe12a777dd10313e7299` |
| 27 | `theorem` | [DirectSum.IsInternal.isometryL2OfOrthogonalFamily_symm_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-isometryl2oforthogonalfamily-symm-apply.md) | 263 | `result-track:1dc041bdf1a5cb4608636d40763d93e6455dc63f1f1b826bf3650e8de22efb8e` |
| 28 | `abbrev` | [EuclideanSpace.equiv](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-equiv.md) | 279 | `declaration-track:97c285b8290e418cdc1370c9156c8539b4d6ff627c6b4ac79f5cabcd62303965` |
| 29 | `abbrev` | [EuclideanSpace.projₗ](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-proj-source-edition-2.md) | 285 | `declaration-track:a4e0504e037531fcb9b2a1a72014113fe729e6abee749838ff96a92b70efaedd` |
| 30 | `abbrev` | [EuclideanSpace.proj](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-proj.md) | 288 | `declaration-track:688bf5e478854ea2dbf988f8d113500801bccd561001906784c4ff92e445c619` |
| 31 | `lemma` | [EuclideanSpace.coe_proj](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-coe-proj.md) | 291 | `result-track:bffe948545a7d3a9d18b593f844f6f063f0865829ec2501092886b929c0da5ba` |
| 32 | `abbrev` | [EuclideanSpace.single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-single.md) | 300 | `declaration-track:ead654aa792f049c3834cb2efe1f0f937dc9266c8fec9f312a8f43285d982bd0` |
| 33 | `lemma` | [EuclideanSpace.ofLp_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-oflp-single.md) | 303 | `result-track:3bf499cf81dc2bab37f7534633bccc1dba040fe321405d9861901226c76cbcfb` |
| 34 | `lemma` | [EuclideanSpace.toLp_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-tolp-single.md) | 307 | `result-track:643750004a9b1a6dcefdec1644e88141cd254ee640cbb10f78cc97244439edec` |
| 35 | `theorem` | [EuclideanSpace.single_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-single-apply.md) | 311 | `result-track:d70aefe0318e849cadd4cb7dc10b04648707050123eb26788ba0926cd9c4bef4` |
| 36 | `theorem` | [EuclideanSpace.single_eq_zero_iff](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-single-eq-zero-iff.md) | 316 | `result-track:aa0d66f385c7de475e2b7df7641696a775e27c5876c1f13ef6cb6ad1927d193f` |
| 37 | `theorem` | [EuclideanSpace.inner_single_left](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-inner-single-left.md) | 321 | `result-track:a5613b9e5f1adec61185783e60d01a2efc3a56e9b7d81f799a5cd394a63c4020` |
| 38 | `theorem` | [EuclideanSpace.inner_single_right](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-inner-single-right.md) | 325 | `result-track:27e37420caf2fa93432098d9e9b39d3148fabe66edaed1df04a3b67b1812b762` |
| 39 | `theorem` | [EuclideanSpace.norm_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-norm-single.md) | 329 | `result-track:ddaa8bac608057dd0050bfc7dbfee9517cc9f3040ec1fef60af944492b10f504` |
| 40 | `theorem` | [EuclideanSpace.nnnorm_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-nnnorm-single.md) | 333 | `result-track:a8298e8e74ee1f7af2389933709875bc297c7936abdeb58b114764eb919a3a83` |
| 41 | `theorem` | [EuclideanSpace.dist_single_same](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-dist-single-same.md) | 337 | `result-track:5c340ad0fc5716046d4e4312a392c0447448485f1251ac85689cfd17e83b0220` |
| 42 | `theorem` | [EuclideanSpace.nndist_single_same](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-nndist-single-same.md) | 342 | `result-track:10ab649e0e4a98133340e3fc9d4aa0e0d98d2f1346ef7ddc3022bc267d575f1e` |
| 43 | `theorem` | [EuclideanSpace.edist_single_same](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-edist-single-same.md) | 347 | `result-track:960892b4904522d5829cab55b5b56c5bdf2a3f0ae7db236ee00a50f4c75b2c62` |
| 44 | `theorem` | [EuclideanSpace.orthonormal_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-orthonormal-single.md) | 352 | `result-track:511e81c63994a8c2520ba9c46e663b8b67f17f262b2a93f3d767aae2cdf7370f` |
| 45 | `theorem` | [EuclideanSpace.piLpCongrLeft_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-pilpcongrleft-single.md) | 359 | `result-track:01ee403ec6901a2c9a551874e769550659d268dd066a8fb6abd953366b902f57` |
| 46 | `abbrev` | [EuclideanSpace.sumEquivProd](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-sumequivprod.md) | 374 | `declaration-track:10fd4dc1ef07c5e69d219248ea4d65cabf4eaf0acf98635df30dab4afa3aa256` |
| 47 | `abbrev` | [EuclideanSpace.finAddEquivProd](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/euclideanspace-finaddequivprod.md) | 381 | `declaration-track:108c83712bb99a011c8821fcd2dd7687b2df71146d1cb8b9219efd86b05a4871` |
| 48 | `structure` | [OrthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis.md) | 393 | `declaration-track:5f645011dedc13276d4ec7d3f1561833071486bc20ff32dce61feb09229fa0fd` |
| 49 | `theorem` | [repr_injective](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/repr-injective.md) | 401 | `result-track:4074c324f7579cbb47df101104034db373ebe55a4b605c809ec23f748a5019bc` |
| 50 | `instance` | [instFunLike](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/instfunlike.md) | 409 | `declaration-track:b19a7045cd9948b64a95d95a628d9b192a0233a8914d862fcf93f51050efe3c5` |
| 51 | `theorem` | [coe_ofRepr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-ofrepr.md) | 426 | `result-track:a8e8157b988fc919d70630665ba19535969461dc16482d1e58607409ce17c137` |
| 52 | `theorem` | [repr_symm_single](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/repr-symm-single.md) | 433 | `result-track:0bb900491f1cd5d4ff892be9bb82033c3dd7b77062429bcc9d13cf28b2897f18` |
| 53 | `theorem` | [repr_self](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/repr-self.md) | 439 | `result-track:90c04ed8d7f9be26317cc870104032c5ba1a30338dcb14fff43878fdb66ba846` |
| 54 | `theorem` | [repr_apply_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/repr-apply-apply.md) | 443 | `result-track:383e5fffc0de806f71db2f37a558c40e8941a5b1eaa7a998d0347e6d2bb5cb07` |
| 55 | `theorem` | [orthonormal](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormal.md) | 450 | `result-track:b4624d9d85824e7963ccec1446d61611df210393d41f54f146d08e5075547a1c` |
| 56 | `lemma` | [norm_eq_one](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/norm-eq-one.md) | 458 | `result-track:a5a387aa007f3d685ffb840d8d6a2f901b056d9b44afd204542a35f6dcad29c6` |
| 57 | `lemma` | [nnnorm_eq_one](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/nnnorm-eq-one.md) | 462 | `result-track:ac5575cd8a38c539eb533e49cdd2dae9b0ee660deea3a8cca92155f7597a1cdc` |
| 58 | `lemma` | [enorm_eq_one](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/enorm-eq-one.md) | 466 | `result-track:f02c45f08e68442f8bdca05e9fb587bb840bbe8809907d2547f1dac66cee5d8b` |
| 59 | `lemma` | [inner_eq_zero](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-eq-zero.md) | 470 | `result-track:2a0024ed5a111a247d9bd7cbb15a874b47449d3102515f38131f97ed2506b7c0` |
| 60 | `lemma` | [inner_eq_one](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-eq-one.md) | 473 | `result-track:6add1628d21d7184413a65815ad8b8ba0c840dd0e0908c2b802123b803d3782f` |
| 61 | `lemma` | [inner_eq_ite](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-eq-ite.md) | 476 | `result-track:a26abac85f0d53864352d826337c06365bd9b199f324dbfcaa2ae6a389038c22` |
| 62 | `def` | [toBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/tobasis.md) | 481 | `declaration-track:2c1937f3d2e1d0761caebc00af183a5d6e2cf6ba9ec02773d91f336ce4163a4a` |
| 63 | `theorem` | [coe_toBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-tobasis.md) | 485 | `result-track:928d96a0700e57cc4c82b7a8a500e046572baf8dd8104f7d24809e8e2a5e3e39` |
| 64 | `theorem` | [coe_toBasis_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-tobasis-repr.md) | 488 | `result-track:53d99779014cd7c9f128845970b607905c078a2124468974554a0131e7ce7a23` |
| 65 | `theorem` | [coe_toBasis_repr_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-tobasis-repr-apply.md) | 493 | `result-track:e2ac10ec6049162f2f1bdae5986d452e7e5846bf4096f8dcb8ca660ae75ec740` |
| 66 | `theorem` | [sum_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-repr.md) | 497 | `result-track:15cc12a2e4a185c13fa5f483b53f8c9ab4c1fd3c27cc97ce5158ce032486dd05` |
| 67 | `theorem` | [sum_repr'](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-repr-source-edition-2.md) | 502 | `result-track:7ac2535c521d402aba2b7891f2b3df1ba318db93a62f846a06922496b46d77c0` |
| 68 | `theorem` | [sum_repr_symm](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-repr-symm.md) | 506 | `result-track:47d749fc70b5c43a58f96e39561662b9a52e66883042eb1bf73cb0f6d93e6ffb` |
| 69 | `theorem` | [sum_inner_mul_inner](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-inner-mul-inner.md) | 509 | `result-track:2594fe7f6eef12f92ef12f7fcb6af0bd389f7b7bf2368ecdaec413f6d9b36132` |
| 70 | `lemma` | [sum_sq_norm_inner_right](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-sq-norm-inner-right.md) | 517 | `result-track:3f23233320c4333048ab841467f52a30066c890ccb4307ae3820474309c6a293` |
| 71 | `lemma` | [sum_sq_norm_inner_left](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-sq-norm-inner-left.md) | 525 | `result-track:ffece239bc9c508e6d4e89ff41f18f6074ba5a3b995e236a26e69b28eecc85da` |
| 72 | `theorem` | [sum_sq_inner_right](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-sq-inner-right.md) | 531 | `result-track:22403b84217b6b151e82434e43953615e20b512b3a9a29f84affee4245a9c5fa` |
| 73 | `theorem` | [sum_sq_inner_left](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-sq-inner-left.md) | 538 | `result-track:74b3ae5f3ab650be248754f30ccd12a33ea918824ff7279187bff413246f9037` |
| 74 | `lemma` | [norm_le_card_mul_iSup_norm_inner](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/norm-le-card-mul-isup-norm-inner.md) | 543 | `result-track:fa87ea69ba3becdd081b445f0ca1626dd8e57a9ec19e56c6a60691e83f813d72` |
| 75 | `theorem` | [orthogonalProjectionOnto_apply_eq_sum](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthogonalprojectiononto-apply-eq-sum.md) | 558 | `result-track:a5e873836be3125dd75a7b7d40c7b1c350f578f53fc916c14cc08e8b43901f10` |
| 76 | `theorem` | [orthogonalProjectionOnto_eq_sum_rankOne](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthogonalprojectiononto-eq-sum-rankone.md) | 567 | `result-track:9ca8263908c5d7806f4b8da25d936eac846eec90563c17089885052d613ebab1` |
| 77 | `theorem` | [starProjection_eq_sum_rankOne](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/starprojection-eq-sum-rankone.md) | 575 | `result-track:72c38882cd4eacb91a2158be322ef07871bc0f517ce8d678a31e016f485b7978` |
| 78 | `lemma` | [sum_rankOne_eq_id](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/sum-rankone-eq-id.md) | 580 | `result-track:9419fa0b9b5aa0fa240b21b5e49e9531a8d3bd322f7c410f8edf66ea79298d46` |
| 79 | `def` | [map](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/map.md) | 584 | `declaration-track:ba771ca170809fdc99f2b54dd2f9e9be053def66701da51b4c08e67078b1546e` |
| 80 | `theorem` | [map_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/map-apply.md) | 589 | `result-track:601d3c43ef74993254e83472306d1ffec4bf78466f6071049e199e2bfc69fa92` |
| 81 | `lemma` | [coe_map](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-map.md) | 593 | `result-track:fd233283f390354c08eb55901f4253cea1b0c9b2af40acfc12883710992c3850` |
| 82 | `theorem` | [toBasis_map](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/tobasis-map.md) | 597 | `result-track:1ba118fba409df8a04506e8832271599d6cb6b76396196186f5a75148a255f8d` |
| 83 | `def` | [_root_.Module.Basis.toOrthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-module-basis-toorthonormalbasis.md) | 603 | `declaration-track:eab0076b6a7253f97020373afb4e7086b6251bae3dd353ea4aede769c0baa6ec` |
| 84 | `theorem` | [_root_.Module.Basis.coe_toOrthonormalBasis_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-module-basis-coe-toorthonormalbasis-repr.md) | 618 | `result-track:557aa7c6c26ac1a141ec9b79f7914a2e7efe000f598906977f95e1b1b5d2998b` |
| 85 | `theorem` | [_root_.Module.Basis.coe_toOrthonormalBasis_repr_symm](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-module-basis-coe-toorthonormalbasis-repr-symm.md) | 624 | `result-track:1859b15b388c04aba381e6ec425c0d0014efaa0ad0ecade869e8126b87786a4b` |
| 86 | `theorem` | [_root_.Module.Basis.toBasis_toOrthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-module-basis-tobasis-toorthonormalbasis.md) | 631 | `result-track:e937a8faa9c80ce2449c6c943e8dff711cdd1b8a3037f615f343143a51d46be6` |
| 87 | `theorem` | [_root_.Module.Basis.coe_toOrthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-module-basis-coe-toorthonormalbasis.md) | 638 | `result-track:e7bb2ac319e2a833c552b215b293ce959e043c4e545a869ed9a1da6256f5376e` |
| 88 | `def` | [singleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/singleton.md) | 651 | `declaration-track:cbe5cc47be9bb7ba467cb20be12a2b3b105405138cd2e3afd29618c8827a815e` |
| 89 | `theorem` | [singleton_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/singleton-apply.md) | 655 | `result-track:254c7ce96952f642bcb769f1c8a0ea1f0cb92b85a17002d5b26c215e408b198c` |
| 90 | `theorem` | [singleton_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/singleton-repr.md) | 658 | `result-track:7bc323938d36effe52ca423c62b191069b26117eccbb957f3850b0c47e13edb1` |
| 91 | `theorem` | [coe_singleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-singleton.md) | 662 | `result-track:16f8ca90fa9f690afeb5eb06383ffffa2ee6077da941e3b6a478edc92b2e6105` |
| 92 | `theorem` | [toBasis_singleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/tobasis-singleton.md) | 666 | `result-track:22f29e1942997bc786c1e6a98f9e946568c0da3a2b9792629b1d538f6e2d16b7` |
| 93 | `def` | [_root_.Pi.orthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-pi-orthonormalbasis.md) | 673 | `declaration-track:b8c6918a1ad1f0fd5af0c15bad04188b89926dea376e4e0e9ba6f9421e9ff405` |
| 94 | `theorem` | [_root_.Pi.orthonormalBasis.toBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-pi-orthonormalbasis-tobasis.md) | 681 | `result-track:b78a93833aa3734b308dc71a8b0dd8c035f3fc08cff254e1226c65179de962d0` |
| 95 | `theorem` | [_root_.Pi.orthonormalBasis_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-pi-orthonormalbasis-apply.md) | 688 | `result-track:1d9a5a6359a04199f5a73083dd835ff5c06422b0ee7c1f990a310370a89ab8c8` |
| 96 | `theorem` | [_root_.Pi.orthonormalBasis_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-pi-orthonormalbasis-repr.md) | 706 | `result-track:a950d540083465b7e7c001db1ee6b27e518f5fd8e8bae4d087c9b6fa62e29909` |
| 97 | `def` | [mk](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/mk.md) | 715 | `declaration-track:7a178bd5c20b3179cad5dbf7b4ea64d086477c74191bd487e4a655efb0d68c34` |
| 98 | `theorem` | [coe_mk](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-mk.md) | 720 | `result-track:179d340b8a4ffb72e9024170af5c6f74287463559ca55cd2e9fe0a4cbbd2c9e6` |
| 99 | `def` | [span](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/span.md) | 725 | `declaration-track:d1d8a3c6848449d33ba8902f8aef1eb3649e2ef04422d197d670316b4402e73a` |
| 100 | `theorem` | [span_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/span-apply.md) | 743 | `result-track:196ccbd61ac92a46a6683040d18c6ababc9f256c43002bf8be03453bd202e6a0` |
| 101 | `def` | [mkOfOrthogonalEqBot](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/mkoforthogonaleqbot.md) | 753 | `declaration-track:702d2d56ae0cdbe6b26d77707c3089cfb1618926cfc8523759299865f4221067` |
| 102 | `theorem` | [coe_of_orthogonal_eq_bot_mk](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-of-orthogonal-eq-bot-mk.md) | 764 | `result-track:b7454a13d6866758146efe0ac343b033e47f2a4bbf9fa0dee3326c1ab0dae99d` |
| 103 | `def` | [reindex](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/reindex.md) | 771 | `declaration-track:71405988e25f4a01da416a8a765b0e7c5abed4c5c1cf6a09a9dc2d06b570dbc6` |
| 104 | `theorem` | [reindex_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/reindex-apply.md) | 774 | `result-track:f010810235cd52cdbe25fb3a5d6661b3e92b1fbc23507f025da56c5b68be83ea` |
| 105 | `theorem` | [reindex_toBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/reindex-tobasis.md) | 784 | `result-track:9f35aa112025c7e226001c12cdfc1b4d4efc6520b59ac2fe1b42a3282a079657` |
| 106 | `theorem` | [coe_reindex](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-reindex.md) | 788 | `result-track:da8f806256402da561a27b6853e5e84aacec04cf01823816016260788ffb2582` |
| 107 | `theorem` | [repr_reindex](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/repr-reindex.md) | 793 | `result-track:4f251f2353a192ffa6c94f5b322d8c365833c21bafaf1f3b98ef8037ab2daa5d` |
| 108 | `def` | [basisFun](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/basisfun.md) | 805 | `declaration-track:0d7ddee33e53d650389ca3011a0610423a0a28e6592e10bc5c39e612ae5f920d` |
| 109 | `theorem` | [basisFun_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/basisfun-apply.md) | 809 | `result-track:7e12d2979cc3c7cc05e6a67c50c1bb908d36bbdf109f8f59e35f67cb51f00914` |
| 110 | `theorem` | [basisFun_repr](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/basisfun-repr.md) | 813 | `result-track:51c62e7db1803bf9d30e6908c032ead7fc505d14a567dc610ce448b053eabeba` |
| 111 | `theorem` | [basisFun_inner](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/basisfun-inner.md) | 816 | `result-track:e530fb0cd6b55ec8994e3ba0c5a2149f422b54b8046d97f48dbbc23d164262c9` |
| 112 | `theorem` | [inner_basisFun_real](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-basisfun-real.md) | 820 | `result-track:e8b557b98233cd0c2286b4a3106e88957da29b3061fdaedc632eb1ed1ca5fcf3` |
| 113 | `theorem` | [basisFun_toBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/basisfun-tobasis.md) | 824 | `result-track:c4e6d824c71680c71c2a5feebe06273e90ab0d2074aebe6d736c1e4913fcf7ae` |
| 114 | `instance` | [OrthonormalBasis.instInhabited](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-instinhabited.md) | 828 | `declaration-track:0be67ddcd5f1bc71dbc65fe3f23b3d83f4b17c917e368bc58e1afac57be65eb9` |
| 115 | `def` | [equiv](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv.md) | 838 | `declaration-track:5dca741865ae75a588155a1c459f82724cc1d127ce5e0123f69db92b72d2a475` |
| 116 | `lemma` | [equiv_symm](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv-symm.md) | 842 | `result-track:95e2af4518e8f1dbb311438435e73189bf47cd4e445408b860e84a770501ffa4` |
| 117 | `lemma` | [equiv_apply_basis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv-apply-basis.md) | 847 | `result-track:800c2ca2e5ebc2832b08cd8cfdcd7f5061d1ad0605452d7a8f797f8fcd74544b` |
| 118 | `lemma` | [equiv_self_rfl](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv-self-rfl.md) | 855 | `result-track:b549eef06a6500bae5d45da4290ca789343d28467ae26da75fd9e98e48984d84` |
| 119 | `lemma` | [equiv_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv-apply.md) | 859 | `result-track:2a54796521f41b4d5fff937198471a5aa9f24b402e9799282be2bea1723819a2` |
| 120 | `lemma` | [equiv_apply_euclideanSpace](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/equiv-apply-euclideanspace.md) | 863 | `result-track:56d998c7fadd21a32327b8ebb5138168071298a1059ad87389f5b860363585a4` |
| 121 | `lemma` | [coe_equiv_euclideanSpace](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/coe-equiv-euclideanspace.md) | 867 | `result-track:25baae98476bbe30820b1afcdfec7a37ae1b02339b179bbeb87d3337255c6b93` |
| 122 | `def` | [Complex.orthonormalBasisOneI](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-orthonormalbasisonei.md) | 876 | `declaration-track:3e670fa372a6e1b2dc15673693dd6137939d2720b2f057be5fe06692937de8ad` |
| 123 | `theorem` | [Complex.orthonormalBasisOneI_repr_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-orthonormalbasisonei-repr-apply.md) | 883 | `result-track:04896c15a484b6bcb26db126baff6bd49ba06f896b0168d0bbde6c2ee6084190` |
| 124 | `theorem` | [Complex.orthonormalBasisOneI_repr_symm_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-orthonormalbasisonei-repr-symm-apply.md) | 888 | `result-track:b43bc6d7d683e83454d17ef755f22899c31ab4ccca22483651d7cf7f0d6b2b47` |
| 125 | `theorem` | [Complex.toBasis_orthonormalBasisOneI](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-tobasis-orthonormalbasisonei.md) | 893 | `result-track:10334be3e3a9059333712cbfc27d61c2e91be88ac0079b6d7bb8737b57c6a430` |
| 126 | `theorem` | [Complex.coe_orthonormalBasisOneI](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-coe-orthonormalbasisonei.md) | 898 | `result-track:9db1d16c26993ea04fd4796bc0ca4f598f30e57519f6c31d862d752f4522421a` |
| 127 | `def` | [Complex.isometryOfOrthonormal](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-isometryoforthonormal.md) | 903 | `declaration-track:ce73b06fd455aece58e891752a21fcea368c31c9d91bab314891e63809eea865` |
| 128 | `theorem` | [Complex.map_isometryOfOrthonormal](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-map-isometryoforthonormal.md) | 907 | `result-track:c40ddb3936e96e8ba7e460a67c7f6a8e16d07a4b67b01a5b04096ad58b011f5c` |
| 129 | `theorem` | [Complex.isometryOfOrthonormal_symm_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-isometryoforthonormal-symm-apply.md) | 914 | `result-track:ee28ed3cbfcfbcfbba18553ad6c564a697414dcc10e55bb0b1439111bc8fdaaa` |
| 130 | `theorem` | [Complex.isometryOfOrthonormal_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/complex-isometryoforthonormal-apply.md) | 919 | `result-track:33f8b42c44b969220711c74cbecb9792c8141023d01813162684fd5296cffc12` |
| 131 | `theorem` | [OrthonormalBasis.toMatrix_orthonormalBasis_conjTranspose_mul_self](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-tomatrix-orthonormalbasis-conjtranspose-mul-self.md) | 940 | `result-track:7aca8d365bd4e93779ea31b8fc3989015655cd512f9fcfd5f8ce5eadb9b79aa1` |
| 132 | `theorem` | [OrthonormalBasis.toMatrix_orthonormalBasis_self_mul_conjTranspose](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-tomatrix-orthonormalbasis-self-mul-conjtranspose.md) | 953 | `result-track:f44c75096469cf9dc1d93ef4fe000ec03d46fa087936eb40dcab12e5957f3173` |
| 133 | `theorem` | [OrthonormalBasis.toMatrix_orthonormalBasis_mem_unitary](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-tomatrix-orthonormalbasis-mem-unitary.md) | 963 | `result-track:e4c16864153a4b31497325a48a9bc4dfbcbaf7dfd1d6e359528fd4488dae6f54` |
| 134 | `theorem` | [OrthonormalBasis.det_to_matrix_orthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-det-to-matrix-orthonormalbasis.md) | 971 | `result-track:23fa8defaa07a01989b631aea1d17578fa1e587ae5213cc1c51cf8ca0e40ac37` |
| 135 | `theorem` | [LinearIsometryEquiv.toMatrix_mem_unitaryGroup](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/linearisometryequiv-tomatrix-mem-unitarygroup.md) | 978 | `result-track:0195aabb8cffa65105e34e66bed192c589b2de017ea8a1092857ad25673a9028` |
| 136 | `theorem` | [OrthonormalBasis.toMatrix_orthonormalBasis_mem_orthogonal](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-tomatrix-orthonormalbasis-mem-orthogonal.md) | 990 | `result-track:5f44b64c43340607e44e213cf4554cc04b8707d40b3ec9345c8e86730d2b7f81` |
| 137 | `theorem` | [OrthonormalBasis.det_to_matrix_orthonormalBasis_real](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-det-to-matrix-orthonormalbasis-real.md) | 995 | `result-track:b248782bbad902cbc9cc0e806ae39d4e7da25608e6fb63bf40bffcb2a02fd8f7` |
| 138 | `def` | [DirectSum.IsInternal.collectedOrthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-collectedorthonormalbasis.md) | 1015 | `declaration-track:30ba47412cb366cb1ce1f3d0e47361d78890be531ff73b8fb5a25c2dae8d96c9` |
| 139 | `theorem` | [DirectSum.IsInternal.collectedOrthonormalBasis_mem](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-collectedorthonormalbasis-mem.md) | 1023 | `result-track:9f3f20affd50096e4f91e6d8d95ce1a36526bf869023980cab7158b1cf7591fb` |
| 140 | `theorem` | [Orthonormal.exists_orthonormalBasis_extension](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormal-exists-orthonormalbasis-extension.md) | 1034 | `result-track:46eecf719d49a102f12082dcd8ce770c55639c773756d9f506cfe2784c236f27` |
| 141 | `theorem` | [Orthonormal.exists_orthonormalBasis_extension_of_card_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormal-exists-orthonormalbasis-extension-of-card-eq.md) | 1047 | `result-track:529045d1cf5ef6988666e258457ad79dc54980b8c48197368a9ae2a8f630cd7e` |
| 142 | `theorem` | [_root_.exists_orthonormalBasis](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/root-exists-orthonormalbasis.md) | 1070 | `result-track:63354f69cb00dbcdc6dc79a537b14b1cea2c41097d01361230321eeec30e588e` |
| 143 | `theorem` | [orthonormalBasis_one_dim](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-one-dim.md) | 1082 | `result-track:6d4ffad2723d71b4d1bda6bf433fc784ff95d1197c117ce858506fb6f6bedba3` |
| 144 | `theorem` | [DirectSum.IsInternal.subordinateOrthonormalBasis_subordinate](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-subordinateorthonormalbasis-subordinate.md) | 1124 | `result-track:73c7a55390e15da83f7c25312a57954667b825ac2f52fdffc56662d0217d0b95` |
| 145 | `theorem` | [DirectSum.IsInternal.exists_subordinateOrthonormalBasisIndex_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-exists-subordinateorthonormalbasisindex-eq.md) | 1132 | `result-track:a4d014bb598748da4a05ada574565bb343d61df4550cf459ab59c5259b236377` |
| 146 | `def` | [DirectSum.IsInternal.subordinateOrthonormalBasisIndexFiberEquiv](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-subordinateorthonormalbasisindexfiberequiv.md) | 1138 | `declaration-track:e5e4a5593d0a5d8593dc41926e0e1c4b7c3279c5b85142e444d10d3968069446` |
| 147 | `theorem` | [DirectSum.IsInternal.card_filter_subordinateOrthonormalBasisIndex_eq](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/directsum-isinternal-card-filter-subordinateorthonormalbasisindex-eq.md) | 1148 | `result-track:1f9f1e023ade963e6f0f6b843da334bd9f08943952ef8e363f22c5d5b8858c92` |
| 148 | `def` | [OrthonormalBasis.fromOrthogonalSpanSingleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasis-fromorthogonalspansingleton.md) | 1161 | `declaration-track:f235cb68027b16d7df0d4508cdb835a3cd9c8813b2f646dc83943848d74c9654` |
| 149 | `def` | [LinearIsometry.extend](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/linearisometry-extend.md) | 1177 | `declaration-track:b45de77e4cc79488db0e54dda7c9b236bbf92afeb278e3b79ab9897c57e7e84a` |
| 150 | `theorem` | [LinearIsometry.extend_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/linearisometry-extend-apply.md) | 1225 | `result-track:d22f5b172709b098e0d80731317212d7895c5bf85f358f4d26f99a3edb6ff46e` |
| 151 | `abbrev` | [toEuclideanLin](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/toeuclideanlin.md) | 1242 | `declaration-track:f81a135a6f8042638a4d6d7c9749d76a7d16ccfd1bb1c5c03531bc37e78ddb19` |
| 152 | `lemma` | [toEuclideanLin_eq_toLin_orthonormal](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/toeuclideanlin-eq-tolin-orthonormal.md) | 1246 | `result-track:0fe4ee6fc0984a9d8842652d9f4e8513281d2fbad6c72c11310cef17b805514e` |
| 153 | `theorem` | [inner_matrix_row_row](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-matrix-row-row.md) | 1255 | `result-track:a93cfdf5750268dfbedb37569fe4473e7e3559a3699c8d60eac86b3bcb5d1f9e` |
| 154 | `theorem` | [inner_matrix_col_col](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/inner-matrix-col-col.md) | 1260 | `result-track:037ee69c31c5d503ac91abf117af2ec8c7be793069e3fd4554647e846c57e442` |
| 155 | `theorem` | [LinearMap.toMatrix_innerₛₗ_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/linearmap-tomatrix-inner-apply.md) | 1266 | `result-track:0962a4fde414e8fa85abfcfe7d1584bc6d7556a6a1978bc5fe10702c419c8ac0` |
| 156 | `theorem` | [InnerProductSpace.toMatrix_rankOne](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/innerproductspace-tomatrix-rankone.md) | 1274 | `result-track:15df6121fd436a1e00089896db837af83c8479676a83c73f43e5a8b113ec68fa` |
| 157 | `theorem` | [InnerProductSpace.symm_toEuclideanLin_rankOne](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/innerproductspace-symm-toeuclideanlin-rankone.md) | 1287 | `result-track:ad3d2448f3a7fd0e572e94d3304bb5fc29a0102d3c5172f47ce921009cfadc40` |
| 158 | `def` | [orthonormalBasisSingleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasissingleton.md) | 1298 | `declaration-track:ae63e5bba063863fa866df45595393d669419b1df97f3c925285f357a2b5507f` |
| 159 | `theorem` | [orthonormalBasisSingleton_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasissingleton-apply.md) | 1302 | `result-track:cf2879f914fd6a0f593e41d6c1c23ec8e2ea4142a26ad01f6842c9b6aa2c399e` |
| 160 | `theorem` | [toBasis_orthonormalBasisSingleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/tobasis-orthonormalbasissingleton.md) | 1307 | `result-track:679dad229af1070b7facd3401493a7e982e19e9483260630c44561a46604f580` |
| 161 | `theorem` | [orthonormalBasisSingleton_repr_apply](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/orthonormalbasissingleton-repr-apply.md) | 1312 | `result-track:7d6116b722fa779199ec7aae2777eeb658eda4844bc6060952790284250397a6` |
| 162 | `theorem` | [range_orthonormalBasisSingleton](../../../../FunctionalAnalysis/PiL2Public.lean/declarations/range-orthonormalbasissingleton.md) | 1317 | `result-track:f3fc5ef369fd099d355ba048122a977993818f3cd55061cd2f8b04f5129d3aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=61c9c27d3d1198e2cbdb0a1fe26d853ddb7dc74ac09f042c9e9595623ce30c0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/PiL2/Variante721db719dcfdaa8b26fca4dded8b6b7b47206e46fe600294aa2fed1ad130036.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
