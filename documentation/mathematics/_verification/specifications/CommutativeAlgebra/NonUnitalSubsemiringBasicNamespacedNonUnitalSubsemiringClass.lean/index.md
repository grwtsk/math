# Verification target: Non Unital Subsemiring Basic Namespaced Non Unital Subsemiring Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf29df66698b4479158a7e4b8fbb8602c6d60df0",
  "lexical_observation_count": 155,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf29df66698b4479158a7e4b8fbb8602c6d60df0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Membership` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Membership` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subsemigroup.Centralizer` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubsemiringClass](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclass.md) | 40 | `declaration-track:18088eddc7d3698b48bcc0d44b3fc6695b1444734c3601138c29ad861876cf6c` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-7.md) | 46 | `declaration-track:c37e2fda6d1501478efc175a8250a0016f9573c1ed75639758685cfa683c157f` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:976efa33393e05626276ceb5a3f02b55dd3bae33f26238cb7bee2ddfa5e4c092` |
| 4 | `instance` | [noZeroDivisors](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nozerodivisors.md) | 66 | `declaration-track:6ba07aa6ceea95598832029c3067692c828439671dcdb2c03524899d27c950d8` |
| 5 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/subtype.md) | 72 | `declaration-track:d890f098d66a9be5894bae0706a60e4e4ecdab1813362335c58df87fec5abd0f` |
| 6 | `theorem` | [coeSubtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coesubtype.md) | 77 | `result-track:445d61f7e826611607caaaee19c4476c83459019083d4334f4507bcf2b38c7b6` |
| 7 | `instance` | [toNonUnitalSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/tononunitalsemiring.md) | 82 | `declaration-track:346a994edbe6e7b778f43552512982f1f04742f08e6918c0eb0aa6bdf5f557f4` |
| 8 | `instance` | [toNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/tononunitalcommsemiring.md) | 88 | `declaration-track:47cddfaff524a35fa3147edf7dabd4129ec815a4a51611c7a6c05994f015e530` |
| 9 | `structure` | [NonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiring.md) | 102 | `declaration-track:ece1c907a6f0c52190ce82eae422a1e3f3fc2f2d566f84f1f2d5ec77fd22df98` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-8.md) | 114 | `declaration-track:c77a320cfb07a26c64ede390e8cc4e208e7eea4cb0d737b27e40e4c3b3a44480` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-2.md) | 118 | `declaration-track:4cf389fc406bdd51277754969c7887851d4a9fe3531e98b1fbf6874e0739b9b4` |
| 12 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-carrier.md) | 123 | `result-track:c7f79437cf67acd7a358608f8fb7c9aefeaa5a328f56cd07cbd14f3c16734952` |
| 13 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/ext.md) | 129 | `result-track:555ce1c6b4c7bd2c4fcc73a661fd561c8bc8c26c3169ea1f41a64275a32b2fc5` |
| 14 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/copy.md) | 135 | `declaration-track:b9c49fa24ff95de3fbfd0b3c6e438fbb1b44aef19ad6737263e2115a7ee4c8f3` |
| 15 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-copy.md) | 141 | `result-track:f8bf686e527021000bb774f5a30f39600d69290c2663599a9f468d4ee78be3a2` |
| 16 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/copy-eq.md) | 146 | `result-track:50df6ebeaf39287ffde91078377c6c5cf53cf1698b5b76d7419973df072efbe5` |
| 17 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-injective.md) | 150 | `result-track:8cbe2bf7305a84f75b918781a47be39ebff917ffaab37c4d6a323f35b0586171` |
| 18 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-strictmono.md) | 156 | `result-track:caf7aea196629b58a0cffb841e22d8c2d7fa4c4fdbba93e4ed4748331d0c4ba4` |
| 19 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/tosubsemigroup-mono.md) | 161 | `result-track:9a0e01788fa7de6c7eb9cd65ec3b4459618ce99dadfd0cb0a6278e619abb2ca7` |
| 20 | `theorem` | [toAddSubmonoid_injective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-injective.md) | 165 | `result-track:dd4cc9e623a4d8b451366dc12ebf7aba27df3960c912de262cb8d7cea72b4cdc` |
| 21 | `theorem` | [toAddSubmonoid_strictMono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-strictmono.md) | 171 | `result-track:090b8fe86673c13a03aea8730dd3b8ca8e076266746277ee0e883889ded7326b` |
| 22 | `theorem` | [toAddSubmonoid_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/toaddsubmonoid-mono.md) | 176 | `result-track:00756a31a1706e5d06cce11dab0e9a0a869b129e9a48b813b6dd7729282203c5` |
| 23 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mk.md) | 182 | `declaration-track:96c6bf49ab17a53711d5820fd99cd93bdd6d9919e684bcbfbc190983d929165e` |
| 24 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-mk.md) | 191 | `result-track:90f6f224f83558069369f6bda06402f28e5d434a2596f7bb3086f23f862cc6f8` |
| 25 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-mk.md) | 197 | `result-track:3935f0c5f5487a78a944f27c814d5c5f5a572b07d8acff53f08d71ff7e106c07` |
| 26 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mk-tosubsemigroup.md) | 203 | `result-track:2944eca992b98a381688b01ef20a6ef752952b293913a63d511a87423fa5c38f` |
| 27 | `theorem` | [mk'_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mk-toaddsubmonoid.md) | 209 | `result-track:1ad78d5d4d830c4d583c94ded17bb9c07c8c0a30fdea2f697ca6b13c3fb78548` |
| 28 | `theorem` | [coe_zero](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-zero.md) | 222 | `result-track:6e401c12f0a81cdfd593621d45a6e21246d7a6ea76054d498ac053fbce82a225` |
| 29 | `theorem` | [coe_add](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-add.md) | 227 | `result-track:92f39f6b16759da517e1d2d770d5db99bed3c7751878ed9478bd5680180e1bc6` |
| 30 | `theorem` | [coe_mul](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-mul.md) | 232 | `result-track:5ae4ed356c53a5ab2d605d34db4614f05f70ced32c5d440cbffb3cf053fb3dd1` |
| 31 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-tosubsemigroup.md) | 240 | `result-track:437e3c949dfed0dc930e026cded9ec02e4f5ba59468d856d0243d635759c0489` |
| 32 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-tosubsemigroup.md) | 245 | `result-track:782dea013191d2049a51881b2633c1c84ca26aa242f12b069df2519a592ba682` |
| 33 | `theorem` | [mem_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-toaddsubmonoid.md) | 250 | `result-track:a16017035342df3c07ea4ac346ad887c3c6e8ba103f6652936be4e7d5f6040e9` |
| 34 | `theorem` | [coe_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-toaddsubmonoid.md) | 255 | `result-track:d0043ad5f2f713d07815590ebf5ff8780312e3720a0de00f66428b83d0a889ab` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-6.md) | 260 | `declaration-track:b28abe791999566b087e7b4e3184ccbd5025c81cc6dfff789272aa909ab9c1ef` |
| 36 | `theorem` | [mem_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-top.md) | 264 | `result-track:a2e6298e0cc0f5a0b81502ece52465d42471582e17d87e3d2aac9ec8bcbe2fcb` |
| 37 | `theorem` | [coe_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-top.md) | 269 | `result-track:fbed8ab00804f4325370e39aad3b4149c4f0203b233ca39b50362d4d677f926e` |
| 38 | `def` | [topEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/topequiv.md) | 275 | `declaration-track:079e8d79e59665d30ed6356f4ca55c4c72c23ad513d14a47555f43648b4f1353` |
| 39 | `def` | [comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap.md) | 280 | `declaration-track:f7d5c0de165479ffbf4ab32177ec035cd8b490e1d8aea92d34a3e209b99951c1` |
| 40 | `theorem` | [coe_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-comap.md) | 286 | `result-track:2c54844a39e30ad97e72de79578da917c464f16f87077be9faa057829a5bd82d` |
| 41 | `theorem` | [mem_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-comap.md) | 291 | `result-track:ae25a2b0dd8cd096746a0af0ef693a05b0c357da1233b5c47b6857c789fefc31` |
| 42 | `theorem` | [comap_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap-comap.md) | 296 | `result-track:f34f5803627264cf64878705408542d988e8b7162fb80db64466b93ae8f7898b` |
| 43 | `def` | [map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map.md) | 303 | `declaration-track:ffa0b6924ac0765804688511436068e45acd156bf3bd5e2dc03db0935e03d2ef` |
| 44 | `theorem` | [coe_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-map.md) | 308 | `result-track:53f031acbed2c5fdf05be098e29093d53500db80ed88a032ff4998927d88a66d` |
| 45 | `theorem` | [mem_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-map.md) | 313 | `result-track:b7b2ee374dbbb728fd9f73409e90cf61aebb07d5a32dff2d257ee9b91960f7ae` |
| 46 | `theorem` | [map_id](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-id.md) | 319 | `result-track:df5f00d744255867614c33e07eb0dc2415aac7531caf987bb6f6d322301269b2` |
| 47 | `theorem` | [map_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-map.md) | 324 | `result-track:c227aa2a744d80f3704e7850729c28db7022f7b67a87c0e84c3bb0189f1dc13e` |
| 48 | `theorem` | [map_le_iff_le_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-le-iff-le-comap.md) | 329 | `result-track:87cab1a23a7a17f41d9260c65c0350a9a0f38dc274b213b8fa752d1224e0ad60` |
| 49 | `theorem` | [gc_map_comap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/gc-map-comap.md) | 334 | `result-track:8527c6815b778b1d9b2c908693efceba4c29297731ccccc105e5fe9322cb3308` |
| 50 | `def` | [equivMapOfInjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/equivmapofinjective.md) | 340 | `declaration-track:5c0b49fc5b1c00a3adddf3cd6ad18bca3a67651352b05fc51c4e018fec87bf45` |
| 51 | `theorem` | [coe_equivMapOfInjective_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-equivmapofinjective-apply.md) | 348 | `result-track:b10f4b063bb9d0b056a609809725b6b6bd114879010be93c43882b2ca51ef249` |
| 52 | `def` | [srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srange.md) | 363 | `declaration-track:2783e1ab2418e56f85f5efd51dba293a62907907d2cdf8f398f22bed2aaed6a6` |
| 53 | `theorem` | [coe_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-srange.md) | 368 | `result-track:abe7a088c257e21ef04f37cd6ede6c0ec88d4b6cc40a081bdf33143ee1ba8a4b` |
| 54 | `theorem` | [mem_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-srange.md) | 373 | `result-track:48755b7d69896aab948a5ea0ac4361d02afb961a1950da8c1313540ea27b5007` |
| 55 | `theorem` | [srange_eq_map](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srange-eq-map.md) | 377 | `result-track:68768748f108032a11735b6fec4ff60bddf9d92eaca780da29918933ab4e2fcf` |
| 56 | `theorem` | [mem_srange_self](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-srange-self.md) | 382 | `result-track:1529ab7d4e86fdce9a40ca515bae34d41e7426cc04dceb94a539663eaea89551` |
| 57 | `theorem` | [map_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-srange.md) | 386 | `result-track:0a2e475dcdf9fd2f3b596044372ead5c4c4ec84584d4d136b21155b7c840961c` |
| 58 | `instance` | [finite_srange](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/finite-srange.md) | 391 | `declaration-track:79e9f3f8f7740e974fb8cac029ea468548a41617a62dba98410bc6b33709cc58` |
| 59 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance.md) | 400 | `declaration-track:0737e285343d82eff0034c76f94cb1c4e2f984eeda9a64463836a6f6c8bedd5f` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-9.md) | 406 | `declaration-track:f9dd9ea85dd4fb4fc3f71893f003071e9c4550b83367b7ea09c021c6b9fcc8c6` |
| 61 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-bot.md) | 409 | `result-track:94e52e45e04f8bf77bb42738db2b3d03b0692a0329374c6af1a82b0c7d4a68bb` |
| 62 | `theorem` | [mem_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-bot.md) | 413 | `result-track:b0b8d6b07b3b54b4b726485aa700a5a8eae516df71a78b13e2f9e1e2b8fb5da7` |
| 63 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-10.md) | 418 | `declaration-track:fbeeccf19ae9e4133ee0becd9be481496409cb6bb8cc8bdb38dae271d5bfdc7e` |
| 64 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-inf.md) | 424 | `result-track:3c320453152961c90985b8e06afe4c1d45cb7d22bea5b905d78feed29915d942` |
| 65 | `theorem` | [mem_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-inf.md) | 430 | `result-track:fde331e62d64a7de3d0a99ea272fd71bb9e10c41e9d2bf5da1617fefb36c5674` |
| 66 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-3.md) | 434 | `declaration-track:79c7977e67971644c1a6ebfd152ce872427dc832fe8f7d7f289c911ab7261b50` |
| 67 | `theorem` | [coe_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-sinf.md) | 440 | `result-track:b39cdb545d4c3d08e6b71ca50c273ead0fa5703ff1ab71d80deda87bd46ce260` |
| 68 | `theorem` | [mem_sInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-sinf.md) | 445 | `result-track:308d879c72cd77ad7f13cb4a84d8ec2cc6e459295dff91c108218cb3f21dab53` |
| 69 | `theorem` | [sInf_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sinf-tosubsemigroup.md) | 450 | `result-track:0b85c7dfd72d774a0d0438b97fc6f68c64c2bb328b90835e98dbf445c6d25307` |
| 70 | `theorem` | [sInf_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sinf-toaddsubmonoid.md) | 456 | `result-track:0de9dafd7fa3663ca7f87b9dbdb8ac66bfa78e2daf631cb4476443363ea56033` |
| 71 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/instance-source-edition-4.md) | 462 | `declaration-track:7f82906d96ef48734669467f58e181748051dd36140e31b64f6f7471691d1c78` |
| 72 | `theorem` | [eq_top_iff'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/eq-top-iff.md) | 474 | `result-track:2f693a1f840b51fc6282f6a5f54db2afea3f5d211bd266074260db192a855d13` |
| 73 | `def` | [center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/center.md) | 481 | `declaration-track:e04a65d13657f0c2a374749f9a8734bfdf7d3ee9a94cf420da55d12c6e96bb22` |
| 74 | `theorem` | [coe_center](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-center.md) | 488 | `result-track:2983521215ba5803b39596c4599ddf853d9e66cecfa810fb0a6187c161f496ee` |
| 75 | `theorem` | [center_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/center-tosubsemigroup.md) | 493 | `result-track:62cdf41b64be0878863de29e3ea9fa398276376bccbe529815fb3ac16aa9a22e` |
| 76 | `theorem` | [mem_center_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-center-iff.md) | 498 | `result-track:4daf8732ff2d8ab954ff774eb766a579da90bd1d6b35b11b69fa7856e3855d32` |
| 77 | `instance` | [decidableMemCenter](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/decidablememcenter.md) | 502 | `declaration-track:6d64ea7ae9d5424b2b27366d694c68cff40f8e1c13f6503e1a7ab150f3ef130c` |
| 78 | `theorem` | [center_eq_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/center-eq-top.md) | 507 | `result-track:ae3206e07b7b6c9e1ad121dd5ded08e57014cd154031d6ead85e3a244b788ac9` |
| 79 | `instance` | [center.instNonUnitalCommSemiring](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/center-instnonunitalcommsemiring.md) | 512 | `declaration-track:0e7f6aa048130a7618e9ac5e1ff166a0bbdeeecf554bab6b73553d3e9ba406ca` |
| 80 | `def` | [centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/centralizer.md) | 522 | `declaration-track:f911db898d0f0d245770860780b5a71bdad441dba7123ad4809d6c7411b925e5` |
| 81 | `theorem` | [coe_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-centralizer.md) | 530 | `result-track:80f5972165a26475bf88280e72dc9b42e986e4e2a64382724895a59bd9fb4c24` |
| 82 | `theorem` | [centralizer_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/centralizer-tosubsemigroup.md) | 535 | `result-track:d779aafd5f6156c441d846e972a0a26fee29451e8e4c985e4eae0bee09b76138` |
| 83 | `theorem` | [mem_centralizer_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-centralizer-iff.md) | 540 | `result-track:2df600b51764467f48f360eaaa26a44f816f8d79133db85eeea0cafadcad5bb8` |
| 84 | `theorem` | [center_le_centralizer](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/center-le-centralizer.md) | 545 | `result-track:e751f015418b37c6d68b341fccd9db7825d7d29e1a55c44e31d04bec76728bbf` |
| 85 | `theorem` | [centralizer_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/centralizer-le.md) | 549 | `result-track:dc7117ec3db1c4c0d86247664288e3e279b5976ffdd8bf73d7e2deb16e8fcc6e` |
| 86 | `theorem` | [centralizer_eq_top_iff_subset](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/centralizer-eq-top-iff-subset.md) | 555 | `result-track:a49ceb0932d5a1feb6b01f4910c3f84cb828b517db1882330a5eb1d6658c9917` |
| 87 | `theorem` | [centralizer_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/centralizer-univ.md) | 561 | `result-track:1a6e870bd5cd22d567af6fdc30a6902e3d917d7d6a51f723349be7686e8f7cf1` |
| 88 | `def` | [closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure.md) | 568 | `declaration-track:c652980d1ccc5aa5bccc93edbcaec330690e34864e22ec655cf9e3c56a384a39` |
| 89 | `theorem` | [mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-closure.md) | 572 | `result-track:72e634dc4aefa3df304611ba13b8ddb2475d74f465dbdc2d490bb24fd709069a` |
| 90 | `theorem` | [subset_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/subset-closure.md) | 579 | `result-track:b8dbeafddacbc12b7f89bc00c8a353c43261c6c97434c7562641746470a9dba1` |
| 91 | `theorem` | [not_mem_of_not_mem_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/not-mem-of-not-mem-closure.md) | 582 | `result-track:e29d5b7822c0e695dbf8e191617267d7d92e29e2cf3b37118bc8207c2e6219fb` |
| 92 | `theorem` | [closure_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-le.md) | 588 | `result-track:ad4243c6d753ce0b214ebcf56d0c5d071d665618c578e3b60952b00b9b1fdd64` |
| 93 | `theorem` | [closure_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-mono.md) | 594 | `result-track:f80e17f8f170d39869a39a8f776fdc39fd7b9e797873513c272119619cd3a502` |
| 94 | `theorem` | [closure_eq_of_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-eq-of-le.md) | 598 | `result-track:934c65ff1dbdd8f33381b72f5770c13ff6b56cf6f2170c35ef34df41f60619e5` |
| 95 | `theorem` | [mem_map_equiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-map-equiv.md) | 603 | `result-track:956da1ff847fdb4944cf366182bd8b9e297dab3bad55ef9a83143c128b353b5a` |
| 96 | `theorem` | [map_equiv_eq_comap_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-equiv-eq-comap-symm.md) | 608 | `result-track:4e393afbcbb1f6f3fd1caebe5050cf5678c84b1b7553c1246601beaeacd7cb3d` |
| 97 | `theorem` | [comap_equiv_eq_map_symm](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap-equiv-eq-map-symm.md) | 613 | `result-track:3de14019f24600564f0fd052129744a983cb488f96e462d47ce4ebaab242b330` |
| 98 | `def` | [nonUnitalSubsemiringClosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure.md) | 623 | `declaration-track:25b3adaf7eca3e54bbbb7996c28ca09f3d474c84aed45c7bb708f9390547483b` |
| 99 | `theorem` | [nonUnitalSubsemiringClosure_coe](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-coe.md) | 627 | `result-track:3bbd879e21a063ba959aa5b9fa1c7efa81be2e578c89b18f8b8be2f8ccf18761` |
| 100 | `theorem` | [nonUnitalSubsemiringClosure_toAddSubmonoid](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-toaddsubmonoid.md) | 632 | `result-track:04cdd9ebc1e6fb985d03b7f8dc997686448e68049e3bc73c74c08408e1bb5a78` |
| 101 | `theorem` | [nonUnitalSubsemiringClosure_eq_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringclosure-eq-closure.md) | 639 | `result-track:87c6b14dbb444af1aa4c4a25695fb0875824381f0de7e47b970cff652afad300` |
| 102 | `theorem` | [closure_subsemigroup_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-subsemigroup-closure.md) | 655 | `result-track:f26a71b987429812fdd42610b591025138aa0a5ee452eb48aa3a59c15adca838` |
| 103 | `theorem` | [coe_closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-closure-eq.md) | 664 | `result-track:82f5140b827b5ebf40e181540a38089c43b53105d9b30adaacf02a3428fb33a7` |
| 104 | `theorem` | [mem_closure_iff](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-closure-iff.md) | 670 | `result-track:bafb0c6baf5f132c310f50fa87a290f34492eb1547c4272523c88f85305eed94` |
| 105 | `theorem` | [closure_addSubmonoid_closure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-addsubmonoid-closure.md) | 676 | `result-track:47bc381da82ff4ddaacccee44da48dff236a9c7e6e363f6e29bd4bdce4e435d9` |
| 106 | `theorem` | [closure_induction](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-induction-source-edition-2.md) | 691 | `result-track:c040ec8924f771a5418167b01b967eca82f01334d4ae29628b3bd45ed75694c3` |
| 107 | `theorem` | [closure_induction₂](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-induction.md) | 698 | `result-track:aeb3f033e98ac4973335e95270ef93dc6c47a71bf3df01bb234f9ebc2731d1d8` |
| 108 | `def` | [gi](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/gi.md) | 712 | `declaration-track:dca077e7bab33a6370ae3fd4aa4396e57e4790b8f7f1c63df6283b4be587a855` |
| 109 | `theorem` | [closure_eq](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-eq.md) | 723 | `result-track:ddaf949ae4a1b9d660062222960b2eb678835ce0760bc3054b99d5a0f863a70e` |
| 110 | `theorem` | [closure_empty](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-empty.md) | 728 | `result-track:a7351f26008f17320060df623f4f3023d2b213d700505954123c3bc54de08acd` |
| 111 | `theorem` | [closure_univ](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-univ.md) | 733 | `result-track:e2911a6118da82689d6a55eb967c97b716908a9b9639c1c9aee4801906cd5b05` |
| 112 | `theorem` | [closure_union](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-union.md) | 737 | `result-track:4286676b46de8ba1bc7e29d70e9666c07565ed22db432a68cef2f4ec4b680111` |
| 113 | `theorem` | [closure_iUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-iunion.md) | 741 | `result-track:aae4c95da84403cea4fc72e62efcf2872b20323c053fcd8edd634982d81da9f8` |
| 114 | `theorem` | [closure_sUnion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/closure-sunion.md) | 745 | `result-track:7dc41f60d5a92dae0ca5e0b3b17a823d4c07a9626aae2948a18a33189e3c123a` |
| 115 | `theorem` | [map_sup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-sup.md) | 749 | `result-track:3b7c419e09d74840764757e18a8f1f1de2dc02ee898c0fe8d40ec2cd6b12f386` |
| 116 | `theorem` | [map_iSup](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-isup.md) | 754 | `result-track:772b259d6f192d70f4cb2ec7b5e41f61f45e6fd359ebc9acf551d9bfb6443db1` |
| 117 | `theorem` | [comap_inf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap-inf.md) | 759 | `result-track:f5ee5e32a904784e9145e629b00e45138ece63d6337247e6b688e8d14622995b` |
| 118 | `theorem` | [comap_iInf](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap-iinf.md) | 764 | `result-track:0297d8e7e2974cfe204b7624d23dae4d42a03e147c2bd0d325181f5aaac66ee3` |
| 119 | `theorem` | [map_bot](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-bot.md) | 770 | `result-track:82b3059247fe8f8e923a2fd24a0d8c41c46b58c1c31e44f0c58131a8be61f56a` |
| 120 | `theorem` | [comap_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/comap-top.md) | 775 | `result-track:bc14fbb833fe6bf48ae8542f0f900f886cd6226e39a7848f44891020b5e0b2c7` |
| 121 | `def` | [prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prod.md) | 781 | `declaration-track:f88d80764bbc6f22889f5a29afd0c6f592a98a93719a6f521d984c85593aab9c` |
| 122 | `theorem` | [coe_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-prod.md) | 787 | `result-track:f8793780cc1269226c4c5f1d147d925d7a61b628584f8f821e2b2e63ed3ce6b3` |
| 123 | `theorem` | [mem_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-prod.md) | 792 | `result-track:b963f1afe88d32336b0c964273575a08d67f66799cacbacc8b6a99ada988cdbc` |
| 124 | `theorem` | [prod_mono](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prod-mono.md) | 798 | `result-track:3a1092772b1c2cde928264996f3a1d7687def28fe4090ed74e03bc0140fe40cc` |
| 125 | `theorem` | [prod_mono_right](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prod-mono-right.md) | 803 | `result-track:d5cd463b9e226ca7216184aea25e7c8c233ac6491574126ee8b4d97fb1f0a755` |
| 126 | `theorem` | [prod_mono_left](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prod-mono-left.md) | 808 | `result-track:6a269190dc051340fe0b13052ff88b7f60f7f1154a5de2e87e2d05e81d814d15` |
| 127 | `theorem` | [prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prod-top.md) | 812 | `result-track:fd424386c59b70daeee356e1b4e69ff18670c782c4c905edffe72725f886023e` |
| 128 | `theorem` | [top_prod](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/top-prod.md) | 817 | `result-track:22f6340f29d0af659820f2b7c7e0d9145077876368b2e4872bfbb5ff0e96dd3d` |
| 129 | `theorem` | [top_prod_top](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/top-prod-top.md) | 823 | `result-track:fe8a43b0842654d183f33b086acf8ed4a96626044fdd3e047b5f6688315a0eec` |
| 130 | `def` | [prodEquiv](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/prodequiv.md) | 828 | `declaration-track:f4551b72e8045ee8a81f66f3662f13963b46ad1931bcea96ea0e3923cc75555e` |
| 131 | `theorem` | [mem_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-isup-of-directed.md) | 834 | `result-track:69152096a1b75d814a88eb96ee6450fedd7b1349f470290aaefa192ce9229578` |
| 132 | `theorem` | [coe_iSup_of_directed](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-isup-of-directed.md) | 847 | `result-track:ff70f16286f2051cf40e05da8b5d0de111c0514b1241e985103d80aa603aa086` |
| 133 | `theorem` | [mem_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/mem-ssup-of-directedon.md) | 852 | `result-track:d210da036fcc9399403e291616133252c77faabab8ab8164e8dbd75170385c00` |
| 134 | `theorem` | [coe_sSup_of_directedOn](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-ssup-of-directedon.md) | 858 | `result-track:efc1ce1900bac6319226f0984ef88b242030685bd6fbd8cd3970898981b2ab4e` |
| 135 | `def` | [codRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/codrestrict.md) | 874 | `declaration-track:df0e54dd48da34a3732a9425c8e8d7359415bae869dc64296a6e9eda914061d9` |
| 136 | `def` | [srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srangerestrict.md) | 885 | `declaration-track:714f02df925454f775df1538b77f38b8f044065b2e0bd942f3cdb4455a1e9230` |
| 137 | `theorem` | [coe_srangeRestrict](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/coe-srangerestrict.md) | 890 | `result-track:1a94206ea7de79483f5d9d467d6af6cc3c9969d93a3fd921c99be4c65e8e4195` |
| 138 | `theorem` | [srangeRestrict_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srangerestrict-surjective.md) | 894 | `result-track:eb056c026cf9dd04f55e2541ce035ffca6cab8fd5cc912b7f864833185f6084a` |
| 139 | `theorem` | [srange_top_iff_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srange-top-iff-surjective.md) | 901 | `result-track:9108bcfbce2005e0965fbca427d05649a3e5e5071b2a9863e1d9c84fdf70563c` |
| 140 | `theorem` | [srange_top_of_surjective](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srange-top-of-surjective.md) | 908 | `result-track:4ab95fb734382587e230af8290e81c08ac5e257586d85c2116fa56c8b9fef58b` |
| 141 | `def` | [eqSlocus](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/eqslocus.md) | 914 | `declaration-track:742df10e30c0257786c480a017ebb46310f9312283a61b5c694e902770ea9a06` |
| 142 | `theorem` | [eqOn_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/eqon-sclosure.md) | 921 | `result-track:4a5e4e783c7fc02c19b14116d7553e3e8f55e3a17a4700777e82f50b1a26c155` |
| 143 | `theorem` | [eq_of_eqOn_stop](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/eq-of-eqon-stop.md) | 926 | `result-track:78cef1441784217b1903c7f16bae6e386149a9ec9fa6ed95efa621caa3020e44` |
| 144 | `theorem` | [eq_of_eqOn_sdense](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/eq-of-eqon-sdense.md) | 931 | `result-track:df60fe8609b12c68dbbbf2060567472316ed66451eaa7bf9f5cef8a1aafd0408` |
| 145 | `theorem` | [sclosure_preimage_le](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sclosure-preimage-le.md) | 936 | `result-track:4a2f4448e4b25da179450f3375bc754706c31b723be3b1e18dbebe41159f2892` |
| 146 | `theorem` | [map_sclosure](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/map-sclosure.md) | 943 | `result-track:1d1358f19c6d343bb7649be105b845e2364e18b8286c31babb5b349974bea70b` |
| 147 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/inclusion.md) | 958 | `declaration-track:47f4088716cb4f11d11d3e5f384e9e11d0ae71a625117f45264d39200bed0155` |
| 148 | `theorem` | [srange_subtype](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/srange-subtype.md) | 963 | `result-track:01f0d2b333d552eba60f7afb7cb357e5542be229dac296c007bdf244237b2110` |
| 149 | `theorem` | [range_fst](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/range-fst.md) | 968 | `result-track:308196548a487081ec4d7550686ee7ff05fc6e8f244a17c0f04ce538c4ef58db` |
| 150 | `theorem` | [range_snd](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/range-snd.md) | 973 | `result-track:aa3190b79eb077614ecd29d61f491350ae986be8aa46ffc4386a6cab2a5c186f` |
| 151 | `def` | [nonUnitalSubsemiringCongr](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringcongr.md) | 989 | `declaration-track:822cdb071ba56eb1a6988b8c4c9cae1db103c9a63106552db3e4e003263e8f37` |
| 152 | `def` | [sofLeftInverse'](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sofleftinverse.md) | 997 | `declaration-track:370b1b82750ed58faf85ed9db67b07cf8d3c864eccc3850b4f8b8071caa9a07b` |
| 153 | `theorem` | [sofLeftInverse'_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sofleftinverse-apply.md) | 1009 | `result-track:3930216894e9402a40796f363883cddac7b1d77c5a1a9eff37d9428fa009ac27` |
| 154 | `theorem` | [sofLeftInverse'_symm_apply](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/sofleftinverse-symm-apply.md) | 1015 | `result-track:ad51d3f4be9f235f0a0f2609967e810cb6f56cb09d2d92471c5d7d1fc0ea763d` |
| 155 | `def` | [nonUnitalSubsemiringMap](../../../../CommutativeAlgebra/NonUnitalSubsemiringBasicNamespacedNonUnitalSubsemiringClass.lean/declarations/nonunitalsubsemiringmap.md) | 1024 | `declaration-track:a570bed5d930624768372d48bcf2fc3b03bb1a1491ff59012849edddb523ac95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26c8d28ad87ee117c450fbda6490725f92da80f2b237dd5f652fa0c3e29061e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5f00f7425b48e47f30f4fea26657ab054a42050789e4f58e011cb478c7c75bbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
