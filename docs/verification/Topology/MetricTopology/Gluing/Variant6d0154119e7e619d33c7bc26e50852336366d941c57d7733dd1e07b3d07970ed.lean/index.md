# Verification target: GRWTSK.Topology.MetricTopology.Gluing.Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "56f47c2b3bdd78f64a8420da4032be837ee8333e",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `56f47c2b3bdd78f64a8420da4032be837ee8333e`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist--a3ef2a8a3d0c3ab00616244f.md) | 70 | `declaration-track:a3ef2a8a3d0c3ab00616244fef22062b501e39d040301e0484591fb73e433578` |
| 2 | `theorem` | [glueDist_self](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-self--dbdf00f739a871420212fde6.md) | 77 | `result-track:dbdf00f739a871420212fde619094e071e3cca5527519d1c63f63230218808d4` |
| 3 | `theorem` | [glueDist_glued_points](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-glued-points--426c730adaeb9a27996db605.md) | 81 | `result-track:426c730adaeb9a27996db605fb0ab8a62b89501b67ea9ad0c27c9b0911a1b084` |
| 4 | `theorem` | [glueDist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-comm--bfd3af7e1f12d67e64732c37.md) | 92 | `result-track:bfd3af7e1f12d67e64732c377adc0f498c21c3e965a5750e02cc3f8ee40c1dd8` |
| 5 | `theorem` | [glueDist_swap](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-swap--a0bad2e25989bd4b2854f723.md) | 99 | `result-track:a0bad2e25989bd4b2854f72335090bd710761b259539e57c14d21b537a143778` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/le-gluedist-inl-inr--9a13e9dc5a4af0928b8488e4.md) | 106 | `result-track:9a13e9dc5a4af0928b8488e4f88f94c0919add5757f460438dd0f0bc135d9389` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/le-gluedist-inr-inl--8c87b8e5e10a254110aa35a7.md) | 110 | `result-track:8c87b8e5e10a254110aa35a79664e3f8c5e37613a5f46589d987e3211ee1868f` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-triangle-inl-inr-inr--09fb6d2793741e6428d1e74e.md) | 117 | `result-track:09fb6d2793741e6428d1e74e3a4c0d0ae42e3c66568acc80b92212d26e045634` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-triangle-inl-inr-inl--5c13faa87da809506d67f354.md) | 126 | `result-track:5c13faa87da809506d67f354cac50ea75098b4e18a6274a60ebeda6c8abdbf62` |
| 10 | `theorem` | [glueDist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluedist-triangle--fc41c4ad0a2e95ded8db2312.md) | 138 | `result-track:fc41c4ad0a2e95ded8db2312c040ecd90f9a2b49fff56b9f8a5a3b7835ab3df2` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/eq-of-gluedist-eq-zero--c3fa15331493767664dde8c4.md) | 161 | `result-track:c3fa15331493767664dde8c4f92ee83d679a7e50d55c4551f476f79a510f9a07` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-mem-uniformity-iff-gluedist--f05b741186079598fb4f4b21.md) | 168 | `result-track:f05b741186079598fb4f4b2109afa543e36610a4a9ac1f01a6c0bfc41b05f86b` |
| 13 | `def` | [glueMetricApprox](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluemetricapprox--0b83f3678fdf9b1d21f6ef68.md) | 189 | `declaration-track:0b83f3678fdf9b1d21f6ef687c58894ff6566e98137e0ca6d85ba952ab647989` |
| 14 | `def` | [Sum.dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-dist--dbeaad2c1030a5b58e0a3ad1.md) | 224 | `declaration-track:dbeaad2c1030a5b58e0a3ad1c31b9b1c7f78bd5f2012da8db7fee88f246f36fc` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-dist-eq-gluedist--abeaacfddc7d56e4ff20e8fd.md) | 230 | `result-track:abeaacfddc7d56e4ff20e8fdf4dcbe3c54b4586a5d1760ef1698911ff4a8930a` |
| 16 | `theorem` | [Sum.dist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-dist-comm--1afa7e5630532576818b8b98.md) | 237 | `result-track:1afa7e5630532576818b8b98fe8c8a1a8532fd8195bb72ae6cee891a1ade6dd8` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-one-le-dist-inl-inr--62d0b3431e91df3ca431935e.md) | 240 | `result-track:62d0b3431e91df3ca431935e2b09918e2d0e8c18f7791938c2aa697e295b65db` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-one-le-dist-inr-inl--74b26d99a48a2a215289da5d.md) | 243 | `result-track:74b26d99a48a2a215289da5dd17fce1338396ee5b27d1d297aa7f3d22d9d2d6a` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-mem-uniformity--1c99d5cbeee9faf26a8d1f81.md) | 247 | `result-track:1c99d5cbeee9faf26a8d1f811cdc389ae589973a4ae8c5e6c2bf7dd847abb921` |
| 20 | `def` | [metricSpaceSum](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/metricspacesum--50963e99801cdaca9ecb05eb.md) | 268 | `declaration-track:50963e99801cdaca9ecb05eb9830be54b4a964198f16107196cf41d9e863f248` |
| 21 | `theorem` | [Sum.dist_eq](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/sum-dist-eq--02fde70da26bfd0d32c35943.md) | 295 | `result-track:02fde70da26bfd0d32c359436b971693306b7517ee495f030956d84be2471f0f` |
| 22 | `theorem` | [isometry_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/isometry-inl--a2ca2bc83643d96dd7a452db.md) | 298 | `result-track:a2ca2bc83643d96dd7a452db86dda0f04f2bf52a52ebfb869626bbd7c209a4b6` |
| 23 | `theorem` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/isometry-inr--f27c71051a1cbf65298bc097.md) | 302 | `result-track:f27c71051a1cbf65298bc0975831705e4cdb0b4a0434cde74a6947f06b0879f1` |
| 24 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/dist--4d6cebb4d9d49f40ac077232.md) | 322 | `declaration-track:4d6cebb4d9d49f40ac077232d459f71590be30d50cf0888e1ac61115e59173a7` |
| 25 | `def` | [instDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/instdist--49e929ec3e3f1a86a24c1fd1.md) | 335 | `declaration-track:49e929ec3e3f1a86a24c1fd17e5ec7f3a33a02d5d3fe515ef546d5f76df0e6c4` |
| 26 | `theorem` | [dist_same](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/dist-same--63039011a031c443becc573b.md) | 341 | `result-track:63039011a031c443becc573b36f31659cf4fcda71e75da9885752c006d87dbc8` |
| 27 | `theorem` | [dist_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/dist-ne--0b0b720209024d00be64006f.md) | 345 | `result-track:0b0b720209024d00be64006ff7a82e17353c0191b89a8f45cc23fa0f99bce021` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/one-le-dist-of-ne--b72334f7046dbfe7a6b84ba1.md) | 349 | `result-track:b72334f7046dbfe7a6b84ba1e7f5c704de77392bfaf8efe52adb3c573fc74ce1` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/fst-eq-of-dist-lt-one--4a4fc9a39b9e087b9ead2fa3.md) | 354 | `result-track:4a4fc9a39b9e087b9ead2fa328e850c70dbcbbcb11a24e87bd7ea23ec034e9a6` |
| 30 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/dist-triangle--72b5a1d39a8976c31eef35c1.md) | 359 | `result-track:72b5a1d39a8976c31eef35c1cdc6f7332217ac21e7ef3883a5b386e8ba79fd81` |
| 31 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/isopen-iff--894b2f5b1af2f2e2f982ef19.md) | 390 | `result-track:894b2f5b1af2f2e2f982ef19a0ffff0c74c25ebe878f562eb000522cb5ceed42` |
| 32 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/metricspace--6eac5c32b91351e4691c9b4a.md) | 419 | `declaration-track:6eac5c32b91351e4691c9b4a649483d14ed9725d96f13b377c301b3ed414600c` |
| 33 | `theorem` | [isometry_mk](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/isometry-mk--fb441f28644e19a670336b17.md) | 440 | `result-track:fb441f28644e19a670336b1759b8f95515c13a267a52f7329b0885a2dff942a7` |
| 34 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/completespace--876cabc1cdef63109731827f.md) | 444 | `result-track:876cabc1cdef63109731827f774da59ff54a9011cac3a52f3defeaa40eb7f266` |
| 35 | `def` | [gluePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluepremetric--2703ab6c72532fe5e1f2ca3a.md) | 469 | `declaration-track:2703ab6c72532fe5e1f2ca3a692843f5a72ad953bda96bd5ae9b964d81aea544` |
| 36 | `def` | [GlueSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/gluespace--c49189a9e7d9b9756d941a1b.md) | 477 | `declaration-track:c49189a9e7d9b9756d941a1bee0f11eab9c4bff0064bbd59e2f1129bf28f81b4` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/instance--f4d660ec316a22aaef6c76c4.md) | 480 | `declaration-track:f4d660ec316a22aaef6c76c44a34fd299250d968faa0c1f82d7191da3eb354aa` |
| 38 | `def` | [toGlueL](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/togluel--0c3248a85a1982296a7795ae.md) | 485 | `declaration-track:0c3248a85a1982296a7795aebcb0f1911b9f199460cf8a3202f94305303a6025` |
| 39 | `def` | [toGlueR](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/togluer--cded448d0e48cecfdb114c7e.md) | 489 | `declaration-track:cded448d0e48cecfdb114c7eb259451ab990f2de09a8e89c158c032f5df0f444` |
| 40 | `instance` | [inhabitedLeft](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inhabitedleft--83df97c7b7e253c453a50275.md) | 492 | `declaration-track:83df97c7b7e253c453a50275db00489ccb683fe44a3f7b299bbb800a95504c0f` |
| 41 | `instance` | [inhabitedRight](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inhabitedright--6a14e213470fb5c2fe383c95.md) | 496 | `declaration-track:6a14e213470fb5c2fe383c953c0b7c79e464986cb8249458ed2b42345d978a9b` |
| 42 | `theorem` | [toGlue_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/toglue-commute--059c71d43e4355ffea0a0644.md) | 500 | `result-track:059c71d43e4355ffea0a06444d4ebca9ccc019ab95d88a7c97ed9fe172c21057` |
| 43 | `theorem` | [toGlueL_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/togluel-isometry--1f6a24edecc5a35752d3fc73.md) | 509 | `result-track:1f6a24edecc5a35752d3fc73f211136c1c82f96c9ce7c87d38031f1cc5d6cc46` |
| 44 | `theorem` | [toGlueR_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/togluer-isometry--fe89619675d35b4a30a981ff.md) | 512 | `result-track:fe89619675d35b4a30a981ff4a9d3f2555a6cd7364009016292d2d8f32a489f0` |
| 45 | `def` | [inductiveLimitDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inductivelimitdist--c56163a3ee5cf8190fd77ff8.md) | 541 | `declaration-track:c56163a3ee5cf8190fd77ff8f06441e4299179a6539d72124f9f647e36214cb3` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inductivelimitdist-eq-dist--6ef5fdf216ea39f957277120.md) | 547 | `result-track:6ef5fdf216ea39f9572771205789691aa318bbe02fc9e75ab4fce52722d13719` |
| 47 | `def` | [inductivePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inductivepremetric--8c395da3e1a17e8eca3a111d.md) | 569 | `declaration-track:8c395da3e1a17e8eca3a111db0d43b7390ea4c3581ebc53efb0c60d328a8899b` |
| 48 | `def` | [InductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/inductivelimit--ce6f60c41a4d146b6f634931.md) | 593 | `declaration-track:ce6f60c41a4d146b6f6349310ce1f83f1c8dc4563e206f6687cfbe20e7a12a81` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/instance--572d997bfc7717f40c2695c9.md) | 596 | `declaration-track:572d997bfc7717f40c2695c976c1fcdd1221384c30da41f4b7c110a3b71aba61` |
| 50 | `def` | [toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/toinductivelimit--df84644810b965752df2b9b6.md) | 601 | `declaration-track:df84644810b965752df2b9b6d9655c4a83059387c3fd2f567288df26099abfeb` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/instance--cfa0a15e4f4b135d4b8fa529.md) | 604 | `declaration-track:cfa0a15e4f4b135d4b8fa5292aa1b6f49d55ee7ca5fea363346bdc919810a452` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/toinductivelimit-isometry--3bc7b827c795b8b2f58275f8.md) | 608 | `result-track:3bc7b827c795b8b2f58275f82ac590d100e7923e5b9e44093e42e738a7ccb4ab` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/toinductivelimit-commute--b9b67f3e7b6f2518dac0f06a.md) | 616 | `result-track:b9b67f3e7b6f2518dac0f06a327458168efc3cc09fdf62e742d8bac02b3dd2fe` |
| 54 | `theorem` | [dense_iUnion_range_toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/dense-iunion-range-toinductivelimit--069a4acf8ad1dfb2089b876b.md) | 630 | `result-track:069a4acf8ad1dfb2089b876b929951e7a79a2a28fa6d50703fba0490fafd7b58` |
| 55 | `theorem` | [separableSpaceInductiveLimit_of_separableSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variant6d0154119e7e619d33c7bc26e50852336366d941c57d7733dd1e07b3d07970ed.lean/declarations/separablespaceinductivelimit-of-separablespace--313cdb4517d3db8f964fe707.md) | 639 | `result-track:313cdb4517d3db8f964fe707e44adc94776b0822c7f8f46ed2cfb33d42d9a6ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
