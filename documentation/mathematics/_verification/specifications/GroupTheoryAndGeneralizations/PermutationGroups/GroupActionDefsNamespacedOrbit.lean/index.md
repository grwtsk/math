# Verification target: Group Action Defs Namespaced Orbit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22689db2dd8a493a144fc0f062e1a095ab9fe0a2",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22689db2dd8a493a144fc0f062e1a095ab9fe0a2`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Scalar` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.MulAction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.BooleanAlgebra` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit.md) | 52 | `declaration-track:86a9d07c695eac04660ac14cb48490392bd6cc0998750d8aeca9fc180469896c` |
| 2 | `theorem` | [mem_orbit_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-iff.md) | 58 | `result-track:688789ff9cd538606fa240f9324c112afdb86d33f16c940e1d86f0c50a4ad724` |
| 3 | `theorem` | [mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit.md) | 62 | `result-track:17755c204f12371880be6fbeea4a75376e726de1347e8e8da29e11e7369bdf09` |
| 4 | `theorem` | [mem_orbit_of_mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-of-mem-orbit.md) | 66 | `result-track:517d0da1a6472397393f291acdfc0c88f19ec942329dc6d5d2a102f6f0419053` |
| 5 | `theorem` | [mem_orbit_self](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-self.md) | 72 | `result-track:c9317e94f91a6503aa690d1b4400ddab10c0714a626e9c012829993b0862a28b` |
| 6 | `theorem` | [orbit_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-nonempty.md) | 76 | `result-track:65d11ba6a41e4410345ca346ac2aa9eee5e57b55b5221ac80661aafea63f3fd5` |
| 7 | `theorem` | [mapsTo_smul_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mapsto-smul-orbit.md) | 80 | `result-track:42041e10b05eb0917e5e2ac4ed2204085446449e5b25d7a856cc57312fb086c9` |
| 8 | `theorem` | [smul_orbit_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/smul-orbit-subset.md) | 84 | `result-track:4d61062a213bc03b0cc33e329d585bbaa37ce57c85af0ca72a683d68278bfb8c` |
| 9 | `theorem` | [orbit_smul_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-smul-subset.md) | 88 | `result-track:12fa82786208224b01df340d275423a1b10fa210cbdc9969653c2b282dc0fd48` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/instance-source-edition-3.md) | 92 | `declaration-track:f8a185c545cf207cba7685c8562f0e2bb2b9adb0ad6a23ab7c6b053dd8c6bb2a` |
| 11 | `theorem` | [orbit.coe_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-coe-smul.md) | 98 | `result-track:238eeb7e34be3ff7f349017fe773c604931e4c558b231f563181aedc94224f7c` |
| 12 | `lemma` | [orbit_submonoid_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-submonoid-subset.md) | 102 | `result-track:1722ccdc34ba6d9c748bb8822e80854f8c37e207736f60488eb46d38e549ed81` |
| 13 | `lemma` | [mem_orbit_of_mem_orbit_submonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-of-mem-orbit-submonoid.md) | 107 | `result-track:8bc97b3a99854344df2747ecbf4df3e7f11181140390a0423a9eeba49f2096b0` |
| 14 | `def` | [fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/fixedpoints.md) | 117 | `declaration-track:7f183fdda819cabc8a9b1dfc07a454daedd44781f796ea470b2a435b263f98fc` |
| 15 | `def` | [fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/fixedby.md) | 123 | `declaration-track:640c5dfce538c83aa6b4305a8f203737a8b13ab67a900497206d92253a372f37` |
| 16 | `theorem` | [fixed_eq_iInter_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/fixed-eq-iinter-fixedby.md) | 127 | `result-track:ec6ccdc44b96e46a74851ff80ab46fd67ebaeb75e991cae0fa30d12bc0ef5091` |
| 17 | `theorem` | [mem_fixedPoints](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-fixedpoints-source-edition-2.md) | 134 | `result-track:98f33de4d10a0a3895086265a3061231d0e31e257d9b36d74abbab32de0e4955` |
| 18 | `theorem` | [mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-fixedby.md) | 138 | `result-track:9dd97f746dcf2d74e5a687d72515a21b860c137f870f5b2f4614c592a8dcdf71` |
| 19 | `theorem` | [mem_fixedPoints'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-fixedpoints.md) | 142 | `result-track:4d803f02a41284477c84cdac6f4657eb07272bb24e4c330707ed9ca3bef0f7d7` |
| 20 | `def` | [stabilizerSubmonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizersubmonoid.md) | 156 | `declaration-track:22a73da4063762ce56c203277c8b5a65dbc5f13453e75ea50e4d37d942a3c8c4` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/instance.md) | 165 | `declaration-track:1052072b4847dd07ea0e82305f87cbb38b78d66e11eda5df375a3d6de31a928c` |
| 22 | `theorem` | [mem_stabilizerSubmonoid_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-stabilizersubmonoid-iff.md) | 169 | `result-track:9fb0c0db01d9f79f4d631e4af9d477689948b27d6593233ee8dd7e9bbc9d4b9e` |
| 23 | `def` | [FixedPoints.submonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/fixedpoints-submonoid.md) | 185 | `declaration-track:aa113cb6c74fe14edf7e76445fd41c753d4ed2d88d27ff12a7774df1e07d3052` |
| 24 | `lemma` | [FixedPoints.mem_submonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/fixedpoints-mem-submonoid.md) | 191 | `result-track:c94fc32e540b07a39b988ac5743ee19465f12dda151732e5e9f139c3ded44b41` |
| 25 | `def` | [subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/subgroup.md) | 201 | `declaration-track:48f8c69933191a7eb867e0d30cf9e26cab70988b0ccc7fa3b8d9d4c5e376a002` |
| 26 | `lemma` | [mem_subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-subgroup.md) | 209 | `result-track:f5f7fd4d5ad127971777c2597ca015dede79d5e9619196444515f6039fc5b426` |
| 27 | `lemma` | [subgroup_toSubmonoid](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/subgroup-tosubmonoid.md) | 213 | `result-track:8e7cf15b666226b7d03d6bd86a65b5b3195da899c3f7f5bdb8697c1276f62d87` |
| 28 | `theorem` | [orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-smul.md) | 226 | `result-track:36b95e2f2fa8af4460598ce4be25bb0d301df0c76536f8c513d81cdc00e6b139` |
| 29 | `theorem` | [orbit_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-eq-iff.md) | 233 | `result-track:37a6298b02aa9b9b642f2339ba8c19217eadef88701818ab8db9becc4cf34f38` |
| 30 | `theorem` | [mem_orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-smul.md) | 237 | `result-track:10ee9f7abf0f7c30e82267a91bc5cfd386f7fa4b70630b8fc1947d10584e191a` |
| 31 | `theorem` | [smul_mem_orbit_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/smul-mem-orbit-smul.md) | 241 | `result-track:a391558f308b66a2f50da32c4b9c01944b9571e131edf68ab6242ad2c8bc0f7d` |
| 32 | `instance` | [instMulAction](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/instmulaction.md) | 245 | `declaration-track:38b3b41aa3ca0798d43f33ff596578747d4a3c6876f751631b508f33c73a10a8` |
| 33 | `lemma` | [subgroup_smul_def](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/subgroup-smul-def.md) | 249 | `result-track:5ca60f49d7ff5ca3a86db9b2f6bd1af3b65f33f9181ea3465a100a9d3fa3c640` |
| 34 | `lemma` | [orbit_subgroup_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbit-subgroup-subset.md) | 252 | `result-track:85d0608d402309a7e88b6e11a5d67f3f9a00456381b2eef8dbc1a7e679c7ecb1` |
| 35 | `lemma` | [mem_orbit_of_mem_orbit_subgroup](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-of-mem-orbit-subgroup.md) | 256 | `result-track:fd1904272be4e3a02b17928ed6e00e319697f5637f88f4f488a9c179e03311d1` |
| 36 | `lemma` | [mem_orbit_symm](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-orbit-symm.md) | 261 | `result-track:ee12e4a665ade962678d5816d3cc2922c35f062f40dd785877d86fabe1636ae6` |
| 37 | `lemma` | [mem_subgroup_orbit_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-subgroup-orbit-iff.md) | 265 | `result-track:20c22a53183eca2c0c93e96efe989ea075caa498a921129d296595cd8ef0b217` |
| 38 | `def` | [orbitRel](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel.md) | 280 | `declaration-track:20bcad1e13fa6ab1ece09a44b067a534d9f52013f6ecc161b6dc8b9b15b612ff` |
| 39 | `theorem` | [orbitRel_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-apply.md) | 289 | `result-track:48b84de226c78cdd9282c29fbf3e651e5ca23d42876d433266e8982501a58277` |
| 40 | `theorem` | [quotient_preimage_image_eq_union_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/quotient-preimage-image-eq-union-mul.md) | 297 | `result-track:48bbc8686d63c1da30ae2ceda7b9f70fce88dc96a5c40a1812955675801ccd07` |
| 41 | `theorem` | [disjoint_image_image_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/disjoint-image-image-iff.md) | 318 | `result-track:4a363fee61af2b9b364c5ae2951cb27b487b04641cb37749157ae692d7678266` |
| 42 | `theorem` | [image_inter_image_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/image-inter-image-iff.md) | 334 | `result-track:83c512347b02cc57a2f0d74255aa257496df8e19ebd68379ecd53373fcefd494` |
| 43 | `abbrev` | [orbitRel.Quotient](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient.md) | 344 | `declaration-track:2565a9915035767819eefcd7f80bfb9536a47e77e91bc9f4141190a29b00b641` |
| 44 | `def` | [orbitRel.Quotient.orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit.md) | 351 | `declaration-track:2804d468bdcb15348831556247eae2b6f553bc799bba9aaf26e53765390763c5` |
| 45 | `theorem` | [orbitRel.Quotient.orbit_mk](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-mk.md) | 355 | `result-track:2eddb1001fa51bd8d6c6fbeb0882853f284f79243ddf870547dd6f290a110606` |
| 46 | `theorem` | [orbitRel.Quotient.mem_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-mem-orbit.md) | 360 | `result-track:cd2091175299525b0b08bfab3edb508507985cbe23e89c409d187c816170ed66` |
| 47 | `theorem` | [orbitRel.Quotient.orbit_eq_orbit_out](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-eq-orbit-out.md) | 368 | `result-track:aa7a49cea1fda4ef2fbcc3e3eee78e9ab585553f7375045956b1f6b037ebafbe` |
| 48 | `lemma` | [orbitRel.Quotient.orbit_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-injective.md) | 375 | `result-track:0dac9a2b9d8260ab0529cf1e97cc21a7402813d504bdaf28d4a2145640cf2858` |
| 49 | `lemma` | [orbitRel.Quotient.orbit_inj](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-inj.md) | 383 | `result-track:16c5576347ad7a277aa6a75656c8e8d767afc7cabde797c91f2c03c812422034` |
| 50 | `lemma` | [orbitRel.quotient_eq_of_quotient_subgroup_eq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-eq-of-quotient-subgroup-eq-source-edition-2.md) | 387 | `result-track:98c1c4301f64a79b126198c1be079b51db3542b7e9524e6f5fa2b563265a2811` |
| 51 | `lemma` | [orbitRel.quotient_eq_of_quotient_subgroup_eq'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-eq-of-quotient-subgroup-eq.md) | 393 | `result-track:7ac5745c1c25eb4e2edc865c1605e85f90ecbd2502c8d29fd6a71c5c95961029` |
| 52 | `lemma` | [orbitRel.Quotient.orbit_nonempty](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-nonempty.md) | 399 | `result-track:5f2b02f15426feab542675972930609e92b59b425fb711f41e22715f923757b1` |
| 53 | `lemma` | [orbitRel.Quotient.mapsTo_smul_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-mapsto-smul-orbit.md) | 405 | `result-track:7d358402e661e8f84fe1cb62b4c30b6259669aa1d429d6cc4624fe44ac95eff9` |
| 54 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/instance-source-edition-2.md) | 411 | `declaration-track:591549c5f55158661bc7455af05636d04be5ed2e99e0ce73a02a94a8a4adbc4f` |
| 55 | `lemma` | [orbitRel.Quotient.orbit.coe_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-orbit-coe-smul.md) | 417 | `result-track:b48ed9e5cad0191411630657a1a74557fbf860f9ecaee098b2e92ec5a9414d7c` |
| 56 | `lemma` | [orbitRel.Quotient.mem_subgroup_orbit_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-mem-subgroup-orbit-iff-source-edition-2.md) | 422 | `result-track:943bb44eef65a6560576c814dd3dcabc9add0413b971fffd0f8990b526a66df8` |
| 57 | `lemma` | [orbitRel.Quotient.subgroup_quotient_eq_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-subgroup-quotient-eq-iff.md) | 434 | `result-track:99e44680602479f66c09697ed5f489ebb4b94fab89945488aaaf590e54faeb89` |
| 58 | `lemma` | [orbitRel.Quotient.mem_subgroup_orbit_iff'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/orbitrel-quotient-mem-subgroup-orbit-iff.md) | 441 | `result-track:64b5c91244766577034e8e81db0591aa6ffb1d5b182af3d80b7c26940c3b8016` |
| 59 | `def` | [selfEquivSigmaOrbits'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/selfequivsigmaorbits.md) | 468 | `declaration-track:761909330d8091a7455a0b57115cbd9ec3d4223b13645cdbc41c836c968fc50b` |
| 60 | `def` | [selfEquivSigmaOrbits](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/selfequivsigmaorbits-source-edition-2.md) | 480 | `declaration-track:a083c4e2f406d6d47c1c5dca9d54105e9f5e8039a4ef75c9afe62a1e7d8bedca` |
| 61 | `lemma` | [univ_eq_iUnion_orbit](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/univ-eq-iunion-orbit.md) | 489 | `result-track:dd04e5c66893c20b17a03bbfb0dc1993140774a323bb21cad0ca296fdbef83d1` |
| 62 | `def` | [stabilizer](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizer.md) | 505 | `declaration-track:4843f7affe0713cb6e2d3289f6cd65ec02bce6fea971106ffac245eb837da3f0` |
| 63 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/instance-source-edition-4.md) | 510 | `declaration-track:f92c0bb42f57f6ebbbcc5991c9f8fe2caaa069bbdad725f93686cfc279792679` |
| 64 | `theorem` | [mem_stabilizer_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/mem-stabilizer-iff.md) | 514 | `result-track:f8fd61e45681e8112700587f79ed1657f63b6ad139023dcb9cb9a5fe3a5b4cb9` |
| 65 | `lemma` | [le_stabilizer_smul_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/le-stabilizer-smul-left.md) | 518 | `result-track:8b523d5ebcfdc2d1ab846976bc7c9f4800a54c164d935836bdeafe24b88f2ea4` |
| 66 | `lemma` | [le_stabilizer_smul_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/le-stabilizer-smul-right.md) | 525 | `result-track:7606fa572e22f6bd139af7bcb14c50a45df91ec6c668f17bbbef3daa87e33811` |
| 67 | `lemma` | [stabilizer_smul_eq_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizer-smul-eq-left.md) | 531 | `result-track:6fd3491e6bdfea7f9faccaaddaee629798dd47af01f7b8bf1d583b2f80fff8f6` |
| 68 | `lemma` | [stabilizer_smul_eq_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizer-smul-eq-right.md) | 537 | `result-track:5532e997b80b679a7e679d3e8822fe9f2f7d0de0fadbf3887d44f907dab05224` |
| 69 | `lemma` | [stabilizer_mul_eq_left](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizer-mul-eq-left.md) | 543 | `result-track:6b240f0d6a9f04024967029c513f3889fc46374d0c4821fbf48ef883e8676e9d` |
| 70 | `lemma` | [stabilizer_mul_eq_right](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionDefsNamespacedOrbit.lean/declarations/stabilizer-mul-eq-right.md) | 547 | `result-track:485f01ec882a8530bc14009047ae3fe5253edc412bd84cb17dd416304bb5a300` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b540759b061a28b2527c776bf50fb53c476807eeb76d85b6c6076a38474dc5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variantddfcc38932f18ebdc37d1b8f49f21b755a3918542ffd121037d509e2d5f979b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
