# Verification target: Uniform Convergence CLMPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2895b3845de48cd019222a498552f7c119aeefe2`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Equiv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.SeparationQuotient.Section` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.UniformConvergence` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [UniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclm.md) | 87 | `declaration-track:35cbf5c540c1d5d30beff879812a1adb05544cecda7e4ae95b2bafc3f2282387` |
| 2 | `def` | [ofFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/offun.md) | 105 | `declaration-track:9fdd3763cef13ad2a371afaa7feb6e0311122a20322c007409e5caa472f69ed3` |
| 3 | `instance` | [instFunLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instfunlike.md) | 109 | `declaration-track:d6019dd86766064f53a5235d308c3477ecbf69c9f35f2acc27619f85704755fa` |
| 4 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/ext.md) | 114 | `result-track:88dd372f91fea27d7bd95c7b7cd7728e1ea2138a0d2e432ae2af67cdc89cbde6` |
| 5 | `instance` | [instContinuousSemilinearMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instcontinuoussemilinearmapclass.md) | 118 | `declaration-track:a91c0edeb223cbe83f55068439b14db2974382f6357ae8ac87a57fd67ffe58a4` |
| 6 | `instance` | [instTopologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/insttopologicalspace.md) | 122 | `declaration-track:7cec73f3458e335ca5ca0d0e4b3a4274599076066014eb02b177e9fddcbdb7e3` |
| 7 | `theorem` | [topologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/topologicalspace-eq.md) | 127 | `result-track:50273b7cba0a3d6a7dcccc8541a08e31b1db7c4d2a7af7e8fbcde905544fdfd6` |
| 8 | `instance` | [instUniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instuniformspace.md) | 136 | `declaration-track:ddd79e106492d26c25c05483b644e1ac377f400858e9ec628be0aa5a26ac4fe4` |
| 9 | `theorem` | [uniformSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformspace-eq.md) | 143 | `result-track:5fbecf1166e0d94ed6c0cd3118b6fcadc9da76330684f9002367007ac718208f` |
| 10 | `theorem` | [uniformity_toTopologicalSpace_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformity-totopologicalspace-eq.md) | 150 | `result-track:6dcb00d4dc2a70dc02db235b012a3d021d2ed597221a52f94c58a7dde9cd43e6` |
| 11 | `theorem` | [isUniformInducing_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isuniforminducing-coefn.md) | 155 | `result-track:bbf0f77f688a8f1edeffc35f9e43ec5d9494c2bbbbdf06d8091e8feca121045e` |
| 12 | `theorem` | [isUniformEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isuniformembedding-coefn.md) | 159 | `result-track:3b017323cd44bd4dcf15185dd9e559be820f8b38b9b4d6bbd952d2d42453586d` |
| 13 | `theorem` | [isEmbedding_coeFn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isembedding-coefn.md) | 163 | `result-track:4d4a21d9cd2995527e49870a2c1a2a66ccb7aa98933b876c6ce829f3a158a765` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance.md) | 169 | `declaration-track:439c1093659f16d9d1ce41c4329faf750bd2806740fbd54ce091aa667840827f` |
| 15 | `instance` | [instAddCommGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instaddcommgroup.md) | 174 | `declaration-track:7eaefd61a58bf29b063bbedf341286eecbe911090f8a5cebed49638b22828594` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance-source-edition-5.md) | 178 | `declaration-track:9e0a3e58b7bb74574f30d7ebd910b2f75bae84df282d640435307a3bd28b91a3` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance-source-edition-6.md) | 184 | `declaration-track:b2901f20c6babf88e89796becc69291a268416752c61dd67525f46d19071980c` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:6cafbfb36415f7d397398da245a0c38e92620f0ba8184a4ffc6bbbf8baaa2f58` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance-source-edition-4.md) | 198 | `declaration-track:7540ee62d6ad8b3dc8070d20df2af5ab54ce51c6df73be345a45385e8ef9a50c` |
| 20 | `instance` | [instIsUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instisuniformaddgroup.md) | 204 | `declaration-track:43058f8084ab34c12d72e0281c6d801463819f685ba1be58dc7025db69162f34` |
| 21 | `instance` | [instIsTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instistopologicaladdgroup.md) | 210 | `declaration-track:4df13cf7cb2d3a2b54d8c93658258754bb4ca90a4a91876cad8b7a1598e86697` |
| 22 | `theorem` | [continuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/continuousevalconst.md) | 216 | `result-track:219c68d80e7cf23a7e3e64690e297901620a28418abc155945f112eeb157617e` |
| 23 | `theorem` | [t2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/t2space.md) | 225 | `result-track:99f8ea89582e7608addb3a072959575c4cd4f134bfca8879fdae23d465a97128` |
| 24 | `instance` | [instDistribMulAction](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instdistribmulaction.md) | 232 | `declaration-track:fe203aeac33dc712266c958bd0d07c23f5253ec3841a3057a06f3f06bd3be3d2` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instance-source-edition-2.md) | 237 | `declaration-track:658e897eb550308fa84f870c7db4f92d5da9f42e1a19b595054d26d7a010243c` |
| 26 | `instance` | [instModule](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instmodule.md) | 244 | `declaration-track:23c702bf4d50c879d178d3f4fbd740f645d5eab7faea1c05c55835700689fc08` |
| 27 | `instance` | [isScalarTower](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isscalartower.md) | 255 | `declaration-track:c3bd8924520f0a43495cac4c4af34c19d8341acce92f1bfc7e5ca0509231dab7` |
| 28 | `instance` | [smulCommClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/smulcommclass.md) | 258 | `declaration-track:de906b62fa7630dbf4f1cce2bfc600fb4cc66a8fb7bbe583ba4aea635d8ff69f` |
| 29 | `theorem` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/continuoussmul.md) | 264 | `result-track:0dbaa1db8aa969f99094c35cc18dd70ef2fe7f4f2e90b821fa10967959583072` |
| 30 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 275 | `result-track:84265f365258cfcdcb0be47e394b47ae673b6973c907df3456d7bf242bf9e296` |
| 31 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/hasbasis-nhds-zero.md) | 286 | `result-track:8cf2d455520f515ca88f692c092974b7ffbc5cb943d271ae4824c5abe2e79a99` |
| 32 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/nhds-zero-eq-of-basis.md) | 293 | `result-track:1f32edb6df3a5d83f0261c92ceeb06714e2eb74b90d9c0da3d76623bfe3c3fc8` |
| 33 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/nhds-zero-eq.md) | 304 | `result-track:134e8cb9400e2fc42cbb88bb804cef7221796c45329e24e1d9d6e7eb2bf3c83b` |
| 34 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/eventually-nhds-zero-mapsto.md) | 311 | `result-track:7bff2fbb9ce705e07e9f54737fe6e483bd82e725c2cca4c787db9c7c9eda4d4c` |
| 35 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isvonnbounded-image2-apply.md) | 318 | `result-track:044c656e26eb7dfba0f550d25499056c324d7788c0d936c193190977c008eee7` |
| 36 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isvonnbounded-iff.md) | 334 | `result-track:872e41445eed4ecb5ba17f02a34729cb5aa31492eb523718705f1b9a23c5125a` |
| 37 | `instance` | [instUniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instuniformcontinuousconstsmul.md) | 348 | `declaration-track:fb98a5d22e774317bd5f486852fe55d8398e42e37638d7fc0a140400985f07f6` |
| 38 | `instance` | [instContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/instcontinuousconstsmul.md) | 354 | `declaration-track:67bde0b29a8e4540baba43ac28d5732d8f70cd6fa5a8fd8ffb7639f51107ca0b` |
| 39 | `theorem` | [tendsto_iff_tendstoUniformlyOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/tendsto-iff-tendstouniformlyon.md) | 363 | `result-track:cb5e54192e17c1f3240442c40ae7b51594668bd5f6cd75be686625170da12b57` |
| 40 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isuniforminducing-postcomp.md) | 372 | `result-track:69b2329a38f7884a436f2b518b8ace967d227616ee797972d0b647081a8ddc4b` |
| 41 | `theorem` | [isUniformEmbedding_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/isuniformembedding-postcomp.md) | 383 | `result-track:7c55fe9b03a93603fcea89016f7d23ce2d517d45e59e5032e367d16e5fe4baf0` |
| 42 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/completespace.md) | 392 | `result-track:93dc065f41844d05e71ddf97a91cda64017b2e2e395d3c94ed4f602d0e7cc92f` |
| 43 | `theorem` | [uniformSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformspace-mono.md) | 411 | `result-track:895a8de173216062d4a494603aa1ce114fc64ee77d297c836f5ca7d8cbc29bef` |
| 44 | `theorem` | [topologicalSpace_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/topologicalspace-mono.md) | 416 | `result-track:c4b4ef59e33cbc5397326d2cdca141d207b11ddab00717316fa34f50e66c2319` |
| 45 | `theorem` | [continuous_of_continuous_uncurry](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/continuous-of-continuous-uncurry.md) | 431 | `result-track:73fd49fe443442631efb6a6f60c243f82a12fa12969638bebb3b3d5054c7ee7b` |
| 46 | `def` | [_root_.ContinuousLinearMap.toUniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/root-continuouslinearmap-touniformconvergenceclm.md) | 461 | `declaration-track:d6667d269874c4e17cc87bb9e97aae5e70355afb4592750135a1f8d4443d1f22` |
| 47 | `lemma` | [_root_.ContinuousLinearMap.toUniformConvergenceCLM_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/root-continuouslinearmap-touniformconvergenceclm-apply.md) | 468 | `result-track:3199f9a3793ac1647596452aa0033ff351287505d65506a0cbf169bf2cea2eaa` |
| 48 | `lemma` | [_root_.ContinuousLinearMap.toUniformConvergenceCLM_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/root-continuouslinearmap-touniformconvergenceclm-symm-apply.md) | 472 | `result-track:89fe181d64720d4ac0129356a9e13f873ef731dd6bfed4537ebe0fba4303f7c5` |
| 49 | `def` | [precompUniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/precompuniformconvergenceclm.md) | 496 | `declaration-track:f1c461d4cab6471a9592557340cff9dbe5e56dbaec7475131783c3f643279baa` |
| 50 | `def` | [postcompUniformConvergenceCLM](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/postcompuniformconvergenceclm.md) | 513 | `declaration-track:bede6ea07993d5ca57d84cc9ac46b7a9e5fb5e62790606be1a3fede090996457` |
| 51 | `def` | [UniformConvergenceCLM.piEquivL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclm-piequivl.md) | 545 | `declaration-track:0fe185db75211f292f7caa85ed3dae8a96f8ac213eadf57268a0d120ee4d0580` |
| 52 | `lemma` | [UniformConvergenceCLM.piEquivL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclm-piequivl-apply.md) | 566 | `result-track:efefdac410c40c546708b05442e43f125909333a37383eb3899c980f7bfe7951` |
| 53 | `lemma` | [UniformConvergenceCLM.piEquivL_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclm-piequivl-symm-apply.md) | 572 | `result-track:dfb43cb2f9cd72cfc2c1cff9fa071b55d17f466086eec47f42cc39ddcd7b4925` |
| 54 | `def` | [uniformConvergenceCLMCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongrsl.md) | 603 | `declaration-track:3ce588174408a462da285d8f55f71587bb55c6c29d04e7f04a01fb5d58eff088` |
| 55 | `lemma` | [uniformConvergenceCLMCongrSL_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongrsl-apply.md) | 621 | `result-track:36d4b42d64eb1a9b417e8146b6881178353e74dc0d38ec6ee1b63c66305f820e` |
| 56 | `lemma` | [uniformConvergenceCLMCongrSL_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongrsl-symm-apply.md) | 628 | `result-track:c9b5a981ba9644289bd055f4bf8dec4fc2f12eac46307e6f7ddf19bbed847b07` |
| 57 | `def` | [uniformConvergenceCLMCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongr.md) | 648 | `declaration-track:b65e7e7cae1c31f81b67e1bf10c6eaa2c5c1a3561caa25a9f13017fcc86b8569` |
| 58 | `lemma` | [uniformConvergenceCLMCongr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongr-apply.md) | 655 | `result-track:21efd63e6b826b7db6886564d84c316ccae38000149523722cd650f37b19d500` |
| 59 | `lemma` | [uniformConvergenceCLMCongr_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/UniformConvergenceCLMPublic.lean/declarations/uniformconvergenceclmcongr-symm-apply.md) | 662 | `result-track:70523f4e425f4a2c6d84e54d641cec02a2257d026ea094badb2030d8266421a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32abdbda70c3e35ba64dfa62b819caef25303381694e661d516ec4bd0872a23f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
