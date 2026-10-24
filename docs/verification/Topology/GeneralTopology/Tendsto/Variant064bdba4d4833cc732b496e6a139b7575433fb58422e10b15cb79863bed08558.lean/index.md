# Verification target: GRWTSK.Topology.GeneralTopology.Tendsto.Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02cbee76447f54a768e22d0f005d2d25a6e68715",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02cbee76447f54a768e22d0f005d2d25a6e68715`.

Source path: `GRWTSK/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_def](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-def--34b190b4014391ad323d58b5.md) | 35 | `result-track:34b190b4014391ad323d58b566a32bd6f16a66d00f83acf70fd8a08eb6b1dcf2` |
| 2 | `theorem` | [tendsto_iff_eventually](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iff-eventually--222009236ec94a99c3efbaf6.md) | 39 | `result-track:222009236ec94a99c3efbaf6e893598355ab336e7f2a8752f19d16835ef8940d` |
| 3 | `theorem` | [tendsto_iff_forall_eventually_mem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iff-forall-eventually-mem--3470bb0fc26407923f1fa933.md) | 43 | `result-track:3470bb0fc26407923f1fa9338ff6e34b0bd96bfd6351d3041448d4e1c2e15ca4` |
| 4 | `lemma` | [Tendsto.eventually_mem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-eventually-mem--60bbd874507d3fa8633c6f92.md) | 47 | `result-track:60bbd874507d3fa8633c6f92dacd38b1b53c9403abfd68f892f8391167988cf6` |
| 5 | `theorem` | [Tendsto.eventually](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-eventually--26c1bd10114516cd2383862c.md) | 51 | `result-track:26c1bd10114516cd2383862c59309cbd08424228b4544a834010401accb13614` |
| 6 | `theorem` | [not_tendsto_iff_exists_frequently_notMem](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/not-tendsto-iff-exists-frequently-notmem--084a353a41cc81891ea28982.md) | 55 | `result-track:084a353a41cc81891ea289823763275c92fcdf3d7c68e6f4a94b36db77ca3991` |
| 7 | `theorem` | [Tendsto.frequently](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-frequently--54653d7760b798cb6d7a9bd8.md) | 62 | `result-track:54653d7760b798cb6d7a9bd8b1a6443f1102816cb248026dc91ce9bf17868cc1` |
| 8 | `theorem` | [Tendsto.frequently_map](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-frequently-map--ec5bddd8e81389a34bdb3646.md) | 66 | `result-track:ec5bddd8e81389a34bdb36463f67bfb6c1798f1ee4c29e609165d65927ec26f3` |
| 9 | `theorem` | [tendsto_bot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-bot--0acdbb204f13c90bc2eca3e8.md) | 72 | `result-track:0acdbb204f13c90bc2eca3e844c4d6852fc7c51a11670c232133faa3b1c48d40` |
| 10 | `theorem` | [Tendsto.of_neBot_imp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-of-nebot-imp--167e401544aaa23107327136.md) | 74 | `result-track:167e401544aaa2310732713638e2d6877712e3d7263f760613a5b6f13d8e69b6` |
| 11 | `theorem` | [tendsto_top](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-top--ccd4a7310246431ea76ed1ca.md) | 80 | `result-track:ccd4a7310246431ea76ed1cab01f519fdcf58599f19be1d9bf292a76b06b60ba` |
| 12 | `theorem` | [le_map_of_right_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/le-map-of-right-inverse--c65a4881d827db8ffb88c432.md) | 82 | `result-track:c65a4881d827db8ffb88c432d86defe34acfe18ac21775305dfa03140fac4956` |
| 13 | `theorem` | [tendsto_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-of-isempty--b2248cbd192a8e8921a31c07.md) | 87 | `result-track:b2248cbd192a8e8921a31c071f54db2adb135994978693d6e8213cbd2637e077` |
| 14 | `theorem` | [eventuallyEq_of_left_inv_of_right_inv](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/eventuallyeq-of-left-inv-of-right-inv--23a469de8bba451bb44f5ca6.md) | 90 | `result-track:23a469de8bba451bb44f5ca6330af984f4086fbf1e0057bd384077acd80108cc` |
| 15 | `theorem` | [tendsto_iff_comap](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iff-comap--15f069edcfeacb7575407016.md) | 95 | `result-track:15f069edcfeacb757540701622efb1283c7321575fbf38012f48030b39d06bcb` |
| 16 | `theorem` | [Tendsto.disjoint](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-disjoint--f1cd4b1f133a5d34343748c5.md) | 101 | `result-track:f1cd4b1f133a5d34343748c5b1553935aba35dc91ee346841e380457665b4481` |
| 17 | `theorem` | [tendsto_congr'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-congr--f3fbc68cdd451c36d5eaa702.md) | 105 | `result-track:f3fbc68cdd451c36d5eaa70238915f6b71b7ae0c4ff5ff672f44e8f7f8f7fc54` |
| 18 | `theorem` | [Tendsto.congr'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-congr--9c9da15b9d955fda5c41a3b4.md) | 108 | `result-track:9c9da15b9d955fda5c41a3b46c24b6a8fa6d7e98a23efd1115b269a5b72109cb` |
| 19 | `theorem` | [tendsto_congr](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-congr--01d2b963118990016be096a0.md) | 112 | `result-track:01d2b963118990016be096a0d9fffb3a6102f442c6373f0e9e9a6bee58c4901d` |
| 20 | `theorem` | [Tendsto.congr](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-congr--a2cbb37bfb24cfb902fa0de1.md) | 116 | `result-track:a2cbb37bfb24cfb902fa0de11ea9ca371aeedac209b5af76e16c150dfd6807c0` |
| 21 | `theorem` | [tendsto_id'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-id--f3935c41a9cc3de18357dd60.md) | 120 | `result-track:f3935c41a9cc3de18357dd60efe15a2ba033251b394cccff715da58484f2c8b2` |
| 22 | `theorem` | [tendsto_id](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-id--6c3dd9bb114fcacd711c4d43.md) | 123 | `result-track:6c3dd9bb114fcacd711c4d4381798f593ab8d511be7c9b406e6e7eca620c8525` |
| 23 | `theorem` | [Tendsto.comp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-comp--1bf5c0474ee664728de3b1ba.md) | 126 | `result-track:1bf5c0474ee664728de3b1bab42253794b39ae2997736067b0ee5895a33ab3a1` |
| 24 | `theorem` | [Tendsto.iterate](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iterate--69f3463e66bd6452b097cb17.md) | 129 | `result-track:69f3463e66bd6452b097cb1791cafb0ac3fe83c8cbd0ee12982c7bb7f1915964` |
| 25 | `theorem` | [Tendsto.mono_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-mono-left--b92ae8dba653455c637c31f3.md) | 134 | `result-track:b92ae8dba653455c637c31f339ea99e54249b91a5fb0d94d1c91b2def10eaecd` |
| 26 | `theorem` | [Tendsto.mono_right](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-mono-right--59f478615bddbd2bd82cd4cf.md) | 138 | `result-track:59f478615bddbd2bd82cd4cf28b4f8a2d356e5eeb09838ecac60322f3ed4e831` |
| 27 | `theorem` | [Tendsto.neBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-nebot--ed3450b5d66e7c9c12957483.md) | 142 | `result-track:ed3450b5d66e7c9c12957483fc67e5a2a8b986532f10b9d776b50216e9c5d5d2` |
| 28 | `theorem` | [tendsto_map](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-map--5a1903fe65b0933cbf3a40ee.md) | 146 | `result-track:5a1903fe65b0933cbf3a40eef4f7b8e16280976606dafd704bd69b196b6a57b1` |
| 29 | `theorem` | [tendsto_map'_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-map-iff--d9d053db2a1d74d42ba2e509.md) | 150 | `result-track:d9d053db2a1d74d42ba2e509703b1f8e6570d33f7e865527094e8ddde98a1a4e` |
| 30 | `theorem` | [tendsto_comap](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-comap--aaa7496b9c31cbbf939c16e7.md) | 156 | `result-track:aaa7496b9c31cbbf939c16e76e7a5078351f26141abaaa14d9c90e81309c23a5` |
| 31 | `theorem` | [tendsto_comap_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-comap-iff--ae77d73dbbd100a6116d1ff0.md) | 160 | `result-track:ae77d73dbbd100a6116d1ff0a57d2184aedab1f681aeff6a997a42b118aa26c9` |
| 32 | `theorem` | [tendsto_comap'_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-comap-iff--36088cf3c964e8e30d182b78.md) | 164 | `result-track:36088cf3c964e8e30d182b785015f76bef8b008ba714bd0b065062ad57a22c8a` |
| 33 | `theorem` | [Tendsto.of_tendsto_comp](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-of-tendsto-comp--96366e66e7535b902d7d5035.md) | 169 | `result-track:96366e66e7535b902d7d5035d5c28f624e621e4c98d301f3ff5fa4420c67047e` |
| 34 | `theorem` | [comap_eq_of_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/comap-eq-of-inverse--f8c1b338c254773923dcf28d.md) | 176 | `result-track:f8c1b338c254773923dcf28d5037cf8aba1c0a4aaec6fd832bce3aced45ac239` |
| 35 | `theorem` | [map_eq_of_inverse](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/map-eq-of-inverse--552d953436e429e1a205b3a8.md) | 181 | `result-track:552d953436e429e1a205b3a89155f096c943cdeaafd2b49934e5306193c696df` |
| 36 | `theorem` | [tendsto_inf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-inf--0fd3c4521b390256d2708862.md) | 186 | `result-track:0fd3c4521b390256d27088627ff965dbce70b446e09c4d74d9fcad676730fa4c` |
| 37 | `theorem` | [tendsto_inf_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-inf-left--7a5ef5e429b69f980c784ee0.md) | 190 | `result-track:7a5ef5e429b69f980c784ee06bb4c09d4e62db9a53cdcbc9030444f1a1716a68` |
| 38 | `theorem` | [tendsto_inf_right](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-inf-right--631abecd2c6f5b7bc5e8de02.md) | 194 | `result-track:631abecd2c6f5b7bc5e8de02e7ad40b6a384dd114f132f156066130608006d3e` |
| 39 | `theorem` | [Tendsto.inf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-inf--b5ed0af9bbbe1fef64dfda43.md) | 198 | `result-track:b5ed0af9bbbe1fef64dfda43642a5981ca6baa120b8491c293ebb7edaca17365` |
| 40 | `theorem` | [tendsto_iInf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iinf--4684ee1d2eae1e7e445b278c.md) | 203 | `result-track:4684ee1d2eae1e7e445b278ccb943d8c4d2f0b46a74a207e7ee527c6d74e7598` |
| 41 | `theorem` | [tendsto_iInf'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iinf--090a8c8965d1070793356ba9.md) | 207 | `result-track:090a8c8965d1070793356ba956638b99fc984a8a845c94d4960562c550cfedcf` |
| 42 | `theorem` | [tendsto_iInf_iInf](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-iinf-iinf--30bef0bcad7edf1aac00cd29.md) | 211 | `result-track:30bef0bcad7edf1aac00cd294ea642f2637028bb3aab6a650af82ffef249edf5` |
| 43 | `theorem` | [tendsto_sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-sup--10a80fe2a515192e43ceba0a.md) | 216 | `result-track:10a80fe2a515192e43ceba0ae6c53b73eae7c868d5380e713a8c9f9f9730e272` |
| 44 | `theorem` | [Tendsto.sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-sup--93f88defab50806e8643c1e1.md) | 220 | `result-track:93f88defab50806e8643c1e1839654a13e9ebd315072736899708ef1cceff186` |
| 45 | `theorem` | [Tendsto.sup_sup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-sup-sup--f11a7531a9923bf8675424df.md) | 223 | `result-track:f11a7531a9923bf8675424df7ca9007d7d60b9f5e95a68daf6ee1a1f47dca395` |
| 46 | `theorem` | [tendsto_iSup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-isup--d7a7fa013f47cc4071216f78.md) | 228 | `result-track:d7a7fa013f47cc4071216f78a3d8c403c1c292ee73e996d38437764e79eff3cc` |
| 47 | `theorem` | [tendsto_iSup_iSup](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-isup-isup--c07a112907035ea292b8837a.md) | 231 | `result-track:c07a112907035ea292b8837af08e16153d31eead656a4ec8dbc7a6f73a78d5be` |
| 48 | `theorem` | [tendsto_principal](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-principal--354358841262418f36257ac5.md) | 235 | `result-track:354358841262418f36257ac52efacdfcfc2592c3d78b82a170e10148a3cd3123` |
| 49 | `theorem` | [tendsto_principal_principal](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-principal-principal--739cbd60dcbd847c94a0a673.md) | 239 | `result-track:739cbd60dcbd847c94a0a673860bfe6ea6cc0e34ff4cbf8950f2261311876208` |
| 50 | `theorem` | [tendsto_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-pure--9a42fb451c4f5bc5a1733d4a.md) | 243 | `result-track:9a42fb451c4f5bc5a1733d4aa76510725c9efeac01a2f0adba6deba5dad125f9` |
| 51 | `theorem` | [tendsto_pure_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-pure-pure--72ec93f832f0a7b49f8858ee.md) | 247 | `result-track:72ec93f832f0a7b49f8858ee9acd9c93edb79ff5dfa7ddc83dc55157a6ac012b` |
| 52 | `theorem` | [tendsto_const_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-const-pure--94310e5fdee1b555af3251fb.md) | 250 | `result-track:94310e5fdee1b555af3251fb413f2292051f9b2c72f6be5436cbf454b12de257` |
| 53 | `theorem` | [pure_le_iff](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/pure-le-iff--6221118804d65b3fa536ffda.md) | 253 | `result-track:6221118804d65b3fa536ffda8e317a7e1c597f5cd84f470d48f10637b423f4ef` |
| 54 | `theorem` | [tendsto_pure_left](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-pure-left--5268fd4135bc33d7555106fa.md) | 256 | `result-track:5268fd4135bc33d7555106fa48a2d9a04e77b255e0802eb201aa9a94fe683bde` |
| 55 | `theorem` | [map_inf_principal_preimage](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/map-inf-principal-preimage--0b2e1d8afd11ddab703cc1ae.md) | 261 | `result-track:0b2e1d8afd11ddab703cc1aeb1320db90f572a3a4d8845e735dfdf88555812f7` |
| 56 | `theorem` | [Tendsto.not_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-not-tendsto--9b9a41dd2422f34818d8d5c2.md) | 267 | `result-track:9b9a41dd2422f34818d8d5c2baa27fe78e0bfc5aa9434d7111ddea319e96ce13` |
| 57 | `theorem` | [Tendsto.if](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-if--15424a85f05237f87a1b9429.md) | 271 | `result-track:15424a85f05237f87a1b9429cecd453ce03eecb0133ab4e6d50fa978dd35cba2` |
| 58 | `theorem` | [Tendsto.if'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-if--d2820aba8e39851f8522f5da.md) | 282 | `result-track:d2820aba8e39851f8522f5da850d92bc0645f549d01b2005828460f216f6d7a6` |
| 59 | `theorem` | [Tendsto.piecewise](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/tendsto-piecewise--623ac69898c654e8d9e7a221.md) | 287 | `result-track:623ac69898c654e8d9e7a221a6922a0ed357d921f40ac9aae5bff4cac06d6401` |
| 60 | `theorem` | [Set.MapsTo.tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/set-mapsto-tendsto--420dc10e0fced0dd1a35a4b7.md) | 294 | `result-track:420dc10e0fced0dd1a35a4b73c04955ef5f53d41c13826fb07a300e3893422cc` |
| 61 | `theorem` | [Filter.EventuallyEq.comp_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/filter-eventuallyeq-comp-tendsto--867201928f2cfd04a63dcadb.md) | 298 | `result-track:867201928f2cfd04a63dcadba7470879568c5fdba82df3245b696ceba3390854` |
| 62 | `theorem` | [Filter.map_mapsTo_Iic_iff_tendsto](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/filter-map-mapsto-iic-iff-tendsto--ee58d9fa3d40f48a7b33cd92.md) | 305 | `result-track:ee58d9fa3d40f48a7b33cd921c56d256e8976b72a39b4ec45d9af22ead1d10e5` |
| 63 | `theorem` | [Filter.map_mapsTo_Iic_iff_mapsTo](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variant064bdba4d4833cc732b496e6a139b7575433fb58422e10b15cb79863bed08558.lean/declarations/filter-map-mapsto-iic-iff-mapsto--08b237217f5930e6dd5d0b1c.md) | 311 | `result-track:08b237217f5930e6dd5d0b1cd156d57e73b6e13b921e9d6bc06eef243ff3d2e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
