# Verification target: Multilinear Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b038188d0183e5de5ad07dfd4b68465f01995df9",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b038188d0183e5de5ad07dfd4b68465f01995df9`.

Source path: `GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/continuousmultilinearmap.md) | 59 | `declaration-track:d37322ff931394a51a545ea1e5f12696b4a768d9d8d702490b35937f3371e6d3` |
| 2 | `theorem` | [toMultilinearMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tomultilinearmap-injective.md) | 80 | `result-track:153b12348afecd9c630a7b50b9eb8492d71c1f5fc4a06fb3297dc9a723da9b96` |
| 3 | `instance` | [funLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/funlike.md) | 87 | `declaration-track:a69b677058c0f9c4d350069e91b1dcaa0658f298c48c2427ecde80a09103a804` |
| 4 | `instance` | [continuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/continuousmapclass.md) | 91 | `declaration-track:20648ca3b1a7a5cf9b9f0719660a07883b774eae33dde62fb3bdafe9e376fbf5` |
| 5 | `def` | [Simps.apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/simps-apply.md) | 97 | `declaration-track:923ccec4689394747b72f65f5076c29eefc97b917e48f077e610625dee2d202c` |
| 6 | `theorem` | [coe_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/coe-continuous.md) | 104 | `result-track:0e2186bde8a7e4dd0a4ded7de11506619329cb97d07a59c7b37f5dc7cbf77078` |
| 7 | `theorem` | [coe_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/coe-coe.md) | 108 | `result-track:c94703595ce98a91914fa7dd41c2d3a660d6ab2bda89ae4b8aee79ee0c3aafb4` |
| 8 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/ext.md) | 112 | `result-track:6a189ac4063e7765f9e3a55f5e0bce2a2b33b96a808ddaa5226671410a588f72` |
| 9 | `theorem` | [map_update_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-update-add.md) | 116 | `result-track:c47d598c4e8b4c00f32c017d22eeac97e5a15b7c14b8ee4dfba954c71e5cce52` |
| 10 | `theorem` | [map_update_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-update-smul.md) | 121 | `result-track:7fe4be640dac55270876e34716e660451058fb7e084be0cde99d5e0b1f72b5c2` |
| 11 | `theorem` | [map_coord_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-coord-zero.md) | 125 | `result-track:b70753199bb0233d12b60ca7f0de359ac663abc40ab0a4665c0d72f55d653675` |
| 12 | `theorem` | [map_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-zero.md) | 129 | `result-track:128de12fd0789823e383d23eca0e4c128530ba34a33db369b680a93d85d1a362` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 132 | `declaration-track:5538ff983f8cc172944505ed7b32b9270c1e93219cddcf6f67d7187f8f7a8430` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 135 | `declaration-track:720118ccdc8f611f84ab361e03126f5414be9e63aed0b74fe7708b423f328500` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 138 | `declaration-track:e282be31eb19e96a40fa76849fd67f7f611c02237eac502f3bc6587859b32817` |
| 16 | `theorem` | [toMultilinearMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tomultilinearmap-zero.md) | 144 | `result-track:4baa93a2add8b543b5b5724b225e5aecf70e8f62c37645ded0aaecde691a64c9` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 153 | `declaration-track:e9456ab0a3cc2498e536844406443b201b40c7e7d2f4f280e41cc84382d3ed9b` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 156 | `declaration-track:54adb54aa23605c1ea8a30057bad24a5b8b7d960914d25fbce19edcbd68b9ed2` |
| 19 | `theorem` | [toMultilinearMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tomultilinearmap-smul.md) | 162 | `result-track:60f0da51ce1c5756d4b320860c79f8599648a09954e67c3c0c602547a7dc3dcf` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 166 | `declaration-track:0de702393c2aee2023fda98c75de3b6f027f1809c979b53c85174fe556e81065` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 169 | `declaration-track:c21252574619ed79381bb412dda6d81b2530dc9bc8056d805a24e070e20bdbd2` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 172 | `declaration-track:5fbfc2bd348a08f0707543d3acd78062c0158cafaf6ce820e5ab4192a4dbe3f2` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 182 | `declaration-track:31524490127dcb1e3f932ec5428aad774cd2d1f3a1c27d8ed4ff8763e8851b27` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 191 | `declaration-track:3e78c9d4f69e16411a0d57cb537ab2b1aa754214f757db1227776643d1f5dae9` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 194 | `declaration-track:5da634440f492418390a797b913169316a88488b4a016136fac66ff0e1dd1a7d` |
| 26 | `theorem` | [toMultilinearMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tomultilinearmap-add.md) | 200 | `result-track:61df2a9d266a26917877c99bb4c0e056ebf40a60ebfd040a673d0996e0432754` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 205 | `declaration-track:fdd867eb9a9f1f709ee76506de3b3def5037a7dd51c4474d4af19243f2b2384b` |
| 28 | `instance` | [addCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/addcommmonoid.md) | 208 | `declaration-track:f2a101f32c86f7be06aa00384d40d06d3995e967ebee13f621875b99075df9ce` |
| 29 | `def` | [applyAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/applyaddhom.md) | 212 | `declaration-track:a88cad5866ed9363d0931bd826f85605c12b1c5ffaa91bae3887ed96bda234e3` |
| 30 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tocontinuouslinearmap.md) | 225 | `declaration-track:a3161584ceb87e5c1b1c9e290e71309c565023b17c3c326f42578bcf80eb3f46` |
| 31 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/prod.md) | 229 | `declaration-track:cae337608b55295731374141d6c0d43976dee9cf43e502a8e5f85e533cbd0a3e` |
| 32 | `theorem` | [prod_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/prod-apply.md) | 234 | `result-track:248fed968ed6a27dbb1364c42a00240d50d899cf6acdd682ce1e48aa787235e8` |
| 33 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/pi.md) | 240 | `declaration-track:c8ffc0f25699365a44cffa589e4cceee1e85e7e9a1625da94c766ec892b37449` |
| 34 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/coe-pi.md) | 247 | `result-track:ec3ac9819dfaad089cabd96bf736cef69878b1e8470571c40c2b79ff6aed31c1` |
| 35 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/pi-apply.md) | 252 | `result-track:bdfa1c3d51c928640ffd187807e7b6f0c1498e3d0b960e6f14d681972b4b99ad` |
| 36 | `def` | [codRestrict](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/codrestrict.md) | 259 | `declaration-track:861a768cef8fb234ce0cfa67acc75ed59bb4b28139f2311b8a1057f93fd5b2c7` |
| 37 | `def` | [ofSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/ofsubsingleton.md) | 270 | `declaration-track:e8068e33265ce1e1b3c092bd237eaa3c48a6bbce4a816ac08714940b3a66272d` |
| 38 | `def` | [constOfIsEmpty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/constofisempty.md) | 283 | `declaration-track:d573fbe71c8c040cca4eda4e9474b6692a3e35ea25c3ac5ec2b90f5b7c8a1157` |
| 39 | `def` | [compContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/compcontinuouslinearmap.md) | 292 | `declaration-track:ba6c9e363be23f7fd3815a6c5b6bb8c61368b295b1f89743b9d6dc025234a688` |
| 40 | `theorem` | [compContinuousLinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/compcontinuouslinearmap-apply.md) | 298 | `result-track:f4bef951fec112dae1946228e8884000ff91eb525de0617a2bb1f2753e2adbbd` |
| 41 | `def` | [Multilinear Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/compcontinuousmultilinearmap.md) | 305 | `declaration-track:41da05c965fabc9e5f0bca4c66950e274af6eb0ee514327176c3321b779794bf` |
| 42 | `theorem` | [Multilinear Basic Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/compcontinuousmultilinearmap-coe.md) | 310 | `result-track:c7f29d384093d502dc8825c254cc73bce7357159fc75d5e0653473b26de6011d` |
| 43 | `def` | [prodEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/prodequiv.md) | 319 | `declaration-track:236552888b6a50765e6ff5c2bf3f77f402d9a346b24cde02096b12d8b6c0a55a` |
| 44 | `theorem` | [prod_ext_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/prod-ext-iff.md) | 326 | `result-track:98f26406e48cc94708e9d0397f77551cfab9ba761e5ac602c491a0a1c7dd1652` |
| 45 | `theorem` | [prod_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/prod-ext.md) | 334 | `result-track:4eb0b6af744bb6addb9735e71783f57248767cda66a183d8b5850f16e34d4f5b` |
| 46 | `theorem` | [eq_prod_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/eq-prod-iff.md) | 341 | `result-track:d4d1829b2eea9873362cdd8216b3a67e6753e938e5a95a85eb0f89ac93e2cd8a` |
| 47 | `theorem` | [add_prod_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/add-prod-add.md) | 347 | `result-track:f661b269174126638a9e8b9ae493464621b924a8dba273ee688d0f3d60368837` |
| 48 | `theorem` | [smul_prod_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/smul-prod-smul.md) | 352 | `result-track:17dfdf7d22a5e8d686a7340b53eb6d7b679b2cdbdb7cd1137f239908e99b8fd7` |
| 49 | `theorem` | [zero_prod_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/zero-prod-zero.md) | 360 | `result-track:61ff2c1d42ba0de2cdd33ca6b3380e9cd59402ce7f0b1a09ca1927ffa7e4d031` |
| 50 | `def` | [piEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/piequiv.md) | 366 | `declaration-track:af1907ebf5bcc7afa1e1258ef6027686a74503e690a676fb8afd9ac3a644099c` |
| 51 | `def` | [domDomCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/domdomcongr.md) | 375 | `declaration-track:7d0f119f43d2ff9f5e6e63dbefd3c810926b19d736d26fe27d9ebfa214721f70` |
| 52 | `def` | [domDomCongrEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/domdomcongrequiv.md) | 385 | `declaration-track:95108a85a6b1f600fe191399b1b187386503f264193b8241a0b31ae193be6d83` |
| 53 | `def` | [linearDeriv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/linearderiv.md) | 399 | `declaration-track:8a14ac319eb244d7d3341f9c2e58fc35e28eea3c357d9213a12451cea52258f5` |
| 54 | `lemma` | [linearDeriv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/linearderiv-apply.md) | 402 | `result-track:9c39cf9461e404a40091c5cb80164036677d1d9162aadbd845b71c29fe18996b` |
| 55 | `theorem` | [cons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/cons-add.md) | 410 | `result-track:e195566f9ef413daa757303744e1ab29d1e0570f5139e37ebe7b87fd2019cc05` |
| 56 | `theorem` | [cons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/cons-smul.md) | 417 | `result-track:ee650b1c08c0356bd5934730861c6a6602af27b0b204ae8606e1b8f039a31f7f` |
| 57 | `theorem` | [map_piecewise_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-piecewise-add.md) | 421 | `result-track:3158cdcea187648ec367e7791869e71fcf143ae26739ba3e50677d248192c635` |
| 58 | `theorem` | [map_add_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-add-univ.md) | 427 | `result-track:1d3845863143c9824c2eafcf531dbe4ce487ca61cbb2c7736fb76fd2e9644c21` |
| 59 | `theorem` | [map_sum_finset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-sum-finset.md) | 441 | `result-track:04f67a2bbc861d24c1646469c15cc684642acf190e427dff1eafb36b9c4efeeb` |
| 60 | `theorem` | [map_sum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-sum.md) | 448 | `result-track:e522bce8128c9c9e485914078de14783fda8630924a7383a07f056b2d3e1b4c9` |
| 61 | `def` | [restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/restrictscalars.md) | 462 | `declaration-track:e3747a504bbfc0bf2711e6322400735da1f0125ff0ec9d79fe0a1fd1ed285320` |
| 62 | `theorem` | [coe_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/coe-restrictscalars.md) | 467 | `result-track:a28b278abae7ee192afbb4e998974eef76359af49561c4956909b01e29ac5e66` |
| 63 | `theorem` | [map_update_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-update-sub.md) | 480 | `result-track:cc9bd3de6f697d94e1f4c28d9fbc453be56db725eb800f06c50d2274a3f1caa4` |
| 64 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 488 | `declaration-track:7532bda90e7450d1d2b2a668f875f45e36827aedfdc7665c390b46eb21612fd4` |
| 65 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 491 | `declaration-track:cbe894e603d90b3da454439f112ea269b62312db816bb07cc855dc1381078bb9` |
| 66 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance.md) | 496 | `declaration-track:0752653698ee78aedee62e58d62695bfece752f2a69fa60694e759e1657b93d2` |
| 67 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 499 | `declaration-track:0fe508669c795f4978690172c4fb6ca2d78fcd7ed73113bdb0c58b6cd827e365` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 504 | `declaration-track:1bd7c38ca573bf2fd9d8a97653ff10746f18c9c7a3716d5c88c3269f91e2b909` |
| 69 | `theorem` | [neg_prod_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/neg-prod-neg.md) | 508 | `result-track:7337667a7027f7d0a83283410845e3b9e6e109acf4be4aa15f48b322c075ec68` |
| 70 | `theorem` | [sub_prod_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/sub-prod-sub.md) | 513 | `result-track:11a4506748ecd387f915387d4d49b07ab10e3f0913a85582e516fdc88de739e5` |
| 71 | `theorem` | [map_piecewise_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-piecewise-smul.md) | 529 | `result-track:5bdeb05f9199419af1d3a06e2132e61a5b3ef8d82d3fb35ef7b427b28fb8a7f2` |
| 72 | `theorem` | [map_smul_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/map-smul-univ.md) | 535 | `result-track:a23fc199412efa6fcb4d395a576e6d592dc51fb81cb119561c61c294f189fd1c` |
| 73 | `theorem` | [ext_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/ext-ring.md) | 543 | `result-track:52ed82816fadb38d158d9ac0a19696a656a20e7378c02e6f3af9c9436879c8e9` |
| 74 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 556 | `declaration-track:4f837b1f22069b162b6ec110ec6061d974b625dd903cfe24785a3bc92cfbccbc` |
| 75 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 575 | `declaration-track:d5e9582121c05fd945392a8c55369eff03bf1f43459eac5087239d0e4a5b9430` |
| 76 | `def` | [toMultilinearMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/tomultilinearmaplinear.md) | 585 | `declaration-track:ff2153bd6d54fb6dd0c42be04bab0102206367aacff9e5ada8ead88dd16e48d3` |
| 77 | `def` | [piLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/pilinearequiv.md) | 592 | `declaration-track:0c7feba1f1028eba3da41026240ce049b7a198d4625ad1e7bca1bf527a9a8e01` |
| 78 | `def` | [mkPiAlgebraFin](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpialgebrafin.md) | 612 | `declaration-track:60e0080334967a3f54e8a0f1b73ba34f320d8ebb0c572d1d536e79c9c07a167d` |
| 79 | `theorem` | [mkPiAlgebraFin_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpialgebrafin-apply.md) | 622 | `result-track:16987377a562260e3f268f5eee919fa4500650ec29d1ab8532b1aab77b047b7d` |
| 80 | `def` | [mkPiAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpialgebra.md) | 637 | `declaration-track:e3d6fd65c7f826cc96a9e3c370c4d282d70049bfcdf6bf7280c64e72cabec29d` |
| 81 | `theorem` | [mkPiAlgebra_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpialgebra-apply.md) | 642 | `result-track:f8ab875b61b223bb74fe7e1cae476d63c050ba6eb4a15572343e4b870a56a06d` |
| 82 | `theorem` | [mkPiAlgebra_eq_mkPiAlgebraFin](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpialgebra-eq-mkpialgebrafin.md) | 645 | `result-track:2b8f53c023a31c3d4de8549746179d757c04827e02f2b2d169ef62dfb247526e` |
| 83 | `def` | [smulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/smulright.md) | 661 | `declaration-track:9464961c8154625cb5414fc4d7b7254e39f5e3eb35e3d0cbd07b19f8044b92b7` |
| 84 | `def` | [mkPiRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring.md) | 676 | `declaration-track:5f94ad466b83b3af58376f751cd14e45444d729101b60651c08ced7843a1e83c` |
| 85 | `theorem` | [mkPiRing_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring-apply.md) | 681 | `result-track:a49ecd1eeecb4cf834220decc61e649b575be54ba119a42cf17c432dac64b615` |
| 86 | `theorem` | [mkPiRing_apply_one_eq_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring-apply-one-eq-self.md) | 685 | `result-track:38f27db983fd242f053e0a6d764fed0011c51a112e70bba9e5dea38751e3c30d` |
| 87 | `theorem` | [mkPiRing_eq_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring-eq-iff.md) | 689 | `result-track:08e6581135b4d7e9f7734fdc142c6ab16bde136c6f4bd0bf8fe9b3c54f5f9d2b` |
| 88 | `theorem` | [mkPiRing_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring-zero.md) | 695 | `result-track:4da14d6ee3e766bc9921fca76d1741f65271a47433680de201b339772f96833f` |
| 89 | `theorem` | [mkPiRing_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasicNamespacedPublic.lean/declarations/mkpiring-eq-zero-iff.md) | 698 | `result-track:19b65c0db0bcef76a139157fcb6316e614f96ee72881aa59a1ab6b2f9b9fac86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2eb3630f3d3f1af7f26c67454711dcd3ca140b6948ddff9402e18d7cae0a2084 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean","GRWTSK/_verification/specifications/Topology/Basic/Variant14fe44b9f97b4a0e33a9565858d6b08de944d227184ccb1f3bbe73ff14dda976.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
