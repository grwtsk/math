# Verification target: Module Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64fe564077cf686f3fdf852c99037c8fdf129487",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64fe564077cf686f3fdf852c99037c8fdf129487`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/linearequiv.md) | 50 | `declaration-track:912910c90dd0398ad374d3b2c18a27e3bd8312d46251712dd326058543283a35` |
| 2 | `class` | [SemilinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/semilinearequivclass.md) | 94 | `declaration-track:5a8dadccb04c8304afaa67f3551ad372082fc6e6122f2ae097397099b7c252aa` |
| 3 | `abbrev` | [LinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/linearequivclass.md) | 107 | `declaration-track:68aa548bf4bf73aed0829174b7ebd78f888025e1bd0352f3400b7d7aad7596fd` |
| 4 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/instance.md) | 122 | `declaration-track:154d33e85ee433594a5fed4543d14cc546e2a3ddd207994d151efe3fa0b8a6bc` |
| 5 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/instance-source-edition-2.md) | 146 | `declaration-track:54ed1ccd13a8e6097c1ebaceaea31e8d58d83894289d821c225ae3b75b9c42e1` |
| 6 | `def` | [toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/toequiv.md) | 151 | `declaration-track:60a88e41fe0d0a6e707320217b4d04a66754619dc87375d3052fb2e4d8ec9c63` |
| 7 | `theorem` | [toEquiv_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/toequiv-injective.md) | 154 | `result-track:5a758caaa404aafb1200b79db8445e59fc280a81a9149a69deb561b09569dbee` |
| 8 | `theorem` | [toEquiv_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/toequiv-inj.md) | 161 | `result-track:84e24208216e8292290fa29ba5419f679454d95b7aba265f8e000bec14891146` |
| 9 | `theorem` | [toLinearMap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tolinearmap-injective.md) | 165 | `result-track:7e5a7a7ef3a10c603da408fa31541ca4272adb3a6411f67e5c346513367e186b` |
| 10 | `theorem` | [toLinearMap_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tolinearmap-inj.md) | 170 | `result-track:623f7b2e68e64fdace28df33c5d9f4ac9eac945f559d75ce00bd140166c21f23` |
| 11 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/instance-source-edition-3.md) | 174 | `declaration-track:b997bb7a8c7515c6169056fd1e83d9b2960e67dd09f3e00bef2c0765dfa80747` |
| 12 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-mk.md) | 184 | `result-track:3f1f7a3ff0acc271e72a87769107517783881e63a343c3cd444e371250cf2def` |
| 13 | `theorem` | [coe_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-injective.md) | 188 | `result-track:09778fda34f406ab149ad0541d4db0dfb22ccc12df12d6024481f3c701f109a6` |
| 14 | `theorem` | [coe_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-coe.md) | 211 | `result-track:5da4e880308a27657ac0d38a28a587c8f08cf7608dc4e8acca4cf2d06b9460ae` |
| 15 | `theorem` | [coe_toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-toequiv.md) | 216 | `result-track:b2fbc3ba2e0a7ad58df8abc5827069dca87dcfe6a6e070544e4138fd9748e949` |
| 16 | `theorem` | [coe_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-tolinearmap.md) | 221 | `result-track:cca873d7160a1aedb9bcdb1d9b385f2e6a36c3cdae607e34d1b3f3f111516890` |
| 17 | `theorem` | [toFun_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tofun-eq-coe.md) | 226 | `result-track:fd9352b51f69ec2a01cc577e0679217eb784d496795b8ad5855d84744dc4dd45` |
| 18 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/ext.md) | 234 | `result-track:60729a33e06ccb87e11942249357f8eb94700d70d6c5bc5c10419b5942edfc11` |
| 19 | `theorem` | [ext_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/ext-iff.md) | 238 | `result-track:d8f06c68c7eebf28e78a45b7ae4ec975474baa4edfca1e1da6389e58c79371ed` |
| 20 | `theorem` | [congr_arg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/congr-arg.md) | 242 | `result-track:4b56e697054159d3c811fe0ae7e5a29c49c97db914429b3a396e336512ba8bbf` |
| 21 | `theorem` | [congr_fun](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/congr-fun.md) | 246 | `result-track:7588a2e1cc3e9e7e8273dd48d5e23ea8542eaac1ef058bfb1204532fdaadafa4` |
| 22 | `def` | [refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/refl.md) | 258 | `declaration-track:51cd782e4dc42b1a8eb006a433aa847436bfe8cf20acc10b545fd209b82a5829` |
| 23 | `theorem` | [refl_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/refl-apply.md) | 265 | `result-track:ca04dd6633fd66e8858f3eb098896b35e7e42c9cb562dd9216e00cd22aa84c17` |
| 24 | `def` | [symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm.md) | 271 | `declaration-track:77c5800689f4402b1af52c2d0266408240872fbdb48e5ea78a1af1b1224354cf` |
| 25 | `def` | [Simps.apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/simps-apply.md) | 281 | `declaration-track:2856a18acaa4a6cc65375ac1ef8e1b505a0ebdb7d37daeabc31c16df42d4f41e` |
| 26 | `def` | [Simps.symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/simps-symm-apply.md) | 289 | `declaration-track:f8c1f234b3ca37ea4538992556950ad956e86767c1e42e48aa0aae3b36dd9afc` |
| 27 | `theorem` | [invFun_eq_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/invfun-eq-symm.md) | 299 | `result-track:cff24aae52917e1a6a8c9f8d8fa66fc72a45261837c132a8b84874e4b1120769` |
| 28 | `theorem` | [coe_toEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-toequiv-symm.md) | 304 | `result-track:cb35160ececf4b75a358f6d2b1455e2d7915b293df2dd4c391c15f8a2edaca64` |
| 29 | `def` | [trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/trans.md) | 335 | `declaration-track:ab0732894ff3e3f7ea76507126a98eed20ef651b870e2df871c7c62c6f8ac5d9` |
| 30 | `theorem` | [coe_toAddEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-toaddequiv.md) | 354 | `result-track:028d48c25202e5dd19de17ce18daf1f60ab6822ee36739e531d9e251172328ad` |
| 31 | `theorem` | [toAddMonoidHom_commutes](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/toaddmonoidhom-commutes.md) | 359 | `result-track:973aee1e29b72df47fbb6481de745c8716c26d213e336e73bb361416f94ee8c8` |
| 32 | `theorem` | [trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/trans-apply.md) | 364 | `result-track:517b8b5cef80fd67a93ac1db70aff0d3ca0f4990d68f8dae2d548e6eb159c461` |
| 33 | `theorem` | [coe_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-trans.md) | 368 | `result-track:24381b41e2dd47bf4d4c0b32a7dfbeb2a1ec5065e56e593e865679788258a5f1` |
| 34 | `theorem` | [apply_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/apply-symm-apply.md) | 374 | `result-track:746e5b65bedbc03e65e16926f26f8794d5b83a7953734763090ff9d39fbcbb5e` |
| 35 | `theorem` | [symm_apply_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-apply-apply.md) | 379 | `result-track:7fabc737d92b142611a6e132085ceeb09923aab1699dcbb2b6136c7fe8073cc5` |
| 36 | `theorem` | [trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/trans-symm.md) | 384 | `result-track:6323934b4d0bb71eea172a96f2a2ffa3b70a964c067628a8908aaa8ad58b7030` |
| 37 | `theorem` | [symm_trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-trans-apply.md) | 388 | `result-track:8246a9ab5dc7fc95dd892eae8d9840c57ce85dbe461353ae94d1c77abc19fe84` |
| 38 | `theorem` | [trans_refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/trans-refl.md) | 394 | `result-track:3d7a421ddac305bfdb726adf504c13a7541013e49371248bddfad456f55b0950` |
| 39 | `theorem` | [refl_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/refl-trans.md) | 399 | `result-track:fc67036e803368467e9aad80663221ab4acd8f44abfee9df22cb16a587d4e58a` |
| 40 | `theorem` | [symm_apply_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-apply-eq.md) | 403 | `result-track:6d455f81d558e706f904e85558ed00b599df5de8506dfdbc3b42f982d704c08d` |
| 41 | `theorem` | [eq_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/eq-symm-apply.md) | 407 | `result-track:21f69ba19b4f511c2eee867762299a3128e3c574fd18a01c9b8e9640a5f54f9a` |
| 42 | `theorem` | [eq_comp_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/eq-comp-symm.md) | 411 | `result-track:7cd6dfadd3db54eb57ec27d0807f473a20562d9cf560b5b32a8357f60a817bb5` |
| 43 | `theorem` | [comp_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/comp-symm-eq.md) | 415 | `result-track:de7ee80d3078be3a3c5227bf0255407558651c99cbe068f0feec3a15d1b2a77d` |
| 44 | `theorem` | [eq_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/eq-symm-comp.md) | 419 | `result-track:2469d64fc29bb78c00372a1ca2181e971a0301e80cabce50f3d725efa9a7dd1e` |
| 45 | `theorem` | [symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-comp-eq.md) | 423 | `result-track:baec971a26819ebd37eee061c1131a09c5fe0aef1147e06d0e4fdb663f860a72` |
| 46 | `theorem` | [eq_comp_toLinearMap_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/eq-comp-tolinearmap-symm.md) | 429 | `result-track:78005e8f6cdc0a14522c626abe4bfad67d12133d8fcd2338ce99818a0e94a3bc` |
| 47 | `theorem` | [comp_toLinearMap_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/comp-tolinearmap-symm-eq.md) | 436 | `result-track:0628fa549e5ccc891456707683801389b149df549241f7c3bfc6a46c0cf60922` |
| 48 | `theorem` | [eq_toLinearMap_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/eq-tolinearmap-symm-comp.md) | 443 | `result-track:ed3d7d96dc70f78b2458a4730d73f9617700561c9a3ca404f64bf87f6d4715bf` |
| 49 | `theorem` | [toLinearMap_symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tolinearmap-symm-comp-eq.md) | 450 | `result-track:9b10ec5914a6a13645f083c255f4dc2d26c80871a1bd2a3256c6df8e4d1520dd` |
| 50 | `theorem` | [refl_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/refl-symm.md) | 458 | `result-track:bb6e9e9aa152bf063fcd1a2fcff543a5dd98f95c4cd232b939724085d9fe4f1f` |
| 51 | `theorem` | [self_trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/self-trans-symm.md) | 463 | `result-track:4743526c55896069a5ab010c2bee8e6bac3c49d70b75b97e82f604db859d7925` |
| 52 | `theorem` | [symm_trans_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-trans-self.md) | 469 | `result-track:4452bbb9ea0766c2822561069f5ae2daa8fad3e3acb4f820cb97fb6a45cf864b` |
| 53 | `theorem` | [refl_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/refl-tolinearmap.md) | 475 | `result-track:f8a0509aa9a4c1305eb130748b8284843717ed74f6ad01e127f61405f5731b68` |
| 54 | `theorem` | [comp_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/comp-coe.md) | 480 | `result-track:c9821755bc524c04b184911926eb1701aaa66226ee49cbc74fd4cbe2130f0c28` |
| 55 | `theorem` | [mk_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/mk-coe.md) | 486 | `result-track:28d3554098183f5dc83259f3619ba722ab100ab5d60c5ae9ce27d7517d654915` |
| 56 | `theorem` | [map_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-add.md) | 490 | `result-track:19beaac0b3e767a3a24cac2d6c56ce609ef5cbe8a497d7732dc42e25862d163c` |
| 57 | `theorem` | [map_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-zero.md) | 494 | `result-track:3b8f0becdae5fc049301da547054a9ae81a24b81c0da5382f9aabf6f098a67cd` |
| 58 | `theorem` | [map_smulₛₗ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-smul.md) | 498 | `result-track:429bb9e92d2010fc6e59df7bd71b42e46bb6f28047af493f85d177ddc4a4f7e8` |
| 59 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-smul-source-edition-2.md) | 502 | `result-track:619b06a4864acddcf3df6a93abaff38433a1a549ba1e167deedc8a75c9d20fee` |
| 60 | `theorem` | [map_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-eq-zero-iff.md) | 506 | `result-track:bbb6f076fecab2001c69dd029fe2715fd11eca355254678c00352680d77de495` |
| 61 | `theorem` | [map_ne_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/map-ne-zero-iff.md) | 510 | `result-track:014a1865b1728ec005d44a09161f6788f36d7cf2a8fc6493cebe8a3851765beb` |
| 62 | `theorem` | [symm_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-symm.md) | 515 | `result-track:c76ee95fc3359df3a42672521b1fb5a34f6725f2100bae6ce75927cf41f8a5b7` |
| 63 | `theorem` | [symm_bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-bijective.md) | 520 | `result-track:02d77acdfe43fb0b67200356f1455d11599888681cf065c3283d99425ec3a576` |
| 64 | `theorem` | [mk_coe'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/mk-coe-source-edition-2.md) | 528 | `result-track:8f300e21665504cb81eeee7d6db6dcd17e9faf5091e2f64f685cf9bd5f5cb1c7` |
| 65 | `theorem` | [symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/symm-mk.md) | 534 | `result-track:60ce2e2acfeb560e5fd6956b4613c15f70c41ba67a3ae7f6001fc5be2d3edcaf` |
| 66 | `theorem` | [coe_symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-symm-mk.md) | 545 | `result-track:073939d54afa8184e7a8ba3f45532cb64844dd9685abf2a1bc56f1f59d9deda4` |
| 67 | `theorem` | [bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/bijective.md) | 551 | `result-track:a28a9d562bc0513dc83c296f64e4cb078c68a5d3287462adae797f72927a6b29` |
| 68 | `theorem` | [injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/injective.md) | 555 | `result-track:c62c00930635004fa8f535d5bf5df8013d9b4ede9d906bee6fc03495347adb21` |
| 69 | `theorem` | [surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/surjective.md) | 559 | `result-track:7574f98bb2f4e738b0d4d1939a51e40a994ad35f80199d790723953899aebb1c` |
| 70 | `theorem` | [image_eq_preimage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/image-eq-preimage.md) | 563 | `result-track:0f74a3caafc6ea928571d1802a5ce7300bbdc01caddcbdd17892279478ba8608` |
| 71 | `theorem` | [image_symm_eq_preimage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/image-symm-eq-preimage.md) | 567 | `result-track:94fa31edecc38771e9b3dbfd6aa3975984959d2ede66d3f6fbca1ab2c27c4b68` |
| 72 | `def` | [_root_.RingEquiv.toSemilinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/root-ringequiv-tosemilinearequiv.md) | 575 | `declaration-track:3015d191eccec78aad48eb520f0e2a95ef6d4c7d8c2c34115a1f492bf6a051be` |
| 73 | `def` | [ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/ofinvolutive.md) | 592 | `declaration-track:c68c8cc798630d8bdd4f6c05c12ab09d1aaac52abd1eba10f3e66805e57343ed` |
| 74 | `theorem` | [coe_ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-ofinvolutive.md) | 598 | `result-track:23066caa64d46d1f81c8b680617d16df0acd87d0ec2b3bf2d03e5ae466484387` |
| 75 | `def` | [restrictScalars](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/restrictscalars.md) | 615 | `declaration-track:6b556d7b6bdad0b4d0c79d79fb50b1fddf1e238406a56bec3609a6fae55e35f6` |
| 76 | `theorem` | [restrictScalars_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/restrictscalars-injective.md) | 625 | `result-track:18d90625ced68e523fe859321888d125bf47f10554c1045101a3995a2bfa417c` |
| 77 | `theorem` | [restrictScalars_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/restrictscalars-inj.md) | 631 | `result-track:6c8e75ddf72a9850785f15c14bc865d3593391250506ffc7f830466bfb1c1f81` |
| 78 | `theorem` | [_root_.Module.End_isUnit_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/root-module-end-isunit-iff.md) | 638 | `result-track:cd3837451fcf9f360591d7f4fafbb354536ce3fd3f3dc5e47ae88a9c1e1a7410` |
| 79 | `instance` | [automorphismGroup](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/automorphismgroup.md) | 654 | `declaration-track:2c8932a59180732bbccf0ad1c0aa8991e4cc2f302bfdba8da84b6d20252bb2b9` |
| 80 | `def` | [automorphismGroup.toLinearMapMonoidHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/automorphismgroup-tolinearmapmonoidhom.md) | 667 | `declaration-track:6630d750bacd1992527754613c78a63fc18fcb780225b6134514426c6f07023f` |
| 81 | `instance` | [applyDistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/applydistribmulaction.md) | 677 | `declaration-track:9cd343b7fa76abfa6230b84f55a9fb45d41d28dafe16318dbde1c41419603701` |
| 82 | `theorem` | [smul_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/smul-def.md) | 686 | `result-track:8d18de0d60991783e8574fda51adf3768d06fa352a2ef15514f546b3c6453b27` |
| 83 | `instance` | [apply_faithfulSMul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/apply-faithfulsmul.md) | 691 | `declaration-track:9677d7a335387bcee302fe1624b17f338dc60273211317bbbf50c1428803a436` |
| 84 | `instance` | [apply_smulCommClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/apply-smulcommclass.md) | 695 | `declaration-track:45014d470967e0e7030843fba8a2ad4021155417f538f3c0faf9dfef80ec12fc` |
| 85 | `instance` | [apply_smulCommClass'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/apply-smulcommclass-source-edition-2.md) | 699 | `declaration-track:99e36360e35fb7e4b6ac32bf51ea4f19354ebb2015359701128720de475dc36f` |
| 86 | `def` | [ofSubsingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/ofsubsingleton.md) | 712 | `declaration-track:ffd7246b628dee30eb00ece1bb358a75f2e1804434b6efab4f7db156a6b5942b` |
| 87 | `theorem` | [ofSubsingleton_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/ofsubsingleton-self.md) | 722 | `result-track:87e2fa13ded0afb5e23bc983ad6a90235053bb8ef1f2a997aaeb0c8b08233094` |
| 88 | `def` | [compHom.toLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/comphom-tolinearequiv.md) | 737 | `declaration-track:f5f44a11aee477f49a0a21990dbed88ee2d731515c8e979e887b0661ba4a1496` |
| 89 | `def` | [toLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tolinearequiv.md) | 760 | `declaration-track:9f0bd444b1444a9a08ddc1743455627a7cb290f534742fd86a6d2ba7b173ec4a` |
| 90 | `def` | [toModuleAut](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tomoduleaut.md) | 770 | `declaration-track:da60b8f8c71adf0fb5703370620c67afb8e02978052781d5b9e75883b98e4210` |
| 91 | `def` | [toLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tolinearequiv-source-edition-2.md) | 790 | `declaration-track:d51a941f2c3085d24e5d569bd53898f3968ef614df88b0182d116fa13970c2eb` |
| 92 | `theorem` | [coe_toLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-tolinearequiv.md) | 795 | `result-track:737110c4cafcb36d443b1cd71da6023a14a7136738c7ee1cf96192a33ed021c3` |
| 93 | `theorem` | [coe_toLinearEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-tolinearequiv-symm.md) | 800 | `result-track:5149be25857dd78fa93b2882d5ab4100d10781feb8d46c01ace3b2c487ad6d37` |
| 94 | `def` | [toNatLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tonatlinearequiv.md) | 807 | `declaration-track:2d05ba0e480cf356f961f7071146e8974ffffb3cf89f706e6ce5b39a8272d8f0` |
| 95 | `theorem` | [coe_toNatLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-tonatlinearequiv.md) | 814 | `result-track:c2a6195d95449afba91b8d836a1fffbe7dc245940ba4b864ce4afe5be51de73a` |
| 96 | `theorem` | [toNatLinearEquiv_toAddEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tonatlinearequiv-toaddequiv.md) | 819 | `result-track:ee3646cbc151fa6fc0f7d3093be3f9a904e3c5db2ea70651f6b599e391dc5ff4` |
| 97 | `theorem` | [_root_.LinearEquiv.toAddEquiv_toNatLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/root-linearequiv-toaddequiv-tonatlinearequiv.md) | 825 | `result-track:25bb4ba5bb55e628a79f8a6209c301d2cc268c2cdb14142380e0a024ad3134a8` |
| 98 | `theorem` | [toNatLinearEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tonatlinearequiv-symm.md) | 831 | `result-track:d91fe29a04acf8a3011b491fccf0fdb26b0d3501eda9586d17501fc5e0290c09` |
| 99 | `theorem` | [toNatLinearEquiv_refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tonatlinearequiv-refl.md) | 836 | `result-track:8b39b8eb62d03468b8ee315d7d7e3d3dd51f4f417a63f4d22fb1c214754b8f4e` |
| 100 | `theorem` | [toNatLinearEquiv_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tonatlinearequiv-trans.md) | 841 | `result-track:4de06e7848dc12d69cc9bc1ab856bfc64b09c6fe1e20f955fdb5b885000f15bc` |
| 101 | `def` | [toIntLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tointlinearequiv.md) | 856 | `declaration-track:9bfb64539cf621c4c52f83f2fae371629aa903a108ee2adbf732f253a513c77b` |
| 102 | `theorem` | [coe_toIntLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/coe-tointlinearequiv.md) | 861 | `result-track:bef4249a6d870ce3a329870c70eed67f945e1742cccead896e508be293b3db88` |
| 103 | `theorem` | [toIntLinearEquiv_toAddEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tointlinearequiv-toaddequiv.md) | 866 | `result-track:3af4bc3de314d43b4f3c9f35142c18456815e42c1431e5535786b16aa927cd90` |
| 104 | `theorem` | [_root_.LinearEquiv.toAddEquiv_toIntLinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/root-linearequiv-toaddequiv-tointlinearequiv.md) | 872 | `result-track:0715ff783c457b20d812eb0b9f7fc919cd0c7fffc36b78322a182f2cd9c61254` |
| 105 | `theorem` | [toIntLinearEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tointlinearequiv-symm.md) | 878 | `result-track:f8fac959788021e000afff8f7dad62ab8285382581041eeb28c9221cd1ab73ef` |
| 106 | `theorem` | [toIntLinearEquiv_refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tointlinearequiv-refl.md) | 883 | `result-track:e7853d1ddc80b618b2b2751257c7ef629850ff80ec35e18015efbd3b07aa6f35` |
| 107 | `theorem` | [toIntLinearEquiv_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleEquiv.lean/declarations/tointlinearequiv-trans.md) | 888 | `result-track:32b45b02263e4de6d87a9577cd2a391166ee1569f812921a31072d23b528692a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=389b4e7cfe0994e67f6c8227138c41d9bae3058fd4bf7121503dbac59e6b9c55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
