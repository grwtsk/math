# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.Separation.Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fbf215bfb5ba000afee27bfe16348a9b24912d1e",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fbf215bfb5ba000afee27bfe16348a9b24912d1e`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.ApplyFun` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/instance--b0fce88471a164e7b8cbaffc.md) | 83 | `declaration-track:b0fce88471a164e7b8cbaffc7dc621a32fd2a0c1efa42b2fedbbc88496dfd710` |
| 2 | `def` | [separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationrel--c88c949760e309ebdd3b90d6.md) | 95 | `declaration-track:c88c949760e309ebdd3b90d68362edb8e565e60830f8dba5edf9fd973e6e9a6a` |
| 3 | `theorem` | [separated_equiv](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-equiv--0b2fb059cfd332d1abdb976e.md) | 101 | `result-track:0b2fb059cfd332d1abdb976e7aee7b87b4f64df837b8f2d45d2741e484afd847` |
| 4 | `theorem` | [Filter.HasBasis.mem_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/filter-hasbasis-mem-separationrel--84b4111b7ec6675aea9b7480.md) | 108 | `result-track:84b4111b7ec6675aea9b7480561b2e1510d586c2fe37b10c2e6237210c5209e7` |
| 5 | `theorem` | [separationRel_iff_specializes](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationrel-iff-specializes--eaaf2da7c23fe20bb8f353e3.md) | 113 | `result-track:eaaf2da7c23fe20bb8f353e3f5b456c063410f5c89b90f128c76ae9cc5d4f936` |
| 6 | `theorem` | [separationRel_iff_inseparable](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationrel-iff-inseparable--9bccb2b4eadccffbb4de6942.md) | 118 | `result-track:9bccb2b4eadccffbb4de6942aa925540c0acc5ae46c01367d692b340aba8686b` |
| 7 | `class` | [SeparatedSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separatedspace--3efa5956ee28e0a348b423d2.md) | 124 | `declaration-track:3efa5956ee28e0a348b423d2c4542f38aaea606781bf5f7ba1941cf35d18a4b3` |
| 8 | `theorem` | [separatedSpace_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separatedspace-iff--c73fe722067f5c85bff37ca9.md) | 129 | `result-track:c73fe722067f5c85bff37ca9c2b790d051186615d41e2328d111cd3579defd1b` |
| 9 | `theorem` | [separated_def](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-def--75b502371df980e66f2fb4c1.md) | 133 | `result-track:75b502371df980e66f2fb4c1e7f98d84055f0f51610a7ed565eabf7897445890` |
| 10 | `theorem` | [separated_def'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-def--222e52981708764b281d6567.md) | 139 | `result-track:222e52981708764b281d65678cf98ebe5ebc9c91f0082ce3c4b7f2ed2466afab` |
| 11 | `theorem` | [eq_of_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/eq-of-uniformity--28f4317867aafa36d49980eb.md) | 144 | `result-track:28f4317867aafa36d49980ebb788f548992a951458d563dcbe99d3d43fe97976` |
| 12 | `theorem` | [eq_of_uniformity_basis](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/eq-of-uniformity-basis--3738288db39ae9e0cb66f5fd.md) | 149 | `result-track:3738288db39ae9e0cb66f5fd526c36d5c5f5d5aa691a5753768b2c74fe9fe1f9` |
| 13 | `theorem` | [eq_of_forall_symmetric](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/eq-of-forall-symmetric--eb24d94139c1c2bc83260940.md) | 155 | `result-track:eb24d94139c1c2bc83260940106bc35e91a3e210c3bb9d17e719c441c42d9893` |
| 14 | `theorem` | [eq_of_clusterPt_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/eq-of-clusterpt-uniformity--a661e8e9481e7477a6f4b791.md) | 160 | `result-track:a661e8e9481e7477a6f4b7918a4827b3c511421dbb39af5afad634a5234d74b3` |
| 15 | `theorem` | [idRel_sub_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/idrel-sub-separationrel--5f832af2051f59d967f2ea58.md) | 166 | `result-track:5f832af2051f59d967f2ea589480ab1aae797f65fd2eb88d8f61d74dacd810cb` |
| 16 | `theorem` | [separationRel_comap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationrel-comap--90ac4e7148bfc5d38d2d2b0b.md) | 174 | `result-track:90ac4e7148bfc5d38d2d2b0b5d79fedbd23571d5de2214add6dc19e5eaf7f345` |
| 17 | `theorem` | [Filter.HasBasis.separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/filter-hasbasis-separationrel--2477e7815fc20afd275f00db.md) | 184 | `result-track:2477e7815fc20afd275f00dbf5760d992e846b842e882f74359cdec6a909ff44` |
| 18 | `theorem` | [separationRel_eq_inter_closure](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationrel-eq-inter-closure--664d90d2873e7d5ccfd15f12.md) | 190 | `result-track:664d90d2873e7d5ccfd15f12a1c63ffd7976221127a068fdffab6a3d8ca8b489` |
| 19 | `theorem` | [isClosed_separationRel](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/isclosed-separationrel--108db4881c794eaa401d429e.md) | 194 | `result-track:108db4881c794eaa401d429e0c237eb6611458c529bcf4fc345a8bf6d9f4ed38` |
| 20 | `theorem` | [separated_iff_t2](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-iff-t2--4de19241239ee7dc8a63494c.md) | 201 | `result-track:4de19241239ee7dc8a63494c89e0576ea6678e15450f35af9787f1ccdda85214` |
| 21 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/instance--e43e2ff6eca8877dfd65fdab.md) | 213 | `declaration-track:e43e2ff6eca8877dfd65fdabedaaba9f2649c2568f77da6e79f321b03f56c42f` |
| 22 | `instance` | [Subtype.separatedSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/subtype-separatedspace--e9799553125a4cee5da10bd1.md) | 218 | `declaration-track:e9799553125a4cee5da10bd152aa172ba33b371f90aa8d96edb3efc121f68ed9` |
| 23 | `theorem` | [isClosed_of_spaced_out](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/isclosed-of-spaced-out--16bd601f29f0d6ca3afb078d.md) | 222 | `result-track:16bd601f29f0d6ca3afb078d9035010e686fc57d3f512537aa80f85a7dfafc3d` |
| 24 | `theorem` | [isClosed_range_of_spaced_out](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/isclosed-range-of-spaced-out--6798c62e8946b4ac27139516.md) | 239 | `result-track:6798c62e8946b4ac2713951604e6d2a2e989ff5072dd2d55071abf77130151a9` |
| 25 | `def` | [separationSetoid](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationsetoid--69f010e4cec060a7ca4f3c5e.md) | 253 | `declaration-track:69f010e4cec060a7ca4f3c5e8a7689a84b1c8b1f276a5ac3a2d95f0a3fa9f0e5` |
| 26 | `instance` | [separationSetoid.uniformSpace](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationsetoid-uniformspace--b563cd6058a794902c51a3a8.md) | 259 | `declaration-track:b563cd6058a794902c51a3a8c54bf7484895ab84f70df905514559c24f212a8d` |
| 27 | `theorem` | [uniformity_quotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformity-quotient--7157357d97df3ef3ee7b9695.md) | 281 | `result-track:7157357d97df3ef3ee7b96956f5427cd4df692b405e0157402bf2a54916a6f38` |
| 28 | `theorem` | [uniformContinuous_quotient_mk'](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-quotient-mk--d3f81609b53b3add00612cde.md) | 286 | `result-track:d3f81609b53b3add00612cde7b9bd82bb186ccc5cf5c0d6f925eb43f1a49ae85` |
| 29 | `theorem` | [uniformContinuous_quotient_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-quotient-mk--c4c1254b5e7a865b33689958.md) | 291 | `result-track:c4c1254b5e7a865b336899583146a7c02214432c8bff4ccdb8d4df28a4c01664` |
| 30 | `theorem` | [uniformContinuous_quotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-quotient--50112a41cb4934cd0b17fcf1.md) | 294 | `result-track:50112a41cb4934cd0b17fcf1ad989bf75077c8bd87b1f2fc2db3c98b95181cfd` |
| 31 | `theorem` | [uniformContinuous_quotient_lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-quotient-lift--e8793948f416960434406c74.md) | 299 | `result-track:e8793948f416960434406c7467ee921bdddc3b4962443f0bb02bf5eb25006e08` |
| 32 | `theorem` | [uniformContinuous_quotient_lift₂](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-quotient-lift--49ef567fcfaeaa97abb11fba.md) | 304 | `result-track:49ef567fcfaeaa97abb11fbaf70eafee5244f8970f3dcc76fdbad4fa72cc2e47` |
| 33 | `theorem` | [comap_quotient_le_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/comap-quotient-le-uniformity--eba90b71a53366efe0f3a31d.md) | 313 | `result-track:eba90b71a53366efe0f3a31dc9503fb58e6749d3011aee619e160b11bf0bb826` |
| 34 | `theorem` | [comap_quotient_eq_uniformity](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/comap-quotient-eq-uniformity--3087dc6e762fe5d3f6ff98a3.md) | 322 | `result-track:3087dc6e762fe5d3f6ff98a372fce81949fe67502a8b8a42e7398eefa983dd32` |
| 35 | `instance` | [separated_separation](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-separation--9c0c5ee887a85e32598810e9.md) | 327 | `declaration-track:9c0c5ee887a85e32598810e90c92dccb033cd2669e1b1e6b0c325b509570a343` |
| 36 | `theorem` | [separated_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-of-uniformcontinuous--b9a2af9d99225aa99321461b.md) | 341 | `result-track:b9a2af9d99225aa99321461bd1178f967f85334a08433a5f6dfbd4de2e2110be` |
| 37 | `theorem` | [eq_of_separated_of_uniformContinuous](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/eq-of-separated-of-uniformcontinuous--c688b2e94024291262abcf2b.md) | 345 | `result-track:c688b2e94024291262abcf2bbb048daf45aee2754261a5b91707445763ef3c6b` |
| 38 | `def` | [SeparationQuotient](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separationquotient--8321427fef7baa3689a9961c.md) | 351 | `declaration-track:8321427fef7baa3689a9961c8c20e0882903a277d3d708b739455fe7b3fd2e67` |
| 39 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/instance--574d916f22ee04f904cbc40c.md) | 357 | `declaration-track:574d916f22ee04f904cbc40ca822905f900abacf192b8b6e72e8917c5520d5b5` |
| 40 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/instance--817083d2723078470f5b3f1a.md) | 360 | `declaration-track:817083d2723078470f5b3f1ab3cadb2a7583beb5b17eeb94f9f5f959c29b89a7` |
| 41 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/instance--2f2886ccad40bafb6e0e26eb.md) | 363 | `declaration-track:2f2886ccad40bafb6e0e26eb9dfe814b607d019a7a4cab6941e29b8eab524cea` |
| 42 | `lemma` | [mk_eq_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/mk-eq-mk--99c72e4d1c7cd455f34f0350.md) | 366 | `result-track:99c72e4d1c7cd455f34f0350938fada78e6beb42e433a5aa26e5079f579e38dc` |
| 43 | `def` | [lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/lift--d6d8ac1875399945bad91e62.md) | 371 | `declaration-track:d6d8ac1875399945bad91e6241dc2f20f2a5ff9e42ec1a7f48d2dd3489b6ce97` |
| 44 | `theorem` | [lift_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/lift-mk--fa591a6e2a60648a2701c5f0.md) | 376 | `result-track:fa591a6e2a60648a2701c5f057a7ce414d81052aaecd26fb85a3253c2b48c821` |
| 45 | `theorem` | [uniformContinuous_lift](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-lift--a59381f1a7bb1735a75a5f15.md) | 380 | `result-track:a59381f1a7bb1735a75a5f151e0fcd5e127fcc6bfccece9d56942b709d9f5b74` |
| 46 | `def` | [map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/map--1f4b7b34dbd0f78cdc607579.md) | 389 | `declaration-track:1f4b7b34dbd0f78cdc607579d93adcb994cc8f0e0dba42e46175eb81618d9f6e` |
| 47 | `theorem` | [map_mk](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/map-mk--c535153f1879402f897e65b1.md) | 393 | `result-track:c535153f1879402f897e65b181301fef726c90959420145f0a28f754b533de89` |
| 48 | `theorem` | [uniformContinuous_map](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/uniformcontinuous-map--2ccab39d3357ee7d1fcf4193.md) | 397 | `result-track:2ccab39d3357ee7d1fcf4193dfed1f6240dd30f5dcb7148104c1d4d8d359fb9d` |
| 49 | `theorem` | [map_unique](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/map-unique--68e59bb4cbb649ed0865937c.md) | 401 | `result-track:68e59bb4cbb649ed0865937c3e8caf15c55175ea52cfefa7ce6e7e33836e981c` |
| 50 | `theorem` | [map_id](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/map-id--4d25998cb13d976a26df38e9.md) | 410 | `result-track:4d25998cb13d976a26df38e9216c387b6dbe489d1871e6887e8b94267f048362` |
| 51 | `theorem` | [map_comp](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/map-comp--b8a00f30de325e3e48514015.md) | 414 | `result-track:b8a00f30de325e3e485140151a0ed9aa106e8abc61c66b993d8fef65996a268c` |
| 52 | `theorem` | [separation_prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separation-prod--46c661cb91235cc09cbf078b.md) | 421 | `result-track:46c661cb91235cc09cbf078ba9069cc2bd613394377b08f6853547cf88a84180` |
| 53 | `instance` | [Separated.prod](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/declarations/separated-prod--0a3d2db50e47f875aae30b5b.md) | 437 | `declaration-track:0a3d2db50e47f875aae30b5b1af7f07dee26b18906aaf718437c7d439af80b9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
