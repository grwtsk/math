# Verification target: Isometric SMul Namespaced Isometric VAdd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61bed760883cc2fe34c39cc3109ed6646e7114f7",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/index.md) · [Full source](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61bed760883cc2fe34c39cc3109ed6646e7114f7`.

Source path: `GRWTSK/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Isometry` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsometricVAdd](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometricvadd.md) | 48 | `declaration-track:00f4873a8d6a2afb84f56062edf567547e5287de78afcf3ae769c2b7c365314a` |
| 2 | `class` | [IsometricSMul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometricsmul.md) | 54 | `declaration-track:1b47f28191d8db06ae8787e33204ada46ab6280767f8f13acd2d74299dd4b0b7` |
| 3 | `theorem` | [isometry_smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometry-smul.md) | 60 | `result-track:da5568c2e848da5407ebdafcee9327352a09621797117330ab643d1b8a89f6f8` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/instance-source-edition-5.md) | 65 | `declaration-track:9df282939b5182a1ecdbfb8b31b94e0a560316cb6f8e847a1ed10c3ad41eafde` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:18e3e721819f5c6e569628ec416e088ee464d27ed2da4e2db8a52ad41970cbd7` |
| 6 | `theorem` | [edist_smul_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-smul-left.md) | 85 | `result-track:9eb9049d57b844ea22c988ef142890c4d29b997c21f146d77223bccab0c110e5` |
| 7 | `theorem` | [ediam_smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/ediam-smul.md) | 92 | `result-track:7de940625def86c22f8191f58f495c47ff20aada70556725ce5db38bb2a663c9` |
| 8 | `theorem` | [isometry_mul_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometry-mul-left.md) | 99 | `result-track:8e10dd9da686779fa84a0066c1cf3fce2c2bcaa21cef14e0b5502df06ab16106` |
| 9 | `theorem` | [edist_mul_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-mul-left.md) | 106 | `result-track:cf91b8c84100f859af987f8a4324781984915f8cfad096a88aa83d12ab4cc638` |
| 10 | `theorem` | [isometry_mul_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometry-mul-right.md) | 113 | `result-track:d647b77c72ccaa757f6477efe7188d3d581606abbd5a0a0f0fc978a5163f94c0` |
| 11 | `theorem` | [edist_mul_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-mul-right.md) | 120 | `result-track:bbdbe4bf0bd36f7df9c78ec9a7f8991d9749d9d65ee1ea7e161b02a2db2d00ab` |
| 12 | `theorem` | [edist_div_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-div-right.md) | 127 | `result-track:565a4c97790d98d7425b05e9bb71075d98087483b048f3d2d4a9563beef74642` |
| 13 | `theorem` | [edist_inv_inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-inv-inv.md) | 134 | `result-track:514b132ff6211443391f5393b44722adf22832bb1040fac78ff6871b592bfaca` |
| 14 | `theorem` | [isometry_inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/isometry-inv.md) | 142 | `result-track:eb87b03e89b07c02d27896611fc4490c3db6b9d78016429ba72d311657e39000` |
| 15 | `theorem` | [edist_inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-inv.md) | 149 | `result-track:ee327578deadcef0f27ac9e350b83e80690d69486a72f71b86de4178b0563571` |
| 16 | `theorem` | [edist_div_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/edist-div-left.md) | 155 | `result-track:746d113b24083e2a93031363ffa3abff5f1dbaf48396313bf8c1c1a3c6458cba` |
| 17 | `def` | [constSMul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/constsmul.md) | 168 | `declaration-track:df4fc6e534a8dfb137632138833bb15341e048af9e137859e5e435b0662d6ba4` |
| 18 | `theorem` | [constSMul_symm](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/constsmul-symm.md) | 179 | `result-track:ecc5aa2dff5bec395810424bf0bfe4c41d28ec2223590d203d501c96f431769c` |
| 19 | `def` | [mulLeft](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/mulleft.md) | 188 | `declaration-track:62dbab59908aedac872ad1029bddc778cf95c50677d9882e971c80540e390188` |
| 20 | `theorem` | [mulLeft_symm](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/mulleft-symm.md) | 199 | `result-track:29a120c1e01fb892521487ba0dc9984fe8892a4c8220a3605e6fde33e9bef18b` |
| 21 | `def` | [mulRight](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/mulright.md) | 207 | `declaration-track:18466fb9d547c03e64dd4d78978b79f058abef761a6f2e7ac31a788043906309` |
| 22 | `theorem` | [mulRight_symm](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/mulright-symm.md) | 218 | `result-track:3fe41bc6f2cfd480602b94831c274cd8705c5412950831893610c0089c9db367` |
| 23 | `def` | [divRight](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/divright.md) | 225 | `declaration-track:9429d5428e0670eee9868d7599868595063721b1d169dc0df221f9c8df8d3e0a` |
| 24 | `theorem` | [divRight_symm](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/divright-symm.md) | 236 | `result-track:90db81f47342a001d371f8c64d370e8be44f241da07f61fae5f3ae9cb7db1ef3` |
| 25 | `def` | [divLeft](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/divleft.md) | 246 | `declaration-track:65be543518aa95ec745dd1481897ef23cc5a1c221a5408999e1a3a6fd554813d` |
| 26 | `def` | [inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/inv.md) | 262 | `declaration-track:b3a978b6bd36171ea1511cec7261939dd2ea55e4a90c2543468636b1d688432d` |
| 27 | `theorem` | [inv_symm](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/inv-symm.md) | 272 | `result-track:074174136c3c75688d139797a28039b8e731b53e0642b35942f393464ea07352` |
| 28 | `theorem` | [smul_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/smul-ball.md) | 281 | `result-track:3de915d910ca47e4a8e008c34364200e5e7b26e775b1a35aa71ec2c2a39e0a30` |
| 29 | `theorem` | [preimage_smul_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-smul-ball-source-edition-2.md) | 287 | `result-track:694b328c8a579036044f9f70d6b606a33495a214611fab4a04725c611fafc91e` |
| 30 | `theorem` | [smul_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/smul-closedball.md) | 293 | `result-track:2a007edc44319fd841d220f13c570612433f318c4e4456a11cbdfabafb7808d5` |
| 31 | `theorem` | [preimage_smul_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-smul-closedball-source-edition-2.md) | 299 | `result-track:f78daf918c426eb231a256216c03a603e3bddd9b1d68c5e6715b43c3f49acde5` |
| 32 | `theorem` | [preimage_mul_left_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-left-ball-source-edition-2.md) | 308 | `result-track:66448ab73daed0438ca0f993345a008522a6b0ac7acfe083318e541fe78a46ad` |
| 33 | `theorem` | [preimage_mul_right_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-right-ball-source-edition-2.md) | 315 | `result-track:fff5996553d9a86242da8502dcc99576977261e24b8b89154163b1d3ae5d41d7` |
| 34 | `theorem` | [preimage_mul_left_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-left-closedball-source-edition-2.md) | 323 | `result-track:f179c1eed4cfc1dadfec578d378b486fd39ec82dbfb01d7284399ec8f143be31` |
| 35 | `theorem` | [preimage_mul_right_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-right-closedball.md) | 330 | `result-track:23975e89fde2bbcdda9e8e742779dc53728ed79aca32691a17232b321192f2ab` |
| 36 | `theorem` | [dist_smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-smul.md) | 342 | `result-track:f15ee8df19ea2e693f805d0561f437b12cdf6986100309dbf5858b5f30162812` |
| 37 | `theorem` | [nndist_smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-smul.md) | 349 | `result-track:76d39e67348ffb2a52732d6caacb1712588077e2e27277adbc45530c1f5ae1a2` |
| 38 | `theorem` | [diam_smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/diam-smul.md) | 356 | `result-track:ccf5f079495b89f1666a38898a207c76fa8e52b86ad6e7a802efb1c0ac0652a2` |
| 39 | `theorem` | [dist_mul_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-mul-left.md) | 363 | `result-track:12ba92eea9552d35d06430666433c97ba5d498e1ad4162eb61a610f7a017b657` |
| 40 | `theorem` | [nndist_mul_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-mul-left.md) | 370 | `result-track:53e2ec69aef9477695efbd7684d332d1bad810517ab58254176dc5c64ae6d0ee` |
| 41 | `theorem` | [dist_mul_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-mul-right.md) | 377 | `result-track:210af8161a361917a4975d42f7ea9d48e46b6aeb92a042e5d7566703153b38fc` |
| 42 | `theorem` | [nndist_mul_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-mul-right.md) | 384 | `result-track:0d32ea800f643612470ffe6d8a49c2f70afdc0446722a0c27c7fda2dbffbddb5` |
| 43 | `theorem` | [dist_div_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-div-right.md) | 391 | `result-track:4ee83bd8e104f176cdfbcef9dc8717c623d1af5da2517b211af3690e5f075a97` |
| 44 | `theorem` | [nndist_div_right](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-div-right.md) | 397 | `result-track:7dccb23fc81decbaec7baade5e30f6705ca41235ae566530235197c2dc78c060` |
| 45 | `theorem` | [dist_inv_inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-inv-inv.md) | 404 | `result-track:1dcf40bc63e8da2d7d361677c7d7036baccaa40d4bd9dbd4e94c08c55101cc9f` |
| 46 | `theorem` | [nndist_inv_inv](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-inv-inv.md) | 411 | `result-track:2809e3fd16c40a37dfd096c226353ac1a9643607e140f59ba244c23303b82bc7` |
| 47 | `theorem` | [dist_div_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/dist-div-left.md) | 418 | `result-track:c9fc5b51514c3526b583ff86e1c2a177cc7af9229d4bf55ee25ec23e83cf4ad2` |
| 48 | `theorem` | [nndist_div_left](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/nndist-div-left.md) | 425 | `result-track:9e721245f327ca77e5f4045ebcfd888d28fab15ccf42c207aef0358cb7c673f8` |
| 49 | `theorem` | [Bounded.smul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/bounded-smul.md) | 438 | `result-track:da4373a6d1f09b69dba22e9bc552dc510b1b7a089cff540135959e0828d3f61e` |
| 50 | `theorem` | [smul_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/smul-ball-source-edition-2.md) | 445 | `result-track:ea582164e865c43c9e4a55624d4f784d5c34cb848e1382a31675523aa7c0bcb6` |
| 51 | `theorem` | [preimage_smul_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-smul-ball.md) | 451 | `result-track:41784553533a7418e9e5e05e38b4a50f2dfc7be7ddb863070e18c81267ec5f33` |
| 52 | `theorem` | [smul_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/smul-closedball-source-edition-2.md) | 457 | `result-track:ad7f5957f659f27456c888f92410f303ff97dc2d12ef432c87eb578234ed52d1` |
| 53 | `theorem` | [preimage_smul_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-smul-closedball.md) | 463 | `result-track:bb0b653c9239958253f4a36952c5f9b2e72acdb881c6b766d99b2173cfabb721` |
| 54 | `theorem` | [smul_sphere](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/smul-sphere.md) | 469 | `result-track:322fcf3b2b36a8128ccdf306498196f6259c349eb32da87b304eb79c14c75eee` |
| 55 | `theorem` | [preimage_smul_sphere](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-smul-sphere.md) | 475 | `result-track:d9fefae2050d6254eab2aa95b6c62c8a6175f836fa2d7b335d772730e49b6234` |
| 56 | `theorem` | [preimage_mul_left_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-left-ball.md) | 483 | `result-track:2732f5063dab1ccb02bea9a18f65939fd85b3b6c31ce7591a668fa922d99cc81` |
| 57 | `theorem` | [preimage_mul_right_ball](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-right-ball.md) | 490 | `result-track:f5d03184fe293c193c9519e3b97e5f25bb8008fee874f2c71d5491c380bc4d9d` |
| 58 | `theorem` | [preimage_mul_left_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-left-closedball.md) | 498 | `result-track:29c0a3225cfb2f062b45397b57eb2c7c0b993f604ccb3b1d9b17709d579cbcc8` |
| 59 | `theorem` | [preimage_mul_right_closedBall](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/preimage-mul-right-closedball-source-edition-2.md) | 505 | `result-track:70be4dbe5fd8999afd59610a406d97047d02e0a6ab32ee4d89df71022ab4189b` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/instance-source-edition-4.md) | 520 | `declaration-track:57e840ec844fe986af3eb04055fda713b0dd7fc3b0439f6ed6728539eabd1707` |
| 61 | `instance` | [Prod.isometricSMul'](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/prod-isometricsmul-source-edition-2.md) | 524 | `declaration-track:c9331df3cb724bd71dead39b84d8d58a06225f59f91b7e1e328b9ae6443943ab` |
| 62 | `instance` | [Prod.isometricSMul''](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/prod-isometricsmul.md) | 531 | `declaration-track:93dcb829f3a598dfd9c707810aeeee62fdb705819f1269d884f44a0330050a47` |
| 63 | `instance` | [Units.isometricSMul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/units-isometricsmul.md) | 539 | `declaration-track:88b269c4fa605739411800ec5e67caa318e0c286776c6f3747baf79ca6367b2c` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/instance-source-edition-3.md) | 545 | `declaration-track:485497c3ea0a10c598188f7274e9459f38de1213409d69d4b47a962d41bea119` |
| 65 | `instance` | [ULift.isometricSMul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/ulift-isometricsmul.md) | 549 | `declaration-track:53029fe543b7c9fef36fd0f4d7e031407f159cb7a07fa9ca4570832a30d0ae2e` |
| 66 | `instance` | [ULift.isometricSMul'](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/ulift-isometricsmul-source-edition-2.md) | 555 | `declaration-track:e26f71cc1f505ca7d1a4cdeeb4b1099aee3419fc9e4519ec5d1af90d8ac17c72` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/instance.md) | 561 | `declaration-track:090d8e595f2a588e0cbbd3ac6a3663b462206847f270693a3dcd651cfebb9e52` |
| 68 | `instance` | [Pi.isometricSMul'](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/pi-isometricsmul.md) | 566 | `declaration-track:0c4789278b2f55e0fd60c54d7495ef730e681419df42a1b3389aa23fb1a461a9` |
| 69 | `instance` | [Pi.isometricSMul''](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/pi-isometricsmul-source-edition-2.md) | 574 | `declaration-track:8cb97095e365505c8c4332d6e6be73a3f4347949522b12c6b1e9e0f29177a73b` |
| 70 | `instance` | [Additive.isometricVAdd](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/additive-isometricvadd-source-edition-2.md) | 581 | `declaration-track:6fa2e187b94f1c40ca778680304823751c84478cf8f562f6545bccb72f5d579e` |
| 71 | `instance` | [Additive.isometricVAdd'](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/additive-isometricvadd.md) | 585 | `declaration-track:48d39deed6b3916981f4d7527e3037b720778d8ed1423ed5c1926c9ba8a0e182` |
| 72 | `instance` | [Additive.isometricVAdd''](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/additive-isometricvadd-source-edition-3.md) | 590 | `declaration-track:9517dc92146f10aae28c609dbc7e022094643a145e082a5833046af0143e6ca2` |
| 73 | `instance` | [Multiplicative.isometricSMul](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/multiplicative-isometricsmul-source-edition-2.md) | 595 | `declaration-track:ed11ea352b6547e50deb0194fa9a2f9698ef34ccdfbc0690660f1314f2a9d35b` |
| 74 | `instance` | [Multiplicative.isometricSMul'](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/multiplicative-isometricsmul.md) | 600 | `declaration-track:c9756aeaae131b24ebb8407d1366a649d84d85383e057375ef0d0506b278c149` |
| 75 | `instance` | [Multiplicative.isometricVAdd''](../../../../GeneralTopology/IsometricSMulNamespacedIsometricVAdd.lean/declarations/multiplicative-isometricvadd.md) | 605 | `declaration-track:fb407b2e6da9b76441509debb457630b942588145f36843490b135e58d286936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=12992a1b45d3b1752c58486f42c1e4366c2cee4fb826276315cd722ee5385abd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/IsometricSMul/Variantd3f928e1f4109aa9550968cb48103413d3cce2148745b69621028ff00528635d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
