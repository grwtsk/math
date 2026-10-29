# Verification target: Algebra Equiv Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0e8ade863e26ac5818ad67b152e445ca6cfd409",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0e8ade863e26ac5818ad67b152e445ca6cfd409`.

Source path: `GRWTSK/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuousalgequiv.md) | 48 | `declaration-track:380552b952d3f70d8eb94009b08a66756358b266e222eceb0b5e41e995fa6967` |
| 2 | `class` | [ContinuousAlgEquivClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuousalgequivclass.md) | 62 | `declaration-track:45ea59435e55c621ac8d5afb08528435492f2140b5ed584d0329013d90e4a95b` |
| 3 | `def` | [toContinuousAlgHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/tocontinuousalghom.md) | 77 | `declaration-track:5dfb3918be82e1f69ae8fd4262cbd904ef2e1de957b13bc8b929db32a4818c20` |
| 4 | `instance` | [coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe.md) | 81 | `declaration-track:e2f9df1a06cf36a74164616c3c274629081d304b47d96511e65bb4ec6e6913ff` |
| 5 | `instance` | [equivLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/equivlike.md) | 83 | `declaration-track:6f9549572ab1d445cb468999830c5137d72421d9b67d124b74d73f7134d36f0c` |
| 6 | `instance` | [continuousAlgEquivClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuousalgequivclass-source-edition-2.md) | 95 | `declaration-track:54c28af1d21ac1b1ee988dcb4cceb2593472870811345f373b7e0f8e056bc481` |
| 7 | `theorem` | [coe_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-apply.md) | 102 | `result-track:efc0887ac04e90c69f8c325ca1e5cf9eee24699f79bf7ff349c84309e27a6a3e` |
| 8 | `theorem` | [coe_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-coe.md) | 105 | `result-track:70be7be297676c355b41f3e8f501cbb61aec583658c33d74451aa43b64b7e530` |
| 9 | `theorem` | [toAlgEquiv_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/toalgequiv-injective.md) | 107 | `result-track:7a5c78bd571cb970fedadee9dfbb1e6defd89c57056f4b93697d47c66596c95c` |
| 10 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/ext.md) | 112 | `result-track:cfebc57d6276f27f3d3c1d3444be77a10059f44b3601bfe49304d2840c0d43cf` |
| 11 | `theorem` | [coe_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-injective.md) | 115 | `result-track:c2ce2d449fc7d49e9d30bfa29c66fd2357bfb0bf55693ee0923f00e3eb967815` |
| 12 | `theorem` | [coe_inj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-inj.md) | 119 | `result-track:a53fc38bd1ec74216c587ab95d0520125cf26691453384d29b9d370e8ae69d18` |
| 13 | `theorem` | [coe_toAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-toalgequiv.md) | 123 | `result-track:1ae5a1242304ba1ef096d41608391d64843b43a3c6377db3e3939a3bbac75985` |
| 14 | `theorem` | [isOpenMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/isopenmap.md) | 125 | `result-track:3dcd178ab46e2acb179a461585e8a85b3aeb6b80725326d7b8e865c5cf72f310` |
| 15 | `theorem` | [image_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/image-closure.md) | 128 | `result-track:8e9c3aa3e0dfeb70ad2f3835563f815ba973d90f0ccefc5a7aca062c0a5fe5c8` |
| 16 | `theorem` | [preimage_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/preimage-closure.md) | 131 | `result-track:6b44a76d69fa89ff4e04eec9363376722491815a6b80a1639caf83f98c69c5d1` |
| 17 | `theorem` | [isClosed_image](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/isclosed-image.md) | 135 | `result-track:12c639e22bc6468800ee38a971489270fb8ece0ed6859ab9912d9ce26666caad` |
| 18 | `theorem` | [map_nhds_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/map-nhds-eq.md) | 138 | `result-track:889205fb0d1e69189ffd80263f60c84360ff0ab8bb9304e103e4ffe9bc6eefb6` |
| 19 | `theorem` | [map_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/map-eq-zero-iff.md) | 141 | `result-track:30b52764243441e0cb1f7cbf1e9a6430f685320f145492989fe38208af35e2f9` |
| 20 | `theorem` | [continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuous.md) | 148 | `result-track:849c9f05b6f86c51504a0d07243d0f87e2c634c8b5b60d35fa4a7fd91e5dddcf` |
| 21 | `theorem` | [continuousOn](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuouson.md) | 150 | `result-track:36ad4b295ee6c5b21cc77ffa3b2d333b97a13265d34d80ea8240815d58f47e39` |
| 22 | `theorem` | [continuousAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuousat.md) | 153 | `result-track:fb94f1f394272184a6c83334592b8cf377978dcb5d2c3bf8501f79883171ccbe` |
| 23 | `theorem` | [continuousWithinAt](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/continuouswithinat.md) | 156 | `result-track:728e76fc1ba63e36b7d4a20a4473e94585fab10627a2b41f0fe97f538ba74f13` |
| 24 | `theorem` | [comp_continuous_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/comp-continuous-iff.md) | 160 | `result-track:35e6db5cc342c93c9f64692f4a2b874b225071a2e20d24a58568d84750e27eda` |
| 25 | `theorem` | [comp_continuous_iff'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/comp-continuous-iff-source-edition-2.md) | 164 | `result-track:ecc3c6f4be994fbdc0776e529cdfb1471e8d424dc5ac3abe0992e2e37c9e8607` |
| 26 | `def` | [refl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/refl.md) | 172 | `declaration-track:9a5254c6373d906a312bff6f46bcf9548688197fd1fe86c22ed46345fd5330db` |
| 27 | `theorem` | [refl_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/refl-apply.md) | 178 | `result-track:dfc2c30a70e9a9b17248a8940fe5d45722e490fcba9d31af789229561bd93b28` |
| 28 | `theorem` | [coe_refl](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-refl-source-edition-2.md) | 181 | `result-track:f6a21aa6ff253eca5dedca61d7777f98d968194f386a44040011ffb453d8c375` |
| 29 | `theorem` | [coe_refl'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-refl.md) | 184 | `result-track:dbba07a336e51eab736ac51d6cb9585e47bc3f69e354e4ac3487fab59348f286` |
| 30 | `def` | [symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm.md) | 190 | `declaration-track:d181c73f87d5eaf675efa92e9f2a5cd94e8b4fc2c6030f01c3bb8fa0bcb11724` |
| 31 | `theorem` | [apply_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/apply-symm-apply.md) | 196 | `result-track:dc7ec5606ab58415a835328cc463767362ce97ff1911bbdc72731336a3734edc` |
| 32 | `theorem` | [symm_apply_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-apply-apply.md) | 200 | `result-track:25bb3ea858c6cffe196f0b2af67db455f1c4c08e2361de2798f8f378ca29f8ec` |
| 33 | `theorem` | [symm_image_image](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-image-image.md) | 204 | `result-track:0e992995fe3e7de75c829c6e34db9ca8e23d84dfc92b2821214283d68ffa12e2` |
| 34 | `theorem` | [image_symm_image](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/image-symm-image.md) | 208 | `result-track:9be433e79c07068a76e3c3a0374d5fe5a78151dfe17cce493a5a40413d320d6a` |
| 35 | `theorem` | [symm_toAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-toalgequiv.md) | 212 | `result-track:3f329e5d4a99c2fd32e30c32561594156c106d21c0a5cc25292329abb11fcbf8` |
| 36 | `theorem` | [symm_toHomeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-tohomeomorph.md) | 215 | `result-track:b37984e1fe9894f004a10c341d9e450e6c9ef80b7507b900356d8b252745aab2` |
| 37 | `theorem` | [symm_map_nhds_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-map-nhds-eq.md) | 217 | `result-track:a9fe23e5d5953f289a6bc5e448e661e03941d7d8dc4524abc69efc647bbc7e91` |
| 38 | `def` | [trans](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/trans.md) | 222 | `declaration-track:21198c3c5d5a7e3a72a31ce81697d3603d5d25690ae61f1512dd5b9f9662a861` |
| 39 | `theorem` | [trans_toAlgEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/trans-toalgequiv.md) | 228 | `result-track:f7190f5f1d07df281c65c29a77fd64d9be7a3a2971b7cccfe5b4794b2192a619` |
| 40 | `theorem` | [trans_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/trans-apply.md) | 233 | `result-track:72b2aec59d93b20ccea3e8f9b69970ccdbbb972fdbfe709845a3193d6f6d352d` |
| 41 | `theorem` | [symm_trans_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-trans-apply.md) | 238 | `result-track:a2e77dc9ecdc986b52aa312852c66920b07ad2f1cbdc60581a19fd927880708c` |
| 42 | `theorem` | [comp_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/comp-coe.md) | 242 | `result-track:b99279c43edee599f099ea5e92a3797402c69bc71afb2deb40a0ae578e27f3b5` |
| 43 | `theorem` | [coe_comp_coe_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-comp-coe-symm.md) | 247 | `result-track:b320b7e4136737de27aefc09b1fca39de8fa252997b6c09c96603ac2829af26e` |
| 44 | `theorem` | [coe_symm_comp_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/coe-symm-comp-coe.md) | 252 | `result-track:e76c6d46870ebe3a945f75efdb70c704ecb0956a1968dbd929544c01b0b1ce3e` |
| 45 | `theorem` | [symm_comp_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-comp-self.md) | 257 | `result-track:612b5efa8b9a1b82dd1b8433c98b35ceb025aea0cb9adbc567724b1abe9771ba` |
| 46 | `theorem` | [self_comp_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/self-comp-symm.md) | 261 | `result-track:98572fd120e9bed1f895228fdc50766d4c94a0a7241a49fc976180a00303ec0f` |
| 47 | `theorem` | [symm_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-symm.md) | 265 | `result-track:aa9b5aa7fbcbbd6a6bdc56fe3c9fd0d2888a5d11f25facca8ae13edbdca7388a` |
| 48 | `theorem` | [symm_bijective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-bijective.md) | 267 | `result-track:45c41ef6c898f951c0bd0a629df141e238004ff28aba085ff2fd847058bc0883` |
| 49 | `theorem` | [refl_symm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/refl-symm.md) | 271 | `result-track:bc4d4452b6b95a99475c4dd6c7ba44a17f908dea1b311c26f421bfbbbaf09574` |
| 50 | `theorem` | [symm_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-symm-apply.md) | 273 | `result-track:2f2871f103aa621f5bca1c901a69cf9e8d9aebd36d2ff0f034ac5f05532de9a8` |
| 51 | `theorem` | [symm_apply_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-apply-eq.md) | 275 | `result-track:cef72b18a70c0fa21ed960b55d0a0d0b0527cc2fe1b4f8a7454b92075b78c60e` |
| 52 | `theorem` | [eq_symm_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/eq-symm-apply.md) | 278 | `result-track:c54fb780a30d2827f37af2c51fe7955043fd34974683a77ad3fd9187224861f0` |
| 53 | `theorem` | [image_eq_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/image-eq-preimage.md) | 281 | `result-track:1523db6ff792ee8bf2af1a5acb551bef620c57d8ee665ddcd8d6ebd50e60b18e` |
| 54 | `theorem` | [image_symm_eq_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/image-symm-eq-preimage.md) | 284 | `result-track:3d12a1b85939fb3337c81fd94f85168c8a898c0717c34eb108f92a636a5b46ce` |
| 55 | `theorem` | [symm_preimage_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/symm-preimage-preimage.md) | 288 | `result-track:f9dba0ba685e1f1aa78d2f7982b61c7f72d625325788e04222c1cbabc79f4e99` |
| 56 | `theorem` | [preimage_symm_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/preimage-symm-preimage.md) | 292 | `result-track:de5680dbf261b7579ef32ac5b82f4d8c8e3e2d80d00366716ca80f8881b7ee5c` |
| 57 | `theorem` | [isUniformEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/isuniformembedding.md) | 295 | `result-track:148de198bfac3a0369b6696b0f764cb6380f098d71e9fff0638b91b3302fe21b` |
| 58 | `theorem` | [Algebra Equiv Equiv Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraEquivEquivNamespaced.lean/declarations/isuniformembedding-source-line-301-occurrence-2.md) | 301 | `result-track:05f36d0d6b21866cf08afb4aa667d94c2604ed843210b54bb46d336382fbda0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c6dcb4a5f554f69634df19be5416524cda28ce5cbc8b22f539fe24688db8c064 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Equiv/Variantde6442fcd47e69ae68b7c062e03258953151b03483218d10902be54648fdc5d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
