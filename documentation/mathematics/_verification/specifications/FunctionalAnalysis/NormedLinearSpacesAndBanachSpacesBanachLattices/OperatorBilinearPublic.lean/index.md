# Verification target: Operator Bilinear Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc464034a7b100c1be55d38a066dd05a4d50187a",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bilinear/Variant5ccbf881492c435b839474ca19c12396c158a154ed7ca9d6640b2c0ce1a06714.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc464034a7b100c1be55d38a066dd05a4d50187a`.

Source path: `GRWTSK/Topology/GeneralTopology/Bilinear/Variant5ccbf881492c435b839474ca19c12396c158a154ed7ca9d6640b2c0ce1a06714.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bilinear/Variant5ccbf881492c435b839474ca19c12396c158a154ed7ca9d6640b2c0ce1a06714.lean.json)

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
| 1 | `theorem` | [opNorm_ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/opnorm-ext.md) | 48 | `result-track:475d8b68334090466f53fb16b4d7983eda22cab198bd082805d86e38c389c083` |
| 2 | `theorem` | [opNorm_le_bound₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/opnorm-le-bound.md) | 61 | `result-track:f96c674367b56030730200ec4a809621de36acc10ba419dae853b20fbb9e1480` |
| 3 | `theorem` | [le_opNorm₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/le-opnorm.md) | 65 | `result-track:b66ea8b0d1345dd83b9a985841488a7082c065743d5261b98da449341b653aed` |
| 4 | `theorem` | [le_of_opNorm₂_le_of_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/le-of-opnorm-le-of-le.md) | 69 | `result-track:dbf9b87034d5fd078c87244749ad3424353b145597d5e5272ba1f8c25d9bcedd` |
| 5 | `theorem` | [opENorm_le_bound₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/openorm-le-bound.md) | 76 | `result-track:7f185f8cc4ce2dc5d282555705d61ef7e3d00d56876ce40dc9e2d625d99af665` |
| 6 | `theorem` | [le_opENorm₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/le-openorm.md) | 80 | `result-track:9e4ac5fadf9bb58cbbf5817b44137d8991b2730b9d28f28c842f0bf8acbbd8c6` |
| 7 | `lemma` | [norm_mkContinuous₂_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-mkcontinuous-aux.md) | 90 | `result-track:2fd3a16a5dcb08ebef6ba36da8ffa62381f8e3fb8c1e51666cf9ee0e9b36922f` |
| 8 | `def` | [mkContinuousOfExistsBound₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/mkcontinuousofexistsbound.md) | 104 | `declaration-track:c054f4c177324dbec70fa8a09085aba995022c0db6e722d858a93deee7a8e40b` |
| 9 | `def` | [mkContinuous₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/mkcontinuous.md) | 120 | `declaration-track:e631a817e1bb27e667af9c68b72d9740f27fd6e6ea18db1a17dfe994d067799c` |
| 10 | `theorem` | [mkContinuous₂_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/mkcontinuous-apply.md) | 125 | `result-track:cca2c80353d77a354a4ac8aed01d5889a93931e0c6acf71f5bd0a6c1adebab29` |
| 11 | `theorem` | [mkContinuous₂_norm_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/mkcontinuous-norm-le-source-edition-2.md) | 129 | `result-track:751446810078efb11f60e2fb37b77675f2941821eebdc1c8ddd2fe88a91a041f` |
| 12 | `theorem` | [mkContinuous₂_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/mkcontinuous-norm-le.md) | 133 | `result-track:38e8404180541bcb9c44ce69ec95d36e973328645d8a32e73f6921fa10c98249` |
| 13 | `def` | [flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-source-edition-3.md) | 146 | `declaration-track:ff808aaba345bac7e15f97c2fe8d169e0262ca59a4a75cc5932afd607655593b` |
| 14 | `theorem` | [le_norm_flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/le-norm-flip.md) | 153 | `result-track:e9f4c8f05047aafe844eb306158b29701391a105dc4fe5691e218282b8aa9eec` |
| 15 | `theorem` | [flip_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-apply.md) | 159 | `result-track:a5976d4d5df06c8aa2d771d8745af72bb33dc86db3e5245fe789d8a5f7ef434d` |
| 16 | `theorem` | [flip_flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-flip.md) | 163 | `result-track:ed6bb7794a2c42003aa9c1addb98091954e2a5ab5f35814de88743df043a955b` |
| 17 | `theorem` | [opNorm_flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/opnorm-flip.md) | 168 | `result-track:15aafbc77583098b5522ee441d00eea542b78c19c00b6198c2ed1dc54c280b18` |
| 18 | `theorem` | [opNNNorm_flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/opnnnorm-flip.md) | 172 | `result-track:6de4c313113f9c65d03e8fc9eccf8c909eaa7ffc3067cb8d55389cbf85ce3843` |
| 19 | `theorem` | [opENorm_flip](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/openorm-flip.md) | 176 | `result-track:7d508ab299b212b3d14cf5371af3f1dc341c2ab887225e8f8bc2481c378fd83a` |
| 20 | `lemma` | [flip_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-zero.md) | 180 | `result-track:ef0a5d811cb0f2dae1baf5f1f8a69d8a2b83e1c31de7d66c161f87010e4fef24` |
| 21 | `theorem` | [flip_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-add.md) | 183 | `result-track:b734dcffcd4fbeaa19298a004ea6bfafd82c15c921217d39cf433cd7af29514a` |
| 22 | `theorem` | [flip_smul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-smul.md) | 187 | `result-track:f32b51ad0af704f3b2655fcec49ec729163403ccc70eacaf07ca8dc185cc8e20` |
| 23 | `def` | [flipₗᵢ'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip.md) | 195 | `declaration-track:867aea7508ab194cba899e9f0e4b719636a82e3b7c5c4f294b1f2ea4fd486c5f` |
| 24 | `theorem` | [flipₗᵢ'_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-symm.md) | 207 | `result-track:0b24e90713b88244157dc490321236e8daa0260c422fe68bb8fe83c35b31fa4d` |
| 25 | `theorem` | [coe_flipₗᵢ'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/coe-flip.md) | 211 | `result-track:356342360008ecde0a836a6bfe2ad5e17dd79206f67b13862d89e348169ce0f7` |
| 26 | `def` | [flipₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-source-edition-2.md) | 219 | `declaration-track:feb8ce4adf9734543d1bd7600c4dde4ad46ae090391b387a6bde0458d9d512e2` |
| 27 | `theorem` | [flipₗᵢ_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/flip-symm-source-edition-2.md) | 231 | `result-track:c34f02db24ee80a39449a181bfe29c5840c58ec3e3b600f4d2ca4c702a884a92` |
| 28 | `theorem` | [coe_flipₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/coe-flip-source-edition-2.md) | 235 | `result-track:7351d47cf71303c58d8e4c4146e96e49eb1aca41caadb2746f21a82b8c0d59c4` |
| 29 | `def` | [apply'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/apply.md) | 245 | `declaration-track:2f5d5a819a4fe92fcaaf6376c320ca4ad87f52f446f4f101ecf2f7c058fcdec1` |
| 30 | `theorem` | [apply_apply'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/apply-apply-source-edition-2.md) | 251 | `result-track:e0473b4c21d55a5539e5f2a9136622bf8b7cd52c09c2cc72f0755578e5405778` |
| 31 | `def` | [apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/apply-source-edition-2.md) | 260 | `declaration-track:4c826a679cb3b2456b16fc3f48ca2531a68acd5046a33d0c1b867d39704f2b89` |
| 32 | `theorem` | [apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/apply-apply.md) | 266 | `result-track:93c3aba750b4ab9d13a0554e3735aefe4bb4391bec5fa2bc9c203fb19a1a19ae` |
| 33 | `def` | [compSL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/compsl.md) | 273 | `declaration-track:2fd57164a66f5a940fd0ca8a2b5290324068c1d035375a9db0ae75625c1a099c` |
| 34 | `theorem` | [norm_compSL_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-compsl-le.md) | 280 | `result-track:0be33b530e9c5a261075a2ee06e28f4060126c0c492bfaa6d6d3bcb660b8966d` |
| 35 | `theorem` | [compSL_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/compsl-apply.md) | 286 | `result-track:95c1045e243d1ddcf5c317f72f623e089ae5712b641aac68208b997425971b41` |
| 36 | `theorem` | [_root_.Continuous.const_clm_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/root-continuous-const-clm-comp.md) | 289 | `result-track:3fa768863b9052d252b3ed68d9472c3aa83fde8eac1463ff793de78a88a47c23` |
| 37 | `theorem` | [_root_.Continuous.clm_comp_const](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/root-continuous-clm-comp-const.md) | 295 | `result-track:777dfa759139e3d640cfff725a1fde461fa292aeea53ecae98ae97db41469bb2` |
| 38 | `def` | [compL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/compl.md) | 304 | `declaration-track:e2994a35199e51849decedc0ba653a236960dbeef4940dacf3f8eea88c32e34f` |
| 39 | `theorem` | [norm_compL_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-compl-le.md) | 307 | `result-track:548fb140e9a6422b9c4f889e285011b1790a43963f4d57d84beeb967e69b58fb` |
| 40 | `theorem` | [compL_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/compl-apply.md) | 311 | `result-track:36982c2bc6d65a399703f31d8d00ab92e270107d000ab8222bbbdaeca62bcdd7` |
| 41 | `def` | [precompR](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/precompr.md) | 318 | `declaration-track:d13ca52d3b03d51ba5ba02d216a9c341ff53da52e363dd380f068bc574dce203` |
| 42 | `def` | [precompL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/precompl.md) | 322 | `declaration-track:b7adacf4437f2f424b594af45b1171ddc504779e6b50b99519826ebc0d17cfbb` |
| 43 | `lemma` | [precompL_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/precompl-apply.md) | 325 | `result-track:78852958351e58ba6d8c98ec42f37aedb36df277f476fe2594f77cf95c71b1b0` |
| 44 | `theorem` | [norm_precompR_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-precompr-le.md) | 328 | `result-track:85050412386a48c60a575fc94dbf8a832109241e7f6af0b9801e4203ff1e7be6` |
| 45 | `theorem` | [norm_precompL_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-precompl-le.md) | 334 | `result-track:15e24d881e2357c22d79c7fce4191cb04983476126b10902f2bcb0637ae502a4` |
| 46 | `def` | [bilinearComp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearcomp.md) | 350 | `declaration-track:52a76d921aec321ce7425a2994c888ae4d136dbc4fd5597c6adabdc4e9ddfa70` |
| 47 | `theorem` | [bilinearComp_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearcomp-apply.md) | 355 | `result-track:46cf73b603e51910c7b86a420b67ff418e579da5ddc19467766e2d0338c36660` |
| 48 | `lemma` | [bilinearComp_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearcomp-zero.md) | 360 | `result-track:6e630a9f16f210cccc06bd3dad59d15581d1026741b4727dfcb226dcff6653d0` |
| 49 | `lemma` | [bilinearComp_zero_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearcomp-zero-left.md) | 364 | `result-track:91fbe114d7194a795410c253be78e39a0639cc16739cc0a9b0329e1dcbd0dd1f` |
| 50 | `lemma` | [bilinearComp_zero_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearcomp-zero-right.md) | 368 | `result-track:fbf8ed4592895304fe09f4c742fd9f87dbe2247fc0cba6eed120a412b139b23f` |
| 51 | `def` | [deriv₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/deriv.md) | 375 | `declaration-track:2e2693cd325af5255a47e02cc84731ce285e0ff07b90b977573a576b960c759e` |
| 52 | `theorem` | [coe_deriv₂](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/coe-deriv.md) | 379 | `result-track:c2f830fd862c90463137f7b2173f715a854571989b769ad4ff72bb4139adb009` |
| 53 | `theorem` | [map_add_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/map-add-add.md) | 383 | `result-track:0de1d8fec25070384784a779a23e92b00d8fa2d370aac68f9f74db1ba9355c85` |
| 54 | `theorem` | [norm_smulRight_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-smulright-apply.md) | 391 | `result-track:4d554fe9355ae852edcd719b7fa7a463b79f3fddc198ecd1e6c32dfb6b6d4318` |
| 55 | `theorem` | [nnnorm_smulRight_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/nnnorm-smulright-apply.md) | 411 | `result-track:25fa2d02f51deadfcede4883503d87fcd215d5cb500653268417e813665a0ae0` |
| 56 | `theorem` | [norm_toSpanSingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-tospansingleton.md) | 414 | `result-track:b7fc5ecb76edde6d397b046d3b318e2f389c9c256604de2d840aa6c1f98d34af` |
| 57 | `theorem` | [nnnorm_toSpanSingleton](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/nnnorm-tospansingleton.md) | 417 | `result-track:7b12db338b455c3e35b4bc1b33763aae78f2edd2f1443ce62ec678fd4c2ab3bc` |
| 58 | `def` | [smulRightL](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/smulrightl.md) | 427 | `declaration-track:0ca16db5e25238dbfa10ab2a22dad9d6c3b15d014041dee786da8a75e15dd817` |
| 59 | `def` | [bilinearRestrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearrestrictscalars.md) | 455 | `declaration-track:98047ce2d70adc6b28da11cbbd2444ea7694802d2b9ad5ec8e9d8a96f345e15a` |
| 60 | `theorem` | [bilinearRestrictScalars_eq_restrictScalarsL_comp_restrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearrestrictscalars-eq-restrictscalarsl-comp-restrictscalars.md) | 460 | `result-track:3b8f5344938d4ff7934aeed6c011047c792f93baf8b305e3155c645ec297036e` |
| 61 | `theorem` | [bilinearRestrictScalars_eq_restrictScalars_restrictScalarsL_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearrestrictscalars-eq-restrictscalars-restrictscalarsl-comp.md) | 463 | `result-track:824c59b63ac8616550feb8e7eba344fabf33025470c08f87596158244d4d73dd` |
| 62 | `theorem` | [bilinearRestrictScalars_apply_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/bilinearrestrictscalars-apply-apply.md) | 468 | `result-track:1a785f6fadfcaa11becccfbdfef109df7ce77e792f109cd655cbe8fedbbd6bdd` |
| 63 | `theorem` | [norm_bilinearRestrictScalars](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorBilinearPublic.lean/declarations/norm-bilinearrestrictscalars.md) | 471 | `result-track:d566ff81fbfe8f0ac4e3dcf596dea5a78f57752bcac9cf3f2be86aeb45b2392e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7820f9df1c29c8722e13666636380fc018a3391f47c4cb6a46c4346b0c4f90 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bilinear/Variant5ccbf881492c435b839474ca19c12396c158a154ed7ca9d6640b2c0ce1a06714.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bilinear/Variant5ccbf881492c435b839474ca19c12396c158a154ed7ca9d6640b2c0ce1a06714.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
