# Verification target: Const Mul Action Namespaced Specializes

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24f79023a19e8fd27560899f833027994b05cfcd",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24f79023a19e8fd27560899f833027994b05cfcd`.

Source path: `GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.Pointwise.Set` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.ULift` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Constructions` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Support` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousconstsmul.md) | 63 | `declaration-track:af992b6ffd211fb27a9bc08d5a2857dbd49f0ed6f018f5d63427196c9543a120` |
| 2 | `class` | [ContinuousConstVAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousconstvadd.md) | 73 | `declaration-track:e22038b460071439d797e109283283fb733e98e7a7bb25202b4b8217b1db5c22` |
| 3 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/instance-source-edition-2.md) | 89 | `declaration-track:20b81be70e2e7d27bc1e5875fa850c3d5b04f0064a2116974b315cad52ffd96a` |
| 4 | `theorem` | [Filter.Tendsto.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/filter-tendsto-const-smul.md) | 92 | `result-track:b42330df7d8a1859f57e25eb669a8c2734a49270fa60dca3351427f02df85d2e` |
| 5 | `theorem` | [ContinuousWithinAt.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouswithinat-const-smul.md) | 99 | `result-track:fa70f8815efe2f6949a89343b9938ed0260fae343d355b501c406ff62958ec01` |
| 6 | `theorem` | [ContinuousAt.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousat-const-smul.md) | 104 | `result-track:bf5edbda453ceb7ae02322a4e39dad536df14068b54e573ba7b84cfe77df7113` |
| 7 | `theorem` | [ContinuousOn.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouson-const-smul.md) | 109 | `result-track:e50e672bf52d2e5d3c317c033ad74c4a54ff84f795e64527ba1740d04cb4df0d` |
| 8 | `theorem` | [Continuous.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuous-const-smul.md) | 113 | `result-track:e880d6319cda3f47e8b2dd051e825fc653b6709ff60defeb3f7891fa380f7c72` |
| 9 | `instance` | [ContinuousConstSMul.op](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousconstsmul-op.md) | 119 | `declaration-track:3ed1d55d9c244051c087af5dd456ace4fbdfdc8cb90de58ab632e6c3dd79b7b0` |
| 10 | `instance` | [MulOpposite.continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/mulopposite-continuousconstsmul.md) | 124 | `declaration-track:d310778d50e3258c9a82690e88036302aa259aff7656d271c39fa6ec62296dfb` |
| 11 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/instance.md) | 128 | `declaration-track:133433ae4b93498dd592fb8400fc82e0e284f464a8327d89b9135f3e67bb8edc` |
| 12 | `instance` | [OrderDual.continuousConstSMul'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/orderdual-continuousconstsmul.md) | 131 | `declaration-track:b70b2908534039d76f1316d49b4223a84ef124b239fdf2865cecefbd813cfc89` |
| 13 | `instance` | [Prod.continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/prod-continuousconstsmul.md) | 135 | `declaration-track:78f9d82ef41b5f4f7ec24d6d8220b33509f56fa0f175a570c888db44adbc505f` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/instance-source-edition-5.md) | 140 | `declaration-track:f97bb92d2a8c0256a8dc78840f423c7e80b8c30c06dc04170bf699f0b5561c1a` |
| 15 | `theorem` | [IsCompact.smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/iscompact-smul.md) | 145 | `result-track:9e3fb7e2250197532dd0fb1ae000ef3eabc6deb8281b30ec4238c253b9f1d753` |
| 16 | `theorem` | [Specializes.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/specializes-const-smul.md) | 150 | `result-track:6ac1163b1ba15df7f454ac4f37f47845a022a721834712e7daf20e3e9e3c2db7` |
| 17 | `theorem` | [Inseparable.const_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/inseparable-const-smul.md) | 154 | `result-track:55f9e577dca4609821b5b438e4cab20b831fa2a4022e28b2ae111510bbdbdd0a` |
| 18 | `theorem` | [Topology.IsInducing.continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/topology-isinducing-continuousconstsmul.md) | 159 | `result-track:b27ac2161bc07788eab0bf753d2310a5db377dbe88ba095eb598f63e251bb175` |
| 19 | `instance` | [Units.continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/units-continuousconstsmul.md) | 176 | `declaration-track:2e26ba8a16a8ee07a59461355bb6a3b108d2cb21831946efbe97152f0d43a67e` |
| 20 | `theorem` | [smul_closure_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-closure-subset.md) | 180 | `result-track:8da67e3c8f19fd2bd377ed0bec0c5b259d651ae40631e00a4286b8050b8b4e72` |
| 21 | `theorem` | [smul_closure_orbit_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-closure-orbit-subset.md) | 184 | `result-track:e2fec52e6bd65940ffada704b2c225c9f21e5fa24c538100d500466f94c227ef` |
| 22 | `theorem` | [isClosed_setOf_map_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosed-setof-map-smul.md) | 188 | `result-track:15e7a230d089cc93a0b105b93ca08baba1be81e946ac7611cd8cb92114c64105` |
| 23 | `theorem` | [tendsto_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/tendsto-const-smul-iff-source-edition-3.md) | 202 | `result-track:ddf40a3e10b3de4718cc74d77e6e0e9d54b5439ec3d9c7feb3e9ee63547d91ab` |
| 24 | `theorem` | [continuousWithinAt_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouswithinat-const-smul-iff.md) | 209 | `result-track:751bdd784a206cd1d2eeb58efda6289bda603b4dcd973b80caf7e9ec536d6fe5` |
| 25 | `theorem` | [continuousOn_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouson-const-smul-iff-source-edition-2.md) | 214 | `result-track:c1f06a5a75fe338ea23aaf5d1e945da0d321bc6041cabb189bf0dd5116753cda` |
| 26 | `theorem` | [continuousAt_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousat-const-smul-iff.md) | 219 | `result-track:30b4eddbdba6150d50af2ced73c7b021524280f714d2f1b3e466b20e7eeb3271` |
| 27 | `theorem` | [continuous_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuous-const-smul-iff-source-edition-3.md) | 224 | `result-track:cacc9825d89bcb46d6af0529906c0ba561741444458d6fc56a6c599a74db331a` |
| 28 | `def` | [Homeomorph.smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/homeomorph-smul.md) | 230 | `declaration-track:3f9f0583f2bf197fa7cb1ef193a1b03e956f5cab8f2b90ff5d3865b8049e6324` |
| 29 | `theorem` | [isOpenMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopenmap-smul-source-edition-3.md) | 240 | `result-track:e0ccff326a5c77977eac33237746a117e9a3e651bc20e6d85804b1ae8dbd483d` |
| 30 | `theorem` | [IsOpen.smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopen-smul.md) | 244 | `result-track:8ab8c4d8f1b6fb81438d9f1a0e3ba2eddc70a0389ea6f92c10fca0b963f89f69` |
| 31 | `theorem` | [isClosedMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosedmap-smul.md) | 248 | `result-track:11bdc9cf0a67405e10c87daf412293ca43e7bec39a708788335485355d558553` |
| 32 | `theorem` | [IsClosed.smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosed-smul-source-edition-2.md) | 252 | `result-track:c54931ca1c8628ed78bb879d78a71be935d79c071d4c03b4413097d13a8884e5` |
| 33 | `theorem` | [closure_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/closure-smul-source-edition-3.md) | 256 | `result-track:7de4a31a0afc76a4426c1cb1371df2797f453f33e1499754904643aafd6bba2a` |
| 34 | `theorem` | [Dense.smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/dense-smul.md) | 260 | `result-track:37e6859fe65188dda261517bf7cd51cd58d78a1fb17496b30fec57b9621a4ea1` |
| 35 | `theorem` | [interior_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/interior-smul-source-edition-2.md) | 264 | `result-track:bd489ecb679f940ef0460e43341abf81910984874f6b08e57553f723ef9aa5b4` |
| 36 | `theorem` | [IsOpen.smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopen-smul-left.md) | 268 | `result-track:828248e3ad96a1fe5b001fc1fb204defc2bc5e54b7e2fe0e96b1e7b867c11a0c` |
| 37 | `theorem` | [subset_interior_smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/subset-interior-smul-right.md) | 273 | `result-track:3aed31db7247a03fe9dd2fb2eafa436f96880640b13142ed5d713832a0fc6fd1` |
| 38 | `theorem` | [smul_mem_nhds_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-mem-nhds-smul-iff-source-edition-3.md) | 277 | `result-track:ff30f20b99a65b9b7f53fde27528ffb34cba6e9d6a13cbe95340b9450c18ccbe` |
| 39 | `theorem` | [smul_mem_nhds_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-mem-nhds-self.md) | 283 | `result-track:a543e720649f693f8204ad410ecedae5946fca9672169473597518ea5043c9f9` |
| 40 | `theorem` | [tendsto_const_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/tendsto-const-smul-iff-source-edition-2.md) | 294 | `result-track:4a1b7eb9fc0724682dd083c777a91330aebce5031dffc66f1c1589695a949286` |
| 41 | `theorem` | [continuousWithinAt_const_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouswithinat-const-smul-iff-source-edition-3.md) | 300 | `result-track:bd9e108852bd2b03ca8d79d2630ae2e906066808016938783606a8f7fa8d21ea` |
| 42 | `theorem` | [continuousOn_const_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouson-const-smul-iff.md) | 304 | `result-track:4c04925ff809a8dca2dd0dfc3df415eedefc55ce001c7049220b9a19dde3a5e3` |
| 43 | `theorem` | [continuousAt_const_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousat-const-smul-iff-source-edition-2.md) | 308 | `result-track:57655b031503e53ea897d80e7f50e8773527f6d28a266cca7188c481a7fd5069` |
| 44 | `theorem` | [continuous_const_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuous-const-smul-iff.md) | 312 | `result-track:1adf6154e6554e69195ebaebaaa7f2e8ca623fe3c0aa13186d02ac298a52c500` |
| 45 | `def` | [Homeomorph.smulOfNeZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/homeomorph-smulofnezero.md) | 318 | `declaration-track:924dd18804e8c75d34f310db3218e2bde95ff4073b3ec0fd705cbc8113ce9615` |
| 46 | `theorem` | [Homeomorph.smulOfNeZero_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/homeomorph-smulofnezero-symm-apply.md) | 322 | `result-track:82872e0285d7b381c4b71fc6e944ba209681d7cbea88f277c21ae838eb36176d` |
| 47 | `theorem` | [isOpenMap_smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopenmap-smul-source-edition-2.md) | 326 | `result-track:ca9ded895d6f90b063780b8321eec57e6600f3acf6c792ee7c4eb82684c88e83` |
| 48 | `theorem` | [IsOpen.smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopen-smul-source-edition-2.md) | 329 | `result-track:bc2234cf8d2cd50e3ff88c6dc2b8c2bff2fc5c1635a620737edd61f66aaa9f74` |
| 49 | `theorem` | [interior_smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/interior-smul.md) | 332 | `result-track:aa940cd7667f6460b5b3a798b0507d889a17cbd7d34c9e55610e5a3daff90e12` |
| 50 | `theorem` | [closure_smul₀'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/closure-smul-source-edition-2.md) | 335 | `result-track:7661572f5cfdddaf2029ceffd491bb7b7d8521ee84ef6f41b409388da5aa1838` |
| 51 | `theorem` | [closure_smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/closure-smul.md) | 339 | `result-track:1f64017a382ba9a6e8a58fd9f40a8bf43c28210a6f3a00a66f05b4bba92d7ac6` |
| 52 | `theorem` | [isClosedMap_smul_of_ne_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosedmap-smul-of-ne-zero.md) | 352 | `result-track:be1496345c3c944cfd52c7ece15287a283ad81f14c34bcef0ad40ec5ce7870eb` |
| 53 | `theorem` | [IsClosed.smul_of_ne_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosed-smul-of-ne-zero.md) | 355 | `result-track:25af5c1d347c316938f5e6531560de8b334f98d3ab9b019130eeedfdb2343ab3` |
| 54 | `theorem` | [isClosedMap_smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosedmap-smul-source-edition-2.md) | 363 | `result-track:5ac33d266f08b1d5419f3fe114205189ce80a66b92f4421ca6e7a5010285eb8a` |
| 55 | `theorem` | [IsClosed.smul₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosed-smul.md) | 370 | `result-track:158c6b8513b10de192f1aacc62bbefb2ccb37a0757d47ba5627c04caeb47eb82` |
| 56 | `theorem` | [HasCompactMulSupport.comp_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/hascompactmulsupport-comp-smul.md) | 375 | `result-track:d78dae24a098378a913e9e6b7d33174f7adae4d93396359dcbdbc11975fb247b` |
| 57 | `theorem` | [HasCompactSupport.comp_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/hascompactsupport-comp-smul.md) | 379 | `result-track:4c12f8f10756a6d450743341779a7d86c85e0e6d46d5aa41805b4ad55009bd65` |
| 58 | `theorem` | [tendsto_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/tendsto-const-smul-iff.md) | 389 | `result-track:0d6d088994a35ba65aea080b4fdf3e529f0eaca638f63de1e912adece424392a` |
| 59 | `theorem` | [continuousWithinAt_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouswithinat-const-smul-iff-source-edition-2.md) | 395 | `result-track:b3561fb8a739743c539768a2609005143683ee959f874edd5da822ae9e99a0a5` |
| 60 | `theorem` | [continuousOn_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuouson-const-smul-iff-source-edition-3.md) | 399 | `result-track:fb2f1f9d9b57e9f5654d4240272f32c2fb9194ca8e5e1791e692d1fc23b760dc` |
| 61 | `theorem` | [continuousAt_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousat-const-smul-iff-source-edition-3.md) | 403 | `result-track:b99d392ea8fff7d6bbaf23ddaf2dfb383bf59fefb37a61fa42ce8c9f7b6cef76` |
| 62 | `theorem` | [continuous_const_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuous-const-smul-iff-source-edition-2.md) | 407 | `result-track:5f850f875a44eec4a97fb1d7b5dfbe67b4ce77a19edec2963fb18b7674fdc51a` |
| 63 | `theorem` | [isOpenMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopenmap-smul.md) | 411 | `result-track:899dd606a22c6dac0d1202bbac2472ebdc2d66b47116f38794cf59791ff48408` |
| 64 | `theorem` | [isClosedMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isclosedmap-smul-source-edition-3.md) | 414 | `result-track:adfc9af1ac417dea490dea26c5b884083b18490b4c052a01a4c777ca16afdca0` |
| 65 | `theorem` | [smul_mem_nhds_smul_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-mem-nhds-smul-iff.md) | 417 | `result-track:392db110b9162caaf66c7579ba9ae3b45a3610359e871cf7990e69abe78b213c` |
| 66 | `class` | [ProperlyDiscontinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/properlydiscontinuoussmul.md) | 428 | `declaration-track:70adfaa11d5917164458b3d9da19817bc54c7b45375e2043c9bd43026fc90625` |
| 67 | `class` | [ProperlyDiscontinuousVAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/properlydiscontinuousvadd.md) | 438 | `declaration-track:5d168ba8b01bba27bddb50005d3b1e3295a1732dd366eb042e74976a30638bd2` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/instance-source-edition-3.md) | 450 | `declaration-track:3d053bac403205520342b34d2a649282b93ca5342f4de276ded2b11e0c9b7107` |
| 69 | `theorem` | [isOpenMap_quotient_mk'_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/isopenmap-quotient-mk-mul.md) | 460 | `result-track:7c657031cb0d58ebc07d4923be0a3dc7a928559718df9cef93503ee779f77946` |
| 70 | `theorem` | [MulAction.isOpenQuotientMap_quotientMk](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/mulaction-isopenquotientmap-quotientmk.md) | 467 | `result-track:47510207e44ad0ef6b24440f6ed2158e55dc0a88b3eca3b0891c9541eb272b3d` |
| 71 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/instance-source-edition-4.md) | 474 | `declaration-track:c91ec5d4e4404c3f2c52fe83dd00ee6c2aca110e7c94492d41430229428743f3` |
| 72 | `theorem` | [ContinuousConstSMul.secondCountableTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/continuousconstsmul-secondcountabletopology.md) | 510 | `result-track:8888b92782fadacf0ccee53dd1b9af58ad3e77c26cef90e93659e489da6524e2` |
| 73 | `theorem` | [smul_mem_nhds_smul_iff₀](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/smul-mem-nhds-smul-iff-source-edition-2.md) | 522 | `result-track:bc30b2ba0d3d7fbaa598f07e27f0786dbe545a5fe0229b087d605b105956351d` |
| 74 | `theorem` | [set_smul_mem_nhds_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ConstMulActionNamespacedSpecializes.lean/declarations/set-smul-mem-nhds-zero-iff.md) | 535 | `result-track:4eeb60bf8981e8b0aa4ebe0c46a9e6f8a31b44c5dccc687faf1d27bec37c4667` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7260356920092a914d3a3a979f492dcdbb04b1985c0df4c60f63daf60b606253 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ConstMulAction/Variantc269855b1a5bd114bf507142d61e4640a780ff13784e6404bfd5546ac0815978.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
