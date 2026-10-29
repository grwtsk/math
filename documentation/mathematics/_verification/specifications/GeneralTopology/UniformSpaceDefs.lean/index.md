# Verification target: Uniform Space Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6896ce14cc551b0ec0fbf023ee7f088ec1477499",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceDefs.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6896ce14cc551b0ec0fbf023ee7f088ec1477499`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/idrel.md) | 121 | `declaration-track:ce2a1e5e85dfa0a3b5ea2cce08152116b92e77a4c860e6bb967f8975cc2abdab` |
| 2 | `theorem` | [mem_idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-idrel.md) | 125 | `result-track:e182d90c7ad659356dd7f31c1e82692421c3168918e89c34dd1b5c133393020c` |
| 3 | `theorem` | [idRel_subset](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/idrel-subset.md) | 129 | `result-track:085f7cb683baf234b67081a0b6dbdb668b70a70a84a7d1218e2a87b77dcba188` |
| 4 | `theorem` | [eq_singleton_left_of_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/eq-singleton-left-of-prod-subset-idrel.md) | 132 | `result-track:4aaac7c19564f0bb74da7c250890348d1e1c5a4a6f3e8a54fe5c4fd703031839` |
| 5 | `theorem` | [eq_singleton_right_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/eq-singleton-right-prod-subset-idrel.md) | 142 | `result-track:7769daf95d51d5a6bbb597b60595e57e719e340373e128332504202d2bc2f6e5` |
| 6 | `theorem` | [eq_singleton_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/eq-singleton-prod-subset-idrel.md) | 148 | `result-track:59a9613936836769517d742751b7e31f38ba3d95f2d289fd61e531b69e3a1929` |
| 7 | `def` | [compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comprel.md) | 158 | `declaration-track:a7a1f787d0295daa3ffba5753aaffe1c3b683a7f96728f8bd7d08368a6031159` |
| 8 | `theorem` | [mem_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-comprel.md) | 166 | `result-track:69c63596e605e415b8b24a591caf606fa9c16ac46c67172a8af02e3309596436` |
| 9 | `theorem` | [swap_idRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/swap-idrel.md) | 171 | `result-track:a12c357a1d536badbf734349d712cfa20b1f829ce5150cd0d94da0a7ac7bc3ec` |
| 10 | `theorem` | [Monotone.compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/monotone-comprel.md) | 174 | `result-track:71499727168f354bc12fa759fd8abb6bdf15f47ea48c7f6cb78a89516bedbe89` |
| 11 | `theorem` | [compRel_mono](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comprel-mono.md) | 178 | `result-track:30dd13a7572e8f0309a4fae54039a034fab0fea6248560f295f1928cbbf5f3b9` |
| 12 | `theorem` | [prodMk_mem_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/prodmk-mem-comprel.md) | 181 | `result-track:3b39cea7f7878270f727c4e63e01945e8339f92b5456c4909588ebe1a819ade0` |
| 13 | `theorem` | [id_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/id-comprel.md) | 189 | `result-track:de11e9a1151d0d129906afb4e34d24142a2f7bd7a4bddb05854befe4f1804eca` |
| 14 | `theorem` | [compRel_assoc](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comprel-assoc.md) | 192 | `result-track:7b8486b8c3c0200fbf69a5fb7e5144916cfc474ba6b65bc36bee411316fce790` |
| 15 | `theorem` | [left_subset_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/left-subset-comprel.md) | 195 | `result-track:507d8382a8b18d4ce69e49566b4a69d92d73303b8f89143be55910db54a37320` |
| 16 | `theorem` | [right_subset_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/right-subset-comprel.md) | 198 | `result-track:4693102f0707611b0e4af4f12bf5358745454b8866ed28e28b756077c8d6f5ed` |
| 17 | `theorem` | [subset_comp_self](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/subset-comp-self.md) | 201 | `result-track:e7e412c29a7fbf73f0daa220f93852198ceffc4287a1a23c487dcc42f38ddb8b` |
| 18 | `theorem` | [subset_iterate_compRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/subset-iterate-comprel.md) | 204 | `result-track:4e3ac06a06d1c971b48986e1a2dd62195fb357092641679f8006cfdd5adbf5c6` |
| 19 | `def` | [IsSymmetricRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel.md) | 211 | `declaration-track:52c4ef46e80a0668a7dde0cbf9cb0b87baee6ed9e28117c3635af6bf4f911a9e` |
| 20 | `def` | [symmetrizeRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symmetrizerel.md) | 218 | `declaration-track:2c2378dea8232da4a93018afbcd018c97b4d2cf92a26e4807e32b001273a9a63` |
| 21 | `theorem` | [symmetric_symmetrizeRel](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symmetric-symmetrizerel.md) | 221 | `result-track:339527fbbc21d716fad0805f80839adfe70cb081e8f421cca307c66f47a70d54` |
| 22 | `theorem` | [symmetrizeRel_subset_self](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symmetrizerel-subset-self.md) | 224 | `result-track:e30100253e82c89192891135a07538ceaf524340ae9e5e57d66b52904936ee8d` |
| 23 | `theorem` | [symmetrize_mono](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symmetrize-mono.md) | 228 | `result-track:781a8e55ea8a2569aa592e629838905b9e4234ce5038fe69f087cadfdbc76663` |
| 24 | `theorem` | [IsSymmetricRel.mk_mem_comm](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-mk-mem-comm.md) | 231 | `result-track:5678aeab90623d425df58caf025ee89dde26cc835f4bc17f8e93d5a1884ae981` |
| 25 | `theorem` | [IsSymmetricRel.eq](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-eq.md) | 238 | `result-track:e1c469961ef42c6bb84ed206970e611235040ac7c3c07b6baeb4154176e23b8e` |
| 26 | `theorem` | [IsSymmetricRel.inter](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-inter.md) | 244 | `result-track:cd3370b353abc8b12fc12d8f32354cd965dbd7fe2e22f4525d7452c7e229c048` |
| 27 | `theorem` | [IsSymmetricRel.iInter](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-iinter.md) | 250 | `result-track:ea08f4929626fb7963882056259ad9720a6522b893c02ac2fb045d505c4256ed` |
| 28 | `lemma` | [IsSymmetricRel.sInter](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-sinter.md) | 254 | `result-track:c24b211c4f73cff6a00d8c1f16d46320282a2d370825ef9b1a36a62ee63ccb33` |
| 29 | `lemma` | [IsSymmetricRel.preimage_prodMap](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/issymmetricrel-preimage-prodmap.md) | 259 | `result-track:0a34a3e2fde4c1d878ca4d600295e88000f3b8535e557e75e273ef4bc6179ff0` |
| 30 | `structure` | [UniformSpace.Core](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core.md) | 265 | `declaration-track:6b73ecc3e34774a8762b15c6fca23889c5b267503c7c5fdcd13ce557094fdc9c` |
| 31 | `theorem` | [UniformSpace.Core.comp_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-comp-mem-uniformity-sets.md) | 276 | `result-track:353a91274e6232af5d27bf85da55a7f4c3624d5286b99aafc8738ddd006cc48e` |
| 32 | `def` | [UniformSpace.Core.mk'](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-mk.md) | 282 | `declaration-track:0b022c56c36c4e58e0815709607564b7777a32fa4d80911c101786c37aeb66c0` |
| 33 | `def` | [UniformSpace.Core.mkOfBasis](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-mkofbasis.md) | 290 | `declaration-track:45e77f2c06fe8cf55a1d67c40dd4aa703e9cb4de3a17403237ac550775c18687` |
| 34 | `def` | [UniformSpace.Core.toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-totopologicalspace.md) | 300 | `declaration-track:c84b917075043fda81760a668dc86f254aa6cc60be78c05711d16f2d139fd89f` |
| 35 | `theorem` | [UniformSpace.Core.ext](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-ext.md) | 304 | `result-track:acbddc53f1c58778f714ba6e933a8d3d3ac8a349994c41617e9ac931579c355a` |
| 36 | `theorem` | [UniformSpace.Core.nhds_toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-core-nhds-totopologicalspace.md) | 308 | `result-track:179322c47148beec898b13ddaa4b931f3de68d1e1901db2fa249e2698ace9a35` |
| 37 | `class` | [UniformSpace](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace.md) | 327 | `declaration-track:8559087ee353bdce489fa63e8030efe5b0151d01703ead041125643d4a3647c6` |
| 38 | `def` | [uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity.md) | 340 | `declaration-track:54494fc92fd87d26190899f35057dd335d7e229cc71db7d6a68b7f80e4fafab8` |
| 39 | `abbrev` | [UniformSpace.ofCoreEq](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ofcoreeq.md) | 351 | `declaration-track:53fa8025e50882d54e0de21631af6e8ac3fffa9522a59263bbc08d4ef960c11f` |
| 40 | `abbrev` | [UniformSpace.ofCore](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ofcore.md) | 358 | `declaration-track:108726a3e51e5dee27bc71f14154ce41b75dda320238eda68b2df393db717aff` |
| 41 | `abbrev` | [UniformSpace.toCore](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-tocore.md) | 362 | `declaration-track:d893da1d2d9530b2e42fa260bc519f136c18d8742c041d06635170714d12d432` |
| 42 | `theorem` | [UniformSpace.toCore_toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-tocore-totopologicalspace.md) | 371 | `result-track:d21a02b7e717e5a368f253cc1d01e680b0d11ec013c81e6c9e7d8f82024c9c12` |
| 43 | `lemma` | [UniformSpace.mem_uniformity_ofCore_iff](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-mem-uniformity-ofcore-iff.md) | 376 | `result-track:750e88641066a2bae996c53d2af50e98edb7e5661a58ec153c23b0bede6db403` |
| 44 | `theorem` | [UniformSpace.ext](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ext.md) | 381 | `result-track:e19ccd4b00b2aa0bb6a239eba92aa5a6f4da532a1a54d5a88bebb561fabf0a2c` |
| 45 | `theorem` | [UniformSpace.ext_iff](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ext-iff.md) | 387 | `result-track:3c8456575817d445a7022e800d82ef061c8e8c3c994fa6772e45ebb1dadb0392` |
| 46 | `theorem` | [UniformSpace.ofCoreEq_toCore](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ofcoreeq-tocore.md) | 391 | `result-track:29ff62ef26509562d170ddf008373cbc170515a2d907f913be679692ab150935` |
| 47 | `abbrev` | [UniformSpace.replaceTopology](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-replacetopology.md) | 397 | `declaration-track:1feef37045b7b22230d2497f8707edea6e9c83aedd91891e9f4c2884093ba856` |
| 48 | `theorem` | [UniformSpace.replaceTopology_eq](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-replacetopology-eq.md) | 403 | `result-track:30bd50e096b1812c0b36dd6640ee3a74f4a2b6814f780a735eea9a9b75b4f7a5` |
| 49 | `theorem` | [nhds_eq_comap_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-eq-comap-uniformity-source-edition-2.md) | 411 | `result-track:f070412d96e72696756c50b24ce4f51dbee53e4b25f944ef6e06dac49b6fc947` |
| 50 | `theorem` | [isOpen_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/isopen-uniformity.md) | 414 | `result-track:d3ff99432bc7f56f85d019446c8616613b56227123f2022bec0166a0f23801b8` |
| 51 | `theorem` | [refl_le_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/refl-le-uniformity.md) | 418 | `result-track:d89ea69483b2352366961249f5cb54e259db1363d3b60f2cb0c7a45c34217324` |
| 52 | `instance` | [uniformity.neBot](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity-nebot.md) | 421 | `declaration-track:34d99ed91c3d71d35e8ee74595fb33a448fec07ce3eeecf8f0c6c66e05b3acb4` |
| 53 | `theorem` | [refl_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/refl-mem-uniformity.md) | 424 | `result-track:7aa6ab8feb78feb96c04e2d1aa68d6063a0ed7ec11276d78637cf61b0f8790d9` |
| 54 | `theorem` | [mem_uniformity_of_eq](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-uniformity-of-eq.md) | 427 | `result-track:83d8f3941db0d404d1e0db9880fab728eeec6fd5a5a88b86c0df3715f2ad3fdd` |
| 55 | `theorem` | [symm_le_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symm-le-uniformity.md) | 430 | `result-track:adcd885df13ec49e065dfd2809af20ad75a59253c580467117db371e49009f18` |
| 56 | `theorem` | [comp_le_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-le-uniformity.md) | 433 | `result-track:feb5e136abdb7f26c1a1cc39c6729afda498bf0ba6d3131c665c989c71c4b91b` |
| 57 | `theorem` | [lift'_comp_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/lift-comp-uniformity.md) | 436 | `result-track:4e558295f0664a318717ea4a3f992266bf90db666072211881236cdd0794a380` |
| 58 | `theorem` | [tendsto_swap_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/tendsto-swap-uniformity.md) | 440 | `result-track:e8a10f2838186aba7bceb7e54e727ab92b2e810ec4dee52dd44c848b4f5a2f78` |
| 59 | `theorem` | [comp_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-mem-uniformity-sets.md) | 443 | `result-track:c958995577164fc8b170af93707bd5c9da2476e334653d9942280d267064e660` |
| 60 | `theorem` | [Filter.Tendsto.uniformity_trans](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/filter-tendsto-uniformity-trans.md) | 447 | `result-track:25c9b6b26e21e57d4cec3c724e4da2f0af9db337bb476de81deef3a1a401fabc` |
| 61 | `theorem` | [Filter.Tendsto.uniformity_symm](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/filter-tendsto-uniformity-symm.md) | 454 | `result-track:f754db1816666aefeb304d8fd7525375f58145dca2e18362d73894de34438f38` |
| 62 | `theorem` | [tendsto_diag_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/tendsto-diag-uniformity.md) | 459 | `result-track:e334927681ab00411d2d4266e80d92d5d712d8342b4be00ea6a9df08801275a0` |
| 63 | `theorem` | [tendsto_const_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/tendsto-const-uniformity.md) | 463 | `result-track:69410eba108694b590425378e2fe1354573bb87140dcee070c549f899a6c5a7a` |
| 64 | `theorem` | [symm_of_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symm-of-uniformity.md) | 466 | `result-track:1286542f885db5704fa7c5efcb02fd1317d0ab4d5e981ca23e42e3e2968c0680` |
| 65 | `theorem` | [comp_symm_of_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-symm-of-uniformity.md) | 471 | `result-track:874979e1487e9643869d2ea8ef1aac1a69be4ce3ac2b4e05c7cffdf0632d83b0` |
| 66 | `theorem` | [uniformity_le_symm](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity-le-symm.md) | 477 | `result-track:bb0aa44559b90a8494dbcec64a6304f5ededa946ef8be9f487bd20db7611d5f4` |
| 67 | `theorem` | [uniformity_eq_symm](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity-eq-symm.md) | 480 | `result-track:2301e42c07710c0349db5639349ca8fbbaa4b61891d799ac108b79b05e4f214e` |
| 68 | `theorem` | [comap_swap_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comap-swap-uniformity.md) | 484 | `result-track:1c2557eec548ee4059e489cc0509e26c07e209b089a7273190bb00f8856f076e` |
| 69 | `theorem` | [symmetrize_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/symmetrize-mem-uniformity.md) | 487 | `result-track:a20c3756a4ab4d150be2145978946dbe79ed8ac55eb347f9d8ab4a35b843c03b` |
| 70 | `theorem` | [UniformSpace.hasBasis_symmetric](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-hasbasis-symmetric.md) | 493 | `result-track:1f531ddbef633e236c24ece1362309052f910d5df47f8c2d67e84a382d992d97` |
| 71 | `theorem` | [uniformity_lift_le_swap](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity-lift-le-swap.md) | 499 | `result-track:d461c3bc06b4ee8350e0e4c2ab495b843fb2e451f54306f2a4f35adc8a52f877` |
| 72 | `theorem` | [uniformity_lift_le_comp](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformity-lift-le-comp.md) | 506 | `result-track:7f189351bfe1a96bab5b89501699eaefecf43d4372d34037067c4890d0124b1b` |
| 73 | `theorem` | [comp3_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp3-mem-uniformity.md) | 515 | `result-track:c4f2992c574e7197352202bffa35969992458dc74affe3ee0d86491ce5791ccf` |
| 74 | `theorem` | [comp_le_uniformity3](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-le-uniformity3.md) | 521 | `result-track:5ae537befa95f492bc3ef8b3061e9f117e2f4bb162714028167aa7704bde5ace` |
| 75 | `theorem` | [comp_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-symm-mem-uniformity-sets.md) | 526 | `result-track:43a728f7b97e215d76e8f2cbe682063877071080b600457e4b07c7bff6c612e0` |
| 76 | `theorem` | [subset_comp_self_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/subset-comp-self-of-mem-uniformity.md) | 535 | `result-track:8df0c7039583c7575309a4c8fd30a76448738b64d36580f61ab58f46e32fd5b2` |
| 77 | `theorem` | [comp_comp_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/comp-comp-symm-mem-uniformity-sets.md) | 538 | `result-track:65e111d8f43d2b1fbf156f463cdf81ae7ac5a8c66e7c933c10c930d3edb48cf5` |
| 78 | `def` | [ball](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball.md) | 562 | `declaration-track:ad12d0e14daba9363019626452efc40e374ff2e03cc1e0b781104a034122ce4b` |
| 79 | `lemma` | [mem_ball_self](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-ball-self.md) | 566 | `result-track:c2483a5d3bcfa36f657d4071519296abd0ae8083c37257d00da2d42949b409ea` |
| 80 | `theorem` | [mem_ball_comp](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-ball-comp.md) | 569 | `result-track:fca4f1854a65de8ab1ce692dd788c1f710a83ec668b6921faf4c95c4713d0a8d` |
| 81 | `theorem` | [ball_subset_of_comp_subset](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-subset-of-comp-subset.md) | 573 | `result-track:5003c3d688a0a934104798fc4f17a75f34fb9ee6e0a47eaaad7f99d99eb8d073` |
| 82 | `theorem` | [ball_mono](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-mono.md) | 576 | `result-track:3c8f8fcf8776471d6a792a759e9e0062947fe355d2718522fc123616c0e9741b` |
| 83 | `theorem` | [ball_inter](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-inter.md) | 579 | `result-track:216cd7b766ab6fc9c5f8ea8a730e69ef022ff36ba849da57924b913489125f25` |
| 84 | `theorem` | [ball_inter_left](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-inter-left.md) | 582 | `result-track:556def89734deaa52570758c594e0880bf71d74ef7c83a002f430878cb83752e` |
| 85 | `theorem` | [ball_inter_right](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-inter-right.md) | 585 | `result-track:82a916aa69c8f1138980027df151c9d93ef4af89b5275a87dcfb1640b5d6c290` |
| 86 | `theorem` | [ball_iInter](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-iinter.md) | 588 | `result-track:904e5669e9cf5b40f60b8cd889a20659777ff5164053fac34ed7b1905006b4ed` |
| 87 | `theorem` | [mem_ball_symmetry](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-ball-symmetry.md) | 591 | `result-track:5dcae3b787d57416daa2fdc4ca821686c8a77a08cbdba931caa80ca3764abf8b` |
| 88 | `theorem` | [ball_eq_of_symmetry](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/ball-eq-of-symmetry.md) | 597 | `result-track:5d087c08b8f4d8c115503ead7e687c0cac0410807da2d2f68be07d0d1897c423` |
| 89 | `theorem` | [mem_comp_of_mem_ball](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-comp-of-mem-ball.md) | 603 | `result-track:619c08b7f1ece67aa4c211a18f6bedfc7b051dd33a37ab7cbcc0dab39d701701` |
| 90 | `theorem` | [mem_comp_comp](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-comp-comp.md) | 608 | `result-track:ab1de3552e1875f3ebef13f0c297603e42650066608fbd3c1e64984cf9b6f030` |
| 91 | `theorem` | [mem_nhds_uniformity_iff_right](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-nhds-uniformity-iff-right.md) | 626 | `result-track:5ee4f9f88bb9f3e9f3d909c90648c028e6d3956723571bfe7724a312053d50a6` |
| 92 | `theorem` | [mem_nhds_uniformity_iff_left](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-nhds-uniformity-iff-left.md) | 630 | `result-track:22f6986946a72098f8d08605abc170f2852dc1b41e941dbf59d164fa80d471e2` |
| 93 | `theorem` | [nhdsWithin_eq_comap_uniformity_of_mem](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhdswithin-eq-comap-uniformity-of-mem.md) | 635 | `result-track:49b6a60deedef9d617c34e18de501371a3013ae8ecf450bda3194a150a130ea8` |
| 94 | `theorem` | [nhdsWithin_eq_comap_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhdswithin-eq-comap-uniformity.md) | 639 | `result-track:ff7c64fd172756eee029c7a118cd8c8439f1d4a9a46fc28168caec0ea25e755b` |
| 95 | `theorem` | [isOpen_iff_ball_subset](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/isopen-iff-ball-subset.md) | 644 | `result-track:f19b26cec5368d89edb5727040878fd6c99bfc23c8782720054cfb18e103ed8d` |
| 96 | `theorem` | [nhds_basis_uniformity'](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-basis-uniformity.md) | 647 | `result-track:0b7e193f6e54ca5491e2d699f11b98d758de8db6469765f2bba70e7c3bb7881a` |
| 97 | `theorem` | [nhds_basis_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-basis-uniformity-source-edition-2.md) | 652 | `result-track:9d2511abfe575558a82295b77b1e791ddc8ff2e8fc934d1300bdab4b31008d18` |
| 98 | `theorem` | [nhds_eq_comap_uniformity'](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-eq-comap-uniformity.md) | 658 | `result-track:853a9805c43a8afad65cecfee98e6567be51312177c3a09334bb5bf6e22a3665` |
| 99 | `theorem` | [UniformSpace.mem_nhds_iff](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-mem-nhds-iff.md) | 661 | `result-track:3b3133e90010ad17e92bf12932a5bfe23cd72aa1c8a0868350c877e4e6ea1484` |
| 100 | `theorem` | [UniformSpace.ball_mem_nhds](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ball-mem-nhds.md) | 665 | `result-track:313fd7e3887596525a00f7ee3bc375d8cb1fc6c2f5479d91aa28889f536883ad` |
| 101 | `theorem` | [UniformSpace.ball_mem_nhdsWithin](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-ball-mem-nhdswithin.md) | 669 | `result-track:21bca852fdb510cd40e0ce78cdee0e0fe35c701ee71ff95ca31cf38eccb55d2d` |
| 102 | `theorem` | [UniformSpace.mem_nhds_iff_symm](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-mem-nhds-iff-symm.md) | 674 | `result-track:b42574c529d4a79ed4b6c871b4a2334320c8ab4b8daced8fe032f1605ced49b9` |
| 103 | `theorem` | [UniformSpace.hasBasis_nhds](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-hasbasis-nhds.md) | 684 | `result-track:129d2fea99e3112266791563bbabe6d03f52536577ddada8d0edbee1e486d164` |
| 104 | `theorem` | [UniformSpace.mem_closure_iff_symm_ball](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-mem-closure-iff-symm-ball.md) | 690 | `result-track:84334ab3d36cb3a0e194ee6e3b05d6db291ab01a188ce5443dedf5a56d53c5d4` |
| 105 | `theorem` | [UniformSpace.mem_closure_iff_ball](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformspace-mem-closure-iff-ball.md) | 694 | `result-track:d4c2333ae8801be839ad07b23b78e3b0d58bf9b2fabe960ab5b65f83abc432eb` |
| 106 | `theorem` | [nhds_eq_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-eq-uniformity-source-edition-2.md) | 698 | `result-track:9dd04f4fe08cb617530a8bc5cb20a906626376eaae52d29fc66d497c5ca6a007` |
| 107 | `theorem` | [nhds_eq_uniformity'](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-eq-uniformity.md) | 701 | `result-track:7c0405e514fb2fe426410f01a59842315c93a41261b9b1a7b69bb1f655843a6b` |
| 108 | `theorem` | [mem_nhds_left](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-nhds-left.md) | 704 | `result-track:e89103c1b1cd9440e8cf97027d12d9e4cf31ce4d1ccb789fbb73f949a3fde1b6` |
| 109 | `theorem` | [mem_nhds_right](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/mem-nhds-right.md) | 707 | `result-track:91b34667fa3258a05e1219e31acc313cefd14890a5bd60f4518befb1bef9acd4` |
| 110 | `theorem` | [exists_mem_nhds_ball_subset_of_mem_nhds](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/exists-mem-nhds-ball-subset-of-mem-nhds.md) | 710 | `result-track:0ed12c02bb2ca146751c00beff39d4e2d6500292e3ff36e18cb22aeff221a2a1` |
| 111 | `theorem` | [tendsto_right_nhds_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/tendsto-right-nhds-uniformity.md) | 715 | `result-track:bb3c1c63353118c97e7974b69264652663b652171c7a83aa514186195b683480` |
| 112 | `theorem` | [tendsto_left_nhds_uniformity](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/tendsto-left-nhds-uniformity.md) | 718 | `result-track:499861d7793eab53a5e5dd848c3e2411e0a3605a65d1423ae4d263c9e18b591d` |
| 113 | `theorem` | [lift_nhds_left](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/lift-nhds-left.md) | 721 | `result-track:f28d5049a1a676eb6f4c06fefe4be6db7df709f82effede8ecc3f3d24a4ef2cd` |
| 114 | `theorem` | [lift_nhds_right](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/lift-nhds-right.md) | 726 | `result-track:54d730491fe9eae106b32167d61d30cbe401fdc696b55c1b97091edb8ec016ca` |
| 115 | `theorem` | [nhds_nhds_eq_uniformity_uniformity_prod](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/nhds-nhds-eq-uniformity-uniformity-prod.md) | 731 | `result-track:e772d9bd6cddf88cf31bc70933d9893082babba9f237524864e4d3179becdf8a` |
| 116 | `theorem` | [Filter.HasBasis.biInter_biUnion_ball](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/filter-hasbasis-biinter-biunion-ball.md) | 737 | `result-track:68a2f55fb1ca049d363c0360d70ed8b173479bdb5269f4a320690bdd1f1d561f` |
| 117 | `def` | [UniformContinuous](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous.md) | 749 | `declaration-track:0456d92b9a0f3bda1810fda2a6088be2bcb79d87d739e0a188df619dbee08c1c` |
| 118 | `def` | [UniformContinuousOn](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuouson.md) | 759 | `declaration-track:bab0a5a0f4e1254f4fb4ff508f679898352f9df9aed9f78960737dbe9fbaed62` |
| 119 | `theorem` | [uniformContinuous_def](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-def.md) | 762 | `result-track:5a8f4ae98c084db2b3463d0116b403371ff2c1ee538742ce8458e85bf001f6b6` |
| 120 | `theorem` | [uniformContinuous_iff_eventually](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-iff-eventually.md) | 766 | `result-track:3caa996856d6b15690b1fb2ee2bf6839fff7baa0dfe5e66e6b28f2a1c8a94a16` |
| 121 | `theorem` | [uniformContinuousOn_univ](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuouson-univ.md) | 770 | `result-track:6337a3ecf29450ee31996814c63d9eda3e5e38d2e71c3d42ec52824ff247b9f9` |
| 122 | `theorem` | [uniformContinuous_of_const](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-of-const.md) | 774 | `result-track:56206f556e1e832ab0aad32cf2778fda588e16e2b99d5997d6a0b99b8e4f8c00` |
| 123 | `theorem` | [uniformContinuous_id](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-id.md) | 780 | `result-track:9e071860b17ec1aa6201b732cb6b4170d4feba3d8a4cdc51a6c799849414767f` |
| 124 | `theorem` | [uniformContinuous_const](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-const.md) | 782 | `result-track:df89cc2c2745fb8d2373dacde2263995b56ff248dab4ee1a4a93888136212ec4` |
| 125 | `theorem` | [UniformContinuous.comp](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-comp.md) | 785 | `result-track:ff56e0c348862330827e0f1affe8eeef0c73471e1384e47b3f4e88b99f443d34` |
| 126 | `theorem` | [UniformContinuous.iterate](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/uniformcontinuous-iterate.md) | 791 | `result-track:d44a73ddc5b1afeda7fd9f6416269517c6a225e5e37e57de1624c612213b5903` |
| 127 | `theorem` | [Filter.HasBasis.uniformContinuous_iff](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/filter-hasbasis-uniformcontinuous-iff.md) | 797 | `result-track:17ffe1c2c4ac82cf60eb6f3e0d8cad5efe345accbc1f6f648a9e0691640c992b` |
| 128 | `theorem` | [Filter.HasBasis.uniformContinuousOn_iff](../../../../GeneralTopology/UniformSpaceDefs.lean/declarations/filter-hasbasis-uniformcontinuouson-iff.md) | 803 | `result-track:06abb548d7a3b985289c099c5fb763e68c4f832d02dd96c38d77c00790f1c8c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b18639fde2490b70288e512a2278437f12b71379cdaa91e81f509a4f0ad7155d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variant9041858a1ce219e83c4af83f693d582b7b0c22ef7d775627996e9a8356813daa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
