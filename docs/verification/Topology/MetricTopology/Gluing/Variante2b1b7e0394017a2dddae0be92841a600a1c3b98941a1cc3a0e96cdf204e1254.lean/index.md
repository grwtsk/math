# Verification target: GRWTSK.Topology.MetricTopology.Gluing.Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83f1399586e311fd245c703d54ed8c0728c617c9",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83f1399586e311fd245c703d54ed8c0728c617c9`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Group` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist--a15a6e1e0439ac65ceb26c35.md) | 64 | `declaration-track:a15a6e1e0439ac65ceb26c35c2a91b46b386822c3b6d4320d9938d8c2a01a499` |
| 2 | `theorem` | [glueDist_self](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-self--e66a3a4ecc39aadde10dadec.md) | 70 | `result-track:e66a3a4ecc39aadde10dadece795a0bbc63dbd375591f79fb6038e6c416a4e04` |
| 3 | `theorem` | [glueDist_glued_points](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-glued-points--3985b839466b594f55d31a47.md) | 74 | `result-track:3985b839466b594f55d31a47d65c0208d9e5684e853c7fbbe80c268b7b94b445` |
| 4 | `theorem` | [glueDist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-comm--f2024a99ba9c87c88739c05a.md) | 84 | `result-track:f2024a99ba9c87c88739c05a6075e3411f6bddfddeba984bca8fbb9bf565d902` |
| 5 | `theorem` | [glueDist_swap](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-swap--88f5903fa6446d679ad9b4f9.md) | 91 | `result-track:88f5903fa6446d679ad9b4f998181450badebc86c422127e2bfd2b289deafbe3` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/le-gluedist-inl-inr--fecc5c3f895c1288d7e83f38.md) | 98 | `result-track:fecc5c3f895c1288d7e83f38c7e8c5585f49a8fe573d4751936a9c4b7f126f9f` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/le-gluedist-inr-inl--7547c4b9489985d39108890f.md) | 102 | `result-track:7547c4b9489985d39108890f5fb241190764c24a14e873b8d1876cad0b7c39b4` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-triangle-inl-inr-inr--7ca4569474b9c1f52e1ab137.md) | 109 | `result-track:7ca4569474b9c1f52e1ab13718af90bc48dc85dd9c62a7254bcabb7bd14e15ae` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-triangle-inl-inr-inl--81217163c06eaf0e8c2e557f.md) | 118 | `result-track:81217163c06eaf0e8c2e557f2f4ffdceb034971e62038275b981a67173581622` |
| 10 | `theorem` | [glueDist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluedist-triangle--be584d0e5960ef9f49b45ebc.md) | 129 | `result-track:be584d0e5960ef9f49b45ebc45804ba3400f8127cb81b2c2c83cbd4edcff1ec3` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/eq-of-gluedist-eq-zero--a0513b9c00909210ca6f8ad3.md) | 151 | `result-track:a0513b9c00909210ca6f8ad318f6fd01f8f033d30b3218dc01e506fb0c80d25f` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-mem-uniformity-iff-gluedist--1805dca17431e87758188230.md) | 158 | `result-track:1805dca17431e87758188230a086c069d1735c9427274cc12ff3e26972143842` |
| 13 | `def` | [glueMetricApprox](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluemetricapprox--618ad15d196d89ffc006d862.md) | 176 | `declaration-track:618ad15d196d89ffc006d862b276c2773793a4dd847c59c645b2657cd1595601` |
| 14 | `def` | [Sum.dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-dist--fa93185c8ac44525165c8e2c.md) | 211 | `declaration-track:fa93185c8ac44525165c8e2c71cd42491c295bd80c0df66f525f24e4f73733f8` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-dist-eq-gluedist--cd1c9df385fb857378de711b.md) | 217 | `result-track:cd1c9df385fb857378de711b17c7ed54a508740ae3fa3c3a167009693cac35b2` |
| 16 | `theorem` | [Sum.dist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-dist-comm--b86f7f9f1dfb9b7552791608.md) | 223 | `result-track:b86f7f9f1dfb9b75527916088dcd5a74ed725691668bbb68f1996885babb0243` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-one-le-dist-inl-inr--8c8043d541cde856e9088a73.md) | 226 | `result-track:8c8043d541cde856e9088a73f8c3e41d4b1fe120289a8eccada945f718ff89dd` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-one-le-dist-inr-inl--1c0bffb0760c8ee311abd529.md) | 230 | `result-track:1c0bffb0760c8ee311abd52945804c40e94727bf5e9e03f600c2b9965ab49ad2` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-mem-uniformity--d21a3efa6f1d9df70af49373.md) | 233 | `result-track:d21a3efa6f1d9df70af49373432559792d4daf037d42b2f4c0b50e8a0971852d` |
| 20 | `def` | [metricSpaceSum](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/metricspacesum--d3801972860641406dbdac9e.md) | 251 | `declaration-track:d3801972860641406dbdac9ebc1ea70c7accb28d9b84bcedf4fe19f3085325a1` |
| 21 | `theorem` | [Sum.dist_eq](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/sum-dist-eq--563ba1c56aa55e8318427806.md) | 278 | `result-track:563ba1c56aa55e831842780666a9048e6e6408cd7fe3e1b73393b2dfff37b158` |
| 22 | `theorem` | [isometry_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/isometry-inl--a5d77f39a424fcb51dc556ec.md) | 281 | `result-track:a5d77f39a424fcb51dc556ec44c171ca513b7567273390911fd30f85373d9baf` |
| 23 | `theorem` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/isometry-inr--6480e6fe48b45b08d065ae9b.md) | 285 | `result-track:6480e6fe48b45b08d065ae9be1e658df1152328774d84e42e1d8d58b5750cdf8` |
| 24 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/dist--f9c2156528aeafff615ccda3.md) | 305 | `declaration-track:f9c2156528aeafff615ccda3dff57d80567b6baea243c3c8db8bf359f3e36e47` |
| 25 | `def` | [instDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/instdist--1bb7ee8415312dfb0934d533.md) | 317 | `declaration-track:1bb7ee8415312dfb0934d5333835c4140b721f360a9d390ce37135456c573f03` |
| 26 | `theorem` | [dist_same](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/dist-same--32d7999a3129f327f2a5c7b1.md) | 323 | `result-track:32d7999a3129f327f2a5c7b1bee51f4c517842857ed506fcc3fc43e39279887b` |
| 27 | `theorem` | [dist_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/dist-ne--0df9bb1c7c6f3135f4278a91.md) | 327 | `result-track:0df9bb1c7c6f3135f4278a91cea7ef338597845711599118bc393f7d410a8954` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/one-le-dist-of-ne--e465972966899b43616adef2.md) | 331 | `result-track:e465972966899b43616adef2ff1d9fc30e34ea887195022ea16f229eae2c6d46` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/fst-eq-of-dist-lt-one--a63f59a699cb12caf0b5d5ab.md) | 336 | `result-track:a63f59a699cb12caf0b5d5abbcb4cd4333af2dc2ed5a4efa81684d75573e977e` |
| 30 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/dist-triangle--c5a5024fd871cb8dc51cde8e.md) | 341 | `result-track:c5a5024fd871cb8dc51cde8e5390ca8de0d83e262c1f740a9d0e99e9a1aa7360` |
| 31 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/isopen-iff--12a7cdbeaec6695360fd0496.md) | 372 | `result-track:12a7cdbeaec6695360fd04962c21e7c7fca212366c95be39984d715fe3d66a87` |
| 32 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/metricspace--b94cd273c5bb30d9a3711087.md) | 400 | `declaration-track:b94cd273c5bb30d9a37110875d3963b7e3c459158c6c682663e074397f780b44` |
| 33 | `theorem` | [isometry_mk](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/isometry-mk--048370aa2fa671c72d3a81ea.md) | 425 | `result-track:048370aa2fa671c72d3a81eabdc3fbcb681b46a23fb2ac31809aca68fc005be3` |
| 34 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/completespace--caca24b008b6ab1880f926a4.md) | 429 | `result-track:caca24b008b6ab1880f926a40a7a7f4df2471e0c79c26f07627d3baebe6670f3` |
| 35 | `def` | [gluePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluepremetric--fdb37e793f58db7e7f05c6e2.md) | 452 | `declaration-track:fdb37e793f58db7e7f05c6e21e3d8300668302a16fb24a075a1fa1135a2eebc8` |
| 36 | `def` | [GlueSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/gluespace--c625a4558a296189f82f91a9.md) | 460 | `declaration-track:c625a4558a296189f82f91a9eeb8d38ff6d89ba7bbdf1fdd9835449ddac25f0a` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/instance--aafeff2a474ee02090eac486.md) | 463 | `declaration-track:aafeff2a474ee02090eac4864e841a631a2d374ae31289f8485d80bebe43d7fd` |
| 38 | `def` | [toGlueL](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/togluel--28a2428cb57a69a06ef000c5.md) | 468 | `declaration-track:28a2428cb57a69a06ef000c5a69838db599a5073f8c39d24cd010cf140bb791d` |
| 39 | `def` | [toGlueR](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/togluer--dfb0555a78cacfabea4e6897.md) | 472 | `declaration-track:dfb0555a78cacfabea4e68972255f7580c8176f939ed45a6cb1bcc2f521ca8eb` |
| 40 | `instance` | [inhabitedLeft](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inhabitedleft--eae5c26b02546fb5fbc41603.md) | 475 | `declaration-track:eae5c26b02546fb5fbc41603f4b3252169912c36711c48aa36dc980655eea6df` |
| 41 | `instance` | [inhabitedRight](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inhabitedright--ed3a14e9a6d6a0ed60a67ba2.md) | 479 | `declaration-track:ed3a14e9a6d6a0ed60a67ba2aef94eda54d1b3b087a79028614c85d57c723e12` |
| 42 | `theorem` | [toGlue_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/toglue-commute--7b2165776f37cc3ba13f3f18.md) | 483 | `result-track:7b2165776f37cc3ba13f3f1853590f92c465c7cc70eeb8705db47367d058ac1e` |
| 43 | `theorem` | [toGlueL_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/togluel-isometry--0b561d01427c5c174693a903.md) | 492 | `result-track:0b561d01427c5c174693a90381479be67029eed9ff329c9a190515d31b19d259` |
| 44 | `theorem` | [toGlueR_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/togluer-isometry--66c9db2ab625508e49414bad.md) | 495 | `result-track:66c9db2ab625508e49414bad0e761a0f4aec104a50e92ba73324137f7ab25684` |
| 45 | `def` | [inductiveLimitDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inductivelimitdist--8b7cc5d9504a50d913eda45b.md) | 524 | `declaration-track:8b7cc5d9504a50d913eda45b9e0cd365aab313c72774480d1a86846d764904ac` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inductivelimitdist-eq-dist--d59d46bc50dc67bc1df40709.md) | 530 | `result-track:d59d46bc50dc67bc1df40709d67dd08f2b7315952de8f53656e405ba6dea802d` |
| 47 | `def` | [inductivePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inductivepremetric--6587a44593707b54211fbe90.md) | 551 | `declaration-track:6587a44593707b54211fbe90267be3ddc19a0db2f319193960a8d47233119da4` |
| 48 | `def` | [InductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/inductivelimit--80d26d6818e81c29304672b2.md) | 577 | `declaration-track:80d26d6818e81c29304672b2b21424adf1061f2e999f4247b5a568265b52faee` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/instance--09ebe0efe9f066d3d39675f6.md) | 580 | `declaration-track:09ebe0efe9f066d3d39675f6f69855dd30363fa6b62221ed1b3cc025fb8f09de` |
| 50 | `def` | [toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/toinductivelimit--21614cd0574ae1496f0ae83a.md) | 585 | `declaration-track:21614cd0574ae1496f0ae83a9af6593c78bfac244415040a2c053e77583b8d50` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/instance--b789071dd5a6652dcf12bf3c.md) | 588 | `declaration-track:b789071dd5a6652dcf12bf3cf82be32039dda5ed9a1313fa74ae37f3cd77097e` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/toinductivelimit-isometry--1fdfb4d81a23f085a9281a27.md) | 592 | `result-track:1fdfb4d81a23f085a9281a273020d259ac55be41c4354fc571cdd84ffda8590d` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/toinductivelimit-commute--86ad11ccfe55ec7d2bf6ad10.md) | 600 | `result-track:86ad11ccfe55ec7d2bf6ad103b59c140f4dc478366550e1ac03f0f7e48fc4993` |
| 54 | `theorem` | [dense_iUnion_range_toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/dense-iunion-range-toinductivelimit--ffcb971e986c012db0651d6d.md) | 612 | `result-track:ffcb971e986c012db0651d6d8adb3f888a686a34e43909e97d6ef31430689451` |
| 55 | `theorem` | [separableSpaceInductiveLimit_of_separableSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante2b1b7e0394017a2dddae0be92841a600a1c3b98941a1cc3a0e96cdf204e1254.lean/declarations/separablespaceinductivelimit-of-separablespace--8a0a0c586606a318df19fa6b.md) | 621 | `result-track:8a0a0c586606a318df19fa6b6b4a6ebf6d2ee80f9eedb3150f7c27b02b6458e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
