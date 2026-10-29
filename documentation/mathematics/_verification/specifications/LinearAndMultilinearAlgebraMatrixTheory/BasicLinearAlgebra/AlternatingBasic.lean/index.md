# Verification target: Alternating Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "944fa4bbe73214fe669516ed3abc5f26cc2eaf62",
  "lexical_observation_count": 120,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `944fa4bbe73214fe669516ed3abc5f26cc2eaf62`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Perm.Sign` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatingmap.md) | 62 | `declaration-track:78867acb2a966545f2f1f4587acca94040713705659b2269c975cfcdaa52c790` |
| 2 | `instance` | [instFunLike](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instfunlike.md) | 88 | `declaration-track:e11a11f47bc3f7bcb46a10a39d85e79f40bb16be92948cb7a2f09524a5b5f780` |
| 3 | `theorem` | [toFun_eq_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/tofun-eq-coe.md) | 98 | `result-track:a20185509d347dce328c7b5bd7e56a042691fb4b5a5fcbb0bb0784dbae30679d` |
| 4 | `theorem` | [coe_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-mk.md) | 102 | `result-track:09028ce5a03fddc9c42b0c07743df5323128dc161045140eb554d856750e1065` |
| 5 | `theorem` | [congr_fun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/congr-fun.md) | 106 | `result-track:da7882732b954c3b47ca2e3fa5b0a6b6603932e8a6c861590870671c361816eb` |
| 6 | `theorem` | [congr_arg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/congr-arg.md) | 109 | `result-track:7d3bea9ed60a2b9ab46aec2c2ac2ab698cb5a0ed6b4c8546ee1b96329a53bcce` |
| 7 | `theorem` | [coe_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-injective.md) | 112 | `result-track:c026ba3583b49ca4895c4573be0ff02e6505fdd62f21ce3fa646a82917563b53` |
| 8 | `theorem` | [coe_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-inj.md) | 116 | `result-track:13829c2245fe197f77240ff83df76beabba7a5c3cb6ec85bdfa5bb761a7876d2` |
| 9 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/ext.md) | 120 | `result-track:d56485245df2f341917928110a935969a1ef402dd39dd2b49770f1c035678473` |
| 10 | `instance` | [instCoe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instcoe.md) | 125 | `declaration-track:ce02cd0064ba1b39d70b55e6d65bea767b4a68b1af2394568f97033227efa0a0` |
| 11 | `theorem` | [coe_multilinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-multilinearmap.md) | 129 | `result-track:fd8ce493a5c6479a2838a2eeb3d174588b082e3718a073451b4487825289b19a` |
| 12 | `theorem` | [coe_multilinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-multilinearmap-injective.md) | 132 | `result-track:fcc7896eab833cd945d51af5a0513d7253c3e2732fdec6108aebdcdb641e6b05` |
| 13 | `theorem` | [coe_multilinearMap_mk](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-multilinearmap-mk.md) | 136 | `result-track:951f8f3298681efbf7c5228ab24c3f371dfa0421cefc5b5c74a127e123d5f623` |
| 14 | `theorem` | [map_update_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-add.md) | 151 | `result-track:62d9f3bf57f40076d7d11dd25aa70960a4ea5c6b53b4f4d7b4d5f37f915cd8f2` |
| 15 | `theorem` | [map_update_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-sub.md) | 158 | `result-track:23314dfd43df0c5aa539b06b4d1eaa278695fae72cb39599409d0b3150e16982` |
| 16 | `theorem` | [map_update_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-neg.md) | 165 | `result-track:5be2136e9a04aaf69759abf3cd159c6678d2f35165735f60d26f1685652070ee` |
| 17 | `theorem` | [map_update_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-smul.md) | 172 | `result-track:a321ef3e526bfbaf0886ea53b00a2a2558495271e793f97e7024df792501aea2` |
| 18 | `theorem` | [map_eq_zero_of_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-eq-zero-of-eq.md) | 179 | `result-track:ccf5c61320758cc5392a8920290afb4d6e776657073a1ac5a4b584d6ee9b5c97` |
| 19 | `theorem` | [map_coord_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-coord-zero.md) | 182 | `result-track:72d0557ee92e1d03f2cc83bc4ca460648d634350844e4f3a1b38286e4783a43f` |
| 20 | `theorem` | [map_update_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-zero.md) | 186 | `result-track:be7a3f817607dc635738cb4d069a7b5fb94c9b5aca85bef2de29933e66513c30` |
| 21 | `theorem` | [map_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-zero.md) | 190 | `result-track:4087995ab09ed5354d2bb2a5edb4e14ffd69f32a40f199696083566f58ebef76` |
| 22 | `theorem` | [map_eq_zero_of_not_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-eq-zero-of-not-injective.md) | 193 | `result-track:669ad5046e3f9ffccd8000873820ee208cff984500e4571fc9b069784b1f21a4` |
| 23 | `instance` | [instSMul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instsmul.md) | 211 | `declaration-track:34e5bbc913b732448ce83e3c219edafadf5804fa11d2cc772e05b2a3ec72b926` |
| 24 | `theorem` | [smul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/smul-apply.md) | 217 | `result-track:85beecbe05788d1e5c3991a33b47efe0a816ddb14ddb95e5d96ae3a6522353b5` |
| 25 | `theorem` | [coe_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-smul.md) | 221 | `result-track:714704b9bcc65cff236141d448aa6304141596bf4373791c4c023a58c6e01aec` |
| 26 | `theorem` | [coeFn_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coefn-smul.md) | 224 | `result-track:fd945a20ca318f0fadc3831bf49f562ba6cbce1a55f569072cd3fc45981d6ad9` |
| 27 | `instance` | [instSMulCommClass](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instsmulcommclass.md) | 227 | `declaration-track:9051419cf8839c05241005a6464e4fe9dc7b69772a061188d78e5e6e45bf11f4` |
| 28 | `instance` | [instIsCentralScalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instiscentralscalar.md) | 231 | `declaration-track:d11a87639a4c660e2cc7c24fcca7339f150bf9e7c92f21cacb99d2269c90ad70` |
| 29 | `def` | [prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/prod.md) | 239 | `declaration-track:eac5ef9835e3d450aaa6edf7c5e619cc92d9f429c97677b837a6e8786c707e48` |
| 30 | `theorem` | [coe_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-prod.md) | 245 | `result-track:778c89d9fad173557e9bb643c25ac265e195170f4913c0fe809e029a068b78bb` |
| 31 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/pi.md) | 252 | `declaration-track:e1271e1a227827bf3bb3692ed177a52c9f5b3811b966d73229aa22bf4c7d219e` |
| 32 | `theorem` | [coe_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-pi.md) | 258 | `result-track:c68874f6c43490eb11fefad2e5daaf6866ee4dc59c04b221646d4e53e12106b8` |
| 33 | `def` | [smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/smulright.md) | 266 | `declaration-track:b8268b4256be364a912e288be0282f904412bff635e644a863e7ef001c4e5b87` |
| 34 | `theorem` | [coe_smulRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-smulright.md) | 272 | `result-track:3338ff1233cc9107221cb9468bdb3508720f09f876cdb7cd2c160922ba5ff159` |
| 35 | `instance` | [instAdd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instadd.md) | 277 | `declaration-track:4cc67f7051db96a60b740bae68a5ef1211412c740f5cc4a15b9f4187165e1dff` |
| 36 | `theorem` | [add_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/add-apply.md) | 284 | `result-track:257054051e93c1e83c6bc7983af7ed7797d22aa52c576d021996a416f4216f9a` |
| 37 | `theorem` | [coe_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-add.md) | 288 | `result-track:652f668f7db5511087e7582868de1103c16e553586d16790585e53fd70beddeb` |
| 38 | `instance` | [instZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instzero.md) | 291 | `declaration-track:699c559edf6ac56c37d7500a045737e156471374d89984b89d00a1ae07069334` |
| 39 | `theorem` | [zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/zero-apply.md) | 296 | `result-track:eeb204a80e4da00ef614fff3984ef070690d59fdabc0c8be27d32d05794232ef` |
| 40 | `theorem` | [coe_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-zero.md) | 300 | `result-track:325cf3e7c5400a8f8e2abdbd8aef0314320584480be49b09d8db30bdef3188e2` |
| 41 | `theorem` | [mk_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/mk-zero.md) | 304 | `result-track:3b85fb2b113425ae103801469b473fe1edf63ac76fa22efa55d320790701f275` |
| 42 | `instance` | [instInhabited](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instinhabited.md) | 308 | `declaration-track:656e196d8dd215c731e70f9f985dca6579d0a40177471ecdd312f1adccb2f790` |
| 43 | `instance` | [instAddCommMonoid](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instaddcommmonoid.md) | 311 | `declaration-track:e5dac0e7c00aeff744d6d568860ebc2f2e0d6f7e1a4f72440ba0c0e95ddec0e2` |
| 44 | `instance` | [instNeg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instneg.md) | 314 | `declaration-track:b2170671fcc6364ba33afa2d974f19e0e454eb505894d850ed54765f329b94b3` |
| 45 | `theorem` | [neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/neg-apply.md) | 320 | `result-track:2ffcfd0df0146f4107bc91783bc1533fc631de6ed2b82574ee17ffa5062d5487` |
| 46 | `theorem` | [coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-neg.md) | 324 | `result-track:d60625cb135f33757593124d99ee04560b8fc89f7f877e763f9283b9ebe8cc88` |
| 47 | `instance` | [instSub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instsub.md) | 327 | `declaration-track:059730247c83689086018ec61ccd686cc23df020979d99315070d1679f5bd9b3` |
| 48 | `theorem` | [sub_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/sub-apply.md) | 334 | `result-track:ac645d179558a5b8fb719084a0edafac64b53afe82c4ddc7322cb5d9d5c5e9cb` |
| 49 | `theorem` | [coe_sub](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-sub.md) | 338 | `result-track:82088c7090f0d4300c6c3a0302190c16243bd795e0b7cb57efc50157af18e1d0` |
| 50 | `instance` | [instAddCommGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instaddcommgroup.md) | 341 | `declaration-track:83407a739891e82c70f418b900a6645edd465eaef90a941b44a675bef04696aa` |
| 51 | `instance` | [instDistribMulAction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instdistribmulaction.md) | 349 | `declaration-track:c35bd0e6b0530960910ea488eff7c47eead18da5ed3c40811d6266878d97d4ce` |
| 52 | `instance` | [instModule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instmodule.md) | 363 | `declaration-track:15c0412b5726c9d68aa2d5562bf61dc1b51b2063abd450695b18ff29887814c7` |
| 53 | `instance` | [instNoZeroSMulDivisors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/instnozerosmuldivisors.md) | 367 | `declaration-track:7be8de832818b2ed8dd5cfdc6c2c474a49f399517aa3eb6ac30654b24bfda086` |
| 54 | `def` | [ofSubsingleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/ofsubsingleton.md) | 380 | `declaration-track:c70a2e4d7d9c5fa73d249467d270d857da80c8b8d15b462b71c52afac49d48dc` |
| 55 | `def` | [constOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/constofisempty.md) | 391 | `declaration-track:dce2b9e55fbddcb8eb8d3ba09243791258d3d0a67ea6798833cb196d66d246d8` |
| 56 | `def` | [codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/codrestrict.md) | 400 | `declaration-track:28a60e4fc3d9faf3cb987886ff4050dcdbed9d712fce57f2441ad8aeca475afa` |
| 57 | `def` | [compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap.md) | 418 | `declaration-track:6bfa776d00c522f509b1f8ab3df45244474c8f0f4f7b59ba0635f72b96c87993` |
| 58 | `theorem` | [coe_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-compalternatingmap.md) | 423 | `result-track:e34bbdb2606f50636b46e86872e7eddfabe95e6b4ea430cdc7ce8dce4a701ded` |
| 59 | `theorem` | [compAlternatingMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-apply.md) | 428 | `result-track:e24bdbb89a60388bf238ba4883e2784098e7ef81d11a45a9770c050adb3ca5cd` |
| 60 | `theorem` | [compAlternatingMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-zero.md) | 433 | `result-track:a17c0fc8c0d0435ee6b3ba066c5da5c522b3f968c83121f723a2af005bec538d` |
| 61 | `theorem` | [zero_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/zero-compalternatingmap.md) | 438 | `result-track:2a0723e29fbcb295bcbd61d6a8d7976d064d37627402476eccd35cf6af0038bb` |
| 62 | `theorem` | [compAlternatingMap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-add.md) | 442 | `result-track:20716c784663f7c709e79b75961e5ab5a52a262be364c2967527b2f9fc54554f` |
| 63 | `theorem` | [add_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/add-compalternatingmap.md) | 447 | `result-track:fdca69fe4ecf6d5cfc3379438e1b07e6d7b3e3a57d20891c732fb2ae61ac89a5` |
| 64 | `theorem` | [compAlternatingMap_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-smul.md) | 451 | `result-track:1fd15d4e0b02f4ad558015e5773cc0c65232b6b5887e586f094fb8ce715dc51e` |
| 65 | `theorem` | [smul_compAlternatingMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/smul-compalternatingmap.md) | 458 | `result-track:1e3b1c9f37645d366f84eda9e19d38efec53d41f67039335110060993a1a8ec6` |
| 66 | `def` | [compAlternatingMapₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-source-edition-2.md) | 465 | `declaration-track:daf95aa16db1ccd25280bfdcdec000a98fc74acdd7b5418bd85a54e1864e9188` |
| 67 | `theorem` | [smulRight_eq_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/smulright-eq-comp.md) | 473 | `result-track:b86b7c2297e2b4b20fac5896e11abade26c921a65a29c7b958d9436c1fbddb5c` |
| 68 | `theorem` | [subtype_compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/subtype-compalternatingmap-codrestrict.md) | 479 | `result-track:703c5db8ec92df5fcaedf42ea18048d5ccdecd325affb8e08d17dcabba53a870` |
| 69 | `theorem` | [compAlternatingMap_codRestrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compalternatingmap-codrestrict.md) | 484 | `result-track:678f54463330d03fd969895f03e286f1427c64cb5b3d15c54671c361ea677318` |
| 70 | `def` | [compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap.md) | 499 | `declaration-track:270eeda4c0312d937f508e29607d626dbe4d6d2c3d5e9432768c63a223bbf7b4` |
| 71 | `theorem` | [coe_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-complinearmap.md) | 503 | `result-track:280b33df924182f4d0a1135889374c097363843cc598a4ef05380ff5030f0505` |
| 72 | `theorem` | [compLinearMap_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-apply.md) | 508 | `result-track:885eadef61a861d8d4a2364bf0f99e4f97e28a370ada1ead2f4ce40742e07517` |
| 73 | `theorem` | [compLinearMap_assoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-assoc.md) | 514 | `result-track:83ab7c44404ba5c7b87549e893b5e06e64d1691a3d0c1eaea4a036fccd6bde6f` |
| 74 | `theorem` | [zero_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/zero-complinearmap.md) | 519 | `result-track:0968db62c2ea81ed83725095a96e30abafcb2608926791190e47f2c44bca8284` |
| 75 | `theorem` | [add_compLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/add-complinearmap.md) | 524 | `result-track:2bf6b967b67804393b488da35583aeedd8f0a43c7c92bea798819bdb9f35e4f7` |
| 76 | `theorem` | [compLinearMap_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-zero.md) | 530 | `result-track:dfcde6d229f390d75ac69694763c0e7d45ca5f4cd14f4d992ea5cb3ca08d86b0` |
| 77 | `theorem` | [compLinearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-id.md) | 537 | `result-track:9faf877af0535b99630faa6c40b1d259cc5b2e56ef2f39d344106a89ff6b9ce0` |
| 78 | `theorem` | [compLinearMap_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-injective.md) | 541 | `result-track:a653407b6e9cc3a89c1ea57191d8b29e6d7a2abb43c2bbcb2695e0bf2f0759de` |
| 79 | `theorem` | [compLinearMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearmap-inj.md) | 546 | `result-track:a79dadbfa3f293aaa83e4aadb990daed4ffd090c4d050b6d391da45c20f74496` |
| 80 | `theorem` | [ext_ring](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/ext-ring.md) | 554 | `result-track:a6abe2a23b1e3b45a6b367181b88387dc55a26b1931fb9b7e1114841803f4117` |
| 81 | `instance` | [uniqueOfCommRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/uniqueofcommring.md) | 559 | `declaration-track:7925f10713639cefdffdb8d7337d0c1727d89ad2d54fc91f4690a9041c9739c8` |
| 82 | `def` | [domLCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domlcongr.md) | 570 | `declaration-track:92c3e9a5d7cfff17bc1f0502d834f30833e3c0bce7632204ced23618bb042c06` |
| 83 | `theorem` | [domLCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domlcongr-refl.md) | 579 | `result-track:bb6cf441a22ee6c425d98945ba4316eec97ac775cd08e6c11c237b83c2de6de7` |
| 84 | `theorem` | [domLCongr_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domlcongr-symm.md) | 583 | `result-track:534625b8d3a32af4190c2d13e17929a361581c2176902c040c78e942128600a2` |
| 85 | `theorem` | [domLCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domlcongr-trans.md) | 586 | `result-track:b65f8589d6a7a004b0dc090d2227cb656dadeff439574786fd88a0f305f4915d` |
| 86 | `theorem` | [compLinearEquiv_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/complinearequiv-eq-zero-iff.md) | 595 | `result-track:8a4d8ea3c474d5b6fe3a13223b9f81a691e5a392f34d71a7c42f7cc14d23a513` |
| 87 | `theorem` | [map_update_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-sum.md) | 613 | `result-track:2e32abb985912239addacab6063eae4dc14a8384f7fa3e03bd3ae90bdd868270` |
| 88 | `theorem` | [map_update_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-self.md) | 627 | `result-track:61024bae53b6cefe6bac69ef3da18e091b14ccabc4cc64b2b95a1a413ea00edb` |
| 89 | `theorem` | [map_update_update](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-update-update.md) | 631 | `result-track:9f7f562fef564c74902e11d06c2625c9c0baa39cbc8aafc74e18bb50548e4360` |
| 90 | `theorem` | [map_swap_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-swap-add.md) | 636 | `result-track:582e528726fd22fb733ed4236c4a269353d8b0d2300f22cea9b1672b17970220` |
| 91 | `theorem` | [map_add_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-add-swap.md) | 643 | `result-track:ae64f8ab62f92c645b8911ec2357e3e1ab0fe6b4b280c4083b5d5a7ef2d76e8e` |
| 92 | `theorem` | [map_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-swap.md) | 648 | `result-track:370a70b94ce245c116fd0faf6134fc5c2bda1c5da91ebed6a78e46185ee855e7` |
| 93 | `theorem` | [map_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-perm.md) | 651 | `result-track:ac97a9d226d4183b35fc4bdf045459229c76580efd93719a6e1ca69145058baf` |
| 94 | `theorem` | [map_congr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-congr-perm.md) | 657 | `result-track:ececaa5f9d9525680fddd24ed14a5dbdfb22a99dd88c31e72538fd817062bcfa` |
| 95 | `def` | [domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr.md) | 668 | `declaration-track:3396f611eb0a07c4a38a8648c3d2bee762fcb5beca2d8a5091fa4a4d1e7afdc1` |
| 96 | `theorem` | [domDomCongr_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-refl-source-edition-2.md) | 676 | `result-track:c1aafa6a7c1d9b1de931e159a46307ace90195e72dcdabc6a06f82489e1192d7` |
| 97 | `theorem` | [domDomCongr_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-trans.md) | 678 | `result-track:042b114c867275c8406d6fc19d972a176df19ce1bb312b22c1d763093dca28e5` |
| 98 | `theorem` | [domDomCongr_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-zero.md) | 683 | `result-track:791b3979ca7c828fbe752c519f9a231a7d22927144ed86b4fd743ca6f1f103ce` |
| 99 | `theorem` | [domDomCongr_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-add.md) | 687 | `result-track:9499f7a22d1be0b0eb3fd863786ce880d9d32d590034bdf2b3ddd44ba02f922c` |
| 100 | `theorem` | [domDomCongr_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-smul.md) | 692 | `result-track:8e6a695f057b9ffe25edba1feae3e00e8429653c779d6f3dd6899e2ec5bf40bd` |
| 101 | `def` | [domDomCongrEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongrequiv.md) | 701 | `declaration-track:58e50801026499a1fc5ff070a27c3e15e52d8e4f640c76211448fd3d9c239b0b` |
| 102 | `def` | [domDomCongrₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-source-edition-2.md) | 718 | `declaration-track:6e5e02c7056f5c0f20b26be3596b317770a4481147bfc1c0cbdfa7f5dca318f6` |
| 103 | `theorem` | [domDomCongrₗ_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-refl.md) | 727 | `result-track:3cd75658a3d7df53c10cdc1543b5c980b645e46ae0d8a556c5c0f764ae3967f2` |
| 104 | `theorem` | [domDomCongrₗ_toAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-toaddequiv.md) | 733 | `result-track:a703f5c478f07a77be14165dd934fc42163d02f4fa187e183a5a1bac8a32cc5b` |
| 105 | `theorem` | [domDomCongr_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-eq-iff.md) | 742 | `result-track:72307cfcd71cc35749fae71ddbd702960f8fa7fbe789d0ebff4fb7c89ac7ee02` |
| 106 | `theorem` | [domDomCongr_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-eq-zero-iff.md) | 747 | `result-track:572359b4001d285ed549998636f88cece3d9a2f1239a778d98e175c5dde2cfed` |
| 107 | `theorem` | [domDomCongr_perm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/domdomcongr-perm.md) | 751 | `result-track:c8d13633695f69d10e7841416f1d03baa5d37d4f938db599b4574b16f0cad4a1` |
| 108 | `theorem` | [coe_domDomCongr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-domdomcongr.md) | 756 | `result-track:1659e7c64e8fc6f5c8cc1d18adf9ec7ab33ddab8afc3e3df1a8ab38b8c90debb` |
| 109 | `theorem` | [map_linearDependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-lineardependent.md) | 763 | `result-track:30ac1b63346b095f086aa1f71fdaa28b39e1d4f97298eca486f5a9c1a5c97e49` |
| 110 | `theorem` | [map_vecCons_add](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-veccons-add.md) | 783 | `result-track:7c5be1cf1082e95eccce0e2aa9afc59fc5a709108bb491621607295315cf5d7d` |
| 111 | `theorem` | [map_vecCons_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/map-veccons-smul.md) | 788 | `result-track:500dad55359ab0da9039b0c028e3af8882307e1513e50481f1b1e29bf9ff2cec` |
| 112 | `theorem` | [alternization_map_eq_zero_of_eq_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternization-map-eq-zero-of-eq-aux.md) | 802 | `result-track:45e6c851e1422cdf19feb5b17f7b89766ae3c6bc325a504378ef5978c3678195` |
| 113 | `def` | [alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatization.md) | 814 | `declaration-track:db8aa4cff28cb89eb9bbe701f9d8c07b699c6428d5797f3665f562111a0cb33b` |
| 114 | `theorem` | [alternatization_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatization-def.md) | 829 | `result-track:f1d0ff5eca21a59665fbd475132b710f35852bb18bf4e9a7bdbc4d45f99dae76` |
| 115 | `theorem` | [alternatization_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatization-coe.md) | 833 | `result-track:d1e4ddb2a0022d6006d5fa08ee83ea1279cf5a1a71212a99b3973d023719a0a8` |
| 116 | `theorem` | [alternatization_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatization-apply.md) | 837 | `result-track:489a4254ca4dbf4160b85197f313d70f30ddc466456e0851f21feac0971ea495` |
| 117 | `theorem` | [coe_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/coe-alternatization.md) | 847 | `result-track:d7ea672863b621b903db6bc87cbede299546bec68915c60f933a94317c515e52` |
| 118 | `theorem` | [compMultilinearMap_alternatization](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/compmultilinearmap-alternatization.md) | 862 | `result-track:732d3c05eae82b0eb6e3e1f754414c77e445a2ac87f9050f77939ced5925bc06` |
| 119 | `theorem` | [Basis.ext_alternating](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/basis-ext-alternating.md) | 881 | `result-track:fe3e551891c426b698081178ec87ef62016fb4da0071168378e09302fcbaa821` |
| 120 | `def` | [AlternatingMap.constLinearEquivOfIsEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AlternatingBasic.lean/declarations/alternatingmap-constlinearequivofisempty.md) | 900 | `declaration-track:ef7b6aaf4acbde452228219fc16ed391b49e0a3e6492eb9b2204de990b4ab86f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e57bbae3f45184fa4902003899589c6874f68b6c84846164ccb219afa9213fb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantd26fe9eb0340c6b95ea8edeea456c79f85db3cb9214207eefe397e22e5d3db13.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
