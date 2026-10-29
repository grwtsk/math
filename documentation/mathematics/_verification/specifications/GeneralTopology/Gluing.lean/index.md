# Verification target: Gluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd1497f199806dccef8b9d3c17022aa1b1a9d72",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/Gluing.lean/index.md) · [Full source](../../../../GeneralTopology/Gluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd1497f199806dccef8b9d3c17022aa1b1a9d72`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.Isometry` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../GeneralTopology/Gluing.lean/declarations/gluedist.md) | 69 | `declaration-track:223ad4ef8f7ac7a478e772eb2f4f1258e157da8205de1b2ea3c03c9d05ba5c20` |
| 2 | `theorem` | [glueDist_self](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-self.md) | 76 | `result-track:0e6f914a2d44f3ff80004ba1a7982f55a2d32e98e4e234b71eeaabd68662ca5e` |
| 3 | `theorem` | [glueDist_glued_points](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-glued-points.md) | 80 | `result-track:59b86f759b123755f46b426a65d92698fde530fa7700ebc639b76709388a35fe` |
| 4 | `theorem` | [glueDist_comm](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-comm.md) | 92 | `result-track:44f3a8706f0093ee96583421ec0eefa863a295b4b3c2abc35d42c411cf7f75b3` |
| 5 | `theorem` | [glueDist_swap](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-swap.md) | 99 | `result-track:4264ad761360b0fbce69c9e3275e904b857eb3a3e9b9e1db2f255c9ebb001366` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../GeneralTopology/Gluing.lean/declarations/le-gluedist-inl-inr.md) | 106 | `result-track:e66b1c4029b9ae7cc5766c3c64d8c730af2d11751bdf6b427cfc20be45d2584a` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../GeneralTopology/Gluing.lean/declarations/le-gluedist-inr-inl.md) | 110 | `result-track:82c3aa3a3a5565ed8e3fa1866d6df3f54ce717b36819559b7adedc182d48b556` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-triangle-inl-inr-inr.md) | 116 | `result-track:fe39ddb4b11574a515c2cb550322707e89fb2ebc9b0221a0784ae73f3ed77f1d` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-triangle-inl-inr-inl.md) | 125 | `result-track:20234a05e075ea735779e458cbef165c28a211b190b1ce71fc3cc984525f97ae` |
| 10 | `theorem` | [glueDist_triangle](../../../../GeneralTopology/Gluing.lean/declarations/gluedist-triangle.md) | 136 | `result-track:4da1b7434e2365df2c4501b615466b49d1262cd020e9d0dc99b1e4971afd4377` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../GeneralTopology/Gluing.lean/declarations/eq-of-gluedist-eq-zero.md) | 156 | `result-track:d79e7eeef1f403b3eaf6aeac14f5d41c7a98d74161c19596de4d025060312dcf` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../GeneralTopology/Gluing.lean/declarations/sum-mem-uniformity-iff-gluedist.md) | 163 | `result-track:688d385232debf44b3b7d57523c34113fe4cb531d6e8a1052ddb64e9d53be35f` |
| 13 | `def` | [glueMetricApprox](../../../../GeneralTopology/Gluing.lean/declarations/gluemetricapprox.md) | 181 | `declaration-track:2607eafcdb55ce72e614433c3ad1b33505a0553af3ad7398a7ebd4edac7f5794` |
| 14 | `def` | [Sum.dist](../../../../GeneralTopology/Gluing.lean/declarations/sum-dist.md) | 219 | `declaration-track:083d937d697e995fe117b273a42ce96e567b63e9677547b967e2d32f64dfd02f` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../GeneralTopology/Gluing.lean/declarations/sum-dist-eq-gluedist.md) | 226 | `result-track:0341bcf4732115b9688ed34333ce9889272caa59ce00ce238f2fa71c801f84cb` |
| 16 | `theorem` | [Sum.dist_comm](../../../../GeneralTopology/Gluing.lean/declarations/sum-dist-comm.md) | 233 | `result-track:9327e39e87d393e4d6cb1e08f287b5fbfeda2e1a04df8149837833853a15f3bb` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../GeneralTopology/Gluing.lean/declarations/sum-one-le-dist-inl-inr.md) | 236 | `result-track:90dbf23e04b365adda04fde99b2b9a765dd8d7f274a060f56a348220cddf238d` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../GeneralTopology/Gluing.lean/declarations/sum-one-le-dist-inr-inl.md) | 241 | `result-track:745fe7b68b7bcc6f0e811d36286bd1503daa6c31eb724dc82caa3cdd71a7d5d6` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../GeneralTopology/Gluing.lean/declarations/sum-mem-uniformity.md) | 245 | `result-track:e87a8bbd2f02434a4917ebc688617a287c346f326ae87785468e351c0ef72088` |
| 20 | `def` | [metricSpaceSum](../../../../GeneralTopology/Gluing.lean/declarations/metricspacesum.md) | 264 | `declaration-track:a0b38253b0f31e0c8d53f9404266bad56313ac12fe2e4147337c58b46a656b8c` |
| 21 | `theorem` | [Sum.dist_eq](../../../../GeneralTopology/Gluing.lean/declarations/sum-dist-eq.md) | 293 | `result-track:c8816660ec0ef8088fa670c51f0727e878f2adc51f2d8ffe35f89db5c8ee12b3` |
| 22 | `theorem` | [isometry_inl](../../../../GeneralTopology/Gluing.lean/declarations/isometry-inl.md) | 297 | `result-track:b2884bb9b882771ce612b7f1b4bb94d8b955de94356ae8ba03d0ec2a1d0bfe3c` |
| 23 | `theorem` | [isometry_inr](../../../../GeneralTopology/Gluing.lean/declarations/isometry-inr.md) | 302 | `result-track:70e09a74acbdfdb41deac5f87eae01bf01806996d966554c70035910a4d128a3` |
| 24 | `def` | [dist](../../../../GeneralTopology/Gluing.lean/declarations/dist.md) | 324 | `declaration-track:d4d83b3c0062e20a2e9d18bcf4d870cdb2a4b99a0f9ab5ca55ee43c4bea295f6` |
| 25 | `def` | [instDist](../../../../GeneralTopology/Gluing.lean/declarations/instdist.md) | 337 | `declaration-track:acdc5fc90456ab2a19f35c82dc7d688d9fbb04ed2a9e05d73eb3773753c86305` |
| 26 | `theorem` | [dist_same](../../../../GeneralTopology/Gluing.lean/declarations/dist-same.md) | 344 | `result-track:d650befc3cb0cc753d1cbf8697fea972ddff927bc20016898b33586dcc065761` |
| 27 | `theorem` | [dist_ne](../../../../GeneralTopology/Gluing.lean/declarations/dist-ne.md) | 349 | `result-track:b388555b473c53cb622816ae58c18b5f4ab26ba85252917f1fe2a40b425f5469` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../GeneralTopology/Gluing.lean/declarations/one-le-dist-of-ne.md) | 354 | `result-track:92e10c97b45797a7b2bdbcf6bf863049981505825d0c6e3ec978d9b383813adb` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../GeneralTopology/Gluing.lean/declarations/fst-eq-of-dist-lt-one.md) | 360 | `result-track:043c651545e7b367b66fad333ac80bcc9d8b8bd103df69adf3d7370e03407ca1` |
| 30 | `theorem` | [dist_triangle](../../../../GeneralTopology/Gluing.lean/declarations/dist-triangle.md) | 366 | `result-track:16a611bd6e19ccc7870c3a6be3f1665489d0ffdaa9ca2eb6dac221e07ff7e4f9` |
| 31 | `theorem` | [isOpen_iff](../../../../GeneralTopology/Gluing.lean/declarations/isopen-iff.md) | 398 | `result-track:740b993763d0070868aa292c7ebda0a16a2d30b2688a7caf8d984ae140cff805` |
| 32 | `def` | [metricSpace](../../../../GeneralTopology/Gluing.lean/declarations/metricspace.md) | 427 | `declaration-track:e059d0edf165f4d912498d8173dc15a647b6a13ba484e301d01f4a8a5d94e45d` |
| 33 | `theorem` | [isometry_mk](../../../../GeneralTopology/Gluing.lean/declarations/isometry-mk.md) | 453 | `result-track:317d75d27509be0373303396f5e90190d1aafb85803a931ef0a875bbc01f0165` |
| 34 | `theorem` | [completeSpace](../../../../GeneralTopology/Gluing.lean/declarations/completespace.md) | 458 | `result-track:9ea10d351b0c50b682a2c17523c51ed45123468d1e351f4fa09ef0cb232488d2` |
| 35 | `def` | [gluePremetric](../../../../GeneralTopology/Gluing.lean/declarations/gluepremetric.md) | 485 | `declaration-track:5d70251ca19a3d9a464cde6891904877a13a06399d5a187ee773db3925000f8e` |
| 36 | `def` | [GlueSpace](../../../../GeneralTopology/Gluing.lean/declarations/gluespace.md) | 495 | `declaration-track:4f1851763c240a84ebc2005f7cc628523bf23078b22dca7d6f8a9f843b979cb2` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/Gluing.lean/declarations/instance-source-edition-3.md) | 500 | `declaration-track:8c5424c42b97bb26931eaa3eccfbda3f78eb03c5eef60b96af4691b2711de1dd` |
| 38 | `def` | [toGlueL](../../../../GeneralTopology/Gluing.lean/declarations/togluel.md) | 505 | `declaration-track:65355dc33575ffdcf65c9064a3ea635b70520dccc1e8572cf3b8b24ff38c73b6` |
| 39 | `def` | [toGlueR](../../../../GeneralTopology/Gluing.lean/declarations/togluer.md) | 510 | `declaration-track:c183241a590edce08974ddf2ae351472992f8b6c3b0d5a32b07eedf185299ae0` |
| 40 | `instance` | [inhabitedLeft](../../../../GeneralTopology/Gluing.lean/declarations/inhabitedleft.md) | 514 | `declaration-track:45c6d557c3e6f28aca2e4f64ae63a656f40dc52ab0dcde59c4c459ef6436ad5f` |
| 41 | `instance` | [inhabitedRight](../../../../GeneralTopology/Gluing.lean/declarations/inhabitedright.md) | 519 | `declaration-track:311aaadfcdbe304ebc1246844a97c8706f3ee14e9cb982440090c0323e70e405` |
| 42 | `theorem` | [toGlue_commute](../../../../GeneralTopology/Gluing.lean/declarations/toglue-commute.md) | 524 | `result-track:6f869ed44990bee98d5cd568ec19d85542ef76173ce10b3a840ac2da367656da` |
| 43 | `theorem` | [toGlueL_isometry](../../../../GeneralTopology/Gluing.lean/declarations/togluel-isometry.md) | 534 | `result-track:e498dc53ca7ed39895f3b614765f1f45958b6c023090b052ef4a9141cf121cf0` |
| 44 | `theorem` | [toGlueR_isometry](../../../../GeneralTopology/Gluing.lean/declarations/togluer-isometry.md) | 538 | `result-track:a099de0148c80c8c003a51bbc0841945d4e507033ae5565e9faa1c917face561` |
| 45 | `def` | [inductiveLimitDist](../../../../GeneralTopology/Gluing.lean/declarations/inductivelimitdist.md) | 569 | `declaration-track:e7d502ed7afa91c0057c4e1ee39205d2f13abb26b1c12020d203b8be36f1fd67` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../GeneralTopology/Gluing.lean/declarations/inductivelimitdist-eq-dist.md) | 576 | `result-track:3bc95b384b280ae8ad4622bb6bcf733e1466a0da877c0098a3476d3be4e383bd` |
| 47 | `def` | [inductivePremetric](../../../../GeneralTopology/Gluing.lean/declarations/inductivepremetric.md) | 598 | `declaration-track:1eb860ac6d5bf9820f10d0850ce86895f3fb880ea94d79fd87c8e7159fde70ff` |
| 48 | `def` | [InductiveLimit](../../../../GeneralTopology/Gluing.lean/declarations/inductivelimit.md) | 627 | `declaration-track:94da0b2416b7deeb2e6e218c1107453c5745e8af8146940a1ccc78b582a97e1a` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/Gluing.lean/declarations/instance.md) | 631 | `declaration-track:17143d68dbbb4dbbc95b8b17c1c1b09e9f47d829f590ff64d750830865038e34` |
| 50 | `def` | [toInductiveLimit](../../../../GeneralTopology/Gluing.lean/declarations/toinductivelimit.md) | 636 | `declaration-track:24f98d8120528ec5560a9e418c62f0aae94ba3b9fdd088b783bb7450e3fd453d` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/Gluing.lean/declarations/instance-source-edition-2.md) | 640 | `declaration-track:49f1a7fdef6641d4d9f559ac8d449261f1811fe97024dd7470b0f5b317ce5e4d` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../GeneralTopology/Gluing.lean/declarations/toinductivelimit-isometry.md) | 644 | `result-track:fada2f249736f75f74277181d06223475059c0c622b9de0459b93ba93dcdcc1c` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../GeneralTopology/Gluing.lean/declarations/toinductivelimit-commute.md) | 653 | `result-track:6d3322ca5db7c5143145b1bf79ca6acd6562b8497d6fe449adbec257a6f81d41` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70d191ba6750fe990278c54eab0d224872c8a50f84c0c487d68d306d352f9c11 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Gluing/Variant1a2e4eec3f77d7817a4be9107ea27d514c8f41d5ea8d3278bcd6e1c9fb9085bd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
