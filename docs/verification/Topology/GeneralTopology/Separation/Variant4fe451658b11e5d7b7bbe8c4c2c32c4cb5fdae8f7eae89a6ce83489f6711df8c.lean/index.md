# Verification target: GRWTSK.Topology.GeneralTopology.Separation.Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8041057b0f000fc21fa6ad7206c20e3699305b49",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8041057b0f000fc21fa6ad7206c20e3699305b49`.

Source path: `GRWTSK/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ApplyFun` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/instance--cf980d5cd51268946ed98add.md) | 119 | `declaration-track:cf980d5cd51268946ed98addf9bfab7b6d50e9f2bfb0c71a9c55390075825234` |
| 2 | `theorem` | [Filter.HasBasis.specializes_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/filter-hasbasis-specializes-iff-uniformity--90db5196bfb20703b0a4049f.md) | 124 | `result-track:90db5196bfb20703b0a4049f88fd4808231729e2eb5bade9975704749f50deee` |
| 3 | `theorem` | [Filter.HasBasis.inseparable_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/filter-hasbasis-inseparable-iff-uniformity--df732f255abf9bddd86465bc.md) | 128 | `result-track:df732f255abf9bddd86465bcec755227705dc51181ff924f532486e5e607cee0` |
| 4 | `theorem` | [inseparable_iff_ker_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/inseparable-iff-ker-uniformity--b19f5757fe3ccf4d579f4bba.md) | 132 | `result-track:b19f5757fe3ccf4d579f4bba42ec2b6ab94de8e1029f11d83f4521eaa2c9ab0f` |
| 5 | `theorem` | [Inseparable.nhds_le_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/inseparable-nhds-le-uniformity--b76725a0b9dfcae7019a4673.md) | 135 | `result-track:b76725a0b9dfcae7019a46732b5c3c46a0ffac490233eb380011730d2c6019c5` |
| 6 | `theorem` | [inseparable_iff_clusterPt_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/inseparable-iff-clusterpt-uniformity--85c91785becc3fcb54c32f75.md) | 140 | `result-track:85c91785becc3fcb54c32f75a79507aadad5aae688c3f1a410e3f4728b9785dc` |
| 7 | `theorem` | [t0Space_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/t0space-iff-uniformity--08b51413cf2474ae0313eaa8.md) | 146 | `result-track:08b51413cf2474ae0313eaa8876b3937f32e1fceed7204d294f5e0ec9ce9e4c3` |
| 8 | `theorem` | [t0Space_iff_uniformity'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/t0space-iff-uniformity--1466831447b80d35bfd91a49.md) | 150 | `result-track:1466831447b80d35bfd91a49186a6c61f7180187fdb46fc32b4498b7f858e7f8` |
| 9 | `theorem` | [t0Space_iff_ker_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/t0space-iff-ker-uniformity--ff23227fe660a612cb5ec198.md) | 154 | `result-track:ff23227fe660a612cb5ec198bfa407a2884957a3934f6519ff080a86b46b3660` |
| 10 | `theorem` | [eq_of_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/eq-of-uniformity--1593168bd5b379e991d3f601.md) | 159 | `result-track:1593168bd5b379e991d3f601db70dd80f84d65a543f2768a5ac54eedea115e0b` |
| 11 | `theorem` | [eq_of_uniformity_basis](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/eq-of-uniformity-basis--8e630a981d65bff92bf698ca.md) | 163 | `result-track:8e630a981d65bff92bf698ca340a55cee40b98f9c422dfef1c0619b110a95c7a` |
| 12 | `theorem` | [eq_of_forall_symmetric](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/eq-of-forall-symmetric--fa0ffb6a3bf1f5e2ffd9629a.md) | 168 | `result-track:fa0ffb6a3bf1f5e2ffd9629aa5ce93571eb74ceff9658e778ba59a1dd828bb68` |
| 13 | `theorem` | [eq_of_clusterPt_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/eq-of-clusterpt-uniformity--57c22b0aa853a875234d885d.md) | 172 | `result-track:57c22b0aa853a875234d885da7405b8dd7cf7a394bde700073447d746447c29e` |
| 14 | `theorem` | [Filter.Tendsto.inseparable_iff_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/filter-tendsto-inseparable-iff-uniformity--712666f793c0909fd477c6d5.md) | 175 | `result-track:712666f793c0909fd477c6d5302302ac5d1351b0ff70b4177faff31b625dd4b2` |
| 15 | `theorem` | [isClosed_of_spaced_out](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/isclosed-of-spaced-out--b18dfa94ac540eff91384e66.md) | 182 | `result-track:b18dfa94ac540eff91384e66cef9f7939cf998007c5fefd151c771e4ba78ecaa` |
| 16 | `theorem` | [isClosed_range_of_spaced_out](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/isclosed-range-of-spaced-out--5ce5e50787acb9c19bf0c5cf.md) | 198 | `result-track:5ce5e50787acb9c19bf0c5cfff82d068c2e5d50e7289c8b933a8661971c3a0c3` |
| 17 | `theorem` | [comap_map_mk_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/comap-map-mk-uniformity--d05203dfa3c971f887b324b0.md) | 210 | `result-track:d05203dfa3c971f887b324b09ae4390b5702d877bcbeff8ca58fc0717694855b` |
| 18 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/instuniformspace--f5bd71298603cc965a7719e0.md) | 217 | `declaration-track:f5bd71298603cc965a7719e05d30c33085662fed0fc2df4fcac63046f618d0f9` |
| 19 | `theorem` | [uniformity_eq](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformity-eq--ee5f16b93dddf3c9ecd64021.md) | 231 | `result-track:ee5f16b93dddf3c9ecd64021c7c28d68ec908b50849e57046a35308fc6d381eb` |
| 20 | `theorem` | [uniformContinuous_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-mk--63d489f0c7de5dbe5c6780b9.md) | 233 | `result-track:63d489f0c7de5dbe5c6780b9778e0fc5a2cbdd3ebae92a1379c52c5c4e626211` |
| 21 | `theorem` | [uniformContinuous_dom](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-dom--5f0ba58d80942005300fc12d.md) | 236 | `result-track:5f0ba58d80942005300fc12d988cd55e0ecc0434c2072970c2f92b5e28353749` |
| 22 | `theorem` | [uniformContinuous_dom₂](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-dom--dbb8fb1b3149cd47a3822ed5.md) | 240 | `result-track:dbb8fb1b3149cd47a3822ed548097791fda4109a8fe1f7a5cd7ddba5645e5bbe` |
| 23 | `theorem` | [uniformContinuous_lift](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-lift--54e11eb214c03a23e0b125e1.md) | 246 | `result-track:54e11eb214c03a23e0b125e169a8195e3239b5f14d70f005ed206230e4edf1dd` |
| 24 | `theorem` | [uniformContinuous_uncurry_lift₂](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-uncurry-lift--1c535f8484c7a1ef15c6860b.md) | 250 | `result-track:1c535f8484c7a1ef15c6860b7e2fe1e4cf630dbd2e9894008c3191f652b4febe` |
| 25 | `theorem` | [comap_mk_uniformity](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/comap-mk-uniformity--74cc2631de4252db7e894b1d.md) | 255 | `result-track:74cc2631de4252db7e894b1d7b66c4a355960a4f1ff4acc6c4dd18dbdf535883` |
| 26 | `def` | [lift'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/lift--98df0e72907bee195d0cb276.md) | 262 | `declaration-track:98df0e72907bee195d0cb2765e43cbb19a42ee6295fbdff63837369cc14f0ea2` |
| 27 | `theorem` | [lift'_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/lift-mk--e675abef7498c1552b248c36.md) | 266 | `result-track:e675abef7498c1552b248c3621a40f6553b7e35ae46f3dae297da9a78f9d1f40` |
| 28 | `theorem` | [uniformContinuous_lift'](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-lift--fbdee08ebfd50856f6b44f3e.md) | 269 | `result-track:fbdee08ebfd50856f6b44f3e2258b083b0ede0f96fb288bd66729d691e1b150f` |
| 29 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/map--4501b6fa871e4ecf91af5922.md) | 276 | `declaration-track:4501b6fa871e4ecf91af59226929b736d80f882b388ca3d54776068ac81c1599` |
| 30 | `theorem` | [map_mk](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/map-mk--36fe0077bfdfa2e2ce19cfdf.md) | 278 | `result-track:36fe0077bfdfa2e2ce19cfdf9bc5664c3ce194a97be792a0f0968a67c6211a95` |
| 31 | `theorem` | [uniformContinuous_map](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/uniformcontinuous-map--5b94703950c338dfed7168d3.md) | 281 | `result-track:5b94703950c338dfed7168d3bf99bcf1aa4894658a99400425b2aeb808f80b39` |
| 32 | `theorem` | [map_unique](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/map-unique--4030c4791cee8d92ce66129f.md) | 284 | `result-track:4030c4791cee8d92ce66129f5c469e83e17f3072ae8f463067e8a9835b8dd2c8` |
| 33 | `theorem` | [map_id](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/map-id--3ee2f0e860ae557ce8b6f734.md) | 292 | `result-track:3ee2f0e860ae557ce8b6f73475521ce1472417f1dc0ce75025c23567564b3731` |
| 34 | `theorem` | [map_comp](../../../../../mathematics/Topology/GeneralTopology/Separation/Variant4fe451658b11e5d7b7bbe8c4c2c32c4cb5fdae8f7eae89a6ce83489f6711df8c.lean/declarations/map-comp--8aace2da4ec6a1b546f6521b.md) | 294 | `result-track:8aace2da4ec6a1b546f6521bf1bc1acb3630997f0da9a1575984945d8b8aae3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
