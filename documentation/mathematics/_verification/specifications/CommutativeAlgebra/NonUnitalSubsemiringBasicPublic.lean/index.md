# Verification target: Non Unital Subsemiring Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2006d8ec0ef665351e9a89ffed2619459742149f",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2006d8ec0ef665351e9a89ffed2619459742149f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/tosubsemigroup-strictmono.md) | 39 | `result-track:ab752ff499391cd6d2e4ae0b39d5c938877b6a2ba39d5fedb761e892ae55e191` |
| 2 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/tosubsemigroup-mono.md) | 43 | `result-track:3b6121629934656387f951b6e0f234e081cbc20dec86bd24afe9e65a392a2554` |
| 3 | `theorem` | [toAddSubmonoid_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/toaddsubmonoid-strictmono.md) | 47 | `result-track:791ab6b5469740afda538ef28ac1b9ae8a81f436c26c966863d0f8f6e3fcb7b4` |
| 4 | `theorem` | [toAddSubmonoid_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/toaddsubmonoid-mono.md) | 51 | `result-track:496e14a199ec8c8ebe6b348a075d649642c32df8ed857f25c7b24fa3e25710ad` |
| 5 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/topequiv.md) | 63 | `declaration-track:997d43abeda702b645ba5d2fd70accaeec3d1a1440c59ef3ffcc8376937432b9` |
| 6 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap.md) | 68 | `declaration-track:e0d8615f39938e2ac574625d213d5d25448c4e77fb82a89e38046b628b2515ad` |
| 7 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-comap.md) | 73 | `result-track:dc1fe88f7554cbf9cf83826b0bd69e9f1b8392b415809c6ae8420030f617e7f8` |
| 8 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-comap.md) | 77 | `result-track:8540fae48fc767cf736dabb2a84ae46cbf9d4a5e68e6e08b78ed5ee3a9b77b44` |
| 9 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-comap.md) | 80 | `result-track:6c573647535dd28004f7d00daac0dbd6f3fd1db6046e9f907bdddbc76196545c` |
| 10 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map.md) | 85 | `declaration-track:b592e36b68c831a58dd50f5585dc03c802ee0ff9c771a6e05c4aad0eea486ab1` |
| 11 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-map.md) | 89 | `result-track:e93c799de96ac7f2fb8f585d7b67d75f2d88f8eb668cae6a6f243a617238ad0f` |
| 12 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-map.md) | 93 | `result-track:983d3a8ae803875e7e6f294890490b297c1af288b8ffdb196997067efe1bf554` |
| 13 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-id.md) | 98 | `result-track:302766662b55f97a883214d3e1f8a4ac908a927ec3cefe222df87670f4b9ec91` |
| 14 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-map.md) | 101 | `result-track:08b4e313f7ee924091bef882cce0848f436490a2deb7764fe7c5e5767d1f78e2` |
| 15 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-le-iff-le-comap.md) | 105 | `result-track:e2daf6a4ee0978576903d7da0c80272bd0b28342e2dea04c22b6e56a38416b05` |
| 16 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/gc-map-comap.md) | 110 | `result-track:56fd6a37cc914d01255a15e6aee3954a5c027464849cc5bff99da9d743c66e8a` |
| 17 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/equivmapofinjective.md) | 115 | `declaration-track:29530efe05cf4023ed6b27188d37eb66a293c97af032101132062278f0a5ab17` |
| 18 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-equivmapofinjective-apply.md) | 122 | `result-track:49a0df79d0185b6bf0dc8b3338910867f7174d478bf2d4f18a0b2a5a9dd5c3c2` |
| 19 | `def` | [srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srange.md) | 136 | `declaration-track:7099076b3d8a0fb70ed517e1116665df11f562e353c58ee1aa5969b5669f928d` |
| 20 | `theorem` | [coe_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-srange.md) | 140 | `result-track:9689b06d844c752d46ddb9cba288a5302a029136996ab29b6e30c526ec611f3d` |
| 21 | `theorem` | [mem_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-srange.md) | 144 | `result-track:60ae1697faa8a1b8f2f139b50b0f2320eab5e5d9aa4b052a8e0126c2d0b03448` |
| 22 | `theorem` | [srange_eq_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srange-eq-map.md) | 147 | `result-track:27e435b767020c302b0d84959c50be3ae15c9480185c9b9360669708ea7b2370` |
| 23 | `theorem` | [mem_srange_self](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-srange-self.md) | 151 | `result-track:870aa9cce1b9d29ba605b80b68c46bcec13aef791d9a7c3431c9db9aa25d0bfa` |
| 24 | `theorem` | [map_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-srange.md) | 154 | `result-track:9501e393cb85d0f954ddf1c3a8da1ac48bd1908bcf0d279642c9787b465f90fa` |
| 25 | `instance` | [finite_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/finite-srange.md) | 158 | `declaration-track:3b32da84c419a353ad28c6f8527655418f18146bc472e0327d09fd4173d102d3` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/instance-source-edition-2.md) | 165 | `declaration-track:82d52bd0d6609e6117b29bfae008c5acaff310ab36d3b5a6b955c20e502efc3a` |
| 27 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-sinf.md) | 171 | `result-track:51858162c2699e3a8274e37ed807cdeffcb6ca148d3ea644521978bdf0f00529` |
| 28 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-sinf.md) | 176 | `result-track:e4a9472d6d9f18d2a34f9b9aa0c72a898b7556d0d0ccdc64ba1a799d76be824d` |
| 29 | `theorem` | [coe_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-iinf.md) | 180 | `result-track:ed03a172970b3b3267ba49dce0bfe5da99d1e7991fe1757e1370d7cb44301d1a` |
| 30 | `theorem` | [mem_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-iinf.md) | 185 | `result-track:42863ad4383be4cf7e1bb58dd528ae1b7de11941e17f57412ba9a1ade99bfc9b` |
| 31 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sinf-tosubsemigroup.md) | 190 | `result-track:4aaab92ab8a3189fa1502da858ae12e161866fa47835dded667c6c0ec0dfee85` |
| 32 | `theorem` | [sInf_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sinf-toaddsubmonoid.md) | 195 | `result-track:e10c48f398c63a40cb4df42ae725e49fd89a9cd961ea0fdc29b4dc5010a02a84` |
| 33 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/instance.md) | 200 | `declaration-track:451b6744452d40fef56500b037015c0775f9845cb97fb383d1421156fe369e4d` |
| 34 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/eq-top-iff.md) | 212 | `result-track:3e12dd60a59a8f1b29c4289c12177cf3d68a56dbcbf461c8da8b289c44038025` |
| 35 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center.md) | 221 | `declaration-track:4476bf4ca47e4292bebf3d85e84b73772f34523577640d5cf92fe22dee9086ed` |
| 36 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-center.md) | 226 | `result-track:0a5d950357d2dff4dabb08e73c07273730f0a2cebbfbecaf582e8e6a2817cb20` |
| 37 | `theorem` | [center_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center-tosubsemigroup.md) | 230 | `result-track:8cc8804b98cd6293886e13a3a0936ba9153fa295146cfa00acc4066124ababb1` |
| 38 | `instance` | [center.instNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center-instnonunitalcommsemiring.md) | 235 | `declaration-track:be8c136b4a4dba257386ee45b117d6c051f0ffc2a150e78bd402724b40ad4f05` |
| 39 | `lemma` | [_root_.Set.mem_center_iff_addMonoidHom](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/root-set-mem-center-iff-addmonoidhom.md) | 242 | `result-track:10abdd06d96814cc42db15b919ab3c47cfde4ef6a6f18cc2ba0bf73d004ff114` |
| 40 | `def` | [centerCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centercongr.md) | 253 | `declaration-track:75af1e6d3c0360db9fd103a994e51a55381d74cbcc1860a95dc9cb0f24adfa8d` |
| 41 | `def` | [centerToMulOpposite](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centertomulopposite.md) | 259 | `declaration-track:6d10571575a3d40850158d46a562dc9df270a5358c88291c533416f36d4fb8d2` |
| 42 | `example` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/example.md) | 269 | `declaration-track:3d863c683bd2504645ab53cdc525c77e80d12b2c22e65423513a01ea62fa43cd` |
| 43 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-center-iff.md) | 274 | `result-track:a0b2d15225dc12483db19eb1c817101051a297027281450c2af016ef40f7999b` |
| 44 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/decidablememcenter.md) | 278 | `declaration-track:5c5d9dd222cb9894a934536d7ec89c46d1bef8fcd15921550c3b44cbd462d19b` |
| 45 | `theorem` | [map_center_le_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-center-le-center.md) | 281 | `result-track:76f8e36086085fbb2600b1e09de0a3c0106b44c8164d1491509534ad111343d7` |
| 46 | `theorem` | [comap_center_le_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-center-le-center.md) | 286 | `result-track:b7fbadbd39acaeddac16c6e4da198c37ae9ffc1346e4116e3125a1ab97143b70` |
| 47 | `theorem` | [map_center_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-center-eq.md) | 292 | `result-track:f50438bdf16bf16f5226162e741d5ac593cdafcb8fcd49bf71b385bcd727dd7b` |
| 48 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center-eq-top.md) | 297 | `result-track:8ccc51b6c35e39ac496a15644ba8b6477deee9e33a49728723d7ca0d62f9148f` |
| 49 | `def` | [centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centralizer.md) | 305 | `declaration-track:53ec975e43426f3db70376f6d85573f3ab0a50d0425537e9944805cd8b3a3573` |
| 50 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-centralizer.md) | 312 | `result-track:b02f03a3b614e785136e31527d7a7d0912edbeb7e3532f73fcdabdb15483958b` |
| 51 | `theorem` | [centralizer_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centralizer-tosubsemigroup.md) | 316 | `result-track:24ce9a16002b050844e6b251317905e6b66ba9e59e2a9f067538121e34d49b7a` |
| 52 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-centralizer-iff.md) | 320 | `result-track:f1c75ba97c599cf3df737c39c380ef913ef0a196bc299f00d6326052f56ffb6d` |
| 53 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center-le-centralizer.md) | 324 | `result-track:f36c0854dbc342120c0733654f3fe83f00878f049ae5ac18213314a39a3b7bc1` |
| 54 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centralizer-le.md) | 327 | `result-track:2e0112af24d90db1b2040af05e8acd7f032696ccd17c3ddad004b7a2693d6133` |
| 55 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centralizer-eq-top-iff-subset.md) | 332 | `result-track:97f0a414953fe0b965f74531e790be81014ef64cb4f69267ba03a4a598abcf8a` |
| 56 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/centralizer-univ.md) | 337 | `result-track:4bc678eb812cd3510dd090d8771695614329e14960ae07fd57043fd86f94ccb8` |
| 57 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure.md) | 343 | `declaration-track:cff82ca2b3324d80c4a26d2cc220a953bf6c6b60e9bbd2a9c993254795b76dcc` |
| 58 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-closure.md) | 346 | `result-track:1984dea3e3532eb38e7b8853906f12a42b69b801df66465331d57db6ff09060d` |
| 59 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/subset-closure.md) | 352 | `result-track:ebfe333e960b6ca302ed4fc75316a1dab96c3d8946a01445923c6778cad4ac84` |
| 60 | `theorem` | [mem_closure_of_mem](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-closure-of-mem.md) | 355 | `result-track:737a20d18c0ab9ded79d44eaf03774935b5dad8d72d6f9cc3e581a395a928c3e` |
| 61 | `theorem` | [notMem_of_notMem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/notmem-of-notmem-closure.md) | 357 | `result-track:33334b6f2cc29a01952c7ad5896ae8f5259a26c75d65b248ee9cc86b9b9f65a7` |
| 62 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-le.md) | 362 | `result-track:267d612a91abf39582d2fa0e2151c8484203038a1b77414e6718998f4f1f6625` |
| 63 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-mono.md) | 368 | `result-track:45ce70418e1b4a5b0423d27e51205b265e10efd2b099ec5c17950cf278f49e4a` |
| 64 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-eq-of-le.md) | 371 | `result-track:f240a0837403efee9883f9689acd393596098dfff6932aff6e6e5f950cf312d7` |
| 65 | `lemma` | [closure_le_centralizer_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-le-centralizer-centralizer.md) | 375 | `result-track:6e295319624ca53e1f73e65d61893c9ab2b73993f041aa14646d5dd6d0246788` |
| 66 | `theorem` | [isMulCommutative_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/ismulcommutative-closure.md) | 381 | `result-track:a964b91643270c1f6de0069f8c4a5343cc0b48313a52ff1fb3829a7f9cda0cdc` |
| 67 | `abbrev` | [closureNonUnitalCommSemiringOfComm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closurenonunitalcommsemiringofcomm.md) | 391 | `declaration-track:9c3003944b3f476998be0cf68e40d43af8d9a5033f59f14f6760faa5e992dd7a` |
| 68 | `instance` | [instIsMulCommutative_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/instismulcommutative-closure.md) | 396 | `declaration-track:2091e962f7f964743e8333791e63787e1819823fad56ef59597e1df51758832b` |
| 69 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-map-equiv.md) | 403 | `result-track:ddca6698e65a5d9248c24784edb6e2bb0062a69fab1469df6624392d6f274157` |
| 70 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-equiv-eq-comap-symm.md) | 407 | `result-track:854f6f0961a114b65d1325e3921bdc8efa182154507c474c518f7798e99e50f7` |
| 71 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-equiv-eq-map-symm.md) | 411 | `result-track:47f97b4c0e67c8f21b6cf8dc0707ebbaf381d7800b315aa3109586d33a60102a` |
| 72 | `def` | [nonUnitalSubsemiringClosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringclosure.md) | 420 | `declaration-track:8b477d89e428fd528195658d854625aad1c4fc347924d6b826261302e13c9238` |
| 73 | `theorem` | [nonUnitalSubsemiringClosure_coe](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringclosure-coe.md) | 423 | `result-track:1773670eb9c0a7eab2b1d3f2aaaf1140dc484b1e19de61741d984500a5cbb096` |
| 74 | `theorem` | [nonUnitalSubsemiringClosure_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringclosure-toaddsubmonoid.md) | 427 | `result-track:c48cbfe827ccd7e779f3c0a51dc44a3ab848b63f1ad7b7ce76108f7266ce73c2` |
| 75 | `theorem` | [nonUnitalSubsemiringClosure_eq_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringclosure-eq-closure.md) | 433 | `result-track:ccbb77830770725882f61f8ee70dfe5b062327874af9693db04114fd5b7e68a2` |
| 76 | `theorem` | [closure_subsemigroup_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-subsemigroup-closure.md) | 448 | `result-track:cc3311fa6ab504f7efa357ff318496ef75d46d5ecae166070feff613e5919058` |
| 77 | `theorem` | [coe_closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-closure-eq.md) | 456 | `result-track:30b71c6a189543ffe4dd2616a3cd1f46053bdc5cfc4cd669d7121bfca03d5aa6` |
| 78 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-closure-iff.md) | 461 | `result-track:87d5ac544d26a8231a30786995a19ccff73625440a63c9776aca71584a21a448` |
| 79 | `theorem` | [closure_addSubmonoid_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-addsubmonoid-closure.md) | 466 | `result-track:e61861106a982a84463e7e9d8c69243752f1d08fdca08731e6d34e3cfc42db2f` |
| 80 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-induction.md) | 480 | `result-track:8a62b10173bd8c828ba30a573bfa7ccefb6cab656d3bb73d8b081a3439ad766e` |
| 81 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-induction-source-edition-2.md) | 494 | `result-track:8c9a46344511faa42a16ae9e20bb275492ca3b5916af113895a5981b69ffcd93` |
| 82 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/gi.md) | 515 | `declaration-track:2acef9caa965f9734725315664263d553ff97feb87bd7fe4cda0e1e4c62ccc95` |
| 83 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-eq.md) | 525 | `result-track:50733cb5291bc7a40f334d8f3b453534b7be99cbca243437922b0ddcb0b65e4b` |
| 84 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-empty.md) | 529 | `result-track:7a41f7fbe69e2faba8c87da340e7f2a60dcb0cf65990f748c4ae7497fac05e22` |
| 85 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-univ.md) | 533 | `result-track:887397ccbc63fb91c593dc42df41a78e3a6eaf41ffc71aaf622c5cea49830caa` |
| 86 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-union.md) | 536 | `result-track:e89febb6d2e8379cb452ca521276eed3980a21652c47d3b9fc8c8be7368f2f37` |
| 87 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-iunion.md) | 539 | `result-track:a34821514b6e9260d315ba8cca9473f947e804680e09d6831aba379e4f729b62` |
| 88 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/closure-sunion.md) | 542 | `result-track:0634a1ae6d6c26781c06668d3aef6d83bf7f06d4f51ebe060b6fc9c7e7cbbeeb` |
| 89 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-sup.md) | 545 | `result-track:2f28b0ba69149807c440fec9a0caaa213f7f9f2973b7fd48be21d770ddcbd7ae` |
| 90 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-isup.md) | 549 | `result-track:ff111d572f34bc396ccc1d5f11f55abac139f6c40bec2358aee12f25932a442d` |
| 91 | `theorem` | [map_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-inf.md) | 553 | `result-track:0788871cd83a70392b09e3dba8e57533b14308fc5dc52e66fc72d64a1139dcaf` |
| 92 | `theorem` | [map_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-iinf.md) | 557 | `result-track:7d7d2fa89e40fb387df955dbc3e0ce512a5463fb84fe393b2407c6be70718e6a` |
| 93 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-inf.md) | 563 | `result-track:93d44327df33c9e6e4bba3a92b542b83cafc795002e0314bbf2d0edd331b5046` |
| 94 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-iinf.md) | 567 | `result-track:465f62d6b9379e296b28a7b0688ef520f3d7e41a5fab415c7c513f1ce5efa648` |
| 95 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-bot.md) | 572 | `result-track:199bfd9a70f03b4419d2f10bb70d6b9757cfb366d0e6c3d08a78247c8898e030` |
| 96 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/comap-top.md) | 577 | `result-track:8e046f225344518e96645354029028f97eebb21be99466838362f7c416c22db0` |
| 97 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prod.md) | 583 | `declaration-track:d6896235ff49675b73d7656c6d06ac8b0776fc6d0b78dbf8a77f02ab800211c7` |
| 98 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-prod.md) | 588 | `result-track:ddd3304673fe7d6c92b3b29dd2737c773de27a59eddd8e192a7d5b4fc17a1f5e` |
| 99 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-prod.md) | 592 | `result-track:4d8a3f2006c6ced5344511305a0d1edef23c301cb8862cc1f604f345ff934997` |
| 100 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prod-mono.md) | 597 | `result-track:07b377075b3d44d5794e0e25830cbc8bcb05927cef575f7146213a235288c05f` |
| 101 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prod-mono-right.md) | 601 | `result-track:d9c4b7f2343fab69d860c4be66c6c14c7868c78425557c30ba94afa1ae3daea0` |
| 102 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prod-mono-left.md) | 605 | `result-track:200d47ad295142d3ea42cfedd146470a8540a736e4042b1d8560692a10baf7a6` |
| 103 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prod-top.md) | 608 | `result-track:98aca480c826ba5e7887adf492af5821d583bf1d0a67a76dcc390695ade6fa7b` |
| 104 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/top-prod.md) | 612 | `result-track:72ce81c7162127b672bff5ddc9016dcdc106e648c811ea77ab22f8cd73d1ecce` |
| 105 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/top-prod-top.md) | 617 | `result-track:9f42d2bf514407a7adc0f378a32fda5d1498a83d7eccb49ab3113750d4fe99af` |
| 106 | `theorem` | [center_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/center-prod.md) | 620 | `result-track:7c9a531367d5bbdea4b36a6045cf295f87ec89f0f83c64dcdc8ebfe29a68bbe1` |
| 107 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/prodequiv.md) | 624 | `declaration-track:89d1e35c18ce76e1cf25ead9b52f1ddd16a75cd62fdcd150885a888e27764646` |
| 108 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-isup-of-directed.md) | 629 | `result-track:755f62761b82aa30fa514f7e49b1367e880308d5f1f00e2f0ec71a2aa4f05485` |
| 109 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-isup-of-directed.md) | 639 | `result-track:a9457c6e920a8b44b11ba2aefa717bebfdcabec1bc7638ed8c4cf987f93479a3` |
| 110 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/mem-ssup-of-directedon.md) | 643 | `result-track:c1f202333922c7ff23039f7273859166ac2219b02f01209efeed627fe1187ca1` |
| 111 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-ssup-of-directedon.md) | 648 | `result-track:c12d462c85381fe50fd24b3966b21bc8875987c70a5805948814a32c7aacfb29` |
| 112 | `theorem` | [isMulCommutative_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/ismulcommutative-isup.md) | 652 | `result-track:448a1e1dc23332188a14c4edf4327ad6b424e61a1406a9fd15759bc9e0ff9625` |
| 113 | `instance` | [instIsMulCommutative_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/instismulcommutative-isup.md) | 662 | `declaration-track:f4dc6cf2a46e56471c1cafcee70620ef5e87247561ecc3e77aa770dcdfb4f8c0` |
| 114 | `theorem` | [eq_of_eqOn_stop](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/eq-of-eqon-stop.md) | 671 | `result-track:fe7c06b1f4fd20a870ca04aed37ac7b7fde7fbb8071bf6ba0c36a7f8898abbb3` |
| 115 | `def` | [srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srangerestrict.md) | 684 | `declaration-track:9d8b8cb903259b15db2ad87bdb5b9f9dd8d4e07bdcb1c068da5a990dcb08c03b` |
| 116 | `theorem` | [coe_srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/coe-srangerestrict.md) | 688 | `result-track:0aaf2fbb09482900c777f8ed900e79d0c10f18a3b8e51ac090f6fd67c36fa069` |
| 117 | `theorem` | [srangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srangerestrict-surjective.md) | 691 | `result-track:13fec110ab071f91893d17e41ce20e6081e6798492adf4bdd6fbf9d0b39578b5` |
| 118 | `theorem` | [srange_eq_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srange-eq-top-iff-surjective.md) | 697 | `result-track:ae7d674fd6e282847276295b725ae8cd87b703f7b68c1795a588d63145c8c5d7` |
| 119 | `theorem` | [srange_eq_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srange-eq-top-of-surjective.md) | 703 | `result-track:78e6dcf7baa90037969ba0e3f362b8b98c57545ab3878178f0b08f92ffed2131` |
| 120 | `theorem` | [eqOn_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/eqon-sclosure.md) | 709 | `result-track:3b8d69d51232e27646df45d9c899e21995c5f8a993b00a767ab789bc999a5392` |
| 121 | `theorem` | [eq_of_eqOn_sdense](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/eq-of-eqon-sdense.md) | 714 | `result-track:34e306c604179f405bb9c7a9380eff284221248d2ab8990de1ad348b6b594ccb` |
| 122 | `theorem` | [sclosure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sclosure-preimage-le.md) | 720 | `result-track:57fa10f323829ea5407ad827fa0ff815f921d406c43a70536e12b36e3174e7b3` |
| 123 | `theorem` | [map_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/map-sclosure.md) | 726 | `result-track:e443fae636bd1051d089cd9f3c7be769c95b07707b97570c5b0d626ccd2269b0` |
| 124 | `theorem` | [srange_subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/srange-subtype.md) | 737 | `result-track:2cfb13e076c3efc3c210b13792ec3450d088c359d8ae9cd1d1464e1a18fc6614` |
| 125 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/range-fst.md) | 743 | `result-track:c788b5a5dc76ab8ff06f3dae5fb5dd3b1ad37e256bdb084822ca3079da0dca9d` |
| 126 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/range-snd.md) | 747 | `result-track:057663d9774f0b7685056ca1a8e0ca0cc146b6c2a5a6692c74922d44baed24ae` |
| 127 | `def` | [nonUnitalSubsemiringCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringcongr.md) | 761 | `declaration-track:fd415a0232c4b60dfb115f842d45a42ac9383bda64c8f37e6fe3336fb22a5892` |
| 128 | `def` | [sofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sofleftinverse.md) | 768 | `declaration-track:50d4431d1e733004f7a02a3b629eba7d0d3750e48d93b0a69471c22250e04fa7` |
| 129 | `theorem` | [sofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sofleftinverse-apply.md) | 779 | `result-track:d919e686a3475e6ad83bac18180e49c591b896a4273bbbfa0f6acdc2993296f4` |
| 130 | `theorem` | [sofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/sofleftinverse-symm-apply.md) | 784 | `result-track:78d30f52c09594f0fd4eb3f29de37a3c562ece2c2da84fb30a78125132f9d5a4` |
| 131 | `def` | [nonUnitalSubsemiringMap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicPublic.lean/declarations/nonunitalsubsemiringmap.md) | 792 | `declaration-track:0bd0829ba8ec9a17ac11db81b148b9d17dbdd540acd64ca897d6308392ada37a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3fb80c1f700373d08c67fdb33d1e7f0c237bb13c76f327faa720e504814da6a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant167e490cdef3e4c73c41b44ce59713b8284cce4ea1383e56a0b654ae9b02912f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
