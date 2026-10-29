# Verification target: Module Strong Topology

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6c07d5b7c25520a8e1d73f1818fd6138d3bf304",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6c07d5b7c25520a8e1d73f1818fd6138d3bf304`.

Source path: `GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Hom.ContinuousEvalConst` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformconvergenceclm.md) | 79 | `declaration-track:a32778437720a486bb4bb2c4def5597df55b38c85d9aaeb54d4512e30f88bac7` |
| 2 | `instance` | [instFunLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instfunlike.md) | 83 | `declaration-track:baddb63ae56633c51f42a85dfa3d3a84e89a7c548422c7fd3dd230aae8b320d3` |
| 3 | `instance` | [instContinuousSemilinearMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instcontinuoussemilinearmapclass.md) | 87 | `declaration-track:3a6e7309195e041b911abd9e7fd56dc01d923f9a73c02987cc7996a5c97c38c9` |
| 4 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/insttopologicalspace.md) | 91 | `declaration-track:e622659399f2f6885b2078df33aecbc424947f838089cd07d1a035953e11474b` |
| 5 | `theorem` | [topologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/topologicalspace-eq.md) | 96 | `result-track:9b0f38a6e174c55fff114104ba70815114ad71545c97fa8a77acb45d9f1416c6` |
| 6 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instuniformspace.md) | 105 | `declaration-track:8ba822be6f9e2c416a82bdcd871be0d5d9a827de84a18d996950a9ec838cea9b` |
| 7 | `theorem` | [uniformSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformspace-eq.md) | 111 | `result-track:aa36f5ad19ff9c2fb18b358a3772f8dbcf74a087d347ed1736f89fcfdef903cb` |
| 8 | `theorem` | [uniformity_toTopologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformity-totopologicalspace-eq.md) | 118 | `result-track:cff28847aa99b530b820d16b0f2aacfad22b4d7b357ce3bec069c0ef693c385c` |
| 9 | `theorem` | [isUniformInducing_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniforminducing-coefn.md) | 123 | `result-track:e123ec317ec615295d30c16ae52e17fb6e3ca08ff60f051ca7ea254bb97e92e1` |
| 10 | `theorem` | [isUniformEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniformembedding-coefn.md) | 127 | `result-track:ee82338d2f97b5623b9d9dfeb890d4b75f9e9b3de8b46b4f7b010d1b25e84c79` |
| 11 | `theorem` | [isEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isembedding-coefn.md) | 131 | `result-track:ea137bcece5cf415dba7e7db3bef9d336b53799966dbb3fae49145201a804322` |
| 12 | `instance` | [instAddCommGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instaddcommgroup.md) | 139 | `declaration-track:84b6bb3391b77be16da3b1f1981c7be6fd2f4342a95563aa23d0105eb0205aa3` |
| 13 | `theorem` | [coe_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/coe-zero.md) | 143 | `result-track:d4e9e4eb3431deb01f3698bb81d4875d12a65a9dcb3d5e6ee6522b72007cb129` |
| 14 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instisuniformaddgroup.md) | 147 | `declaration-track:8deae13f9b0f7b5453608e4bb439cdad348f16f1fe1d815e4e398fdca99b294d` |
| 15 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instistopologicaladdgroup.md) | 153 | `declaration-track:fb6e9c621142e9882ca4a7ae48481cca50f33b03a851a48f25cbb1bbd45d2326` |
| 16 | `theorem` | [continuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/continuousevalconst.md) | 159 | `result-track:3bf37fa8d744f0de7c1ca91a20685ed25e475e3df50ce16e2bc27b4eb06b2c30` |
| 17 | `theorem` | [t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/t2space.md) | 168 | `result-track:cc163b19e6c3d63990833e73c860bb1e86dcbc828e0951acf267a5377438327b` |
| 18 | `instance` | [instDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instdistribmulaction.md) | 175 | `declaration-track:84204547adb4cdc72ca7b1588554a5b7a5ab60a3097259aab9e4c6b0d82080e4` |
| 19 | `instance` | [instModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instmodule.md) | 179 | `declaration-track:4d60458114c812db9ab745223bc1d0ce88b24dcae38a71fdc704b7032e21c8ad` |
| 20 | `theorem` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/continuoussmul-source-edition-2.md) | 183 | `result-track:41454c4740e78562df95abfcdbd03605d7433f4b11d65dfd438a129b38383c86` |
| 21 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/hasbasis-nhds-zero-of-basis-source-edition-2.md) | 194 | `result-track:238be66cbb82718f857ac579f467c5c3e7f3d0fc946151aaf23bf97e429fc982` |
| 22 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/hasbasis-nhds-zero.md) | 205 | `result-track:554204059136648d07e4d97005d504932e70b7a38d75a549e864e74f0a01bff5` |
| 23 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/nhds-zero-eq-of-basis.md) | 212 | `result-track:444b2a692ec577cc5c8f82ab79a42c2ef89f93cab29952ca0391e2ccc4978a80` |
| 24 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/nhds-zero-eq-source-edition-2.md) | 223 | `result-track:5bfead627305f48f768ed6833d26f1d8b010e2271f331c098a834a439e8f5171` |
| 25 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/eventually-nhds-zero-mapsto-source-edition-2.md) | 230 | `result-track:98b1cc258f088f06ee0d02e8acc709efc6e7bdb10b7c41810691a6849e17912b` |
| 26 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isvonnbounded-image2-apply-source-edition-2.md) | 237 | `result-track:96fdb15b6d81be4111b7614856be6670862efc6b3c73af811aede66bbdb44572` |
| 27 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isvonnbounded-iff.md) | 253 | `result-track:4d3bad9a5ea0d0a420de6ef4c2bf2e40dee9de125a38e329d5dc07fdf8a6dd32` |
| 28 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instuniformcontinuousconstsmul.md) | 267 | `declaration-track:dddaec86f8d5a5fc4bf89b7ea4c911e25287332e14bdf261e20e40fe8be71578` |
| 29 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instcontinuousconstsmul.md) | 273 | `declaration-track:9642eba259de9f5a83da53b1c087a51a84fd9f7fe66c0e3dbadd757126745438` |
| 30 | `theorem` | [tendsto_iff_tendstoUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/tendsto-iff-tendstouniformlyon.md) | 282 | `result-track:a6bf20e499e130ef8c5bf592eb2c2eaa6bf22a88779994af9a3f174a68052a84` |
| 31 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniforminducing-postcomp.md) | 290 | `result-track:aa24cfc90b2eb20550ef084c6c4a222f020abc44e989212302b81116f3969a11` |
| 32 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/completespace.md) | 300 | `result-track:5dd0a9ea6b6edc8d3f037291606f82e6d4dfcef15f1a82a66edcf7971a7746c1` |
| 33 | `theorem` | [uniformSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformspace-mono.md) | 317 | `result-track:fd2fed477a46d7eed9fa95688a09d1126a95d0402660888fa077727d2406e198` |
| 34 | `theorem` | [topologicalSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/topologicalspace-mono.md) | 322 | `result-track:0734fa10b08e9808df7d27263d177c0677202001734c41d15df516088de1b3e0` |
| 35 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/topologicalspace.md) | 346 | `declaration-track:287fd24d4eb8fb368eba5fef963a51b48f2f1f70143c486f0a1229707d91a334` |
| 36 | `instance` | [topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/topologicaladdgroup.md) | 350 | `declaration-track:6f5e6860760603ac01096f62d21818cd623a33810ee6982f41f33bbd9ac755a2` |
| 37 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/continuoussmul.md) | 354 | `declaration-track:0a84f03c3360d6632da57cf0438c87b90e564f2c193ce7eba8472b6c7122a89d` |
| 38 | `instance` | [uniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformspace.md) | 358 | `declaration-track:a74b4c0fb5d4235bb81042db46b7b9c79694aa17a97e4964266e4a0c8e806dd7` |
| 39 | `instance` | [isUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniformaddgroup.md) | 361 | `declaration-track:4d42ba0dd1e28e077574a1c362e9a2e0c6f294b2b3baee5d3e121dc0eebcb6f7` |
| 40 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instcontinuousevalconst.md) | 365 | `declaration-track:195774490da4a90157eb4a98e98403f6447ced2ea6339183620814a2b273bac1` |
| 41 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instt2space.md) | 369 | `declaration-track:1e13a293500aa99bee436713ff6cab4a5bd4b3ca801ed779dc49e3e98b1394ed` |
| 42 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 373 | `result-track:11ec7b1d62eb50bc24bf0c5609693013714d70b088f603feb07c62e37d750ca2` |
| 43 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/hasbasis-nhds-zero-source-edition-2.md) | 381 | `result-track:a59665c42f36a1f87ba5d4bcf61538c71d76f0d4ca8a190f7d6c2d501f4cc3cb` |
| 44 | `theorem` | [isUniformEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniformembedding-touniformonfun.md) | 387 | `result-track:b49b67cde0043dfed2fc66d08f47c4f582f7e09c973af2ef15b1e354a331b6b2` |
| 45 | `instance` | [uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformcontinuousconstsmul.md) | 392 | `declaration-track:1cc053d82e79198186e44d788014d735edd3024ef715a8a103b414849fa6d954` |
| 46 | `instance` | [continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/continuousconstsmul.md) | 398 | `declaration-track:29ae383724f5fd4570d3b05d740bdfe17f59249c3f443f6f6941f5b4d544d2c6` |
| 47 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/nhds-zero-eq-of-basis-source-edition-2.md) | 403 | `result-track:9a2e99880e90721e91afdc6e8faf338c535798bf5a964110cf40043b5b6c8d06` |
| 48 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/nhds-zero-eq.md) | 410 | `result-track:3ba9246dfb78c6f5659b2477b383138044039709cc9f448ce99fdf4005462eeb` |
| 49 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/eventually-nhds-zero-mapsto.md) | 418 | `result-track:897dcc89c61722e1bd462c65cbd43acfce33b8fb0070aa170a6cd55cd6d0e3c8` |
| 50 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isvonnbounded-image2-apply.md) | 428 | `result-track:421dcb930f469967d8fcf2c6d2debf074adf058239e714625ae2f03d5ebfc6c9` |
| 51 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isvonnbounded-iff-source-edition-2.md) | 440 | `result-track:a6a61907729ad996717081147a266bedfe3313e6400e8b2413ca631c6faee875` |
| 52 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/completespace-source-edition-2.md) | 448 | `result-track:f4c63d0f9df71a7f6c5ee980ce26879df58b7872dd430d569a2f88a3eee5682f` |
| 53 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/instcompletespace.md) | 453 | `declaration-track:05e12505d75dcbc16481111b3bf93979ff0f0a2550ed99a36a6bf17bce84fa4c` |
| 54 | `def` | [precomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/precomp.md) | 464 | `declaration-track:d9926db662614e8652addce3ab7d19d3c03173a54f945b04936d9c279df3849e` |
| 55 | `def` | [postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/postcomp.md) | 482 | `declaration-track:13311744fabdbae0e5e7051832ad0832dfc0a4a94cd9d1a1649735956e564dd2` |
| 56 | `def` | [toLinearMap₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/tolinearmap.md) | 509 | `declaration-track:f0a5aa1417d15c641cb56797bc9a0a983edd19604c3427a754f1d9b3b4700629` |
| 57 | `lemma` | [toLinearMap₂_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/tolinearmap-apply.md) | 512 | `result-track:abd7f60136675154c1fd1eedcd21270ee7ca5b23446872362f65cf17f44506ab` |
| 58 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isuniformembedding-restrictscalars.md) | 529 | `result-track:7ca93d21e9798238bc0804b476c1b5ab2b9ff3d44caaaa908b8c947ab3118902` |
| 59 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/uniformcontinuous-restrictscalars.md) | 535 | `result-track:2bb7ddc2a83db8807f221ee6b2de002b35c6341316aa6655269a3421da681310` |
| 60 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/isembedding-restrictscalars.md) | 545 | `result-track:c60cbcccc0403835962a6bb091d677dc7bb1eb65dad92bddea563b02a162dfb0` |
| 61 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/continuous-restrictscalars.md) | 555 | `result-track:d46d1fd5bbda107c359a365c1b517a591c8aa3ab225e298f40472f9929a72c58` |
| 62 | `def` | [restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/restrictscalarsl.md) | 564 | `declaration-track:25c8c019045261ca051aafddb1245ccb7202d6a92ff38d0b9679d5929510f2e6` |
| 63 | `theorem` | [coe_restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/coe-restrictscalarsl.md) | 570 | `result-track:33c5dde7385199131c054fcb027a954442b6b8c1750f6622267cdf59596e3f08` |
| 64 | `theorem` | [coe_restrict_scalarsL'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/coe-restrict-scalarsl.md) | 575 | `result-track:500a77217c9a423413bc3c8159a4aad90090ede3653f7c81529a24a0316a3035` |
| 65 | `def` | [arrowCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/arrowcongrsl.md) | 606 | `declaration-track:d321d37c89f0a0f8b75157bdba11d93ab21ac16e92847449d6b2ab85f6519be1` |
| 66 | `def` | [arrowCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/arrowcongr.md) | 632 | `declaration-track:d872f303099ae7ebe5f1f683310ac31fc32d59ea5c6d76abcb03d1f0018d02e7` |
| 67 | `lemma` | [arrowCongr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/arrowcongr-apply.md) | 635 | `result-track:14c5c2a598641e093e137a5b6a6da16fb0fc1b46234ca70ae5c53bf18313c51a` |
| 68 | `lemma` | [arrowCongr_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleStrongTopology.lean/declarations/arrowcongr-symm.md) | 638 | `result-track:fcc5f3266e83f277fd2b1bee997a8cbd7b42d1cdb983eff238859977df3cf3e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e323cd27901abc73e6b068ceb7bfc4f6084c1b8939aa9ef34b59c3b789f86c52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/StrongTopology/Variant7583185c2988f7a9adcb9297880314d5ad2a29d458b7872840bd8b0f4462d8f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
