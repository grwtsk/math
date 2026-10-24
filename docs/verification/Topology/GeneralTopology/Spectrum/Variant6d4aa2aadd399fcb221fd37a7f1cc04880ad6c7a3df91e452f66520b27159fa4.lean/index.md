# Verification target: GRWTSK.Topology.GeneralTopology.Spectrum.Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34a2695c0503dfea021f3abf7c0114c663196023",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34a2695c0503dfea021f3abf7c0114c663196023`.

Source path: `GRWTSK/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IsAlgClosed.Spectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Liouville` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Polynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.RadiusLiminf` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Exponential` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius--9c330913bd83424561ae8581.md) | 63 | `declaration-track:9c330913bd83424561ae8581874b661cc3ff828d3e8ab4e2ee297b6e1af63c19` |
| 2 | `theorem` | [SpectralRadius.of_subsingleton](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-of-subsingleton--b1bc280c4e0e099103cd51af.md) | 83 | `result-track:b1bc280c4e0e099103cd51af7ad6ec5286ce128e980a37d0680fa9bfacce7ac5` |
| 3 | `theorem` | [spectralRadius_zero](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-zero--41ef6d35bb5ea032286585b0.md) | 88 | `result-track:41ef6d35bb5ea032286585b0636aa6d3d3b05d4967dcadd6508ced842318bfd9` |
| 4 | `theorem` | [mem_resolventSet_of_spectralRadius_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/mem-resolventset-of-spectralradius-lt--dae1ae83958304788fc52209.md) | 93 | `result-track:dae1ae83958304788fc52209edc00d7eeca33c8b68b22c99bc7796c42a3063d5` |
| 5 | `theorem` | [isOpen_resolventSet](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/isopen-resolventset--9c12388c16e82b6150006d58.md) | 100 | `result-track:9c12388c16e82b6150006d5806483dc7c2d82968be340a97f49984e3fc52ac4e` |
| 6 | `theorem` | [isClosed](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/isclosed--e499cae5c45654a09277b6b3.md) | 104 | `result-track:e499cae5c45654a09277b6b3beacf94d7d4313de80d819162182e835f01be052` |
| 7 | `theorem` | [mem_resolventSet_of_norm_lt_mul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/mem-resolventset-of-norm-lt-mul--20aafe41f082611ddec78ed9.md) | 108 | `result-track:20aafe41f082611ddec78ed92778dc3eb00a22d90c6929066797e4d8cdb23bec` |
| 8 | `theorem` | [mem_resolventSet_of_norm_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/mem-resolventset-of-norm-lt--26eef4c741e54984814b5d61.md) | 120 | `result-track:26eef4c741e54984814b5d616f9afcd5bebd99524d80940339db3ce3ed5a4104` |
| 9 | `theorem` | [norm_le_norm_mul_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/norm-le-norm-mul-of-mem--5a113abb6d44ff37950c0241.md) | 124 | `result-track:5a113abb6d44ff37950c02415a56c66542b4de1f5c42494888fa152075381647` |
| 10 | `theorem` | [norm_le_norm_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/norm-le-norm-of-mem--fb138220d818e3e07da9e12c.md) | 128 | `result-track:fb138220d818e3e07da9e12c8bff5f878216e6de5a35e51258f68c21f8290507` |
| 11 | `theorem` | [subset_closedBall_norm_mul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/subset-closedball-norm-mul--4643953b016d3999dda2eeab.md) | 132 | `result-track:4643953b016d3999dda2eeabf6689d035406a7104ae758ebb8e908801c5e6706` |
| 12 | `theorem` | [subset_closedBall_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/subset-closedball-norm--e6fbca085940d4494cc1b03e.md) | 136 | `result-track:e6fbca085940d4494cc1b03e8ce21259ca6c41a04e27e82d0ce3eab6ec0c62c8` |
| 13 | `theorem` | [is_bounded](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/is-bounded--681de076ff67fb0a71e40929.md) | 140 | `result-track:681de076ff67fb0a71e409299968f538f877eeb46638218fb11e8276a60f48d9` |
| 14 | `theorem` | [isCompact](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/iscompact--db58c5398f6ff4b55308e060.md) | 144 | `result-track:db58c5398f6ff4b55308e06073443a7a193dd4067b579f787deef8293a3046c7` |
| 15 | `theorem` | [spectralRadius_le_nnnorm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-le-nnnorm--b33b0325c49b8a08900ea458.md) | 148 | `result-track:b33b0325c49b8a08900ea458ce1fb0d1c8e16285dc61022276ad09503b90e3f7` |
| 16 | `theorem` | [exists_nnnorm_eq_spectralRadius_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/exists-nnnorm-eq-spectralradius-of-nonempty--2e7fd9997fe68f7beaa64862.md) | 153 | `result-track:2e7fd9997fe68f7beaa64862dd49b6da7b273f2351b9ddbb397dc7b9c508482a` |
| 17 | `theorem` | [spectralRadius_lt_of_forall_lt_of_nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-lt-of-forall-lt-of-nonempty--39a6168b3735bbe03aef4c29.md) | 159 | `result-track:39a6168b3735bbe03aef4c298878556115bc9f4a6e796eb2986d3ec2e52ea32f` |
| 18 | `theorem` | [spectralRadius_le_pow_nnnorm_pow_one_div](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-le-pow-nnnorm-pow-one-div--3d6cdcbfd9b6158153bf2afc.md) | 171 | `result-track:3d6cdcbfd9b6158153bf2afc6f18b75f2a8a3c1bb8e65a2361edb4e35b147ea3` |
| 19 | `theorem` | [spectralRadius_le_liminf_pow_nnnorm_pow_one_div](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-le-liminf-pow-nnnorm-pow-one-div--3c55a6c1976f6eeca4a604c1.md) | 191 | `result-track:3c55a6c1976f6eeca4a604c1ad39f1c9cf3ecfb6fe9a6b03b69e27c9c3f0c64e` |
| 20 | `theorem` | [hasDerivAt_resolvent](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/hasderivat-resolvent--e3b7e1a733a23a6788545e1a.md) | 223 | `result-track:e3b7e1a733a23a6788545e1a77e0c84aca38bd7f42930325ee4ff5448fab4078` |
| 21 | `theorem` | [norm_resolvent_le_forall](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/norm-resolvent-le-forall--567261342510e00420100827.md) | 234 | `result-track:567261342510e0042010082711b63e508df6ba80d740645d73d9a1e874fdf4c8` |
| 22 | `theorem` | [hasFPowerSeriesOnBall_inverse_one_sub_smul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/hasfpowerseriesonball-inverse-one-sub-smul--512a1d1dc712be9c5defbb40.md) | 282 | `result-track:512a1d1dc712be9c5defbb400c2d0bcaaa16a453d0a24f88e3c6a3f8c6f483d9` |
| 23 | `theorem` | [isUnit_one_sub_smul_of_lt_inv_radius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/isunit-one-sub-smul-of-lt-inv-radius--40516ad8b0e425d9ae547a95.md) | 313 | `result-track:40516ad8b0e425d9ae547a954180a9ad58173e1a002c4824830e06dcfd50e4ac` |
| 24 | `theorem` | [differentiableOn_inverse_one_sub_smul](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/differentiableon-inverse-one-sub-smul--e6138f5ca45e253808c52542.md) | 328 | `result-track:e6138f5ca45e253808c525427d05c9800f702842b24651a6d5b28c9ae74a3230` |
| 25 | `theorem` | [limsup_pow_nnnorm_pow_one_div_le_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/limsup-pow-nnnorm-pow-one-div-le-spectralradius--2c0c8ed906168185b700c8cc.md) | 352 | `result-track:2c0c8ed906168185b700c8cc805421a8f46bdd3c79e08745a033cb9147e5aad0` |
| 26 | `theorem` | [pow_nnnorm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/pow-nnnorm-pow-one-div-tendsto-nhds-spectralradius--850e18245dc20176b79b6909.md) | 372 | `result-track:850e18245dc20176b79b690989cf08b5857af022cb1ad4bba1a85607edc797e7` |
| 27 | `theorem` | [pow_norm_pow_one_div_tendsto_nhds_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/pow-norm-pow-one-div-tendsto-nhds-spectralradius--39ffcc931a8f8a8dc6b38ab6.md) | 382 | `result-track:39ffcc931a8f8a8dc6b38ab6c425480aea8b70551df8b029e71bd9ac322b905e` |
| 28 | `theorem` | [nonempty](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/nonempty--75fd468a38519deda49b3988.md) | 398 | `result-track:75fd468a38519deda49b3988edc455a5484cac42ad32965b56e9efb716d698f5` |
| 29 | `theorem` | [exists_nnnorm_eq_spectralRadius](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/exists-nnnorm-eq-spectralradius--aefa0530b5550262c0738f93.md) | 433 | `result-track:aefa0530b5550262c0738f937702e432af1e2771d4d8d39377ba1f3a84bd913a` |
| 30 | `theorem` | [spectralRadius_lt_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/spectralradius-lt-of-forall-lt--839933025e06f81977ea94a7.md) | 439 | `result-track:839933025e06f81977ea94a71bbbc4cbb973ef5021a42bd1639d5fd5a3fa6275` |
| 31 | `theorem` | [map_polynomial_aeval](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/map-polynomial-aeval--c757631e4599795873f0e8cb.md) | 449 | `result-track:c757631e4599795873f0e8cb9928afb18222cdb8217ae255bdf1d7cb2b48377f` |
| 32 | `theorem` | [map_pow](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/map-pow--da0a4b1bd9504bd9dd846719.md) | 457 | `result-track:da0a4b1bd9504bd9dd84671979d5f0782fa4d32c71b19b68fcd8afa928265a01` |
| 33 | `theorem` | [algebraMap_eq_of_mem](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/algebramap-eq-of-mem--8c985ee02a6e13830fb48461.md) | 470 | `result-track:8c985ee02a6e13830fb48461353ba708817d1b2f711a5422fcb1dff82529f5d0` |
| 34 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.SpectralRadius.Variant6fe06aeca8591b90cfac603f3a980b31e0db596c79af67614738f160c10566e6.NormedRing.algEquivComplexOfComplete](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/root-grwtsk-topology-generaltopology-spectralradius-variant6fe06aeca8591--e1471b82e3eeda0d60fb98d3.md) | 484 | `declaration-track:e1471b82e3eeda0d60fb98d3abd0134f18d4b8c05f88f04a4c4a40bfc8f68149` |
| 35 | `theorem` | [exp_mem_exp](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/exp-mem-exp--512ee552096ab81efbac4bb8.md) | 502 | `result-track:512ee552096ab81efbac4bb8ce70e381c72d02a5ef3d0c39d7c7d2551140d05f` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/instance--c2e71386af19bcdb62a06d01.md) | 543 | `declaration-track:c2e71386af19bcdb62a06d01a5c097757a20ba914d293cee73c382a6c8975b25` |
| 37 | `def` | [toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/tocontinuouslinearmap--936e263a149b5f3bfce87a97.md) | 551 | `declaration-track:936e263a149b5f3bfce87a97ccf61feca156e61f0117d58de70bfb15b9b7f96d` |
| 38 | `theorem` | [coe_toContinuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/coe-tocontinuouslinearmap--a6a56a333be8e7829d15a07b.md) | 556 | `result-track:a6a56a333be8e7829d15a07ba83123b24b9552c6d29a932f1ce5a0d1cfcd91cc` |
| 39 | `theorem` | [norm_apply_le_self_mul_norm_one](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/norm-apply-le-self-mul-norm-one--17ffe6357a0745c10aac85f9.md) | 560 | `result-track:17ffe6357a0745c10aac85f90bde4f880b778fb399737298cfc8042491b1dc91` |
| 40 | `theorem` | [norm_apply_le_self](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/norm-apply-le-self--b9d1fd750bab2c9749eb23f3.md) | 565 | `result-track:b9d1fd750bab2c9749eb23f3ff826e1cf822f70b0b97d96f49e7f67fbbbcaa21` |
| 41 | `theorem` | [toContinuousLinearMap_norm](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/tocontinuouslinearmap-norm--11500f47783a6a96cb89e861.md) | 578 | `result-track:11500f47783a6a96cb89e86180f2bc4f54aa3b2b213b7e663675d3f93006d395` |
| 42 | `def` | [equivAlgHom](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/equivalghom--7035e616e310a92ea026a03a.md) | 598 | `declaration-track:7035e616e310a92ea026a03a40f62bd80ba91e958d4f6401e62025f231d2a3ae` |
| 43 | `theorem` | [equivAlgHom_coe](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/equivalghom-coe--977d942785ba2b23f6e40e1e.md) | 608 | `result-track:977d942785ba2b23f6e40e1ea6205a529bc2412032d0644122cd724a8347a688` |
| 44 | `theorem` | [equivAlgHom_symm_coe](../../../../../mathematics/Topology/GeneralTopology/Spectrum/Variant6d4aa2aadd399fcb221fd37a7f1cc04880ad6c7a3df91e452f66520b27159fa4.lean/declarations/equivalghom-symm-coe--e09e081b25f473bcf12591f7.md) | 613 | `result-track:e09e081b25f473bcf12591f71b6df99dcef02d46d71caa6e10023645a2ee0cb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
