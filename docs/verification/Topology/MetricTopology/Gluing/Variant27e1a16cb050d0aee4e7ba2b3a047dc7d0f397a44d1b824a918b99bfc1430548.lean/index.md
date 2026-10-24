# Verification target: GRWTSK.Topology.MetricTopology.Gluing.Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54501b4a3f433841b2097d29528171bef0baef85",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54501b4a3f433841b2097d29528171bef0baef85`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Isometry` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist--6c5922c9c4009d8950780de0.md) | 77 | `declaration-track:6c5922c9c4009d8950780de0937fb47b0d344c32615219ec617d950f18f2c91e` |
| 2 | `theorem` | [glueDist_self](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-self--80abd1f151f99b7463ce17bf.md) | 84 | `result-track:80abd1f151f99b7463ce17bfde97bc7c173833d593bf7c4e119cbc4fafacaa0c` |
| 3 | `theorem` | [glueDist_glued_points](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-glued-points--7fba2dfe2da83a45d9e700e2.md) | 88 | `result-track:7fba2dfe2da83a45d9e700e2c27ac8942bf57f05e7d5474a1f4aa9848ef50dd9` |
| 4 | `theorem` | [glueDist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-comm--6feb49cc0b9afe44d8298316.md) | 100 | `result-track:6feb49cc0b9afe44d8298316836597df8343793b7b4b88fb97b7879f4219f215` |
| 5 | `theorem` | [glueDist_swap](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-swap--6e8b452ab730d204dd033973.md) | 107 | `result-track:6e8b452ab730d204dd03397367ee8ccb01ea21eb845b378dd37a7870b0f642ba` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/le-gluedist-inl-inr--16392560d5e96bf000be4226.md) | 114 | `result-track:16392560d5e96bf000be42268c5988cc786a5274ae5800a3eefe94a00fcc70bb` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/le-gluedist-inr-inl--d253a0b96c6009dd5d099297.md) | 118 | `result-track:d253a0b96c6009dd5d099297d6125c0f408447941ef6b83f82505b4fc566a97b` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-triangle-inl-inr-inr--0b33a0bafd02ee408591b01a.md) | 124 | `result-track:0b33a0bafd02ee408591b01a4d4cca5362e8f8f58e16aa347a5dd6d84b79a583` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-triangle-inl-inr-inl--605d0fdccdc34549a2fc7b9f.md) | 133 | `result-track:605d0fdccdc34549a2fc7b9f49bc75f44379099fc7b88d9bb85037453809aa4c` |
| 10 | `theorem` | [glueDist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluedist-triangle--a59cb7889d71b63725294ded.md) | 144 | `result-track:a59cb7889d71b63725294ded6d2838afc860a5b1fe814a77fcf0c5825b867fa7` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/eq-of-gluedist-eq-zero--1d2c01e94e0c51c8f8cedbf5.md) | 164 | `result-track:1d2c01e94e0c51c8f8cedbf57af0fbedcaf21a378888f29c1f65b54218462ffd` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-mem-uniformity-iff-gluedist--00e6b6dfd59b60a69e3288bc.md) | 171 | `result-track:00e6b6dfd59b60a69e3288bcdc12dab4e8f0238e4130fe6fd31077a39612429d` |
| 13 | `def` | [glueMetricApprox](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluemetricapprox--cef79a9b7ad5c3330c7e9c73.md) | 189 | `declaration-track:cef79a9b7ad5c3330c7e9c73ad81e05137e674ddc5d7cfef29972eefcafdd98c` |
| 14 | `def` | [Sum.dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-dist--8611eedf1275243fa1e06b94.md) | 227 | `declaration-track:8611eedf1275243fa1e06b94c7ba01921a61812b968786f1c6e728bd4519ae94` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-dist-eq-gluedist--2d4f1c17fc1b76a93c6a7205.md) | 234 | `result-track:2d4f1c17fc1b76a93c6a7205cd061c28a7b40a9779f2367d8f93e84edb49d675` |
| 16 | `theorem` | [Sum.dist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-dist-comm--f143b1e5203aa71bd2b948bf.md) | 241 | `result-track:f143b1e5203aa71bd2b948bf205f8f08134523c2006b3eb6e03b4cd225c91249` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-one-le-dist-inl-inr--a1e446e5417b6ae27be96da3.md) | 244 | `result-track:a1e446e5417b6ae27be96da36baf3277322b4569e2c4e69d10ad811142905529` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-one-le-dist-inr-inl--93cb2ff509983625648b29d6.md) | 249 | `result-track:93cb2ff509983625648b29d66a763d275730cc62dbb3b99cd772779551d51465` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-mem-uniformity--1027cc720e2baa94da3d3347.md) | 253 | `result-track:1027cc720e2baa94da3d334734e227ce7a21e6bdc1304ea0a685fecc44ef93f0` |
| 20 | `def` | [metricSpaceSum](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/metricspacesum--c933c9225d0b79c942941e47.md) | 272 | `declaration-track:c933c9225d0b79c942941e478e4c33be3a0f81bbe613f6e6107cf73816e28f06` |
| 21 | `theorem` | [Sum.dist_eq](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/sum-dist-eq--84fa7a7185185d62cdec0103.md) | 301 | `result-track:84fa7a7185185d62cdec01033aa9bd638f87776691918f02193367fbabfdec1e` |
| 22 | `theorem` | [isometry_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/isometry-inl--d9c7b627dfd877351e09f5f3.md) | 305 | `result-track:d9c7b627dfd877351e09f5f30141590fa1c454ff96653b1ae2f60e96e55bf287` |
| 23 | `theorem` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/isometry-inr--3567f29ccf5913abdb4614b7.md) | 310 | `result-track:3567f29ccf5913abdb4614b7862025e974a9e07b432bc9c38092fce0b14c1f20` |
| 24 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/dist--13d07337d66b0d2f83a23383.md) | 332 | `declaration-track:13d07337d66b0d2f83a23383bc0fbf4dc4a9a69784e0c8a8dafd9a21075713ab` |
| 25 | `def` | [instDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/instdist--f9b91767069e07341d74d234.md) | 345 | `declaration-track:f9b91767069e07341d74d234d0a72c86e3df8ed8670c8c9502180a99fddd1967` |
| 26 | `theorem` | [dist_same](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/dist-same--63161fec263cdcc2a1532d54.md) | 352 | `result-track:63161fec263cdcc2a1532d548cfdb82f47abe6dd0d18224e1905e03d97e0060f` |
| 27 | `theorem` | [dist_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/dist-ne--75855d3db07c78a56c9bd70e.md) | 357 | `result-track:75855d3db07c78a56c9bd70ebcd5468acf7b992bdd66240cd8d894aa6b064db7` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/one-le-dist-of-ne--4c3e4db343519a2c30cdc3b8.md) | 362 | `result-track:4c3e4db343519a2c30cdc3b86334f3791b1aaee8f1febed5bd5793e5d08bb749` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/fst-eq-of-dist-lt-one--39acdef6391fc0c6380bbb82.md) | 368 | `result-track:39acdef6391fc0c6380bbb829b60286a9357aa271d32fc4c7a09bb8655c060a7` |
| 30 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/dist-triangle--bbba16149977ebec644ee97b.md) | 374 | `result-track:bbba16149977ebec644ee97b312ecdf48be1bedbbea9ac47ebdb229208c5fd8d` |
| 31 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/isopen-iff--8d6a5ae6c4ec8436cefd5218.md) | 406 | `result-track:8d6a5ae6c4ec8436cefd52186a3ac770d81deb9cb04bbead452510965241c179` |
| 32 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/metricspace--ed5b22dda9d1da151bb6d17e.md) | 435 | `declaration-track:ed5b22dda9d1da151bb6d17eaadfbb6b52129270c6cfae185f5a907a91bfdccf` |
| 33 | `theorem` | [isometry_mk](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/isometry-mk--4519a08d143f913300c3768b.md) | 461 | `result-track:4519a08d143f913300c3768badfd1a12ba77fd4adabf027ed5bf7797ec0ed7e2` |
| 34 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/completespace--48540a0e6f82a27ac467adf2.md) | 466 | `result-track:48540a0e6f82a27ac467adf26329a61c001169a60069a8178a6c8a92b498c601` |
| 35 | `def` | [gluePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluepremetric--5b5a3e2d3a8930322d0be55e.md) | 493 | `declaration-track:5b5a3e2d3a8930322d0be55e6c0fea191db3bb7ce262b8a7029fff908eef4b03` |
| 36 | `def` | [GlueSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/gluespace--624087cba8022f6a42fafcdd.md) | 503 | `declaration-track:624087cba8022f6a42fafcdda4c862329ba18c7a44de4c96f97a47599e86d018` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/instance--39a25f50ef2e7bab6342f235.md) | 508 | `declaration-track:39a25f50ef2e7bab6342f235e06b1c3b9545eb96751fed707c26f18499b70a74` |
| 38 | `def` | [toGlueL](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/togluel--1f2a3ed95af24ab957e136ac.md) | 513 | `declaration-track:1f2a3ed95af24ab957e136ac2bf55b782a1e76523ba1b5c50f9efd83ff8d608e` |
| 39 | `def` | [toGlueR](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/togluer--db54b5aa28bfc2e8abcb16c8.md) | 518 | `declaration-track:db54b5aa28bfc2e8abcb16c877045f8a4a39d27dca472d8ae520de39bb02fed3` |
| 40 | `instance` | [inhabitedLeft](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inhabitedleft--b0df5cffad12e700356d6c73.md) | 522 | `declaration-track:b0df5cffad12e700356d6c73b7872e8dc733b3b1a1a8c62b4dc9c5aac55d00f9` |
| 41 | `instance` | [inhabitedRight](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inhabitedright--aa7d7a0e5bc35a63a9d01b21.md) | 527 | `declaration-track:aa7d7a0e5bc35a63a9d01b21941c22ec72d4c6147d226a95d84876214bbf5b17` |
| 42 | `theorem` | [toGlue_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/toglue-commute--1eab50809c209c9c91922352.md) | 532 | `result-track:1eab50809c209c9c9192235227be697f7c09a84d1b0f691691ceb7bc49a563d6` |
| 43 | `theorem` | [toGlueL_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/togluel-isometry--6b5a073f5eb63e3b06de377e.md) | 542 | `result-track:6b5a073f5eb63e3b06de377e997e83c253c0b7a4afb348ad50c13552305d690d` |
| 44 | `theorem` | [toGlueR_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/togluer-isometry--9b05722877790088ee590a17.md) | 546 | `result-track:9b05722877790088ee590a17ab88d4d0a9c8739f73eb756dead9d85322eff318` |
| 45 | `def` | [inductiveLimitDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inductivelimitdist--b03405c939bd5fd2d2c7d839.md) | 577 | `declaration-track:b03405c939bd5fd2d2c7d839b6fb0636937c42b404140991f305e9a208e4330c` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inductivelimitdist-eq-dist--a9ecc4417cbd76082d0b248c.md) | 584 | `result-track:a9ecc4417cbd76082d0b248c9d746a84ab975db088fdcf697e38b1149faffcf9` |
| 47 | `def` | [inductivePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inductivepremetric--a4868bc15ac19b6d711850c9.md) | 606 | `declaration-track:a4868bc15ac19b6d711850c9a1f36d4aaee38c1a96dfa6048c8cd1cea5dfb355` |
| 48 | `def` | [InductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/inductivelimit--b6fd49031aba25f219f6cc5c.md) | 635 | `declaration-track:b6fd49031aba25f219f6cc5c2e6050327812684251c72374ba49844a9ee63560` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/instance--2bf1697daddd37f0259a7904.md) | 639 | `declaration-track:2bf1697daddd37f0259a7904fd74cf1055a14c6012c12d5cb9ccc77cee08e39f` |
| 50 | `def` | [toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/toinductivelimit--205c0f50c6e5c7fb13c675e2.md) | 644 | `declaration-track:205c0f50c6e5c7fb13c675e20615106f5881e20c33a401cee83d6863555d998e` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/instance--1b2a00b6a7d4d0d9ec796c43.md) | 648 | `declaration-track:1b2a00b6a7d4d0d9ec796c43995fffa85a9b5c8996eeb4e4c1b4f85aa754246c` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/toinductivelimit-isometry--12c8f0cc3ea32239d206cb6f.md) | 652 | `result-track:12c8f0cc3ea32239d206cb6fae04224730640762c87e64c400c8d44fedea40d7` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant27e1a16cb050d0aee4e7ba2b3a047dc7d0f397a44d1b824a918b99bfc1430548.lean/declarations/toinductivelimit-commute--1626736465b8de47bd027d29.md) | 661 | `result-track:1626736465b8de47bd027d298ba8a967cc84bfae8f25c10c7c00415e7bb5c460` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
