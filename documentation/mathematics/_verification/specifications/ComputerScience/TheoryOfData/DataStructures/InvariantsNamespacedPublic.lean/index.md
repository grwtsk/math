# Verification target: Invariants Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a506610883264adfd44fa210ddd629b68f9dc01f",
  "lexical_observation_count": 130,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a506610883264adfd44fa210ddd629b68f9dc01f`.

Source path: `GRWTSK/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_le_delta](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/not-le-delta.md) | 67 | `result-track:710c4da8deed041a16d01374216edb6c1fff0e902134cd1a57a4a91757a66118` |
| 2 | `theorem` | [delta_lt_false](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/delta-lt-false.md) | 70 | `result-track:27751896b67973aa66155282d06a72f7ea925ae84f4fe209dba161bea57fdd73` |
| 3 | `def` | [realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/realsize.md) | 81 | `declaration-track:a195733222c2c8fc82e84afe2a5a5e3b69eecb1dbfc2c2af0da739d413b022eb` |
| 4 | `def` | [Sized](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/sized.md) | 90 | `declaration-track:d7119cf3afb76c7fc09e688375d4e6202654392e3e44199431f5a75b21f27bae` |
| 5 | `theorem` | [Sized.node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node.md) | 94 | `result-track:455c071b24c5fe088044f7e123ea431eff10b2750c442a5c9e75822e4e3be210` |
| 6 | `theorem` | [Sized.eq_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/eq-node.md) | 97 | `result-track:291d1784bac84c46578a942d3294366d9b2eaca983ca753fcb6746c4f25c1f90` |
| 7 | `theorem` | [Sized.size_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-eq.md) | 100 | `result-track:d982b0eb2c462970809e3bae92646af2bb5a7c788d9bd47590e6b6ffb399e7f9` |
| 8 | `theorem` | [Sized.induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/induction.md) | 105 | `result-track:e08a1a5ee8e94b39c25d8cf16f2d4593a8bee4882fd1046920fcae041c8ce1fc` |
| 9 | `theorem` | [size_eq_realSize](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-eq-realsize.md) | 113 | `result-track:91300d3d490681899be815cf88360e10126c7ef8868bded872361b6cf57ccdd2` |
| 10 | `theorem` | [Sized.size_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-eq-zero.md) | 119 | `result-track:379ecc7d56372c66ec29c521860f4d6701f3b77bd5d133e5d4d8ff59675bf2ee` |
| 11 | `theorem` | [Sized.pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/pos.md) | 122 | `result-track:d6da5edc5c36d7628801b4731d82e8507a909786d87a5b849aea9e64f61ded33` |
| 12 | `theorem` | [dual_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-dual.md) | 128 | `result-track:59cd77efb7bf3d0ce8f1bef6f917c9159b769be8a516abcd5478490d45da80a4` |
| 13 | `theorem` | [size_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-dual.md) | 133 | `result-track:6d6c03613bd66f000617d2cdbb09d8316f3e5d887cca419fc062cd2781df9577` |
| 14 | `def` | [BalancedSz](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancedsz.md) | 141 | `declaration-track:1d05f7f32a40cb5e03199bc402ac02ec7008e0f1a7c34a0ae3ed70c169b833c4` |
| 15 | `instance` | [BalancedSz.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dec-source-line-144-occurrence-2.md) | 144 | `declaration-track:731d85c6756b043f180351b27300e532a268ac2f03e85ee0ddb286518308ffef` |
| 16 | `def` | [Balanced](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balanced.md) | 148 | `declaration-track:b809fea8d6162bd80b7e3588ee5550de536a1d82543ce82ce14dc7fef79d76d8` |
| 17 | `instance` | [Balanced.dec](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dec.md) | 152 | `declaration-track:bb46c189676a84434ac9cdce9e91f413a9adcdb1bcb67f8c26c0b007381cfded` |
| 18 | `theorem` | [BalancedSz.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/symm.md) | 160 | `result-track:72185d33b667c043d3edc58c42e61ced658077bd16e3152aabdac19aca6db4a6` |
| 19 | `theorem` | [balancedSz_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancedsz-zero.md) | 163 | `result-track:a86ae5a5b84fb4399f2b4de7552b5cf29c7cf179ff67cd2e8fd431f302bba53d` |
| 20 | `theorem` | [balancedSz_up](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancedsz-up.md) | 166 | `result-track:5e355c8b90c3b18eedb579eebe4ca0963d3351000be07e9431615ce8b955fecf` |
| 21 | `theorem` | [balancedSz_down](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancedsz-down.md) | 178 | `result-track:1c8b19b5a6e064c87733f29f76cdd2ccf324dfe169ffc738cf0267c12f334f0d` |
| 22 | `theorem` | [Balanced.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual.md) | 183 | `result-track:ef644acc41d91f92149bd6418ac840b63793538c54599b9e74b751079fd8d301` |
| 23 | `def` | [node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3l.md) | 191 | `declaration-track:319ae12c2846a3ffbad14a0b78a8b0fbf19a1157fb0806bc6c51317448ec987b` |
| 24 | `def` | [node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3r.md) | 195 | `declaration-track:a94cba6e7ab5eff23e328e6480b76dda1ff8ac8d8a831218a1a953628ec705fe` |
| 25 | `def` | [node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node4l.md) | 199 | `declaration-track:4059f8bfe8249251fdbb429d10faa64672f4b777e60bae4252bdaa97f4b76017` |
| 26 | `def` | [node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node4r.md) | 205 | `declaration-track:5ef21e0ca1ca19c4656a360411e32ec59b2911736b31502b8d1d4d5508568cb1` |
| 27 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotatel.md) | 212 | `declaration-track:9f07d01d4373de38278453015a8f3416e1bca0fc777f873682eb78dcb7e93c5b` |
| 28 | `theorem` | [rotateL_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotatel-node.md) | 216 | `result-track:1a3ba0d30f03dc9f03d597150874fa4e33041b74745905c795a6646c6fdc7504` |
| 29 | `theorem` | [rotateL_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotatel-nil.md) | 221 | `result-track:90db3a5e1faa92355929f363416e11d98abd87915c82848c9640f485c6c8326c` |
| 30 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotater.md) | 227 | `declaration-track:50358b38c0d3bd414e1492bfb2b47394b19df88ae3bf72d99a6975257b2af624` |
| 31 | `theorem` | [rotateR_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotater-node.md) | 231 | `result-track:c03311319171e36049ebde9b827ea4f7e1366b370e1b26eed3ab4e21cd31341d` |
| 32 | `theorem` | [rotateR_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotater-nil.md) | 236 | `result-track:dfb904ec3f87237bc0f88502afd5dd3cc17d46c49f4f83579bcde7d4626e5e60` |
| 33 | `def` | [balanceL'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancel.md) | 242 | `declaration-track:cc5e3c0d07bfe350b08b423cb8f05785cf6a35ede9719cf830cff68fa069bff0` |
| 34 | `def` | [balanceR'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancer.md) | 248 | `declaration-track:eeaa87de267aa4b3943c08d5094cf1ee8bfb08e727ca87a5ce525cc3f5bbf2cd` |
| 35 | `def` | [balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balance.md) | 254 | `declaration-track:8ba0b63bddac9af079023656f3da1b0cc9f5d945efc70029f93f34e1424c302b` |
| 36 | `theorem` | [dual_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-node.md) | 260 | `result-track:9aca6253ba5a61b007ba20cbccbadfaa97e01853172e6b65bfe028acb2e0769a` |
| 37 | `theorem` | [dual_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-node3l.md) | 263 | `result-track:aca19d417e5ef9bf074b5045af9facee488f0541fe6bd99b0280fb6e8b2bd67b` |
| 38 | `theorem` | [dual_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-node3r.md) | 267 | `result-track:78f6a82f1ab9d5a73fbc8afe557e99f827205c6e91126b89b138b6620bf42983` |
| 39 | `theorem` | [dual_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-node4l.md) | 271 | `result-track:f1df8608b38ca8b3085201e49dcff06e400c4b2f583725d453f11b84d63f33d7` |
| 40 | `theorem` | [dual_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-node4r.md) | 275 | `result-track:95e4a2df24e2e26da029029e483eccfd537fcf01a54db9cb88308ddf5e03c777` |
| 41 | `theorem` | [dual_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-rotatel.md) | 279 | `result-track:e697c1ba4133f6a537c684b83353a91aa007c7b90deeb44590bcd71851ba0171` |
| 42 | `theorem` | [dual_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-rotater.md) | 284 | `result-track:d6908b46ed4f00f02514db05b3f905ea7f6670a31b1af0ca23464e7d45f12d7e` |
| 43 | `theorem` | [dual_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-balance.md) | 288 | `result-track:02edb7c47119145971aa0a3b4f7f0d860b9d9c6545284c0c1ca89ee28fda103d` |
| 44 | `theorem` | [dual_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-balancel.md) | 294 | `result-track:79178b461dc1df717958ccf7a6dc84a8764224cbe14612bb106de53dd3e89da2` |
| 45 | `theorem` | [dual_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-balancer.md) | 309 | `result-track:49ede5d453580efaa00de5767e47ada3d6e425361e4844f3d559dcc0f868c133` |
| 46 | `theorem` | [Sized.node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3l-source-line-313-occurrence-2.md) | 313 | `result-track:ab509b21e66b70b62051d8e9f31d3928626fad80d57bc0da7d79548ef3822cc4` |
| 47 | `theorem` | [Sized.node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3r-source-line-317-occurrence-2.md) | 317 | `result-track:49c125e549d0e767de023c838891277fb9fd5a75aaed88627c527ccaa562b215` |
| 48 | `theorem` | [Sized.node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node4l-source-line-321-occurrence-2.md) | 321 | `result-track:bcc35c9bef110e4369dfec42674eabff493590df17d986305c2e96d9095846fe` |
| 49 | `theorem` | [node3L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3l-size.md) | 325 | `result-track:3f8e543dfe2844f265fa3cdc5eb29b94e6caafda074c45c6d31f3092878b03d2` |
| 50 | `theorem` | [node3R_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node3r-size.md) | 328 | `result-track:a87338ecf6fcf5a358cde17d3b8c8edbe8e83cb1772a649081b0055a887460fa` |
| 51 | `theorem` | [node4L_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/node4l-size.md) | 331 | `result-track:a0bd3290bda1292c40112534223783ca58be6f05037bf91737e5aa36750714fd` |
| 52 | `theorem` | [Sized.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-source-line-338-occurrence-2.md) | 338 | `result-track:cd1b1ecd85b4171433a705599876c5b74e0a3fa99317a8255f56281e268dfbc2` |
| 53 | `theorem` | [Sized.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-iff-source-line-342-occurrence-2.md) | 342 | `result-track:45b7c4df2988838365b05aea0e0d9d0c6ab3bc249b50c2f4c426da7ae9b54754` |
| 54 | `theorem` | [Sized.rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotatel-source-line-345-occurrence-2.md) | 345 | `result-track:070d7e5f41ec6ab36eea29fb98b49c4fcbd8844bfc069b2e11722ad33d15ddda` |
| 55 | `theorem` | [Sized.rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotater-source-line-351-occurrence-2.md) | 351 | `result-track:2fb3a581e23d47603b7e590175869d344b9031234440ed2fcb063f027367626d` |
| 56 | `theorem` | [Sized.rotateL_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotatel-size.md) | 354 | `result-track:abfa99c467f529b84051cb177356d24abed1287e3f65f6ed2184e37647688134` |
| 57 | `theorem` | [Sized.rotateR_size](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/rotater-size.md) | 360 | `result-track:0b6c07539c1713528f2d2bb22cae5e50746f9d9813e016cbd6a13c196ea7895d` |
| 58 | `theorem` | [Sized.balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balance-source-line-364-occurrence-2.md) | 364 | `result-track:86ba15d91e4289a0ebf500b917752f4ecfd2ff13c6727b548fc6a3d7d457d0b5` |
| 59 | `theorem` | [size_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-balance.md) | 371 | `result-track:ef24ef44285aafebd4ea820b33d526ddec01e7f81ad8b8dbbbfe91c3f4109586` |
| 60 | `theorem` | [All.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/imp.md) | 382 | `result-track:e61df5481f048c46d12bf6e1ff69b6361ab0a71858370762dc23e3e3bb6efe8e` |
| 61 | `theorem` | [Any.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/imp-source-line-386-occurrence-2.md) | 386 | `result-track:a57c136ccbd671f43d4b03bbe80e87fc14ed3530acfc7b7ea18a915e4422e8ca` |
| 62 | `theorem` | [all_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-singleton.md) | 390 | `result-track:a6f18e460f3aacbc161fbbf250f51f69be7a22c59c45c89730ed104fef6412af` |
| 63 | `theorem` | [any_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/any-singleton.md) | 393 | `result-track:ee6c707561b83edd7ce20521bb767002ee32783e296c26b5b7d3a7cd54a887aa` |
| 64 | `theorem` | [all_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-dual.md) | 396 | `result-track:15e1a501504a560620b5cbaee9b1d8a3eb770b7a7f18d1da79de724f4ad18e43` |
| 65 | `theorem` | [all_iff_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-iff-forall.md) | 402 | `result-track:cff2a3ba01f175f710ec68cde572c228898411033372933180ff0c29c9cab104` |
| 66 | `theorem` | [any_iff_exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/any-iff-exists.md) | 406 | `result-track:c058b9e0f863fc3faa6dd3691a5282e13c3ddef2a742e3618621a5bdf68d464c` |
| 67 | `theorem` | [emem_iff_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/emem-iff-all.md) | 410 | `result-track:566e15e8a290c0d57e5144c71d923f776c2deb83dd913f37b0644e188b058dbb` |
| 68 | `theorem` | [all_node'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-node.md) | 413 | `result-track:93f281ee932a542727eb16c052f51741bef16d302b7d273f6ce676659b00ada6` |
| 69 | `theorem` | [all_node3L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-node3l.md) | 416 | `result-track:2032cd7e15189b382517055b3e809cb42b2c5ba653c67e2510fe551006330bbd` |
| 70 | `theorem` | [all_node3R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-node3r.md) | 420 | `result-track:a6318662224ac6402acbde37eae3a928c9d431d7ffdef407423ddc86f019b512` |
| 71 | `theorem` | [all_node4L](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-node4l.md) | 424 | `result-track:ab18f7460ede4e7aa4411cc723265070fe52e84d0ed12e42d504624ea8206873` |
| 72 | `theorem` | [all_node4R](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-node4r.md) | 428 | `result-track:b797a9cec58141b5fc5e939ae455c335ee79af2c3f4d24b833d9f32bbccba99b` |
| 73 | `theorem` | [all_rotateL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-rotatel.md) | 432 | `result-track:6d31b8f3a0cc4dcc5dbecfb250d448cbc8810e3507b8357c502885eec7479d1e` |
| 74 | `theorem` | [all_rotateR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-rotater.md) | 436 | `result-track:490af7e3f58d1d21bcdeba138d6b83881217123c1bfa8d62d323227d0669a624` |
| 75 | `theorem` | [all_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-balance.md) | 439 | `result-track:bfc8017114958ef964c3e2b17b89d12d37c4433218e9aba4b923c098ec966e83` |
| 76 | `theorem` | [foldr_cons_eq_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/foldr-cons-eq-tolist.md) | 445 | `result-track:cc06ab4ed62777f3b502926265bc8e18564836ae70cfa344415cc58647944614` |
| 77 | `theorem` | [toList_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/tolist-nil.md) | 452 | `result-track:eaccf0f0e0949648337c1b0a20ee360db86bf144fd15f1e1f6e00c02da0b7d45` |
| 78 | `theorem` | [toList_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/tolist-node.md) | 456 | `result-track:b85d62805e787551a8a26595027514d3f1133d14eff0f28940cfde1b6baee4ec` |
| 79 | `theorem` | [emem_iff_mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/emem-iff-mem-tolist.md) | 459 | `result-track:0e5d6aab9717745a22a2c434c539c8dda055e7e28fefab766e9c2da9ae89655f` |
| 80 | `theorem` | [length_toList'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/length-tolist.md) | 462 | `result-track:bc936f8eb9955dca89ed8e710157aaf5906aa6b0cba69bedb0fc9465343f63fa` |
| 81 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/length-tolist-source-line-468-occurrence-2.md) | 468 | `result-track:fe29530a7785df2a39a60f17bea0d36035e5efea2e4a01c2824554052c07c064` |
| 82 | `theorem` | [equiv_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/equiv-iff.md) | 471 | `result-track:6576e28201b2e7ece90d3386fa5597a219795c923c805cc882a5ca44759b45ff` |
| 83 | `theorem` | [pos_size_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/pos-size-of-mem.md) | 478 | `result-track:c60ba59326ae4ba90d6cf6edd521fe948c01db344323f747cb3ddcb5edbf3904` |
| 84 | `theorem` | [findMin'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmin-dual.md) | 484 | `result-track:1e160b4d2e510f4241661202124b196b9060b5c5a1c7c3cc0488afa46d537a9f` |
| 85 | `theorem` | [findMax'_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmax-dual.md) | 488 | `result-track:e08caeb79152a0693b17b487fd89aaf56208fd913614e28e74e3c6927adb7b4e` |
| 86 | `theorem` | [findMin_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmin-dual-source-line-491-occurrence-2.md) | 491 | `result-track:58391d0fbcb24135623aa83e077c6054a7c1c26314a40061218341ad95f6df1c` |
| 87 | `theorem` | [findMax_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmax-dual-source-line-495-occurrence-2.md) | 495 | `result-track:f5e3f48cd8c1a2a30cfcb9d851d1f277467bc93ea6e108c7d39fd12890b91420` |
| 88 | `theorem` | [dual_eraseMin](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-erasemin.md) | 498 | `result-track:d6f77fff9eafc9dcb51bbaf2730dabb4527ba2d2ab0ffd26eaf0d83f19bae4e9` |
| 89 | `theorem` | [dual_eraseMax](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-erasemax.md) | 504 | `result-track:b6391cd0069df5035ce8039b340453cdc8600bb878f42b9744ec08116b06797c` |
| 90 | `theorem` | [splitMin_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/splitmin-eq.md) | 507 | `result-track:825d6b1f795ff91b5b547637a97beaf28dbdc79343d2e110bb6fd9b93119d80f` |
| 91 | `theorem` | [splitMax_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/splitmax-eq.md) | 512 | `result-track:cd919e262459e199b57faa84bc4b4b325ee89cfdf562bfc55225c0aa37d36a81` |
| 92 | `theorem` | [findMin'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmin-all.md) | 518 | `result-track:4470cede4b98cc8a26a8af301c6f28af58fd060afc62aedb93742e5b3afce82e` |
| 93 | `theorem` | [findMax'_all](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/findmax-all.md) | 523 | `result-track:5dee5cb08bca430a3a5393c515e5c9bca38fd350ff165363259261cf8f55f91e` |
| 94 | `theorem` | [merge_nil_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/merge-nil-left.md) | 534 | `result-track:9dc4b57c4382f41b20ae83f537a0507248c645fe34e431ef7c3ee38f73a12b15` |
| 95 | `theorem` | [merge_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/merge-nil-right.md) | 537 | `result-track:1010a74855df38eb4e2205a3770b373cb10a92d1c6984ab130f27043ca988161` |
| 96 | `theorem` | [merge_node](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/merge-node.md) | 541 | `result-track:f2ed1bff8d3f14a2345d0621c881a2a2cb04d3025fab7aa47ce074c90d68feb1` |
| 97 | `theorem` | [dual_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-insert.md) | 552 | `result-track:2b97bbf28c649c6ed17602d1e12c1ad376f170e49110f335a583f9149a9a80fc` |
| 98 | `theorem` | [balance_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balance-eq-balance.md) | 565 | `result-track:f50b38b47e815a4661060cc1222be876e2d327144ad7750362f422929c172b3f` |
| 99 | `theorem` | [balanceL_eq_balance](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancel-eq-balance-source-line-649-occurrence-2.md) | 649 | `result-track:9ef5d028bb8b601d6ce8f9e65dd6eb7402cbc7da408ef670ba74383a2dd6d97d` |
| 100 | `def` | [Raised](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/raised.md) | 665 | `declaration-track:9a5e7782d771916ce4a3bd8513c2a44f0c1e703722094d69f6ef01f853071798` |
| 101 | `theorem` | [raised_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/raised-iff.md) | 668 | `result-track:6947ec44f23a752916852f945f0a26157e6ea18d0cf72a193b9291348482fd51` |
| 102 | `theorem` | [Raised.dist_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dist-le.md) | 678 | `result-track:ea6d8fafbde80f237999242dd4c44fe14bcccea903d5803b717a934b9d4952ad` |
| 103 | `theorem` | [Raised.dist_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dist-le-source-line-681-occurrence-2.md) | 681 | `result-track:f08bf9013c3a2878e1f4ceabb18859b6d960b1df87a5a838ccd758ca18485a2f` |
| 104 | `theorem` | [Raised.add_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/add-left.md) | 684 | `result-track:7331c31e8843afa6732d739abcc33987018d7e5878e2fd90883bc14a44546f9c` |
| 105 | `theorem` | [Raised.add_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/add-right.md) | 689 | `result-track:d7ac55d002ced72eeab874809b4a8e8cef2d6d58290b117908ffa4f2a0188c7c` |
| 106 | `theorem` | [Raised.right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/right.md) | 692 | `result-track:d237a1a8bf8da95359acf811ff4983a4ac46e6b09e0ad0adfe07943887c83df6` |
| 107 | `theorem` | [balanceL_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancel-eq-balance.md) | 699 | `result-track:2954bae341c78f914c7e2b2165abb8eb750bed026045ce42fe44e05228f0fcd6` |
| 108 | `theorem` | [balance_sz_dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balance-sz-dual.md) | 717 | `result-track:0181830d6b9778ad3db324aa3d56b570b2f26b9db75dd493a1db278984c62a77` |
| 109 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-balancel.md) | 727 | `result-track:1d587ac13683038a7757b6059dd85c2d126ed373c7dafc30734e29c7d6ad966d` |
| 110 | `theorem` | [all_balanceL](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-balancel.md) | 733 | `result-track:a5ff7cc3d7e50880ba01d31c51c1d950454a67469d7d5247701eb04a22e721da` |
| 111 | `theorem` | [balanceR_eq_balance'](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/balancer-eq-balance.md) | 740 | `result-track:32ba3cd3be1572944aba6b6ad799841df6c54f079d100cc90a201fc68ce56a99` |
| 112 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/size-balancer.md) | 749 | `result-track:12fe00213ac4f7d7931251b6b5dae6048fecd3cc68109d51ca323b145c99d13a` |
| 113 | `theorem` | [all_balanceR](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/all-balancer.md) | 755 | `result-track:b7557fe7c45f2495292c1ff2aa22397af5bf5261963f1ab276af0b9b078cf7b9` |
| 114 | `def` | [Bounded](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/bounded.md) | 769 | `declaration-track:c5d4226a85950da55442ac077543a161be242da0114edb5776565db98ee34531` |
| 115 | `theorem` | [Bounded.dual](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-source-line-774-occurrence-2.md) | 774 | `result-track:dd10b601756d9d3a745f35a68336e0680a9eadabfd83d4691ab69bc0841a3569` |
| 116 | `theorem` | [Bounded.dual_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/dual-iff.md) | 780 | `result-track:922b49fa013db9d2dcc1a7bb12f1fa97fae04d2996ff41eed0ee21f3e6bd2dd7` |
| 117 | `theorem` | [Bounded.weak_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/weak-left.md) | 785 | `result-track:b4dbea148fd3b5a2f989841380f3fcc184c93c538c3fc3b2dc7c494ce320a5a2` |
| 118 | `theorem` | [Bounded.weak_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/weak-right.md) | 789 | `result-track:6b47eca80d246fc77aaa5b80ef4a19f55f1a98a3d561b79a9664cf3ce399d120` |
| 119 | `theorem` | [Bounded.weak](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/weak.md) | 793 | `result-track:71b310794d484d49315a1507fe9c19bf5abaad14b38d45a0ab65f29c729b4700` |
| 120 | `theorem` | [Bounded.mono_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/mono-left.md) | 796 | `result-track:82bebab8eafdf627077088f86f21aa0a3096f737c4a45e2d315a6fb9dd6dce99` |
| 121 | `theorem` | [Bounded.mono_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/mono-right.md) | 802 | `result-track:16a8a468547fb57068fa894bc8f5d2a865b995106a7fc7783dd4554bf85a7b28` |
| 122 | `theorem` | [Bounded.to_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/to-lt.md) | 808 | `result-track:7095cccebd2bd52692e7480c451c79dc0c9ebe139b147154259862b8b14c7946` |
| 123 | `theorem` | [Bounded.to_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/to-nil.md) | 812 | `result-track:8a012797fcbe259e9596cd152f2a4fee56e56117de64abc67c8c19d16825463e` |
| 124 | `theorem` | [Bounded.trans_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/trans-left.md) | 817 | `result-track:32e3a0e082d3cb886c33f2fc23558e97fa0a2c2e4bc4f9085f61f014972c9df9` |
| 125 | `theorem` | [Bounded.trans_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/trans-right.md) | 822 | `result-track:066ef86299e24b8418ae48a5568f840f7e778fbab283ea6a279a939407c0eb4e` |
| 126 | `theorem` | [Bounded.mem_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/mem-lt.md) | 827 | `result-track:20e45ff0b537156393fefcafd3a7f09c2c38395b7990e1ef942582766f28f851` |
| 127 | `theorem` | [Bounded.mem_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/mem-gt.md) | 832 | `result-track:ce82723e79302c9e2ef5ba7ca96bb16e9cf479090779dca7773b2fcbed382460` |
| 128 | `theorem` | [Bounded.of_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/of-lt.md) | 836 | `result-track:7668a314665e2069a527a4c612ec7594c330c526eb865f8a6c41ba55f93b9373` |
| 129 | `theorem` | [Bounded.of_gt](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/of-gt.md) | 841 | `result-track:5970fb016861b0ef588d71ed205b69af4005d26c89b3a5492f1e6f62bb747b86` |
| 130 | `theorem` | [Bounded.to_sep](../../../../../../ComputerScience/TheoryOfData/DataStructures/InvariantsNamespacedPublic.lean/declarations/to-sep.md) | 846 | `result-track:bd46fe5dacc15e1a65c45f4e347ea98130e9df678fc392b810dbaea8d0813e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45652673547362e50dedd35867e0f3dfe8316c8c0415c3225d09a879136596e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Invariants/Variantf13943c825e23ed0cc4dec84a86bf598664e64810cbaf45210aab77a136029b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
