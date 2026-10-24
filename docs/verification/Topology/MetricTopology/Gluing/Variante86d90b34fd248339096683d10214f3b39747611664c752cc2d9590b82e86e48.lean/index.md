# Verification target: GRWTSK.Topology.MetricTopology.Gluing.Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8df2793c74dfe8c10bfddab6d9d775ee303e5ee2",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8df2793c74dfe8c10bfddab6d9d775ee303e5ee2`.

Source path: `GRWTSK/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist--0d8ea55818112f52e6886e2b.md) | 72 | `declaration-track:0d8ea55818112f52e6886e2b83394c0c49034f0141becb1de868945c957c0f6c` |
| 2 | `theorem` | [glueDist_self](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-self--7a845c9d325396c950d9c23c.md) | 78 | `result-track:7a845c9d325396c950d9c23cc0faa7ca4c90ffe0842816c5159858390a80de0a` |
| 3 | `theorem` | [glueDist_glued_points](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-glued-points--1d2850e41f229f13f8301149.md) | 82 | `result-track:1d2850e41f229f13f83011490d58c27122762d9c3294b05787f9d7a5d1e62d27` |
| 4 | `theorem` | [glueDist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-comm--bd2ef2c03d4cf900721dddc1.md) | 92 | `result-track:bd2ef2c03d4cf900721dddc12e81d57409c7ba83b7bceb02451d134179b4bd38` |
| 5 | `theorem` | [glueDist_swap](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-swap--e5ae0521d45bdcfa4a450b12.md) | 99 | `result-track:e5ae0521d45bdcfa4a450b12d7bc6ffe4cf2f6e763d57cc480c654bf1a02fa48` |
| 6 | `theorem` | [le_glueDist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/le-gluedist-inl-inr--51ab4f5faed122b6b444e3ab.md) | 106 | `result-track:51ab4f5faed122b6b444e3abbdf6fde30b8eb25ab5327c672c98fc94066a2bb0` |
| 7 | `theorem` | [le_glueDist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/le-gluedist-inr-inl--7167efaaa3a9bc8873070335.md) | 110 | `result-track:7167efaaa3a9bc8873070335a509dc7c6d8748efc6a15494b221b8a9c9b57278` |
| 8 | `theorem` | [glueDist_triangle_inl_inr_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-triangle-inl-inr-inr--76174aec6ae4113d660ab929.md) | 117 | `result-track:76174aec6ae4113d660ab92901d754f7f831f73b6d9178a895c18395bbe688aa` |
| 9 | `theorem` | [glueDist_triangle_inl_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-triangle-inl-inr-inl--ceefb7f50e9cd43a7f2d8db7.md) | 126 | `result-track:ceefb7f50e9cd43a7f2d8db799ab42541efd09012fe2061a6bb251f263020d3d` |
| 10 | `theorem` | [glueDist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluedist-triangle--d16a937930b9489efeaadbd6.md) | 137 | `result-track:d16a937930b9489efeaadbd61fd6ff52987a6e497f0eb0f038c8c922dbb34839` |
| 11 | `theorem` | [eq_of_glueDist_eq_zero](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/eq-of-gluedist-eq-zero--4684a344299e10b6caefec62.md) | 159 | `result-track:4684a344299e10b6caefec62cb1fd78862b182ce4beac44f93b8f6ef93d822c6` |
| 12 | `theorem` | [Sum.mem_uniformity_iff_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-mem-uniformity-iff-gluedist--1cda280ce0cbb08c4df331ee.md) | 166 | `result-track:1cda280ce0cbb08c4df331ee3ffeb1abdc6b2177eb404cca44d1a8ced3a3e59e` |
| 13 | `def` | [glueMetricApprox](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluemetricapprox--2974e0203b9fc66979c2c28a.md) | 184 | `declaration-track:2974e0203b9fc66979c2c28a437ce26023c27cb7f88c22dfca29677aab466819` |
| 14 | `def` | [Sum.dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-dist--fcca826ac3c5d03ef75ea7b0.md) | 219 | `declaration-track:fcca826ac3c5d03ef75ea7b006cb949d454665dc3d2011450919d3f881d2b4f2` |
| 15 | `theorem` | [Sum.dist_eq_glueDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-dist-eq-gluedist--8b3f5edfd4dee3feb0e74ef0.md) | 225 | `result-track:8b3f5edfd4dee3feb0e74ef0e86291420434f71de9035cdc5f9319d532a84135` |
| 16 | `theorem` | [Sum.dist_comm](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-dist-comm--b02676f31a9122a834d9f782.md) | 231 | `result-track:b02676f31a9122a834d9f7823ac05d3692aba0eb86475c7114ccb504c0d8a669` |
| 17 | `theorem` | [Sum.one_le_dist_inl_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-one-le-dist-inl-inr--75c6b9e4c653a8162e84fef4.md) | 234 | `result-track:75c6b9e4c653a8162e84fef4c832bae8ce17a68e0e03505684426f42eb79d81b` |
| 18 | `theorem` | [Sum.one_le_dist_inr_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-one-le-dist-inr-inl--1747e842ea8173ac2e314e9e.md) | 238 | `result-track:1747e842ea8173ac2e314e9e531c1f93acf5b31e99a54572fc52a32e792f1363` |
| 19 | `theorem` | [Sum.mem_uniformity](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-mem-uniformity--7f6fb753bee4026cde6f40a8.md) | 241 | `result-track:7f6fb753bee4026cde6f40a8a7ec6c79f6e9341ab6d37a92ad715cbd696895eb` |
| 20 | `def` | [metricSpaceSum](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/metricspacesum--2da2a3a381c656a378070582.md) | 259 | `declaration-track:2da2a3a381c656a378070582e96e85d2c7948d468be1d75473bd8400d900053d` |
| 21 | `theorem` | [Sum.dist_eq](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/sum-dist-eq--e922fb3dbfdbe4ccba670b77.md) | 286 | `result-track:e922fb3dbfdbe4ccba670b77f9c87dae1ea4caf3b849a89650654db8ad83cb88` |
| 22 | `theorem` | [isometry_inl](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/isometry-inl--45019d437b38f07e0fbf0b49.md) | 289 | `result-track:45019d437b38f07e0fbf0b49807a9e93ecaf668aac268a60282a0a14cf890c49` |
| 23 | `theorem` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/isometry-inr--93267f8b9667c425334d41ff.md) | 293 | `result-track:93267f8b9667c425334d41ff3b37664a5dc7238911a7634c014181ee3d6b0a80` |
| 24 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/dist--6a4ecc3c47e1253db36537e2.md) | 313 | `declaration-track:6a4ecc3c47e1253db36537e2238b1167830f1d9f4a7608e345e032a25a296f4c` |
| 25 | `def` | [instDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/instdist--b50d849111762342eeeb0c56.md) | 325 | `declaration-track:b50d849111762342eeeb0c56788cd8623e5c68ab755623fe8d93ad46b0f12836` |
| 26 | `theorem` | [dist_same](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/dist-same--834d575a4f168e05083ea9e4.md) | 331 | `result-track:834d575a4f168e05083ea9e4e7cdc7c775b2b8abd336c9a989a99324b8d5cff0` |
| 27 | `theorem` | [dist_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/dist-ne--8407d2820f601f5b933a1eb9.md) | 335 | `result-track:8407d2820f601f5b933a1eb921040fdce0079d4042a8c148f89ef069e582280c` |
| 28 | `theorem` | [one_le_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/one-le-dist-of-ne--8e75db5ef0ec0bddb3fe5868.md) | 339 | `result-track:8e75db5ef0ec0bddb3fe58683490dff1d83cefc37a85e1f7e573003108e03639` |
| 29 | `theorem` | [fst_eq_of_dist_lt_one](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/fst-eq-of-dist-lt-one--8c52d8be126a8dc12a874aeb.md) | 344 | `result-track:8c52d8be126a8dc12a874aebc5cdcb2078d03c45d4fe4d28329d8323e21ebca6` |
| 30 | `theorem` | [dist_triangle](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/dist-triangle--99467009d26849210110d175.md) | 349 | `result-track:99467009d26849210110d17559fc2bf4915a49a85cebb41b4dcd149d3368c11b` |
| 31 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/isopen-iff--63aeb2dae7ae9852dcf2ca21.md) | 380 | `result-track:63aeb2dae7ae9852dcf2ca21fd1dbac6e87a6bb7db7754c7842d565e484493df` |
| 32 | `def` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/metricspace--152306de90f6a3921a6a0e2f.md) | 408 | `declaration-track:152306de90f6a3921a6a0e2fa847dd81e62bf82399a7b9d5d986089658e3844a` |
| 33 | `theorem` | [isometry_mk](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/isometry-mk--0dd280d6367c410f70f78ccf.md) | 433 | `result-track:0dd280d6367c410f70f78ccf6bbc1da089c522144a64f969c249d7fd01e96e01` |
| 34 | `theorem` | [completeSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/completespace--c898e0050b53ed717f218ac1.md) | 437 | `result-track:c898e0050b53ed717f218ac13dd58499f07c93e6e2edcefa73351a5d40f9104b` |
| 35 | `def` | [gluePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluepremetric--9f9cad3d0ca0f823f2115a47.md) | 460 | `declaration-track:9f9cad3d0ca0f823f2115a473c96345be83abdac4fec15332a47aca52f813468` |
| 36 | `def` | [GlueSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/gluespace--0007ab1d38f9f8b0831814fd.md) | 468 | `declaration-track:0007ab1d38f9f8b0831814fdfa5745130a5acdf198a84a97d3efa3d60dba18ef` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/instance--e1fadf911ac6990d219ec6a5.md) | 471 | `declaration-track:e1fadf911ac6990d219ec6a55f63c1fe8260cbecb288fd4c8848969d164c88eb` |
| 38 | `def` | [toGlueL](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/togluel--65338a3f6dc6067a24f79f99.md) | 476 | `declaration-track:65338a3f6dc6067a24f79f9944961131252afe4131c07d2440f1f0e6818665f2` |
| 39 | `def` | [toGlueR](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/togluer--78dc18a7cc712d2913d5490f.md) | 480 | `declaration-track:78dc18a7cc712d2913d5490ffbbc54bdeb1422e0d99c4846e2afd901d4577354` |
| 40 | `instance` | [inhabitedLeft](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inhabitedleft--fa152c59db38188ae5ccba50.md) | 483 | `declaration-track:fa152c59db38188ae5ccba50a0c1f8e5f8d613dc901f01571fff3a0a25076dc3` |
| 41 | `instance` | [inhabitedRight](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inhabitedright--ad45eda714b1f247b450aa8a.md) | 487 | `declaration-track:ad45eda714b1f247b450aa8a573dc7c74cfbee6d0b5c4a745099bd78debb3aee` |
| 42 | `theorem` | [toGlue_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/toglue-commute--fa4218753805a1e9c9412a38.md) | 491 | `result-track:fa4218753805a1e9c9412a38081008019bb9184bdd274355eefad4ec502eb7e0` |
| 43 | `theorem` | [toGlueL_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/togluel-isometry--df92c67451579e569f29510d.md) | 500 | `result-track:df92c67451579e569f29510dc56af788e0e4910dd96af866be1ac961a8f9540c` |
| 44 | `theorem` | [toGlueR_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/togluer-isometry--c90ef1561fe2ebc0d7a1361c.md) | 503 | `result-track:c90ef1561fe2ebc0d7a1361cf3941dc3f4ffb1bd9f4f1bc7b6382d8a8f82516b` |
| 45 | `def` | [inductiveLimitDist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inductivelimitdist--a95e830bc45834eddecb9398.md) | 532 | `declaration-track:a95e830bc45834eddecb9398c702837296f85a2905a964f0ed0f9114e32e95d1` |
| 46 | `theorem` | [inductiveLimitDist_eq_dist](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inductivelimitdist-eq-dist--349d8cc7a2bfcfb0a2f6f8db.md) | 538 | `result-track:349d8cc7a2bfcfb0a2f6f8db762e87ec8da7bbaabbd964e7c520c3b27be432e0` |
| 47 | `def` | [inductivePremetric](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inductivepremetric--8d23b39b91a2786edf041ecf.md) | 559 | `declaration-track:8d23b39b91a2786edf041ecf83a7eb07fc991dff1f59539dfd359e0dc7102494` |
| 48 | `def` | [InductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/inductivelimit--9c1255b3c4950e65513b22cf.md) | 585 | `declaration-track:9c1255b3c4950e65513b22cf2358af2004cec151b5c5cbd017acadf4d8470576` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/instance--87d92a24dfb2a9d50598bf16.md) | 588 | `declaration-track:87d92a24dfb2a9d50598bf168a2a0165e4a98b8b6c46b053c2d6648b3da90f5a` |
| 50 | `def` | [toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/toinductivelimit--da4303fb786cb2803de0b31a.md) | 593 | `declaration-track:da4303fb786cb2803de0b31a7795ab312f2be2af6b811ac13a8818da6df7e35d` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/instance--a0b1c58f2bd45938e15a5ab4.md) | 596 | `declaration-track:a0b1c58f2bd45938e15a5ab472859be4a920df09e0253f73e612752b8dc658b3` |
| 52 | `theorem` | [toInductiveLimit_isometry](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/toinductivelimit-isometry--68b7ae0fe2f9101010590941.md) | 600 | `result-track:68b7ae0fe2f91010105909418f50f6604792b8bf41ce4abb136c526839487fae` |
| 53 | `theorem` | [toInductiveLimit_commute](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/toinductivelimit-commute--d06025ee9ce061af90cbaea4.md) | 608 | `result-track:d06025ee9ce061af90cbaea429aac2521528e228197922b3f958884a7972b563` |
| 54 | `theorem` | [dense_iUnion_range_toInductiveLimit](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/dense-iunion-range-toinductivelimit--77efed7ab4efeb26ecea96e9.md) | 620 | `result-track:77efed7ab4efeb26ecea96e9a52aec0ae273929d33112aa8abc76391d71756bf` |
| 55 | `theorem` | [separableSpaceInductiveLimit_of_separableSpace](../../../../../mathematics/Topology/MetricTopology/Gluing/Variante86d90b34fd248339096683d10214f3b39747611664c752cc2d9590b82e86e48.lean/declarations/separablespaceinductivelimit-of-separablespace--7dfd76aca62feee05b11afd3.md) | 629 | `result-track:7dfd76aca62feee05b11afd3111761f1943ed009ed8cd6471376d4835511d3cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
