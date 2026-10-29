# Verification target: Module Finite Dimension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2be48f91fcc6b0932c9b3bb4810f8851c7b492d5",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2be48f91fcc6b0932c9b3bb4810f8851c7b492d5`.

Source path: `GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.BalancedCoreHull` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Matrix` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Simple` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Determinant` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/instance.md) | 60 | `declaration-track:131f548fa847284eb0d99d896ef0d5651d8dc2ca1be08975c5d897996aa82524` |
| 2 | `theorem` | [unique_topology_of_t2](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/unique-topology-of-t2.md) | 76 | `result-track:03a66e89e0059791e2f693dd3d7adf928569160fbae5d4b55c73b8541dedba61` |
| 3 | `theorem` | [LinearMap.continuous_of_isClosed_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/linearmap-continuous-of-isclosed-ker.md) | 131 | `result-track:3be8fc539f4a63f158f8e6363184c8fb4ef21bd73d8adf2787b656d8c8460b52` |
| 4 | `theorem` | [LinearMap.continuous_iff_isClosed_ker](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/linearmap-continuous-iff-isclosed-ker.md) | 178 | `result-track:e3f8ab8849614c08654cab1dd7724947321a4fe47b867d0826bd7e963bda7d74` |
| 5 | `theorem` | [LinearMap.continuous_of_nonzero_on_open](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/linearmap-continuous-of-nonzero-on-open.md) | 185 | `result-track:4afb2783fa7cdd5812d133740b0f47a55610ab70aa55ae0870e995db05a60a35` |
| 6 | `theorem` | [continuous_equivFun_basis_aux](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/continuous-equivfun-basis-aux.md) | 199 | `result-track:469613de5bea7c009bed61d07164713420afd70f38a017ccf62308c5dcb02723` |
| 7 | `theorem` | [LinearMap.continuous_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/linearmap-continuous-of-finitedimensional.md) | 246 | `result-track:e2a0c46c7a13deed2293530f0d79d2e57ee2e17ef494ef0db52b6f329466d7e6` |
| 8 | `instance` | [LinearMap.continuousLinearMapClassOfFiniteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/linearmap-continuouslinearmapclassoffinitedimensional.md) | 264 | `declaration-track:84b93f2b673364edaf796a2f2a7100cb27e3d17fe60d11351c35f796c07ee227` |
| 9 | `theorem` | [continuous_equivFun_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/continuous-equivfun-basis.md) | 274 | `result-track:453a7de65ad345ab9eea9aec6368d425654682eb049fcebfd94615b77c8a563c` |
| 10 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tocontinuouslinearmap.md) | 285 | `declaration-track:da4a9f21ef17f4937014d1baf6633e405895f0bef0d4b6031a28010546153577` |
| 11 | `theorem` | [coe_toContinuousLinearMap'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearmap-source-edition-2.md) | 295 | `result-track:3f2e6f20401c0f4c08245c499f267fe2992c965a658861898bf6207080780fdb` |
| 12 | `theorem` | [coe_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearmap.md) | 300 | `result-track:38fffdc650fc4193e2f255ece64062cce63cf8a0b77c08b0bf990d1bb87333b3` |
| 13 | `theorem` | [coe_toContinuousLinearMap_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearmap-symm.md) | 306 | `result-track:d5fe331266a923c22c0a970b4761e090daad0f3149a74c9301ffd479d0ac444f` |
| 14 | `theorem` | [det_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/det-tocontinuouslinearmap.md) | 313 | `result-track:0ac7024cba3e71db8a84dea169ae3656dfa64d41c87762448ef64bb14f6668da` |
| 15 | `theorem` | [ker_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/ker-tocontinuouslinearmap.md) | 319 | `result-track:4f8ebd94936410d715ccbb6dc3cfac9adb185c04554a933b85f20b0b86674045` |
| 16 | `theorem` | [range_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/range-tocontinuouslinearmap.md) | 325 | `result-track:1c985859e9272551e1a74fb4db02714e1967318f653bac7ad807473c8095f202` |
| 17 | `theorem` | [isOpenMap_of_finiteDimensional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/isopenmap-of-finitedimensional.md) | 331 | `result-track:b60c7bce85beb981fcb94d2084d48224fd6d0dd4560188413c917cc642b6d3ca` |
| 18 | `instance` | [canLiftContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/canliftcontinuouslinearmap.md) | 343 | `declaration-track:52f5aa9821d704ed6b92a9f1eef8222dfb452d37dbe093b1c640bc10c636aa38` |
| 19 | `def` | [toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tocontinuouslinearequiv.md) | 357 | `declaration-track:023efe94071b83e8bc1f26829d9b9e2b1067a111c2ef0bf7571ca366a69a213a` |
| 20 | `theorem` | [coe_toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearequiv.md) | 366 | `result-track:4a978364f1281fbf494cc40f43d2928b965ec6b6a7176d2b58f8be3e472266ee` |
| 21 | `theorem` | [coe_toContinuousLinearEquiv'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-source-edition-2.md) | 371 | `result-track:89f29727e700ea25bb9e63b602653249e72b3566e55cf1a63cd59f28886fcd39` |
| 22 | `theorem` | [coe_toContinuousLinearEquiv_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-symm.md) | 376 | `result-track:6bf55d78632f4a847c79e2a9cfca6739a3d20b8f1f25af0fef0aab3d11e6b761` |
| 23 | `theorem` | [coe_toContinuousLinearEquiv_symm'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearequiv-symm-source-edition-2.md) | 382 | `result-track:d9e5d74edaa8b67be55c7e3391362a69e4dfe5269e0786588830857debafaf52` |
| 24 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tolinearequiv-tocontinuouslinearequiv.md) | 388 | `result-track:f02376c234d40f7f7dbe732ca686089aafa058f3ec4c3752775cf4313a05edbe` |
| 25 | `theorem` | [toLinearEquiv_toContinuousLinearEquiv_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tolinearequiv-tocontinuouslinearequiv-symm.md) | 395 | `result-track:d8820f0b624e3b80a49d23e27efaea0aa3f059ec44420628fadd4634a1fd4dfa` |
| 26 | `instance` | [canLiftContinuousLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/canliftcontinuouslinearequiv.md) | 401 | `declaration-track:ed342e43f502b51e0e6479cdc571f585bdbeb136a2567199cd0526f0f2d3ee9c` |
| 27 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_of_finrank_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-of-finrank-eq.md) | 412 | `result-track:1d0cefb1d04607dd72f1abf6d46bc6e6fb70f58b6d93e459a73016aae120bfba` |
| 28 | `theorem` | [FiniteDimensional.nonempty_continuousLinearEquiv_iff_finrank_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/finitedimensional-nonempty-continuouslinearequiv-iff-finrank-eq.md) | 419 | `result-track:757bd56a6f6dbe3b3ad6646f9b4e5c8ab5e53b15db9c5a12b21a6ab75cdb9f81` |
| 29 | `def` | [ContinuousLinearEquiv.ofFinrankEq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/continuouslinearequiv-offinrankeq.md) | 427 | `declaration-track:463923d52fd7e993e8a290865f2702027fdf7e4e6c2d3b5e3565671a941108ad` |
| 30 | `def` | [constrL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/constrl.md) | 440 | `declaration-track:d48d7c61782a434a3461e7c239ed1029d33a2770757a4bae2f1a14e10b6b2c3d` |
| 31 | `theorem` | [coe_constrL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-constrl.md) | 446 | `result-track:1652220e78876a962db3078853dc00c94f6936db605677333b22ec40dae2680f` |
| 32 | `def` | [equivFunL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/equivfunl.md) | 452 | `declaration-track:0266b24f38fe20df1e1ad8472c94570ff7b44eaa2dabfb6645bebef7d8c468f1` |
| 33 | `theorem` | [constrL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/constrl-apply.md) | 463 | `result-track:67148f3e6eeb3157b93440c64974098f72b8e0eef6dbd8102015c01441317aba` |
| 34 | `theorem` | [constrL_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/constrl-basis.md) | 469 | `result-track:dc9b1ce61a46ee2894261ccf3254e7a0ab40a608d649d7925b1026dba8c7f78c` |
| 35 | `def` | [toContinuousLinearEquivOfDetNeZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tocontinuouslinearequivofdetnezero.md) | 481 | `declaration-track:669035e1d5b25f93424fd7bd0f58c28806000ce1e24281c4d068da181af294db` |
| 36 | `theorem` | [coe_toContinuousLinearEquivOfDetNeZero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/coe-tocontinuouslinearequivofdetnezero.md) | 486 | `result-track:3d2dad27ba2a1247885bd7653f0e097cb52c3ad77a6bcab52673466d9593266c` |
| 37 | `theorem` | [toContinuousLinearEquivOfDetNeZero_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/tocontinuouslinearequivofdetnezero-apply.md) | 493 | `result-track:e096f6b27a2c89cc823fc13c62adf976dd152c72e88d7932f8bdbf662d8f2cd5` |
| 38 | `theorem` | [_root_.Matrix.toLin_finTwoProd_toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleFiniteDimension.lean/declarations/root-matrix-tolin-fintwoprod-tocontinuouslinearmap.md) | 498 | `result-track:9a5fd243c9dcd97ec56ae6f7aa4bd661d568469deae7bef0c69adc1fd7061f33` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=033f8e50723a429c84e2235c8be3c776fd2d107ed22b4f0a087fef17cfef92b9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/FiniteDimension/Variant9d645a94ef00254b798464c35eb3b7fddcbcf4a8996511dd8c4d8f989656e1e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
