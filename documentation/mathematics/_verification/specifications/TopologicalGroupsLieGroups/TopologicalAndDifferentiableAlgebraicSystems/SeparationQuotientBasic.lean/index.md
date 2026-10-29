# Verification target: Separation Quotient Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a417d840b1b428a363b894bc6e68ec36c75e78fb",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a417d840b1b428a363b894bc6e68ec36c75e78fb`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsmul.md) | 33 | `declaration-track:dc83677a1a32a8ea7f3ac72fb7fa166a643808615cda692969bf4521675c32d6` |
| 2 | `theorem` | [mk_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-smul.md) | 37 | `result-track:f8160ef39704f58c5f22347d3811a137d89f48a064badcd4c8690e40fb13b104` |
| 3 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcontinuousconstsmul.md) | 40 | `declaration-track:c2aa3f60515fc6295454fd67a0aaf705d0a195e33230ca55681ff552e852a060` |
| 4 | `instance` | [instIsPretransitiveSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instispretransitivesmul.md) | 45 | `declaration-track:586d3ae99b5215a50234e9544cb5f2596ef722becbed9fd55c3a325367f96706` |
| 5 | `instance` | [instIsCentralScalar](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instiscentralscalar.md) | 51 | `declaration-track:76ec14dfd1975cd1750586b7d1fba5dc846cc3f7c43f3eae736de2078e54637b` |
| 6 | `instance` | [instSMulCommClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsmulcommclass.md) | 58 | `declaration-track:e38460618e965069d198518ec8d819844ec1916f83b7aee06e6d4abedf4b88b5` |
| 7 | `instance` | [instIsScalarTower](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instisscalartower.md) | 63 | `declaration-track:5ae2adb03205729804a27b8bd5c521ce8248797d0c3e02dbbc42ec1259b0441e` |
| 8 | `instance` | [instContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcontinuoussmul.md) | 69 | `declaration-track:359cf2b7cf0e87edfe0a62fe595488e5c030b207aa4091a00d07d0dda0b6178e` |
| 9 | `instance` | [instSMulZeroClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsmulzeroclass.md) | 75 | `declaration-track:a305ed50774f2ad4f696913991ceaaa2b587e200c3912f65b2f2a1ec0d84dba5` |
| 10 | `instance` | [instMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmulaction.md) | 80 | `declaration-track:061623eb717abbbbbcff372915ecc3c5252f3f86d1595a62e36cdce350512db2` |
| 11 | `instance` | [instMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmul.md) | 89 | `declaration-track:7d2f197a96cbe5284b0e8c43f994960824a98a2e99822f07afc163457ed3ca20` |
| 12 | `theorem` | [mk_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-mul.md) | 93 | `result-track:b86fd17b9f9e035c013e78f2f221c94bd051e349014d1219dd9f10305d1b9e6e` |
| 13 | `instance` | [instContinuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcontinuousmul.md) | 96 | `declaration-track:c07205ecf05d266b0e95c8cb994c13e5c32b2997dd10ae97745fc6fc27ce0f4a` |
| 14 | `instance` | [instCommMagma](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommmagma.md) | 100 | `declaration-track:3187933e55731ceda851b6a597307134d066bcfca4740480866dfe382d5c35a0` |
| 15 | `instance` | [instSemigroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsemigroup.md) | 104 | `declaration-track:c2e966dd3d23c593343f87f79faffefd7194c291c592c8e6c709ddbde9e72cc9` |
| 16 | `instance` | [instCommSemigroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommsemigroup.md) | 108 | `declaration-track:d240e734b7d2bc60e9d9d3ff0e14d6d74b284319c98a8ef927d570ebb92b9c59` |
| 17 | `instance` | [instMulOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmuloneclass.md) | 113 | `declaration-track:26b8ce3ed88c76dfa9f5eced9a34d13ecd1a29a2b7ae45c0a42f4f4b135b81f7` |
| 18 | `def` | [mkMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mkmonoidhom.md) | 119 | `declaration-track:9b664e0b78a9130a0a96141b3c14a0c4f9688ceba7775374f5369060500cf0a9` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instance.md) | 124 | `declaration-track:aeb49b027425427880c6c25b407f47b7ff3de28ba4c1010c6504637249686d18` |
| 20 | `instance` | [instPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instpow.md) | 129 | `declaration-track:4c2ef330e5793fecabac73c50586f17e2ecc71419cbfb91b765a8de82dad6a14` |
| 21 | `theorem` | [mk_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-pow.md) | 133 | `result-track:f9d454a9254507407323ee176ff1102eca2874ea3214ba27a8db0001877991ca` |
| 22 | `instance` | [instMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmonoid.md) | 136 | `declaration-track:7f7543ea8b4ba20bd6911d1372bb2a3cbe7ba2caa473ceb56158638db0d5c79e` |
| 23 | `instance` | [instCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommmonoid.md) | 140 | `declaration-track:37a4d96fc2fda08df660fa37f65292a3e86e6564a20414c96c2b8b5e555b5801` |
| 24 | `instance` | [instInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instinv.md) | 150 | `declaration-track:f2a68366df67d6be53efe9feaf819c02162af0b1b1626e7ee11f55b43b27402c` |
| 25 | `theorem` | [mk_inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-inv.md) | 154 | `result-track:524710a4eb7594dc5e0cbacd0bbbda4be0d69f9296ff081df67ba20f5aee4792` |
| 26 | `instance` | [instContinuousInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcontinuousinv.md) | 157 | `declaration-track:0a653cb098d4f53170dcd0cd1c5b3155d21ae7eba331c9cda7cf48c240550e8b` |
| 27 | `instance` | [instInvolutiveInv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instinvolutiveinv.md) | 161 | `declaration-track:4a9cc15a406e25d5f7cc093105b3a94104b34f0c7129be2fdeca37dd08d74adb` |
| 28 | `instance` | [instInvOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instinvoneclass.md) | 166 | `declaration-track:fe410b71b5b61291dbf4d02b19a9fdfaa0ca082532ef2f73d011cce2c6cf06d7` |
| 29 | `instance` | [instDiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instdiv.md) | 171 | `declaration-track:b676dcd45c747d20b5989f331cd729a63e788c0582bbebad1c54bddcf56d8418` |
| 30 | `theorem` | [mk_div](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-div.md) | 175 | `result-track:d96924ad53b870d933370f2546260c5fb0b870b1347a3096265716d831db3654` |
| 31 | `instance` | [instContinuousDiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcontinuousdiv.md) | 178 | `declaration-track:81d20a6a41462dfc4246a9669abff926de4e480ac7852754dec36c7a503367dd` |
| 32 | `instance` | [instZSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instzsmul.md) | 181 | `declaration-track:5c29938a8e94d94be1f86cafd66053e4e2b0718e35a13b4320bf89e4f0d8c648` |
| 33 | `instance` | [instZPow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instzpow.md) | 185 | `declaration-track:a321e2d28d4cddad5583b710115096e87cae2d43944547b122426315619b1068` |
| 34 | `theorem` | [mk_zpow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-zpow.md) | 189 | `result-track:c8f3d5c858a1a8f17ea18dab78551f02dbb737bc0011eda29a70791dc7d68236` |
| 35 | `instance` | [instGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instgroup.md) | 192 | `declaration-track:3e635fc9d5ec9dc3a72043b0a66eeb5ea21f852e6e2271f223d8dd78dc1c2bd0` |
| 36 | `instance` | [instCommGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommgroup.md) | 196 | `declaration-track:2acf11b6475211e0ee26a9984854b7356b38d54a7aec66e8125c2afd2929e15e` |
| 37 | `instance` | [instIsTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instistopologicalgroup.md) | 200 | `declaration-track:9236cab1613b50328fd68336dfd5706184fa8a941407a31b127b0b88c4450634` |
| 38 | `instance` | [instIsUniformGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instisuniformgroup.md) | 208 | `declaration-track:757a7ea16ada6a728fcc0ec044b1b0ff72a0889c8d4a11bb453ffa16e8d1fdcc` |
| 39 | `instance` | [instMulZeroClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmulzeroclass.md) | 225 | `declaration-track:06d1b3e092ad68c03dbd64c84bb7488d87ad89e3bb51226336816282d0f96073` |
| 40 | `instance` | [instSemigroupWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsemigroupwithzero.md) | 229 | `declaration-track:ee8793f77388c4243e8561e0716de6444ea2f168bee111b85cddf50c16fd8b8f` |
| 41 | `instance` | [instMulZeroOneClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmulzerooneclass.md) | 233 | `declaration-track:1a7e08e6201ed324885c2f3784656161ef5c530e6621f8eb904486dca4037388` |
| 42 | `instance` | [instMonoidWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmonoidwithzero.md) | 237 | `declaration-track:6f02f30dcc772130d1b8bd980afe1e199c52b7bbd37b6b7e0aa7d375349b3df8` |
| 43 | `instance` | [instCommMonoidWithZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommmonoidwithzero.md) | 241 | `declaration-track:69333f69e77fd75c9a4e367fd57af1776d9bc34d0c8791974d2f4d19425a1602` |
| 44 | `instance` | [instDistrib](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instdistrib.md) | 251 | `declaration-track:86bdeb0c20aeddc2826e4806e476a334b4ff4cc1b6036d058d69d5b366daa587` |
| 45 | `instance` | [instLeftDistribClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instleftdistribclass.md) | 255 | `declaration-track:d68fd947a915a7f0fcc0eee0aab66abd66957ceda2489f1155ecd94256eb9ed7` |
| 46 | `instance` | [instRightDistribClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instrightdistribclass.md) | 260 | `declaration-track:aef72d48138e0a8ef083ac5b1a1af08d29be9228c9b507501feded84df832a36` |
| 47 | `instance` | [instNonUnitalnonAssocSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalnonassocsemiring.md) | 265 | `declaration-track:815905e07682255964686c4ca21e105a3513574d2e3cba5487a87a6c99878f34` |
| 48 | `instance` | [instNonUnitalSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalsemiring.md) | 269 | `declaration-track:3dd724da03f812e7c5f36ef37310766c4eb22aa2b0cc7003dfc2b722052257fc` |
| 49 | `instance` | [instNatCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnatcast.md) | 273 | `declaration-track:038d70a09ffe81cbaf40f50e7cf32648aa1b45789f50ce9acb1469cb0213e5e1` |
| 50 | `theorem` | [mk_natCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-natcast.md) | 277 | `result-track:de7440e03c145c460b07fc1d589f7131e0cb12a6eb5d94e6353f8053528d0727` |
| 51 | `theorem` | [mk_ofNat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-ofnat.md) | 280 | `result-track:4e6a09fd8b94e5e9ad38d5884a09731c3f0a0cc1a323538a452c91f62bd50621` |
| 52 | `instance` | [instIntCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instintcast.md) | 284 | `declaration-track:35388c400f8f34aa4ed87c29a5dfd52b14a33957b7815bbd313518aaf0b4b820` |
| 53 | `theorem` | [mk_intCast](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-intcast.md) | 288 | `result-track:3d2ad9bdf55d3fc2cea6fec5099226fbabaa89890797b35f9fcd35d976ae1338` |
| 54 | `instance` | [instNonAssocSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonassocsemiring.md) | 290 | `declaration-track:4814cdd03f22d9c2115cf7729a757236c968bd6f35adfab93b446366e0b8d1c9` |
| 55 | `instance` | [instNonUnitalNonAssocRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalnonassocring.md) | 294 | `declaration-track:427bd1c7afffd72e240a44ba45a6cb2ad0d6a860931cd6638a49cd9b1923dd53` |
| 56 | `instance` | [instNonUnitalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalring.md) | 298 | `declaration-track:20b81966a3405a513a9c6c2550cc4291a7e173199aeaf9da1b86fe9b433ab28a` |
| 57 | `instance` | [instNonAssocRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonassocring.md) | 302 | `declaration-track:0660c172d7e5db91f1c203af040529f422691d3fc3069a1b6e5129ba9fd544f5` |
| 58 | `instance` | [instSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instsemiring.md) | 307 | `declaration-track:fae135d82a4e4947efa37b27911f36f086eb9e67eba0642df721a9490c8ce3bc` |
| 59 | `instance` | [instRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instring.md) | 311 | `declaration-track:05245bf07e0b32c31157d6a0cb31218bfef1b908e23a690d3dd9bc51a1e4eff4` |
| 60 | `instance` | [instNonUnitalNonAssocCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalnonassoccommsemiring.md) | 316 | `declaration-track:8c8b5bbbe7b2f254872e3db9ed975d439bc929455ba3fee2206e5f902431bb83` |
| 61 | `instance` | [instNonUnitalCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalcommsemiring.md) | 321 | `declaration-track:41c8acdd49c62ffb1c98fea047b387271940f2a8bccce72df71966fc5a4e39b0` |
| 62 | `instance` | [instCommSemiring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommsemiring.md) | 325 | `declaration-track:e8051a0eac7619dd38364caece0e188b161eb6db8221f6a124ddde191e003b10` |
| 63 | `instance` | [instHasDistribNeg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/insthasdistribneg.md) | 329 | `declaration-track:a8a3a776e959327f87755771ec434df6aded01ead72cf641dd577844eef6bfcc` |
| 64 | `instance` | [instNonUnitalNonAssocCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalnonassoccommring.md) | 333 | `declaration-track:c5597d97a21169c5bc3ac84d354c959a60e65c71a45163334959c71c91a8dc03` |
| 65 | `instance` | [instNonUnitalCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instnonunitalcommring.md) | 337 | `declaration-track:1a9ce2ace871d092b9c6388d4681989b2ce6c6ac1351a14dddb0c9d9cbd11e40` |
| 66 | `instance` | [instCommRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instcommring.md) | 341 | `declaration-track:150a2cf2b0f649b3968ff6bc01d7ded692ddf7f492b809ed702eb3a5de82180f` |
| 67 | `def` | [mkRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mkringhom.md) | 348 | `declaration-track:6206f7eeeb0d4bb60c5f5e828bf936c15000993cce8d55358e57ac130ce35c8e` |
| 68 | `instance` | [instDistribSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instdistribsmul.md) | 358 | `declaration-track:94b20ed2070272897dc6c38a05455b7a3463ea9f6008128fec008c4f3b5deb9c` |
| 69 | `instance` | [instDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instdistribmulaction.md) | 363 | `declaration-track:4457c5d7d757451c92f187556fc12d5d8331ecdf978a1ab55a368308abdd32dc` |
| 70 | `instance` | [instMulDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmuldistribmulaction.md) | 368 | `declaration-track:8c97120da2bd86f41e520350d01db2016e6a31db4acd7e524a5400d77e6a97dc` |
| 71 | `instance` | [instModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instmodule.md) | 382 | `declaration-track:b9b0fa475f7f84a1aea1b4be2712b991981750e29cd9affe6f91ff1dda582196` |
| 72 | `def` | [mkCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mkclm.md) | 389 | `declaration-track:55f1cadb7d2a75e39bc37647d725544b04d8ddce5f73c4b6394b8d03035a4e66` |
| 73 | `def` | [liftCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/liftclm.md) | 398 | `declaration-track:9cc3215039822e0f231fef3120430a73ae9fd8411e6f2855d6482157a43cc229` |
| 74 | `theorem` | [liftCLM_mk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/liftclm-mk.md) | 405 | `result-track:4a904d19eac0f4a7b0c30a96397d72156717e39b2cb6c8f33f225bfb25b94700` |
| 75 | `instance` | [instAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/instalgebra.md) | 414 | `declaration-track:d58df46816bab0f3427ebdf9d87ce9d3e1d141ebba627cdd997dde687ec8a39a` |
| 76 | `theorem` | [mk_algebraMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/SeparationQuotientBasic.lean/declarations/mk-algebramap.md) | 420 | `result-track:3b960ed9d211b8619a53658a4f6f7e921a93da6c3052dbe6a9369836168b3150` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b92832be7cef578fd4408462a96569b9805cb2b4071bab0384dc61b627fd67e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant6e35857beb6876d9a3c6062ba5b895c852e60835fd72839f2afef6a3cdff405e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
