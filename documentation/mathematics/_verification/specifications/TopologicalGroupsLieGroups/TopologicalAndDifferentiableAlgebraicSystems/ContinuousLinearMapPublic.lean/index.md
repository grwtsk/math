# Verification target: Continuous Linear Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "105cf6b50e641ed8e6379cc3d9cc9459694813c2",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `105cf6b50e641ed8e6379cc3d9cc9459694813c2`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/topologicalspace.md) | 71 | `declaration-track:34263a98fc175f08025a8383d5c63ccad70aa9b540146b9a0c4ea144922f7a9f` |
| 2 | `instance` | [isTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/istopologicaladdgroup.md) | 75 | `declaration-track:de62048c2f361eb3f1b1f91220e61c0729cf68eeaafeb6232b21d03caf6989ee` |
| 3 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/continuoussmul.md) | 81 | `declaration-track:af1372e04b771651179dd4c79c10773712eb9b5b63176fbe0aafeb2173236fea` |
| 4 | `instance` | [uniformSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/uniformspace.md) | 85 | `declaration-track:094dcb01d90b4540bf93130c86ba83b03871c1e416fc704e227bd19bd3128407` |
| 5 | `instance` | [isUniformAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isuniformaddgroup.md) | 88 | `declaration-track:1d9098d44cfb1a2c35f366ae5c10e826ec247b821091c524eaa0fe676d22c1aa` |
| 6 | `instance` | [instContinuousEvalConst](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/instcontinuousevalconst.md) | 92 | `declaration-track:812966bfef490f85ce16cd41b0f7a95f3aa514644a8673c7acf39998a7505cde` |
| 7 | `instance` | [instT2Space](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/instt2space.md) | 96 | `declaration-track:7493e9fe219c3d7c7955cbb64b7dac7ce9aa8514172fcb386bf6097a811861c1` |
| 8 | `theorem` | [hasBasis_nhds_zero_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/hasbasis-nhds-zero-of-basis.md) | 100 | `result-track:878ac74ec8763d6e32b1f0fc5bcbe02e724738b407cb04a864dc747d0562a9fc` |
| 9 | `theorem` | [hasBasis_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/hasbasis-nhds-zero.md) | 108 | `result-track:75e1ea032ef281f15cee4f9b891a8daddd8baacd6ba81b4b3facc4d839cd4b52` |
| 10 | `theorem` | [isUniformEmbedding_toUniformOnFun](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isuniformembedding-touniformonfun.md) | 114 | `result-track:b46a7342b594f6f874d723b08086c94f24ede6e7befde698194dfedeaa882c85` |
| 11 | `instance` | [uniformContinuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/uniformcontinuousconstsmul.md) | 119 | `declaration-track:94c9714182ee3e118df9b4180ba4a036d673de0acb427388fe94c95a1ba4a1bc` |
| 12 | `instance` | [continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/continuousconstsmul.md) | 125 | `declaration-track:3e2e6af34dc88f238f2ba8af83ceb231c559258b6b7b911cc4a5b611ee0f53d8` |
| 13 | `theorem` | [nhds_zero_eq_of_basis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/nhds-zero-eq-of-basis.md) | 130 | `result-track:be04de0a5485eb2201b7e53721801167ef463df42e406083218505b56e9c88dc` |
| 14 | `theorem` | [nhds_zero_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/nhds-zero-eq.md) | 137 | `result-track:2234a965fdf05a2f36a319f1ecf3758c99323375548a2cc12fe08fec5bd78ecd` |
| 15 | `theorem` | [eventually_nhds_zero_mapsTo](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/eventually-nhds-zero-mapsto.md) | 145 | `result-track:d544409652c996e5b7d9d75a61bd5bdc63c84110eae2832bec209d6f3d22089e` |
| 16 | `theorem` | [isVonNBounded_image2_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isvonnbounded-image2-apply.md) | 155 | `result-track:a055b17b0b54bd660452541cbb855726539680adfb68167f671c4aad1af68dac` |
| 17 | `theorem` | [isVonNBounded_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isvonnbounded-iff.md) | 167 | `result-track:d9f3131f17153459c425d30d479f2b27c41a854c89b09055f5ff524ecc007d9f` |
| 18 | `theorem` | [completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/completespace.md) | 175 | `result-track:9a7dde66f273b8bd7f403ca3e8ffb7e0d08f268ad4acdc6d55ad8e99c6271cd2` |
| 19 | `instance` | [instCompleteSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/instcompletespace.md) | 180 | `declaration-track:089ef639f0a9f743464891199084f984d22f60755d88d45e846bbf4e83472fbf` |
| 20 | `theorem` | [isUniformInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isuniforminducing-postcomp.md) | 185 | `result-track:be3ebe06fc68d362402350117180aca6849a81a6168dfd42fd1aa7b921e78dd0` |
| 21 | `theorem` | [isUniformEmbedding_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isuniformembedding-postcomp.md) | 190 | `result-track:64a985f506c7431da33811fc173db0abd77155190be9a922ab51dce5678b2581` |
| 22 | `theorem` | [isInducing_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isinducing-postcomp.md) | 197 | `result-track:3aa6c87562e3475ebf6120634d6e0bfa1d3bc7787fce7ebff4098c7f81bc4d7c` |
| 23 | `theorem` | [isEmbedding_postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isembedding-postcomp.md) | 206 | `result-track:cad87e3cfc2c9a1ade0cd6eb4ad7f769665b877c7c16df7d534481367f4d7860` |
| 24 | `def` | [precomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/precomp.md) | 217 | `declaration-track:384f27d9547b69feed48dfd4b67f154af2299d1217f9d46bd0de418e36455f6c` |
| 25 | `def` | [postcomp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/postcomp.md) | 229 | `declaration-track:ebb16d3dcfdf8e68f2e67c6c36bfd3242a5c5b5e97766bdbbfce080528bcb8c4` |
| 26 | `lemma` | [toUniformConvergenceCLM_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/touniformconvergenceclm-continuous.md) | 235 | `result-track:ec4ab8ad0dfbad5c566b1faa89b85f80086bc7d3ee8cde98f61a3ae985868a57` |
| 27 | `theorem` | [continuous_of_continuous_uncurry](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/continuous-of-continuous-uncurry.md) | 246 | `result-track:99a5c2dfc37cb5663e6e90e0555c0263e91dc64701c6bf9d480c94561fde0137` |
| 28 | `def` | [piEquivL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/piequivl.md) | 268 | `declaration-track:8de7717b7ed4aa2d97b621c1ad3dab59b98342705d82bc9d21e1b84500638d26` |
| 29 | `theorem` | [map_add₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-add.md) | 295 | `result-track:6c8b53454a122b2694698bfc9e13252b8538024e31f77e429fdce1114f7e8645` |
| 30 | `theorem` | [map_zero₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-zero.md) | 298 | `result-track:d55d9239dd7f312b25bbf7e73316a680ef3519bd171e3ae13ae79822ff9a883a` |
| 31 | `theorem` | [map_smulₛₗ₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-smul.md) | 301 | `result-track:59d32c2fc0f54498d468158c64ed067fe4ee6ecbc9ce92d2d7d743fa96eda27b` |
| 32 | `def` | [toLinearMap₁₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tolinearmap.md) | 306 | `declaration-track:6c6afc56b638aabf65d34fccc97c804ac7c9fa5727bc09e4aae256915ff50269` |
| 33 | `lemma` | [toLinearMap₁₂_apply_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tolinearmap-apply-apply-apply.md) | 311 | `result-track:eb3ed8584889591cced5de6fac9794e9a8619df364592b1dee41eb6a81631cd5` |
| 34 | `lemma` | [toLinearMap₁₂_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tolinearmap-injective.md) | 314 | `result-track:f52d43f1c863646abdb2bfd80f5d5ab6d0962299b3e279e3f1b1f956ab017670` |
| 35 | `lemma` | [toLinearMap₁₂_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tolinearmap-inj.md) | 318 | `result-track:cca303253533775b0756fea433df84f2afe80d1eee2748cc019d8fafe9b9bdf5` |
| 36 | `theorem` | [map_smul₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-smul-source-edition-2.md) | 333 | `result-track:826c8b076471315ad0470a3c0029025f066dec886a5544bda8da264432992b55` |
| 37 | `theorem` | [map_sub₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-sub.md) | 348 | `result-track:2f5d060790f20546c65a4bdcd97429a98635d4e4ac831f9d5f5637c0b5c41c61` |
| 38 | `theorem` | [map_neg₂](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/map-neg.md) | 351 | `result-track:5154ab1f7f50169d3a28aa8f1f393d167e08b3265a98c2e374b21d4aebdb9a25` |
| 39 | `def` | [toBilinForm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tobilinform.md) | 360 | `declaration-track:e992c14eb3c569db0592a7b85ea1f6447ebf47365fc76ac4a361e860d175d1a0` |
| 40 | `lemma` | [toBilinForm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tobilinform-apply.md) | 362 | `result-track:3865d1b38f4113fab69838353410ed1d7e4dc63f65e210e1222f432d177abc96` |
| 41 | `lemma` | [toBilinForm_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tobilinform-injective.md) | 365 | `result-track:7ea914868f23daac527036ae63c7a4d1b35895767b806da1b446f2281e49570a` |
| 42 | `lemma` | [toBilinForm_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tobilinform-inj.md) | 368 | `result-track:7f6f10630710373a4511d63a0761cb462bf9197ef96b1aca09546ea06279c5b7` |
| 43 | `theorem` | [isUniformEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isuniformembedding-restrictscalars.md) | 389 | `result-track:e7fad655148dc1973feade2c27d3ec83ca3aea867da770821d648b08829002e9` |
| 44 | `theorem` | [uniformContinuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/uniformcontinuous-restrictscalars.md) | 395 | `result-track:680158c66a21fef4c13b19fc04aef07afb528cf696b6ad7d3ec84541984fec1d` |
| 45 | `theorem` | [isEmbedding_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/isembedding-restrictscalars.md) | 405 | `result-track:aed60a6f01512360e4463d250a9de7fc935fd6e5b24d11a956869b181db5e34f` |
| 46 | `theorem` | [continuous_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/continuous-restrictscalars.md) | 412 | `result-track:7b6ce94e8a062093b1ffaa3e8a4670fc8c93871166b5c1cf3db06ae7dbd5f126` |
| 47 | `def` | [restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/restrictscalarsl.md) | 421 | `declaration-track:33c6ed8cd5ff3a37bce5c36e518d0d5602c789468dc95e21cddecc62bce3f5a1` |
| 48 | `theorem` | [coe_restrictScalarsL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/coe-restrictscalarsl.md) | 427 | `result-track:f1d49481abad7254074acc9a8a7cb21377ad0b9e032e844bdecd1b4cc584996a` |
| 49 | `theorem` | [coe_restrict_scalarsL'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/coe-restrict-scalarsl.md) | 432 | `result-track:f3b95536076eaf13da7644438c009d7abca6abc7c44c892d1ab802ea84dcfe1f` |
| 50 | `def` | [coprodEquivL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/coprodequivl.md) | 450 | `declaration-track:a5c1dc74396b2b7b776a2968a8bdceb7fd8f9913c80b37a292c5c50b0c8e8bb9` |
| 51 | `def` | [prodL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/prodl.md) | 461 | `declaration-track:ee848282b15f87b9e5ea112d14f9cbf3749b3853371717e0675189bc5da41480` |
| 52 | `def` | [toSpanSingletonCLE](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/tospansingletoncle.md) | 477 | `declaration-track:8d4c5daec1d0569e8bf796aeb9fe8aa0fd6d2eca1f9db37f5fbd6c50c6000b4d` |
| 53 | `def` | [arrowCongrSL](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/arrowcongrsl.md) | 509 | `declaration-track:cc4d66982bc57c4a9372ddb626bb40eace5fb4cd7555fde18e807ea5a1d36d02` |
| 54 | `def` | [arrowCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/arrowcongr.md) | 533 | `declaration-track:223ceb6cdcf37d1a8f1ae20b89592e02e7c7c789e17c5a0e9fa3f26170b3c437` |
| 55 | `lemma` | [arrowCongr_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/arrowcongr-apply.md) | 536 | `result-track:b2cc717cb7523a6143753b31c9e8e45981171c89b2bb16e580f027f1fe333433` |
| 56 | `lemma` | [arrowCongr_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/arrowcongr-symm.md) | 539 | `result-track:35548c1e68f476804e4f1bd73fc94375089a2680e6bc22d526babe9ded6a710a` |
| 57 | `def` | [conjContinuousAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/conjcontinuousalgequiv.md) | 544 | `declaration-track:0f1be80ce60dea4d3d4e1768a6830f7a45a7b31353b3aeac1405eaf8d6f0f785` |
| 58 | `theorem` | [conjContinuousAlgEquiv_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/conjcontinuousalgequiv-apply-apply.md) | 549 | `result-track:52cc051c4302d9789626a90e9e3eaaf9074cde3e0c1db5fc8ed9948277810879` |
| 59 | `theorem` | [symm_conjContinuousAlgEquiv_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/symm-conjcontinuousalgequiv-apply-apply.md) | 552 | `result-track:ba80ec22e608d41fab154fed89213ed46db231f39371064edfd77928fef3bcec` |
| 60 | `theorem` | [conjContinuousAlgEquiv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/conjcontinuousalgequiv-apply.md) | 555 | `result-track:33d53090a08f6b434f7d8e5b33c0bd6472685fced56252d86dd0a420140ed96e` |
| 61 | `theorem` | [symm_conjContinuousAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/symm-conjcontinuousalgequiv.md) | 558 | `result-track:32d2a052e5a18757e5c3cf1092e242f7f41073e842c452733e13af440bb3e75e` |
| 62 | `theorem` | [conjContinuousAlgEquiv_refl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/conjcontinuousalgequiv-refl.md) | 561 | `result-track:594eb08081d8cab6f61fcce736ec89239b93e0d907c0225662c25b1e760119ca` |
| 63 | `theorem` | [conjContinuousAlgEquiv_trans](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ContinuousLinearMapPublic.lean/declarations/conjcontinuousalgequiv-trans.md) | 563 | `result-track:7201bf0131e3c2d62d365224e101df505232685e47d87b08930fe65a912e1eec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20b0102f8b91f1438a382e6b60439664b763669a2b5dca7473de6ae20ded6428 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ContinuousLinearMap/Variant9ef1c945e63bf269f3f706e10ea3c4efd07ab47a6d13be6a873e97183668952e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
