# Verification target: Operator Bounded Linear Maps Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bc162cf84aa20aad3e4b9b39ab26a43b4547dd6",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bc162cf84aa20aad3e4b9b39ab26a43b4547dd6`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean.json)

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
| 1 | `structure` | [IsBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap.md) | 83 | `declaration-track:3a415c86543409a91612fa4ac7e6107a8a26103da076fb9150af19caf439ebd6` |
| 2 | `lemma` | [isBoundedLinearMap_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap-iff.md) | 87 | `result-track:d16b0986e0b23a08ad04d006569af91ae93779d12203632d48b53fed006543ef` |
| 3 | `theorem` | [IsLinearMap.with_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/islinearmap-with-bound.md) | 91 | `result-track:a8875e5686df1c85da27d1a6297f2ddb9e5bed81a43c4261fb5e2e044abf2ee4` |
| 4 | `def` | [toLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/tolinearmap.md) | 103 | `declaration-track:bc5c298c56485a26b32033691cce14d84e8c9700e8028cfa3b35743f64b87945` |
| 5 | `def` | [toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/tocontinuouslinearmap.md) | 107 | `declaration-track:54886626a904400d899fd10b65c36974afd5cfce4ee594658e1356587a2b9a24` |
| 6 | `theorem` | [zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/zero.md) | 113 | `result-track:ac980ba042c26ef8e9ec4f5059f9126d777861cd875272686821b06267690766` |
| 7 | `theorem` | [id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/id.md) | 116 | `result-track:b61f76baf5d4b771703bee7356d7efdd2e7da156a65aeb7bfaa58b433b643d10` |
| 8 | `theorem` | [fst](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/fst.md) | 119 | `result-track:ee4f9e68beb56b8a54a797a9705bac786d2408e1ff3e33f657033e799f894505` |
| 9 | `theorem` | [snd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/snd.md) | 124 | `result-track:338165f4c772658d7048b507e6cf9ad1a18060f7cb0277cb6236f72495199622` |
| 10 | `theorem` | [smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/smul.md) | 129 | `result-track:110654de7d0060444a4492862a19699e2704af4573fe77bc92737c1441e0f889` |
| 11 | `theorem` | [neg](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/neg.md) | 138 | `result-track:bb2ff9d6f20b23a80e3df6fba4059c43287ad6c8385f539ab3b7472945f59b48` |
| 12 | `theorem` | [add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/add.md) | 141 | `result-track:bb7241261fe18e6dd6c2053393fca4861ad4edb543ff92aec301d492b3b20f5f` |
| 13 | `theorem` | [sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/sub.md) | 150 | `result-track:8fef3f28b25d7e61d19e0346ae4c62f7fc57f97206748da53ad3e837046351da` |
| 14 | `theorem` | [comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/comp.md) | 153 | `result-track:35aa773fcb197e7f23f4b6a810b18a17fd14b706854610a3406b8986b57f3f1c` |
| 15 | `theorem` | [tendsto](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/tendsto.md) | 160 | `result-track:0333625b6c3974c897b9340d1c3f76721620db9c506ac317fbdb7407ae69864f` |
| 16 | `theorem` | [continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous.md) | 163 | `result-track:66f5d8044968028464b64b1d04d09007b97c9e17a66308f7bcdf656a5cf8cde8` |
| 17 | `theorem` | [lim_zero_bounded_linear_map](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/lim-zero-bounded-linear-map.md) | 166 | `result-track:1734beab679b2bd6b05293cb1b2ff080fdce84b704bb8a040130f152c8ab10be` |
| 18 | `theorem` | [isBigO_id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo-id.md) | 173 | `result-track:7b4f0a38073d012d01bccaa2a46837ca9d7e648ee6076f0fef87c9704c063fa3` |
| 19 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo-comp-source-edition-2.md) | 177 | `result-track:e9391e0f055d8cf54334490ba7611e01ca183b260f3a32ff9362f61a7287d389` |
| 20 | `theorem` | [isBigO_sub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo-sub.md) | 181 | `result-track:f00b985e99847f7bf906543e017162d6d1ea7835010c1fc05f12649037be50b5` |
| 21 | `structure` | [IsBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap.md) | 192 | `declaration-track:39d6658feb61ddf7a9f1cfdf4c86cc4f342b00fdd4068b1b4c3cde6514146aee` |
| 22 | `lemma` | [symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/symm.md) | 203 | `result-track:619c5dcdcab2d2adb09363f4f9170bc762d31370a9424f111bf3fe931e9c6e91` |
| 23 | `lemma` | [isBoundedLinearMap_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap-right.md) | 213 | `result-track:a89f8a9056920e7c5a3ebcc5d5bca1a662a2e20317f2bd9951a7a5d2284098cb` |
| 24 | `lemma` | [isBoundedLinearMap_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap-left.md) | 225 | `result-track:2a750c97592af919b788cdb2a05d0c09bc6a77de0cf8e78c5bf0b1302eba060c` |
| 25 | `theorem` | [map_sub_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/map-sub-left.md) | 229 | `result-track:5ead5f49d22f653d82da1c17acdd910abb1dc03c54c82aa796b4db0917f6900f` |
| 26 | `theorem` | [map_sub_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/map-sub-right.md) | 233 | `result-track:2a7e307d0b02876d0fb2c01ebace8989c7a2fad89af14120ef6335a94ba76071` |
| 27 | `theorem` | [isBigO](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo-source-edition-2.md) | 237 | `result-track:4d675d630527ec8a6a83597d266a6fa7f31fa8c98c7fca6e9565f5bb8c6fe2b1` |
| 28 | `theorem` | [isBigO_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo-comp.md) | 243 | `result-track:20421bce574309a9bd3769ebeec17989e9bd6635a60cca803492d0584c2a3e74` |
| 29 | `theorem` | [isBigO'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isbigo.md) | 247 | `result-track:272bd86bcd0e1d62c907270a1a6077f0f3da022316998454b084ba114e745dd5` |
| 30 | `theorem` | [continuous](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-source-edition-2.md) | 255 | `result-track:c72ccca6eeaf3c2dc9b37dd0a859173bd4df0bd2a116482556d109d5dc71d900` |
| 31 | `theorem` | [continuous_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-left.md) | 271 | `result-track:32f5afd742c7e0356168116873ae5e3dd37255a3f479b0ecdbb40956f6c5d256` |
| 32 | `theorem` | [continuous_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-right.md) | 275 | `result-track:11c65a4a9287632998e4630c72cb15d4e7a85db5756995dba8afb8d8157bd5be` |
| 33 | `theorem` | [isBoundedBilinearMap_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-smul.md) | 289 | `result-track:4997520ff4d331120097dc58e6036c2647bf143ee3daf575040fed27e2012f70` |
| 34 | `theorem` | [isBoundedBilinearMap_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-mul.md) | 299 | `result-track:18df3840ab8ae89b40391b14ce4cf40cb9e4ef51900cb05e644e6c68c1246750` |
| 35 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isboundedlinearmap.md) | 310 | `result-track:637cf180a82a6727eb12860e2c240c99e4f80dd9d242554e2c998b416ba2835a` |
| 36 | `theorem` | [isLinearMap_and_continuous_iff_isBoundedLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/islinearmap-and-continuous-iff-isboundedlinearmap.md) | 318 | `result-track:3869a42559fa20b31325ab7050239bc5d258983262b6d65cf25b09ca509ef4da` |
| 37 | `theorem` | [isBoundedLinearMap_prod_multilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap-prod-multilinear.md) | 331 | `result-track:2454abd05cf24bb15c5add98e0ba9db17e2232060341d4b9e89b59e6cc8ad2e1` |
| 38 | `theorem` | [isBoundedLinearMap_continuousMultilinearMap_comp_linear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedlinearmap-continuousmultilinearmap-comp-linear.md) | 340 | `result-track:b5ee84025deaf1bb1bafb0f3af6544bae1da0393d797d738ddb60db2d8defb94` |
| 39 | `theorem` | [ContinuousLinearMap.isBoundedBilinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isboundedbilinearmap.md) | 352 | `result-track:28229f6d9f4107e8f1a22e976ea2a810387d8e41bcf4a1780c9fbab6552daf5e` |
| 40 | `def` | [IsBoundedBilinearMap.toContinuousLinearMap](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-tocontinuouslinearmap.md) | 365 | `declaration-track:afdc522e08e687111a26dcb0ee234765583c0f90073fb2445c21ef8dde99f6db` |
| 41 | `lemma` | [IsBoundedBilinearMap.toContinuousLinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-tocontinuouslinearmap-apply.md) | 372 | `result-track:57097405b52a0ac7dddad838034b6f6cb6afc367b10bd87e159c0b51d70ab0eb` |
| 42 | `theorem` | [ContinuousLinearMap.continuous₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-continuous.md) | 376 | `result-track:1e10736d283ef6b4409aba60acbb4d1b55b239d9da707c3fd86f65ad48036890` |
| 43 | `theorem` | [isBoundedBilinearMap_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-comp.md) | 380 | `result-track:4d349190d24e3fa8acc8fae7ac025b9dd3953c7ff4dc4d4cd66a136f04c17b21` |
| 44 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-left.md) | 384 | `result-track:f795dcf593e69bfc49c3baab1930fdb933bfae8b2c3a2bc486e4fa775d7c78dd` |
| 45 | `theorem` | [ContinuousLinearMap.isBoundedLinearMap_comp_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isboundedlinearmap-comp-right.md) | 388 | `result-track:da6ed0daf03e3fda01c24d635ea566f761722dcc7113ef982618f94eaf0babb0` |
| 46 | `theorem` | [isBoundedBilinearMap_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-apply.md) | 392 | `result-track:072d8d57c4018aa2f356acd23e6b70b4d1d408aa1114fb26475aeb46859fdbf4` |
| 47 | `theorem` | [isBoundedBilinearMap_smulRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-smulright.md) | 398 | `result-track:de6b7d1bf93d29a6ea6a3c1c06a9f4a04edfc8f9a48879c92f47faaa3da29c42` |
| 48 | `theorem` | [isBoundedBilinearMap_compMultilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-compmultilinear.md) | 405 | `result-track:a2b023a9a11a7612caa95f8b13a39d4ba95ba69d5c4428d801b6c752f21ec718` |
| 49 | `def` | [IsBoundedBilinearMap.linearDeriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-linearderiv.md) | 416 | `declaration-track:00ec58742a8dd7f69b838cd6074664c3cc5732fd69f393c5c920168dbfe1ee6a` |
| 50 | `def` | [IsBoundedBilinearMap.deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-deriv.md) | 422 | `declaration-track:d02db4593240142389ffedaea44e8e6d37eac926fdd14ff7ed906f75e2247707` |
| 51 | `theorem` | [IsBoundedBilinearMap.deriv_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-deriv-apply.md) | 426 | `result-track:7d2595e9be62ba257b318f6c218c9b24bf0abe08e9241c6e39070e95c6afe33c` |
| 52 | `theorem` | [ContinuousLinearMap.mulLeftRight_isBoundedBilinear](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-mulleftright-isboundedbilinear.md) | 433 | `result-track:5926703e16e5a877fd515f289daf3c5fcafa2546add7bff770addf1b547d4dda` |
| 53 | `theorem` | [IsBoundedBilinearMap.isBoundedLinearMap_deriv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/isboundedbilinearmap-isboundedlinearmap-deriv.md) | 440 | `result-track:86540b72a51c07f444dd33a5338f1d66f7e54dd8093f187ad42a10632cbad297` |
| 54 | `theorem` | [Continuous.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-clm-comp.md) | 449 | `result-track:02a2663482b9a849cfaa5575bd9786ae63ba2b05fb57b816713ace7494dca2ef` |
| 55 | `theorem` | [ContinuousOn.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouson-clm-comp.md) | 454 | `result-track:392b2d57229da6b1dbe9c66e651376f73e75e2114432a9d3e9f9f7c99f1784e1` |
| 56 | `theorem` | [ContinuousAt.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuousat-clm-comp.md) | 460 | `result-track:612f6170f414d600ce4ecf40eb8ab22fc1dae62e9a42b0dd85c3c7912dd28b45` |
| 57 | `theorem` | [ContinuousWithinAt.clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouswithinat-clm-comp.md) | 466 | `result-track:316caa62cc4212de4cf2b517d14118f4a0300a9e303d7e8dcf104b24f481ef35` |
| 58 | `theorem` | [Continuous.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-clm-apply.md) | 472 | `result-track:45699f659e63130a1a18d7e97bc073e0125652c3a0130d6ee6aa0ec56b69ca96` |
| 59 | `theorem` | [ContinuousOn.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouson-clm-apply.md) | 477 | `result-track:3a6f245de76118c1aa86634f5d0253fbce89f7cb794b87dcdbc7bf4184a4c61f` |
| 60 | `theorem` | [ContinuousAt.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuousat-clm-apply.md) | 483 | `result-track:4204242720bc9f709f3e74c2a1f7f3a7ffbff8997e767bab84cb0c51f5490b42` |
| 61 | `theorem` | [ContinuousWithinAt.clm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouswithinat-clm-apply.md) | 488 | `result-track:0a40628dfd850d8e9f17ad18dd048fe196b539383b85e546566f1d95b1ab5ae1` |
| 62 | `theorem` | [ContinuousWithinAt.continuousLinearMapCoprod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouswithinat-continuouslinearmapcoprod.md) | 495 | `result-track:958a486ed8fb234f1ead3b0ee0034ef6841be3964fecce2b50abdabfde28af95` |
| 63 | `theorem` | [ContinuousAt.continuousLinearMapCoprod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuousat-continuouslinearmapcoprod.md) | 503 | `result-track:2725417b940dbcddb3936e01bc89bfdfc27310ca98ff8dd5b7c807a3f60600f8` |
| 64 | `theorem` | [ContinuousOn.continuousLinearMapCoprod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouson-continuouslinearmapcoprod.md) | 511 | `result-track:05696aa681068eb377b5fb5c1187687f152e4ea7f61b7bca7ae7d8957c79b7c4` |
| 65 | `theorem` | [Continuous.continuousLinearMapCoprod](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuous-continuouslinearmapcoprod.md) | 519 | `result-track:eadc4405334e50e1b0171122a4965c3ba5b8a9dca756de30badc03ca7ff65ddf` |
| 66 | `theorem` | [ContinuousLinearEquiv.isOpen](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearequiv-isopen.md) | 544 | `result-track:acf9fc263730ba3a410c3408bf2a52a1ac43de3a73a089ac000919797187d775` |
| 67 | `theorem` | [ContinuousLinearEquiv.nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearequiv-nhds.md) | 560 | `result-track:b3f769314f2b0c10ac96f719d9050fb94b22247b2610d52f4f0c1a1e929e2d36` |
| 68 | `theorem` | [ContinuousLinearMap.isOpen_setOfPred_isInvertible](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isopen-setofpred-isinvertible.md) | 564 | `result-track:36477b8b6395a1534b3b170beb36df25c4945d8accaef64a5da11e61f394c53d` |
| 69 | `theorem` | [ContinuousLinearMap.IsInvertible.eventually_nhds](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBoundedLinearMapsPublic.lean/declarations/continuouslinearmap-isinvertible-eventually-nhds.md) | 568 | `result-track:4be6a231a0edc04dea573c5127a92eeda34d1f8f15532f3b240641818a873c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4b8c6ea06b7f0eb1a7c2abd3c416297165e080d65f6ea2a7ba14787995c841da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/BoundedLinearMaps/Variant5edca0e233a81357a3d614f6bb3318e9e112b96e6d59d9e23a337ec043aa447d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
