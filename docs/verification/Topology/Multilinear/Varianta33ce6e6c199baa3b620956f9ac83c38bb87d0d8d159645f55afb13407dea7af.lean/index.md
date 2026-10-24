# Verification target: GRWTSK.Topology.Multilinear.Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fe836f6d48a6b0a8671cee43786284259eace8c",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/index.md) · [Full source](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fe836f6d48a6b0a8671cee43786284259eace8c`.

Source path: `GRWTSK/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMultilinearMap](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/continuousmultilinearmap--f20a19a4807d943f0afccce9.md) | 58 | `declaration-track:f20a19a4807d943f0afccce9f8aef5215b1977ada7898784fa570021a95b633c` |
| 2 | `theorem` | [toMultilinearMap_injective](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tomultilinearmap-injective--21da0a2f878f6267b001cbbd.md) | 80 | `result-track:21da0a2f878f6267b001cbbdc8c2a64058b08de508777f727ce8be97a9acbfbf` |
| 3 | `instance` | [continuousMapClass](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/continuousmapclass--86cabad80d0c5ff1d8426da4.md) | 87 | `declaration-track:86cabad80d0c5ff1d8426da49932f26d2e267a3fa741aa696f533c7680693118` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--f13909357dc50bf8c1f54ef0.md) | 94 | `declaration-track:f13909357dc50bf8c1f54ef0dc72671cce1af0067841234dc35ceaab2939a27a` |
| 5 | `def` | [Simps.apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/simps-apply--0c727f27de84b8b681ef8999.md) | 99 | `declaration-track:0c727f27de84b8b681ef8999b2b8a95e62708e17a73e70eae625adda35b5f137` |
| 6 | `theorem` | [coe_continuous](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/coe-continuous--bce8de6ecf13e3d4278388f4.md) | 107 | `result-track:bce8de6ecf13e3d4278388f4a5b255ca61e9fd73c284dad04716b49e0213d1eb` |
| 7 | `theorem` | [coe_coe](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/coe-coe--1c50ac8c9d38174512b799c7.md) | 112 | `result-track:1c50ac8c9d38174512b799c78ff6482cd797813f1e2858486272a14b2b1c1950` |
| 8 | `theorem` | [ext](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/ext--3accaf7e881f7c929583615c.md) | 117 | `result-track:3accaf7e881f7c929583615c62285b7f5edc7cf4f4a04c486ea9d9a1c0981364` |
| 9 | `theorem` | [ext_iff](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/ext-iff--5c0d0c6739ed18a8929533fe.md) | 121 | `result-track:5c0d0c6739ed18a8929533fe0a0ede4d72bf513c360c486a92a521b92f0bdc03` |
| 10 | `theorem` | [map_add](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-add--44766fc5b4302f916d454742.md) | 126 | `result-track:44766fc5b4302f916d4547429068fa9b2fb9badeb175355f3a3d6328a4ffcb73` |
| 11 | `theorem` | [map_smul](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-smul--924d3d6f6a04465c9aa5a60f.md) | 132 | `result-track:924d3d6f6a04465c9aa5a60f0466c41bd4f504e12eeaf4abe518fb45272772c2` |
| 12 | `theorem` | [map_coord_zero](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-coord-zero--56b83c92e66ecf59d8d8dc70.md) | 137 | `result-track:56b83c92e66ecf59d8d8dc7011a6364210e7dbc34a30f9a4e1935d75e4016224` |
| 13 | `theorem` | [map_zero](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-zero--2e9cce42c864c8ce412a1304.md) | 142 | `result-track:2e9cce42c864c8ce412a13047ae7983c3c872de1d0dd12b5c2be1ec02fc61ee0` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--7e3d81dab6de5d90e07276f0.md) | 146 | `declaration-track:7e3d81dab6de5d90e07276f07e2a4a26d2f74016f4d3ea2e6b19e290a721a057` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--0a25f11d8747e863dc2e2038.md) | 149 | `declaration-track:0a25f11d8747e863dc2e20389f6674563838845ee48a59bc8d95fea38760ff51` |
| 16 | `theorem` | [zero_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/zero-apply--811906966540174479f165bc.md) | 153 | `result-track:811906966540174479f165bc29ecb22e0eafbb6ab9494546ed8db3dc78b64417` |
| 17 | `theorem` | [toMultilinearMap_zero](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tomultilinearmap-zero--dd873aa006b20b893d73e601.md) | 158 | `result-track:dd873aa006b20b893d73e601d32ea27f8898b9dec51e8107b59928f3024ce2d6` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--3de00e6349663f8900c850b4.md) | 168 | `declaration-track:3de00e6349663f8900c850b48086da74be17e7432726f80569249ebd5d0044ba` |
| 19 | `theorem` | [smul_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/smul-apply--8413cae93751dfc152232560.md) | 172 | `result-track:8413cae93751dfc15223256027b25ec1bf89ebcd6146b2e21d92961caa0bf0c1` |
| 20 | `theorem` | [toMultilinearMap_smul](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tomultilinearmap-smul--3bae6546bbbe4c0bb137db0c.md) | 178 | `result-track:3bae6546bbbe4c0bb137db0ce7534bcf99f1b676c19cb93c346a5611a39c706b` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--76f849f5e2f9e0dd4a4644a8.md) | 183 | `declaration-track:76f849f5e2f9e0dd4a4644a804235044429418fe7d98317bb41148163a7e5183` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--9d54e6cf6398357d33770a59.md) | 186 | `declaration-track:9d54e6cf6398357d33770a59eb0e13b758d703162367d40c1282cc315a98522e` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--18f9ac24b8d426eb4c91eda1.md) | 190 | `declaration-track:18f9ac24b8d426eb4c91eda18f9fce0b79d5af7c9e602e4ad49fb4e493749d2f` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--5b964079878032ff40be0532.md) | 194 | `declaration-track:5b964079878032ff40be053265192b0955d773d25f5bcc218f6b158b6607fed0` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--c8d366668edf62075f9a1f2d.md) | 203 | `declaration-track:c8d366668edf62075f9a1f2de689a0ea97e3eaf5b25e69c3931f8d4957711c35` |
| 26 | `theorem` | [add_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/add-apply--4deb21e803a4b23022d6fe6c.md) | 207 | `result-track:4deb21e803a4b23022d6fe6cfb49e9bd924f9ed851c71aa832e719673ae48078` |
| 27 | `theorem` | [toMultilinearMap_add](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tomultilinearmap-add--abf1af17bb2559073336c36b.md) | 212 | `result-track:abf1af17bb2559073336c36beec01c3efbfdab2bea496a29acc37d31dcd0e952` |
| 28 | `instance` | [addCommMonoid](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/addcommmonoid--fae429c1071b0593f7d39b37.md) | 217 | `declaration-track:fae429c1071b0593f7d39b374c6e5f017a7fde4570916586249ab0c271e99af1` |
| 29 | `def` | [applyAddHom](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/applyaddhom--3b5a70c7fb96aa8cd954cb59.md) | 222 | `declaration-track:3b5a70c7fb96aa8cd954cb59ef8dcf3c5770defc2062028a112ed2c1878ee2cc` |
| 30 | `theorem` | [sum_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/sum-apply--4eb91494ed94eb5fbfac56bf.md) | 229 | `result-track:4eb91494ed94eb5fbfac56bf740ddf02b54bf948149e93ffd56e7126d60bdd0e` |
| 31 | `def` | [toContinuousLinearMap](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tocontinuouslinearmap--61b45950ec1c5db727b5ed84.md) | 239 | `declaration-track:61b45950ec1c5db727b5ed84a45194e46e600f0b922ff9ab2ab57c981bdd1f0b` |
| 32 | `def` | [prod](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/prod--c1feeb0c4ffd2d6e3a35a1f3.md) | 245 | `declaration-track:c1feeb0c4ffd2d6e3a35a1f36472cad04611fef2b9f1eb926e5c7a9df71c23eb` |
| 33 | `theorem` | [prod_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/prod-apply--b574019e266d29c99360f18a.md) | 251 | `result-track:b574019e266d29c99360f18abcb73ce70a1721aa9a2799447f51b5dd9373d440` |
| 34 | `def` | [pi](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/pi--2adcbff536d66d3a68f64705.md) | 258 | `declaration-track:2adcbff536d66d3a68f64705edf4ae28420b6f9b8dc661a0628584f560d9022a` |
| 35 | `theorem` | [coe_pi](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/coe-pi--db57950051dddf786a02e82c.md) | 266 | `result-track:db57950051dddf786a02e82c006b50694784ada5eb6624b34b62816bf9aa3b82` |
| 36 | `theorem` | [pi_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/pi-apply--ac482e32662e1166d9153a07.md) | 272 | `result-track:ac482e32662e1166d9153a07cc74f5af87d06ea1d6b851e9f1a4df28e52c737e` |
| 37 | `def` | [codRestrict](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/codrestrict--7a701e1588cca62bbc237461.md) | 280 | `declaration-track:7a701e1588cca62bbc237461ee4759ddbcf0df983dd60b1cbeffed480732b7ad` |
| 38 | `def` | [ofSubsingleton](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/ofsubsingleton--ea1c1e4bde5764a67cb657b9.md) | 294 | `declaration-track:ea1c1e4bde5764a67cb657b92bde0103a0a815ea9a5251d3fee7359f742f5e10` |
| 39 | `def` | [constOfIsEmpty](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/constofisempty--07b475917edfdc9f63e49952.md) | 303 | `declaration-track:07b475917edfdc9f63e49952591b29fcaf948e33848ea100be8ede527546c9e2` |
| 40 | `def` | [compContinuousLinearMap](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/compcontinuouslinearmap--4d4bd2b9ad2e94448441b6e9.md) | 313 | `declaration-track:4d4bd2b9ad2e94448441b6e95138dee1a5a6bffb02a5b280f98e061bf4e85fb5` |
| 41 | `theorem` | [compContinuousLinearMap_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/compcontinuouslinearmap-apply--a9ff3c41a6cdd748c5b798fd.md) | 320 | `result-track:a9ff3c41a6cdd748c5b798fd7542d567a70d2a5cf39d8c4c2adc1618399d1381` |
| 42 | `def` | [_root_.GRWTSK.Topology.ContinuousMultilinearMap.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.ContinuousLinearMap.compContinuousMultilinearMap](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/root-grwtsk-topology-continuousmultilinearmap-variantc6b7c38a511e9a43d73--d7ff0d98dee577890108764b.md) | 328 | `declaration-track:d7ff0d98dee577890108764b69a195346054537a48bc388c80a5c2050f448bd8` |
| 43 | `theorem` | [_root_.GRWTSK.Topology.ContinuousMultilinearMap.Variantc6b7c38a511e9a43d7379b68ffc79c43866f1f0eee4f6cbbd7e32294ffd62d79.ContinuousLinearMap.compContinuousMultilinearMap_coe](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/root-grwtsk-topology-continuousmultilinearmap-variantc6b7c38a511e9a43d73--4cae13050264dd817b403edc.md) | 334 | `result-track:4cae13050264dd817b403edcfc82e659ebf7e3ebcd50f48be060b7379b56412c` |
| 44 | `def` | [piEquiv](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/piequiv--172abe39a4f8c152cf2d9700.md) | 344 | `declaration-track:172abe39a4f8c152cf2d9700897b2ea1961be251fb461b0680e6c76adccb90f0` |
| 45 | `def` | [domDomCongr](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/domdomcongr--f339ec053c465fe137330f56.md) | 360 | `declaration-track:f339ec053c465fe137330f562e8df784c56d2abb355c6406659747795eb1a65f` |
| 46 | `def` | [domDomCongrEquiv](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/domdomcongrequiv--bea9cb4dd63923c73e7e8ee5.md) | 373 | `declaration-track:bea9cb4dd63923c73e7e8ee557e0a123a078b4152c06dbd3687ed64824c47bfb` |
| 47 | `theorem` | [cons_add](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/cons-add--0aa1864171883a4e3537c69d.md) | 387 | `result-track:0aa1864171883a4e3537c69d94419a98c3cd28e60beeaa7ce6f8d75c5829c033` |
| 48 | `theorem` | [cons_smul](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/cons-smul--fae794eb4d2f7bb72eaf5861.md) | 395 | `result-track:fae794eb4d2f7bb72eaf5861032f163afaba161c99acb123d3487695ffdd9b71` |
| 49 | `theorem` | [map_piecewise_add](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-piecewise-add--b2b2873c2cc0865dec2d94e1.md) | 400 | `result-track:b2b2873c2cc0865dec2d94e162f89c80c4c50185b177717ddfe89087de0a2421` |
| 50 | `theorem` | [map_add_univ](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-add-univ--d3c80c785b319f6c493de74a.md) | 407 | `result-track:d3c80c785b319f6c493de74ad00ca2c5aba52fa98ad5fd556548e8260998e5d7` |
| 51 | `theorem` | [map_sum_finset](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-sum-finset--89a568248c01d8116872bb6f.md) | 422 | `result-track:89a568248c01d8116872bb6fa348f5efb8617cc5040df64deacefb826930b048` |
| 52 | `theorem` | [map_sum](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-sum--d1738920439d547fa294e514.md) | 430 | `result-track:d1738920439d547fa294e5148f8c1c233aa59dd733c6d976467701552ab4af1b` |
| 53 | `def` | [restrictScalars](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/restrictscalars--609ce205418b61a8e4c83afc.md) | 445 | `declaration-track:609ce205418b61a8e4c83afcdf4cf645167f545eac494e6b22a012158c4d70c6` |
| 54 | `theorem` | [coe_restrictScalars](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/coe-restrictscalars--1f7b6a64b17efd3eb3dad929.md) | 451 | `result-track:1f7b6a64b17efd3eb3dad9293aaab283fda7f6b74f4512289dd6268692c0f30b` |
| 55 | `theorem` | [map_sub](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-sub--e4bc365d6a6a3f3f77c9b8e4.md) | 465 | `result-track:e4bc365d6a6a3f3f77c9b8e408c13c0a5a4e33af26a03a36045259de197464ca` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--3140c4cfef6c7c8ab772a6ed.md) | 474 | `declaration-track:3140c4cfef6c7c8ab772a6ed8a11916f65bafcc8de90688db23648aa9186c06c` |
| 57 | `theorem` | [neg_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/neg-apply--4a096ad6b1805f4a5ffb8e2a.md) | 478 | `result-track:4a096ad6b1805f4a5ffb8e2a41915be55b6b42e20ff9878d38bcf2bcb0ababae` |
| 58 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--dce4109201a1ea3390cafc10.md) | 482 | `declaration-track:dce4109201a1ea3390cafc10430b91a19e3f9546dbbcb7b17f5f6fb2fe26cb69` |
| 59 | `theorem` | [sub_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/sub-apply--44cce42faf10361f8a072f21.md) | 486 | `result-track:44cce42faf10361f8a072f212c77c9a0fb1c1b419b5361c444f5e9b932990477` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--1a5bb99b5487095e07772f18.md) | 490 | `declaration-track:1a5bb99b5487095e07772f18d97b5177c2201516b413a2582f0ce8bac8584361` |
| 61 | `theorem` | [map_piecewise_smul](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-piecewise-smul--5f4426befd6ed11b2a9812da.md) | 504 | `result-track:5f4426befd6ed11b2a9812da35249ce2fb7f8acc68916ab8f94d7a4c204bec41` |
| 62 | `theorem` | [map_smul_univ](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/map-smul-univ--04de7bbb512c5bda575f2766.md) | 511 | `result-track:04de7bbb512c5bda575f27667b4e8b575b2423a962dad604a2e4accb21076ef2` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--de9f08dfc6593aed6423100d.md) | 525 | `declaration-track:de9f08dfc6593aed6423100d737e1103f402d79e1f8791751737868c8019ee9c` |
| 64 | `instance` | [(anonymous)](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/instance--87f66c8318dea274b3c6dbd0.md) | 543 | `declaration-track:87f66c8318dea274b3c6dbd0dc92d3a9c91ee85662d02398e5ad4a53cc557678` |
| 65 | `def` | [toMultilinearMapLinear](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/tomultilinearmaplinear--e67b6b0ee576db714674d7f7.md) | 553 | `declaration-track:e67b6b0ee576db714674d7f7f7f79a8751ace7953fa4ae63b85ad7b8b6e07acd` |
| 66 | `def` | [piLinearEquiv](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/pilinearequiv--bed5510f10d26a1bcb5aa19d.md) | 561 | `declaration-track:bed5510f10d26a1bcb5aa19dbbcb702455f910ce9106793f0263423e30baa21d` |
| 67 | `def` | [mkPiAlgebra](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/mkpialgebra--79c082962b2334e0024a9f63.md) | 581 | `declaration-track:79c082962b2334e0024a9f63a6e1c7875e023a1879a6e2d212deba8bcba881be` |
| 68 | `theorem` | [mkPiAlgebra_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/mkpialgebra-apply--edf396d34190baeb743877a8.md) | 587 | `result-track:edf396d34190baeb743877a8409edaa14016938f0d0fd9f10b1dc552ddb19160` |
| 69 | `def` | [mkPiAlgebraFin](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/mkpialgebrafin--5e67526af0bca65e945e4f9b.md) | 602 | `declaration-track:5e67526af0bca65e945e4f9b886a8a3991f568a03fe47061212c3f71389f705b` |
| 70 | `theorem` | [mkPiAlgebraFin_apply](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/mkpialgebrafin-apply--aece44e6124659a8e779aec9.md) | 613 | `result-track:aece44e6124659a8e779aec92731e86ce11037657e2e81cea752f680c75e589d` |
| 71 | `def` | [smulRight](../../../../mathematics/Topology/Multilinear/Varianta33ce6e6c199baa3b620956f9ac83c38bb87d0d8d159645f55afb13407dea7af.lean/declarations/smulright--5204b73600bf855b04a753f3.md) | 629 | `declaration-track:5204b73600bf855b04a753f37eac4c9b9a3b6e7480c9bd7d58dc91aa376faaca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
