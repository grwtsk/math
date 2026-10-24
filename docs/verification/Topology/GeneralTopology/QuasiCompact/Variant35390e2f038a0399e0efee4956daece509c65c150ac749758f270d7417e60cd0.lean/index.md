# Verification target: GRWTSK.Topology.GeneralTopology.QuasiCompact.Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e831017f254a9020ca5d9d84886c006d9492e1e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e831017f254a9020ca5d9d84886c006d9492e1e`.

Source path: `GRWTSK/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Spectral.Hom` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [QuasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact--8719a12d6ff9d8d589ba174b.md) | 41 | `declaration-track:8719a12d6ff9d8d589ba174bf6f10abe75f6ff879deb19a79072df0750866d42` |
| 2 | `theorem` | [quasiCompact_iff_spectral](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-iff-spectral--e16b65fe9f30d85f62c7eb2d.md) | 46 | `result-track:e16b65fe9f30d85f62c7eb2d8ba6bc632ba07971bd3a04d72c8448f0d4875b59` |
| 3 | `def` | [QuasiCompact.affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affineproperty--7b1e5c0320589c52cf66f057.md) | 52 | `declaration-track:7b1e5c0320589c52cf66f0574d00e4b0edd9b0deac70ec3a454c41c0a9793fdf` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/instance--5ae2f9fd832b839c2ecc8042.md) | 56 | `declaration-track:5ae2f9fd832b839c2ecc8042c0e21ef3088f2e3299edbe0e7af9233e4bda6838` |
| 5 | `instance` | [quasiCompactComp](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompactcomp--6b4865e132b3130c2cb2ba31.md) | 66 | `declaration-track:6b4865e132b3130c2cb2ba31da57f7eed0838fabcb3d720783c7662904e86099` |
| 6 | `theorem` | [isCompact_open_iff_eq_finset_affine_union](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/iscompact-open-iff-eq-finset-affine-union--7a67f48a518fe007ccb91d27.md) | 79 | `result-track:7a67f48a518fe007ccb91d2799581fce86a3f978b1d673d16ec6f0d7daa6ddb3` |
| 7 | `theorem` | [isCompact_open_iff_eq_basicOpen_union](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/iscompact-open-iff-eq-basicopen-union--76efa4a56e18a1615bb80af7.md) | 88 | `result-track:76efa4a56e18a1615bb80af7b2b964a9355958d81188428cb1e43e860bcbbb4a` |
| 8 | `theorem` | [quasiCompact_iff_forall_affine](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-iff-forall-affine--af8e46c7be4e7acdb2124bbc.md) | 96 | `result-track:af8e46c7be4e7acdb2124bbc17947176936d3992a3e94b29c902d93b2f211cea` |
| 9 | `theorem` | [QuasiCompact.affineProperty_toProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affineproperty-toproperty--a748324800751ea987e89a23.md) | 108 | `result-track:a748324800751ea987e89a23e9222acc1d0d034896a572564949d6c23cc34579` |
| 10 | `theorem` | [quasiCompact_iff_affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-iff-affineproperty--e81c27968e69d6c69d0d185f.md) | 113 | `result-track:e81c27968e69d6c69d0d185fc5ea62afa76c67a979b3e649b602ac14b6df867f` |
| 11 | `theorem` | [quasiCompact_eq_affineProperty](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-eq-affineproperty--269f35e166c232e4e4dca62d.md) | 122 | `result-track:269f35e166c232e4e4dca62ddc22786979ec4c6184aee0b0e8beef78c841f410` |
| 12 | `theorem` | [isCompact_basicOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/iscompact-basicopen--3707e41f910edddb848b9517.md) | 128 | `result-track:3707e41f910edddb848b951700152f6e2b5afb6fb231d82f5d768691c4ad34c9` |
| 13 | `theorem` | [QuasiCompact.affineProperty_isLocal](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affineproperty-islocal--54317a2e6ed96fd6964eee90.md) | 160 | `result-track:54317a2e6ed96fd6964eee90909381d91c196be92f1142dbe6778b6b632c4ef8` |
| 14 | `theorem` | [QuasiCompact.affine_openCover_tFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affine-opencover-tfae--13a65acd78b9aea9f3b3a92f.md) | 184 | `result-track:13a65acd78b9aea9f3b3a92fcbc4deaac1f8b99d13a0509f8d78676c60a575fa` |
| 15 | `theorem` | [QuasiCompact.is_local_at_target](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-is-local-at-target--26aed27641a9f1d2a307195e.md) | 198 | `result-track:26aed27641a9f1d2a307195eb56abcc6d6802d78b9e2917bb404ef4e519f2b31` |
| 16 | `theorem` | [QuasiCompact.openCover_tFAE](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-opencover-tfae--fe2c1f3fdbb2566c83eec983.md) | 203 | `result-track:fe2c1f3fdbb2566c83eec983edf13d5caf4433adbefc4de912d9f1727ef8149f` |
| 17 | `theorem` | [quasiCompact_over_affine_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-over-affine-iff--af81e4726b0adffed55689e7.md) | 218 | `result-track:af81e4726b0adffed55689e7e4b03d8324fcea05cb82477d11783359d5f7b509` |
| 18 | `theorem` | [compactSpace_iff_quasiCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/compactspace-iff-quasicompact--4dbf1d0179b00aca143fbadc.md) | 223 | `result-track:4dbf1d0179b00aca143fbadc64a46691465d5dc28a226d77b921e1f731fad52e` |
| 19 | `theorem` | [QuasiCompact.affine_openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affine-opencover-iff--5b8dd644794b7c2d8abc6dc1.md) | 228 | `result-track:5b8dd644794b7c2d8abc6dc16df8cf9bec648c174b436440a936fc5222eac3e4` |
| 20 | `theorem` | [QuasiCompact.openCover_iff](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-opencover-iff--72ac3e7b02f27fc0674df359.md) | 234 | `result-track:72ac3e7b02f27fc0674df359dfdd75c926ff7bcdfffb9884c0e6de430cd47170` |
| 21 | `theorem` | [quasiCompact_respectsIso](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-respectsiso--4c12bda2e50b86b4e9ac1c88.md) | 240 | `result-track:4c12bda2e50b86b4e9ac1c88f9383cabe7db3c81f2b1e2dba806001aac41f2f1` |
| 22 | `theorem` | [quasiCompact_stableUnderComposition](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-stableundercomposition--90b2f469e6f8a62af7cc56b9.md) | 245 | `result-track:90b2f469e6f8a62af7cc56b9113d5100493dcafea121d3490698ac4f46472e82` |
| 23 | `theorem` | [QuasiCompact.affineProperty_stableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-affineproperty-stableunderbasechange--754de63cf642b798c81f3111.md) | 249 | `result-track:754de63cf642b798c81f3111b69a3e3280ab079d4e85d7cd9578a675035aa092` |
| 24 | `theorem` | [quasiCompact_stableUnderBaseChange](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/quasicompact-stableunderbasechange--3320f7a7a975e53423477550.md) | 260 | `result-track:3320f7a7a975e5342347755039146635097158e56a647743f380c104edf02a60` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/instance--24a9521f393d7402b565bb90.md) | 268 | `declaration-track:24a9521f393d7402b565bb90992d4919d8b5b4ddf901a1af7b9d19917401a86e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/instance--b39f0b76330c34d52b65d9f8.md) | 272 | `declaration-track:b39f0b76330c34d52b65d9f8123216ff0c1eac96bbf54ecdc2e3b62e66e340be` |
| 27 | `theorem` | [compact_open_induction_on](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/compact-open-induction-on--6e05e5d1377abb6ee3598f14.md) | 277 | `result-track:6e05e5d1377abb6ee3598f14dae1327d920b82c802519ef1ed97249cbba873b7` |
| 28 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-isaffineopen--6f6f9ec0de43d008c04ab93c.md) | 296 | `result-track:6f6f9ec0de43d008c04ab93cea837ea6f53c7bc2e25fcdc384a28506276553e4` |
| 29 | `theorem` | [exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/QuasiCompact/Variant35390e2f038a0399e0efee4956daece509c65c150ac749758f270d7417e60cd0.lean/declarations/exists-pow-mul-eq-zero-of-res-basicopen-eq-zero-of-iscompact--157dc0d2edd86e25af52a71c.md) | 306 | `result-track:157dc0d2edd86e25af52a71c505cc7c5287ef3dfefe6be2530deeb5412719b11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
