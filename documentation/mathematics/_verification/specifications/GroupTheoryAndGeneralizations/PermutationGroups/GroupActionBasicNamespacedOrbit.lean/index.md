# Verification target: Group Action Basic Namespaced Orbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79832109871331eeab9ddecff22e3b03f048c947",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant9b89d6b0201e99ccdbc4e524087981c229623ad77d6ba4363c2a989abf7d0e2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79832109871331eeab9ddecff22e3b03f048c947`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant9b89d6b0201e99ccdbc4e524087981c229623ad77d6ba4363c2a989abf7d0e2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant9b89d6b0201e99ccdbc4e524087981c229623ad77d6ba4363c2a989abf7d0e2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit.md) | 52 | `declaration-track:13b117dcd00e1a0dbe124b53aa73d970da3105215832a7a2d113ea3833065987` |
| 2 | `theorem` | [mem_orbit_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-orbit-iff.md) | 60 | `result-track:20830b9f77d937609f2390be31c6762d03f5ba4198ab6641d54688041cf0001d` |
| 3 | `theorem` | [mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-orbit.md) | 66 | `result-track:e639d9d63ff3d9aa122bfe2fc3df7e85f64827583b46f7857a9dbe65b9fb194b` |
| 4 | `theorem` | [mem_orbit_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-orbit-self.md) | 72 | `result-track:e489032a5f0d3ea9d3fd87c063011f31c6aa999673660ed2d9eaf5776225f967` |
| 5 | `theorem` | [orbit_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-nonempty.md) | 78 | `result-track:079657ec535e761bea0bd017e59fa04a03db1469d4e9097d0eeefbfd2c84b66a` |
| 6 | `theorem` | [mapsTo_smul_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mapsto-smul-orbit.md) | 84 | `result-track:cc242c299fea9bcd0c1d5e1003c9d0b98337b14abee78130433e195cf47936cc` |
| 7 | `theorem` | [smul_orbit_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/smul-orbit-subset.md) | 90 | `result-track:528cbad95c569903b22a2958bb0f10043e2dc7cbe66ab0b238a91694a922621b` |
| 8 | `theorem` | [orbit_smul_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-smul-subset.md) | 96 | `result-track:ba87296979a7896b18982410d064dfbf555ecffcd7a4d00d8bf64d465d614abf` |
| 9 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/instance.md) | 102 | `declaration-track:60913398df64b1f99c5cb02f7afd50b27d878bada27dda03d8274f4b84e47cde` |
| 10 | `theorem` | [orbit.coe_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-coe-smul.md) | 108 | `result-track:435a0ac08e11cf09201e0602b974c0c891bbe4383db5ad4006faecbaab5e6fdc` |
| 11 | `def` | [fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/fixedpoints.md) | 117 | `declaration-track:a63a13e86ed8585dc1c205786f64938a3000f6bc7eed6271a2eddf5fe93cc350` |
| 12 | `def` | [fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/fixedby.md) | 124 | `declaration-track:90fa5fbe72f0bdcccc110d870a622402b66de4dac471612307b4d06045f165b9` |
| 13 | `theorem` | [fixed_eq_iInter_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/fixed-eq-iinter-fixedby.md) | 130 | `result-track:b62707ae6ffd5386ffae40235aa384ce3142d06b1a1a3e04ed34155f0b0c953a` |
| 14 | `theorem` | [mem_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-fixedpoints.md) | 139 | `result-track:523de67a9ae05fd708fc5373fc4d74b395f7ead5d414e9efb0430942f3035e94` |
| 15 | `theorem` | [mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-fixedby.md) | 145 | `result-track:b809cc62707ebb250ec86bef8f6dc9f9cda5f9518aaf0a79030f4e884f5b96ca` |
| 16 | `theorem` | [mem_fixedPoints'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-fixedpoints-source-edition-2.md) | 151 | `result-track:5faafece3019945e5de6b3e80266c06b7836df81072ff37d84dd7dc0d2eb1d3d` |
| 17 | `def` | [Stabilizer.submonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizer-submonoid.md) | 163 | `declaration-track:4c7404feaca911ef980efbdccf3a03e25892e172bc4f18316c68eef5ebaf40ee` |
| 18 | `theorem` | [mem_stabilizer_submonoid_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-stabilizer-submonoid-iff.md) | 172 | `result-track:9cd8bd6e8f00a6436764cf36404d42f05389d80b75c34ac29ec21766454f8e01` |
| 19 | `theorem` | [orbit_eq_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-eq-univ.md) | 178 | `result-track:ecd447fe7919bcdd2165c357338fdceeb71c76df2b70208e8731decc9742d58f` |
| 20 | `theorem` | [mem_fixedPoints_iff_card_orbit_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-fixedpoints-iff-card-orbit-eq-one.md) | 186 | `result-track:3057aa4681c7c3f58616485934aa08eb933cf9917f0b6d10add95ff482d790c0` |
| 21 | `def` | [stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizer.md) | 210 | `declaration-track:37aa7f4bcef74387ba88781750438284bb40f1add8aa46cfeb4c6920f4448113` |
| 22 | `theorem` | [mem_stabilizer_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-stabilizer-iff.md) | 219 | `result-track:87c90924f6f173998fa10a53f9ede6ed1401684aa6661c6e36b372eaef622994` |
| 23 | `theorem` | [smul_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/smul-orbit.md) | 225 | `result-track:a4180f5a0fc2e5eb9729f910d593259759f7bdbaf0bc1ac5dc56ff8c07e59b0a` |
| 24 | `theorem` | [orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-smul.md) | 234 | `result-track:363cc9d75f07d7bc6a6dfd1df26bd95bac687ed24bf8f2cd24574f4bb19f27a1` |
| 25 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/instance-source-edition-2.md) | 244 | `declaration-track:c2c62252195eac14a4829afffdfbdc470a5986a63a3bd84725ef907f71082888` |
| 26 | `theorem` | [orbit_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbit-eq-iff.md) | 252 | `result-track:53ce239e34e3b1c63155a6631f897ab4465fb586b8305c82119777b398a4358c` |
| 27 | `theorem` | [mem_orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/mem-orbit-smul.md) | 260 | `result-track:9529c9c69709b0c8d25d025f361f250ad60973f5bf53c4d47f996bf0774f894c` |
| 28 | `theorem` | [smul_mem_orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/smul-mem-orbit-smul.md) | 266 | `result-track:a17171094f6562891874177f5a7aaa0578910c1848e2ff4fc310be54f539d74a` |
| 29 | `def` | [orbitRel](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel.md) | 275 | `declaration-track:d7bc950087e7e1937a839515efd2db2680ea86e60ea68dd7108ccb6b4dfba0b8` |
| 30 | `theorem` | [orbitRel_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-apply.md) | 286 | `result-track:d42e0bfd20043c45db9a3483a9b9db9cb5af5c75ab17248c70ab7bf19057a028` |
| 31 | `theorem` | [quotient_preimage_image_eq_union_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/quotient-preimage-image-eq-union-mul.md) | 296 | `result-track:77c2f88b022bf04abce59c986cfa954766e63d01ecb68fd852ac53c446078887` |
| 32 | `theorem` | [disjoint_image_image_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/disjoint-image-image-iff.md) | 319 | `result-track:0e88dc116c86dd49207685f6284af5fd1ab96c4dc4e4091bdb8108b28af85914` |
| 33 | `theorem` | [image_inter_image_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/image-inter-image-iff.md) | 337 | `result-track:7c7d0fd0082e4e3fe4d03326bdbe8c2c4ae6463b2d70012e6c0fd4bf29c28df6` |
| 34 | `def` | [orbitRel.Quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-quotient.md) | 349 | `declaration-track:6bcc4c05c45529e3199de236d91f16e2f5a325f6694834696ac4b8c3e93d34dd` |
| 35 | `def` | [orbitRel.Quotient.orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit.md) | 358 | `declaration-track:bd0a8d643d8bf20eb5edaf611ddb1559557a00a6656d71baaa4e1f6912284cf9` |
| 36 | `theorem` | [orbitRel.Quotient.orbit_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-mk.md) | 364 | `result-track:038dda0807ecb9d9e9ee87469a4192f28377c9366b03c347a9bbbd937253a3e6` |
| 37 | `theorem` | [orbitRel.Quotient.mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-quotient-mem-orbit.md) | 371 | `result-track:0f552153cc96645b4ad459c2688f5bab32adf0b1e09bd0fdc04fbf46e122fec3` |
| 38 | `theorem` | [orbitRel.Quotient.orbit_eq_orbit_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-eq-orbit-out.md) | 381 | `result-track:66d74d84312d9a96792ce92775497563a47f1d71ca3f7c564223fc379b5b5f1d` |
| 39 | `def` | [selfEquivSigmaOrbits'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/selfequivsigmaorbits-source-edition-2.md) | 402 | `declaration-track:47a5fcf468de00e405ce088752217b9176456b6abdedfe17bf3518c9e978af1c` |
| 40 | `def` | [selfEquivSigmaOrbits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/selfequivsigmaorbits.md) | 416 | `declaration-track:16df86e9675d15bb3b457eb11cb36cb49657763ee6eb757489c248c682df5a73` |
| 41 | `theorem` | [stabilizer_smul_eq_stabilizer_map_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizer-smul-eq-stabilizer-map-conj.md) | 426 | `result-track:d11ef00814579678273ffb9e7a598756f2ae9462ec43852a1f2eb7fdeedb99b1` |
| 42 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizerequivstabilizeroforbitrel.md) | 434 | `declaration-track:283d4a4cdb7f9e90128c8afbe2da135896c20b93cc3383303c91c8cbc4ae0356` |
| 43 | `theorem` | [stabilizer_vadd_eq_stabilizer_map_conj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizer-vadd-eq-stabilizer-map-conj.md) | 450 | `result-track:7e97118eae3dbb61a0cdbe47d55c09a2e3a6798feb3d90305d78fd7b65558cab` |
| 44 | `def` | [stabilizerEquivStabilizerOfOrbitRel](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/stabilizerequivstabilizeroforbitrel-source-edition-2.md) | 459 | `declaration-track:743e2f78b7e4ff1e956582c0f9c7038ca7d55627e63b52ae18c1a000ed602c1a` |
| 45 | `theorem` | [smul_cancel_of_non_zero_divisor](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionBasicNamespacedOrbit.lean/declarations/smul-cancel-of-non-zero-divisor.md) | 473 | `result-track:e906e35058aed003a930532f538eb7d73f92af1c3b38d4ed8e2630db676b2830` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=114e6842c502e610a5ace3398582f581f0f80343d2db433a1b591d071561b581 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variant9b89d6b0201e99ccdbc4e524087981c229623ad77d6ba4363c2a989abf7d0e2c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variant9b89d6b0201e99ccdbc4e524087981c229623ad77d6ba4363c2a989abf7d0e2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
