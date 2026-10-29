# Verification target: Algebra Monoid Continuous Add

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a7bc2fe207ba59938a4da8faf37275a73b27ee0",
  "lexical_observation_count": 94,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a7bc2fe207ba59938a4da8faf37275a73b27ee0`.

Source path: `GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pointwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.MulAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [continuous_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-one.md) | 32 | `result-track:f5460b7e9e9350a0e14d612215b02ac36cd9523b4c1871665ed9cfd692a21c4d` |
| 2 | `class` | [ContinuousAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousadd.md) | 43 | `declaration-track:ea0db4ed02cd83e00c5143fb961f8a39c47865c5dd0ca1247f2e1cfbe4514dc0` |
| 3 | `class` | [ContinuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul.md) | 54 | `declaration-track:839752d30f3c6b080a8c3882fcb15ca76d32fc5a15f05ecb06f5d9daac360b9b` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-4.md) | 63 | `declaration-track:d1e1c52ef8f7a2d09e7ac76cb2246a4397f42bdad02ad4d507f129a2aad614d7` |
| 5 | `theorem` | [continuous_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-mul.md) | 67 | `result-track:264f44c65fd828fc9d6d8f5e46b03a9e9ffcd995a8e678c7dffddeb7f9661efc` |
| 6 | `instance` | [ContinuousMul.to_continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-to-continuoussmul.md) | 73 | `declaration-track:c64efcaaf0363593a2c0598638640619458741698c53da0202fdfe6d24be1a70` |
| 7 | `instance` | [ContinuousMul.to_continuousSMul_op](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-to-continuoussmul-op.md) | 79 | `declaration-track:abc5a650eea82da2e6a7c0c375b4e9a7a1fb1ed51ee1dda64d4a34665adcdf92` |
| 8 | `theorem` | [Continuous.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-mul-source-edition-2.md) | 87 | `result-track:d7b6218e7a4aaa4a4876c1a25eaa5dc07b80123626bacf1a251fdd92900eafde` |
| 9 | `theorem` | [continuous_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-mul-left.md) | 94 | `result-track:4ab38b230c07de0c00d2595ca985aa7d24688045e73049a43d61824af7bda747` |
| 10 | `theorem` | [continuous_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-mul-right.md) | 100 | `result-track:0f58f54e71c91f14eac6b537222c7045bb5fa23e1b2b3c67f3496b95fd942e13` |
| 11 | `theorem` | [ContinuousOn.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-mul.md) | 106 | `result-track:0fe8f4825b08c24cc0b493e3beeb315574706ca781a5f56104b6b4e10b27800c` |
| 12 | `theorem` | [tendsto_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/tendsto-mul.md) | 113 | `result-track:92f1342875442a00ca3938364c33a053835b6b03aee96eafdce7caba2d4415d3` |
| 13 | `theorem` | [Filter.Tendsto.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-mul.md) | 119 | `result-track:868411c5b206a33d971969a445fba25e855421a1928c8006c1a4c209bbffa843` |
| 14 | `theorem` | [Filter.Tendsto.const_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-const-mul.md) | 126 | `result-track:a678adcb10adda75b4ec3116de5169a5b2511f124890b989db28c4ab6c16e75b` |
| 15 | `theorem` | [Filter.Tendsto.mul_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-mul-const.md) | 133 | `result-track:4ace431e3d5fecd9fae054a6a8153144e182e2cee12007146a42ee35cdc4f03d` |
| 16 | `theorem` | [le_nhds_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/le-nhds-mul.md) | 140 | `result-track:759c7b4ded89073113766b4811d6c2497579bff1e7ac39d12bee620a976e42bc` |
| 17 | `theorem` | [nhds_one_mul_nhds](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/nhds-one-mul-nhds.md) | 147 | `result-track:96185d7758a5575e687846949cd3bea7dbe179cdd62dd9d156b212aee0685f33` |
| 18 | `theorem` | [nhds_mul_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/nhds-mul-nhds-one.md) | 155 | `result-track:0644aa0c83c4d32e97b8d8d39d6e73b33745e692ed7c1e2d0a365ddb28292c63` |
| 19 | `theorem` | [Filter.TendstoNhdsWithinIoi.const_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendstonhdswithinioi-const-mul.md) | 167 | `result-track:37d2e6c760c343c92f8c292efbf3e0d6500380ee35ceb8be32f24c71ccc32a8d` |
| 20 | `theorem` | [Filter.TendstoNhdsWithinIio.const_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendstonhdswithiniio-const-mul.md) | 174 | `result-track:991a21a99c69fb5d0d253910c95ca894af1d63c2248042b9d6faaae4f9664dd0` |
| 21 | `theorem` | [Filter.TendstoNhdsWithinIoi.mul_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendstonhdswithinioi-mul-const.md) | 181 | `result-track:967e0f84c398f77627c53566308d2d6da3abf4d008e561c33758cbf38908fd8b` |
| 22 | `theorem` | [Filter.TendstoNhdsWithinIio.mul_const](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendstonhdswithiniio-mul-const.md) | 188 | `result-track:d464a41b5ef82491fd8f466e9430da12a8b6817fa751eeee793c070bd58e65b6` |
| 23 | `def` | [Filter.Tendsto.units](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-units.md) | 200 | `declaration-track:af4452b66a18b5e8f97211d6ce233969e5d7e1a05d1153eb5f45a5854ca12f22` |
| 24 | `theorem` | [ContinuousAt.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousat-mul.md) | 216 | `result-track:77736497ce415b2f7e1f7bfae471e79e41b8725f5b38f2a0c91d56e4eee8afb8` |
| 25 | `theorem` | [ContinuousWithinAt.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouswithinat-mul.md) | 223 | `result-track:5d66feb0bfeb704e90250eec3c7973bf4f2bab5e99634b58153833344e360af8` |
| 26 | `instance` | [Prod.continuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/prod-continuousmul.md) | 230 | `declaration-track:bbee7aa8388b851fbbb9c3bcd2d8a9d9b3427c07425fc3221d80fe55cf69cbbe` |
| 27 | `instance` | [Pi.continuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/pi-continuousmul-source-edition-2.md) | 236 | `declaration-track:dadad9639b456bc576af7e066fc5d1048c4f84d9ddddc0e30b4cb1fe47f85b24` |
| 28 | `instance` | [Pi.continuousMul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/pi-continuousmul.md) | 247 | `declaration-track:4dcb0f4fe824d6bbf3f90eac4896019d7fa84d99c51bb1462acde196ddb928d8` |
| 29 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-5.md) | 253 | `declaration-track:d21d80f20c82e1b8959c0d1db83248263cb1a2e65288ab5ed2f7b14945314e3d` |
| 30 | `theorem` | [ContinuousMul.of_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-of-nhds-one.md) | 264 | `result-track:25416294b2aa718fa88a07818a358a66370131a8fd628b25984709dc19411f35` |
| 31 | `theorem` | [continuousMul_of_comm_of_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-of-comm-of-nhds-one.md) | 296 | `result-track:32e331e171e04fa9c40afd9709e857b5ec6bf96d26b1a8196ace34aaaa2bf1d0` |
| 32 | `theorem` | [isClosed_setOf_map_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/isclosed-setof-map-one.md) | 312 | `result-track:b1da8c366697a367b18d5862e9c8a61adae9a0007e7b457f8624fc4780291054` |
| 33 | `theorem` | [isClosed_setOf_map_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/isclosed-setof-map-mul.md) | 318 | `result-track:6fa787a0071a33536165fc966168ac555e69a651cd943145f1a2e3337ae1ec5f` |
| 34 | `def` | [monoidHomOfMemClosureRangeCoe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/monoidhomofmemclosurerangecoe.md) | 344 | `declaration-track:741491ddcdca34f8e39323a9b7b64d5d9edd5d4293ec2e095ea4190140669d78` |
| 35 | `def` | [monoidHomOfTendsto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/monoidhomoftendsto.md) | 357 | `declaration-track:ae49ac7770f6f8cfbc5a5396cb46dd3fcca1ee787468c1e9a57ded919e97fa18` |
| 36 | `theorem` | [MonoidHom.isClosed_range_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/monoidhom-isclosed-range-coe.md) | 367 | `result-track:740ed4d872341d2b0d6012ca944f2ea108ab89c38dca85a5fadfcdbf20ffb971` |
| 37 | `theorem` | [Inducing.continuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/inducing-continuousmul.md) | 375 | `result-track:0375265fb66a9d3123d6a6c8852b918fbc98a49324d1fde9c8cb33568f1d5dfc` |
| 38 | `theorem` | [continuousMul_induced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-induced.md) | 384 | `result-track:d62ff8be7ab97223682cd3674b453bdeab7439b2dd17668f093fa71e4a3c7338` |
| 39 | `instance` | [Subsemigroup.continuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/subsemigroup-continuousmul.md) | 392 | `declaration-track:938abdee86e1c61f3ef8a9b2eed4fa82bc0a7dfaa3c8b9d494527b1f0efdda6a` |
| 40 | `instance` | [Submonoid.continuousMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-continuousmul.md) | 399 | `declaration-track:5e7d917c11e417954c79e9f6163103249b897f2eb90ac1d6324f176c628313df` |
| 41 | `theorem` | [Submonoid.top_closure_mul_self_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-top-closure-mul-self-subset.md) | 410 | `result-track:8b9c5e86790b167478222be07cebcf0bc42fc3549ebf0568108c6b8733beb143` |
| 42 | `theorem` | [Submonoid.top_closure_mul_self_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-top-closure-mul-self-eq.md) | 418 | `result-track:47d65cf11caa8162290594496ce42e64026afb50e469f2de99e20ea7a26a16cf` |
| 43 | `def` | [Submonoid.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-topologicalclosure.md) | 429 | `declaration-track:8c3cb622d27ffeca5a043eaaa97308aa6acd7378e40c6ee9a710d6cb7086b7e4` |
| 44 | `theorem` | [Submonoid.coe_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-coe-topologicalclosure.md) | 438 | `result-track:15826dde9b74e6b051e0b8a6be186057b10b88bad9a72c23a5b49d09ae5b1811` |
| 45 | `theorem` | [Submonoid.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-le-topologicalclosure.md) | 442 | `result-track:b3d85dacf230c909731b48c26e06cac6ce787054412438f49a79ccc216f9d5fa` |
| 46 | `theorem` | [Submonoid.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-isclosed-topologicalclosure.md) | 448 | `result-track:1889e4fff329b9293ecbab04281f18286b9ed9fa7cd78fa4429db6eec15cc1d4` |
| 47 | `theorem` | [Submonoid.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-topologicalclosure-minimal.md) | 454 | `result-track:4e01d43b923969ad449cdcacbc4051c43d6555529e85a3957ecf99d8bd4e63f4` |
| 48 | `def` | [Submonoid.commMonoidTopologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-commmonoidtopologicalclosure.md) | 462 | `declaration-track:bb0c48b39aad41b5f9bf2bc906a1ae201e0a1193294c1a430c041e2b076801ba` |
| 49 | `theorem` | [exists_open_nhds_one_split](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/exists-open-nhds-one-split.md) | 475 | `result-track:8d966a1cf40668deb47effc3b1d2b0bbf93df86d73d04f0234cf08dfaf582352` |
| 50 | `theorem` | [exists_nhds_one_split](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/exists-nhds-one-split.md) | 484 | `result-track:408e7f07d28b9474d4cdb4a5d0694b02bebb39e0a4c10a0a53b9e516234c16cc` |
| 51 | `theorem` | [exists_nhds_one_split4](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/exists-nhds-one-split4.md) | 492 | `result-track:98c4a8fdb0b99cea8f2f8c2adf2fe0112b7e5bf61fffba7758f4a2f37cc6286b` |
| 52 | `theorem` | [exists_open_nhds_one_mul_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/exists-open-nhds-one-mul-subset.md) | 506 | `result-track:abcf19ca57c476abadb91f1176d8d978d0892126ce386f3f9368e727d64288bd` |
| 53 | `theorem` | [IsCompact.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/iscompact-mul.md) | 516 | `result-track:69bcbfc8da981c37380d64cbe9a5996e07acbd59f1ec6ba62307cebe79a761d1` |
| 54 | `theorem` | [tendsto_list_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/tendsto-list-prod.md) | 523 | `result-track:a77c9bf7ff8e9f9d14744b6260f80112e794e9929a0591aeb5f6499f0a74c105` |
| 55 | `theorem` | [continuous_list_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-list-prod.md) | 537 | `result-track:91ac2adbf715535d3122fdb81a7ea48f20d7db09e98d4a7f2090910560798ba6` |
| 56 | `theorem` | [continuousOn_list_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-list-prod.md) | 545 | `result-track:a43a06774eea691c5fbcc6fbdbb62c8e5c00c052e4cf2243cdf80ef4b3b24975` |
| 57 | `theorem` | [continuous_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-pow-source-edition-2.md) | 558 | `result-track:9d3e4c92e3afc0a8b708a45734f8253b1f2d5e1691e9b73c9aa8543a421f874d` |
| 58 | `instance` | [AddMonoid.continuousConstSMul_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/addmonoid-continuousconstsmul-nat.md) | 566 | `declaration-track:7e300b5b6aa417f12ee1d924b53711ded42e518606687d1f2be3b925aec9ab8f` |
| 59 | `instance` | [AddMonoid.continuousSMul_nat](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/addmonoid-continuoussmul-nat.md) | 571 | `declaration-track:08926549c74c21e2c3e657d85abe20e7d97cd150baf1a074d8359324451c5a54` |
| 60 | `theorem` | [Continuous.pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-pow.md) | 577 | `result-track:72d644bcf88d9e93d4676f19cf337c3f4ed1c41fbb0881306ece3c349019e7a2` |
| 61 | `theorem` | [continuousOn_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-pow-source-edition-2.md) | 583 | `result-track:4a9f0b1b62afc971f6b9eb6c78bb8b5c329c7cecce30d17f7cfc29b526dcb828` |
| 62 | `theorem` | [continuousAt_pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousat-pow.md) | 589 | `result-track:49d9bd59a48232cc6abadb6bf64da250808cb068fe4a9224ec32d234172b1b3e` |
| 63 | `theorem` | [Filter.Tendsto.pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-pow.md) | 595 | `result-track:5894f334b23edda15b3930054e01bc128ac17dc1817064aa201f7eec4e5f94c6` |
| 64 | `theorem` | [ContinuousWithinAt.pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouswithinat-pow.md) | 602 | `result-track:dfe2f469d1d2074ef63bff4757de915ae21a67014ee6c0ad33a85bf10bff0a06` |
| 65 | `theorem` | [ContinuousAt.pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousat-pow-source-edition-2.md) | 609 | `result-track:8dac14d163ff6d24e56d43941a22b5aab0a367f836bd6ff3a1c12c13b2908a51` |
| 66 | `theorem` | [ContinuousOn.pow](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-pow.md) | 616 | `result-track:00a72844c77e4c6b2663e06c21f9faed943b7e7e280caf3ef00be50d6b927ccd` |
| 67 | `theorem` | [Filter.tendsto_cocompact_mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-cocompact-mul-left.md) | 623 | `result-track:0c88f6daadf782d7e60425637f9534672866a5b2eece1c4cd39b00aff82fa65f` |
| 68 | `theorem` | [Filter.tendsto_cocompact_mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/filter-tendsto-cocompact-mul-right.md) | 637 | `result-track:3c97166f200f02e057e8a23ce5f525f10dbc920928f4d613ba4fbf7b3f69cf0d` |
| 69 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-7.md) | 651 | `declaration-track:e6917eab36ca8d59a33222109a6211f94271889bc4bc58e7ebd0ab4a70546dc8` |
| 70 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-3.md) | 667 | `declaration-track:a2a5b0d5d825bb52faa57c47ebf08d877fafca4edb8ae3ede4f61da28773f05e` |
| 71 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-6.md) | 681 | `declaration-track:d91adff9d262b28bd90a92f53ba2dc4d47dc18aebf90f6dc603ce2f8cc39a17a` |
| 72 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-2.md) | 702 | `declaration-track:2a8385d8e711bcdf5d77ee365f5791ab378c12722a5bdc4aec86f29b9227400f` |
| 73 | `theorem` | [Continuous.units_map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-units-map.md) | 708 | `result-track:9c4b2b508a6dcf3cd5730cceb522b467672bb7b0ef951b0a54cac12f0fd6ed5d` |
| 74 | `theorem` | [Submonoid.mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/submonoid-mem-nhds-one.md) | 719 | `result-track:71b24508e55db87082742334fd2754067687a02fda517073c136a6dba0cb5790` |
| 75 | `theorem` | [tendsto_multiset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/tendsto-multiset-prod.md) | 728 | `result-track:671c465859af508c9122a8d18c341448452eb9f2d919217a57d11166fce18738` |
| 76 | `theorem` | [tendsto_finset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/tendsto-finset-prod.md) | 737 | `result-track:b340bef0ecdcfaf1a8afd46a9dc6e41251edc14c72af9b155e090d1dc7306b59` |
| 77 | `theorem` | [continuous_multiset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-multiset-prod.md) | 745 | `result-track:2b7c9fe2fa8ed75bc569991fb05f4d92d597e0a295bcb7f59702745168232ddf` |
| 78 | `theorem` | [continuousOn_multiset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-multiset-prod.md) | 753 | `result-track:25b8f818c1bd3acbe817bba343ea3672fc7f57b6a1761dd41e7e7620b1834040` |
| 79 | `theorem` | [continuous_finset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-finset-prod.md) | 761 | `result-track:826fcf241a7855f547c6e8ede778d3315ba8197d564c297e3e86524cd845e972` |
| 80 | `theorem` | [continuousOn_finset_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuouson-finset-prod.md) | 768 | `result-track:afb3acae1b1d253328bce50d2a84ac7d992a837cc5e0ac62ffdc388a0400866c` |
| 81 | `theorem` | [eventuallyEq_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/eventuallyeq-prod.md) | 775 | `result-track:82d1176589de21fe117d63a24c87c65a6ee94482b4b87a515147dc92dd8577ee` |
| 82 | `theorem` | [LocallyFinite.exists_finset_mulSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/locallyfinite-exists-finset-mulsupport.md) | 787 | `result-track:bc8acea0c610e8694385ca35f60583cef010cea897e2fa286f7761a95fd33e93` |
| 83 | `theorem` | [finprod_eventually_eq_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/finprod-eventually-eq-prod.md) | 798 | `result-track:2e6f863648f7fc6da429e756b3a30b14ceacbe494253d31bae0de2c385989f1b` |
| 84 | `theorem` | [continuous_finprod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-finprod.md) | 807 | `result-track:f83b68add27b1ab7108a19a1a69c1566819397511a3d8fc3468594d30303c699` |
| 85 | `theorem` | [continuous_finprod_cond](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuous-finprod-cond.md) | 817 | `result-track:555a36a9bf17f2142b09057e3238072ed842fb23c8aef7f9ae9dd9304c1c006a` |
| 86 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance.md) | 827 | `declaration-track:03d0e009960e8e791c82059cc4cc283a5ac6268ea0ed55d53f5c7ed41e3eb6aa` |
| 87 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/instance-source-edition-8.md) | 830 | `declaration-track:e96f9b9e059224daa598f88b05eb18c382423f36579276546c67030940b977e6` |
| 88 | `theorem` | [continuousMul_sInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-sinf.md) | 838 | `result-track:ad1fc3a9122849da54ad2f89bbcce72d302b9953092c40004f6e90fe86dc5914` |
| 89 | `theorem` | [continuousMul_iInf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-iinf.md) | 848 | `result-track:11f3e0da57fd8bf4197a1719c51d336fc74ccc23fd1c03ac4c389ddde1a5d360` |
| 90 | `theorem` | [continuousMul_inf](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/continuousmul-inf.md) | 856 | `result-track:fbf24436faf05cfdcf4811404fb5e70518ec06d98814b762f9bb5be4b2fe8652` |
| 91 | `def` | [mulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/mulright.md) | 872 | `declaration-track:4189d1683c9fa90f03c0ddedf6f6afecef5a1ef637e52a54a61d93fa98bfbab4` |
| 92 | `theorem` | [coe_mulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/coe-mulright.md) | 878 | `result-track:d193062cb9f1388dcfcc53bb6d1bb7488e1bef97c44307c9e3e2807c65f5a074` |
| 93 | `def` | [mulLeft](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/mulleft.md) | 885 | `declaration-track:0a716d27093c693b3b182ee939f85e1acab6eae6c61a1b4003ea305a0cbb8a08` |
| 94 | `theorem` | [coe_mulLeft](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraMonoidContinuousAdd.lean/declarations/coe-mulleft.md) | 891 | `result-track:3011e87afda5e8d32f832712e938970c48e889dc600fcd1687cf87cf2479f0d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2add7feabda6e909d4fc59e8b9e158f6b06b4510f532398c62b85059b31e071 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Monoid/Variantb872e628795aa5a469b6bd2f86377f2408d04ccc68bf9a701d47dcaa7e538792.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
