# Verification target: Modify Public Modify Head Eq Set

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "829f204d67836379bacfbebc4183974ebe4c28cb",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variantd1621a4bb36e75cc49545c334f203184d0c17d26798a7596d7b730a6f78333b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `829f204d67836379bacfbebc4183974ebe4c28cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variantd1621a4bb36e75cc49545c334f203184d0c17d26798a7596d7b730a6f78333b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variantd1621a4bb36e75cc49545c334f203184d0c17d26798a7596d7b730a6f78333b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.Erase` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [length_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/length-modifyhead.md) | 30 | `result-track:54d78fcb3c0320bd7174cc0e226d1625db2dacfa8f911329683963b3001b0a92` |
| 2 | `theorem` | [modifyHead_eq_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-eq-set.md) | 33 | `result-track:169ab3d58d410a17f4afc205d05b546f3421d5b22554d7dd11bc102733f4d785` |
| 3 | `theorem` | [modifyHead_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-eq-nil-iff.md) | 36 | `result-track:2de1038c2939697b1350e997d988bb9f481ceddf5847941f867a72baddd4bff4` |
| 4 | `theorem` | [modifyHead_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-modifyhead.md) | 39 | `result-track:c67f4c5664b6a61d0f356265bd4c9ff876188b5fc1a668dcd2d0fdabafaf8f93` |
| 5 | `theorem` | [getElem_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead.md) | 43 | `result-track:bb3dab20afae097ff85d98d6fb591f2963a0e47d09231c3a242426e736050298` |
| 6 | `theorem` | [getElem_modifyHead_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead-zero.md) | 49 | `result-track:4588e071a189efdb071ab5887638ddbc1655e7763e746be75789eed1ae637aef` |
| 7 | `theorem` | [getElem_modifyHead_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead-succ.md) | 52 | `result-track:1fedf132fedf0ea1728e145ff269d09453eec973e220b67f858afd706d03ca48` |
| 8 | `theorem` | [getElem?_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead-source-edition-2.md) | 56 | `result-track:d269caa4ca18f582c21415f7ccdbad181cb7da66956ec092cff5e0ad30034abc` |
| 9 | `theorem` | [getElem?_modifyHead_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead-zero-source-edition-2.md) | 62 | `result-track:c7a02b87df4177175a2ce65d0978f6cb4501dcf4d73c241a3699165a02805ff4` |
| 10 | `theorem` | [getElem?_modifyHead_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modifyhead-succ-source-edition-2.md) | 65 | `result-track:ef2590d8353620513a062dab041385aeb5a6986206e98eeba5880cc2146c9a3a` |
| 11 | `theorem` | [head_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/head-modifyhead.md) | 68 | `result-track:bef389096d29f6fd55b85a4e44c5d584ef0f16311652b6bed6b23020bdd3016d` |
| 12 | `theorem` | [head?_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/head-modifyhead-source-edition-2.md) | 74 | `result-track:cb548e0c9f9e5dcd7b720a1dd3af403a10d989322c807d1044ddffdd33b3690e` |
| 13 | `theorem` | [tail_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/tail-modifyhead.md) | 77 | `result-track:f17396d83564b07af3466b194b1b100211f8180d4ab531c1fcbb5cc894d634a2` |
| 14 | `theorem` | [take_modifyHead](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/take-modifyhead.md) | 80 | `result-track:53460f288543a23a22f869138fa891e6b79529f648f56b6102f7529fcf721a98` |
| 15 | `theorem` | [drop_modifyHead_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/drop-modifyhead-of-pos.md) | 87 | `result-track:c4cab49199022e29a9cef189895e6e9cf4a20b325b1c26e537ce280b6f311a77` |
| 16 | `theorem` | [eraseIdx_modifyHead_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-modifyhead-zero.md) | 92 | `result-track:6895999343cf5e7f94bdc84ee4f389fc1838cdbaf99c57a9521aeee5a242db2d` |
| 17 | `theorem` | [eraseIdx_modifyHead_of_pos](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-modifyhead-of-pos.md) | 95 | `result-track:c096055980ab8cdd3e41983c188bf42cfc8c41c5d84841712364bd72e3794020` |
| 18 | `theorem` | [modifyHead_id](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-id.md) | 98 | `result-track:3473721932e178dce37806089d87e3c01d2857ac5deb1d42c0f8f05a7729cb5a` |
| 19 | `theorem` | [modifyHead_dropLast](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-droplast.md) | 100 | `result-track:c10bc8a62702bf3699aece61a7973f86a6241b4f7dc3326a146b4a575b657de4` |
| 20 | `theorem` | [modifyTailIdx_id](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-id.md) | 108 | `result-track:4bf4b2788351ddc4b7dac75c30639643517c1c7759f13570b73c703ce53a3970` |
| 21 | `theorem` | [eraseIdx_eq_modifyTailIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-eq-modifytailidx.md) | 113 | `result-track:30c8bf7fbc1c9a2d904bf90dbdb0bf70d07283939cd0238f2684e9070129a52e` |
| 22 | `theorem` | [length_modifyTailIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/length-modifytailidx.md) | 120 | `result-track:bffc207b3ae6b38edff0e56ba6b00f685c93a69a51c28911577e2d4bbb6be017` |
| 23 | `theorem` | [modifyTailIdx_add](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-add.md) | 126 | `result-track:aedad491edc23a8807b891696cf0ff2e4f450b15bd5f52b0d63431339d27c515` |
| 24 | `theorem` | [modifyTailIdx_eq_take_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-eq-take-drop.md) | 130 | `result-track:d355a44a91cb56fc22d25e0d0b0b3e6236e27acd12f3d1278fc2bf201c302d51` |
| 25 | `theorem` | [exists_of_modifyTailIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/exists-of-modifytailidx.md) | 136 | `result-track:3e400879c6e16e5616e9df2808b1e54e199ecd1468d1b1e53bbe3c64abad3684` |
| 26 | `theorem` | [modifyTailIdx_modifyTailIdx](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-modifytailidx.md) | 142 | `result-track:58fb1607757d5d503e57305d692f440cd2e0890f1b5d15f2093a0da4ba108a3a` |
| 27 | `theorem` | [modifyTailIdx_modifyTailIdx_le](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-modifytailidx-le.md) | 150 | `result-track:be51148badc9af7674ba5f51705b8f0660f8ec1d5e8cc4459422acd790bf7584` |
| 28 | `theorem` | [modifyTailIdx_modifyTailIdx_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifytailidx-modifytailidx-self.md) | 157 | `result-track:508b0237073c91eae0624e31a57bc6a9796de5a77eba5ec38df2d316f8b622d0` |
| 29 | `theorem` | [modify_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-nil.md) | 163 | `result-track:be39fb2b8ed6f89217a117658e67d01ae79a9b73a436db75bffa929e6d34d561` |
| 30 | `theorem` | [modify_zero_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-zero-cons.md) | 165 | `result-track:aaf29ec24a1747f89ccff926ed35be9ce17a0830977e177b90783143045096f1` |
| 31 | `theorem` | [modify_succ_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-succ-cons.md) | 168 | `result-track:43db56739ce01d70ed0529e6ae3cce7336abada41f121ecc26c88902da680097` |
| 32 | `theorem` | [modify_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-cons.md) | 172 | `result-track:76f660a1eb1c6e29e428b78e157b62478e4689e69933af007a15de750f9ced2e` |
| 33 | `theorem` | [modifyHead_eq_modify_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modifyhead-eq-modify-zero.md) | 180 | `result-track:2beeb2b309d9f8280bd4ee89430563c12d8d494ae914b3f7426850fbe1282c0e` |
| 34 | `theorem` | [modify_eq_nil_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eq-nil-iff.md) | 183 | `result-track:f6e9e4132377e97b854e20f178ff9abb747e8b4813bd9b4240f92dcdb61b4129` |
| 35 | `theorem` | [getElem?_modify](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify-source-edition-2.md) | 186 | `result-track:53a5644c46fe67849f780f65e9aa4edcf39e9f7fc4ab2a23b5d8f14da67fbbd4` |
| 36 | `theorem` | [length_modify](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/length-modify.md) | 197 | `result-track:67a607acec6dd0b454943a4d85331e6349cfc6ac0c8a757d317c946ee689054c` |
| 37 | `theorem` | [getElem?_modify_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify-eq-source-edition-2.md) | 200 | `result-track:a37aba7a5dab6b3b5e133dc25515aa598156583e21f2adf560bfc07e8a4e8e28` |
| 38 | `theorem` | [getElem?_modify_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify-ne.md) | 204 | `result-track:86c6cf49c4149199dc70969d69e85dd29034b0f0edda97bed54e8dba2e3d4cd9` |
| 39 | `theorem` | [getElem_modify](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify.md) | 208 | `result-track:05e55dc68d8845f957cea9000b52414bb3e1ae58ec705ea0bae3dd02a991b340` |
| 40 | `theorem` | [getElem_modify_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify-eq.md) | 215 | `result-track:781387a8df72cd02389fe7f1659ef46b06889bf615d52411d4b1c747c86b5f00` |
| 41 | `theorem` | [getElem_modify_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/getelem-modify-ne-source-edition-2.md) | 218 | `result-track:f3d6fb1735854691cdb51b4836ae55318a8a5a23e2d1171448d8ef795e0428a8` |
| 42 | `theorem` | [modify_eq_self](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eq-self.md) | 221 | `result-track:b22f0b2f503c0f44e84c337a66caa8099da6e312e365619ec3c4de7064df19a2` |
| 43 | `theorem` | [modify_modify_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-modify-eq.md) | 230 | `result-track:e2325928dfb7d7c5c75415e28b403f8295bc3be57260f3b3d174626001f39820` |
| 44 | `theorem` | [modify_modify_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-modify-ne.md) | 241 | `result-track:c4c83e6f56d484c7632ff49be859d3061d9433b2caf5ad8a93297a27a07b7248` |
| 45 | `theorem` | [modify_eq_set](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eq-set.md) | 249 | `result-track:5b603556a53ee0dce7f78183075766d1cc89615617e09acacff85b843b598bf1` |
| 46 | `theorem` | [modify_eq_take_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eq-take-drop.md) | 261 | `result-track:8c9a9335e306d0081c748353d921fd04b58e34cd4074d79be76f04cf593e8164` |
| 47 | `theorem` | [modify_eq_take_cons_drop](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eq-take-cons-drop.md) | 265 | `result-track:a54dd9df590296304d9e56f064f6ffb81cd5e0f20ca07ba3b8fb534b4d49d865` |
| 48 | `theorem` | [exists_of_modify](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/exists-of-modify.md) | 269 | `result-track:eb3d83ee5526109760fe31f4517170cdf4d479c44718ac10fdb2e6219220eb2f` |
| 49 | `theorem` | [modify_id](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-id.md) | 275 | `result-track:5244c3b7a90b2af2c03f21caad2948b124f73c67d27f48804c363e4403c6095c` |
| 50 | `theorem` | [take_modify](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/take-modify.md) | 279 | `result-track:34afce59553cb482ccdf81497511ebf71649a53f7f44b9026eeef7cb7c67775b` |
| 51 | `theorem` | [drop_modify_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/drop-modify-of-lt.md) | 292 | `result-track:d42a0062f2a9e8c3eae966d5f496e51d359526267e06ce1c84c24fbbdf9ba88c` |
| 52 | `theorem` | [drop_modify_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/drop-modify-of-ge.md) | 302 | `result-track:848bd440288d9915b70d79704bce064d714b83c27f0b439db14f6ff14afaa33b` |
| 53 | `theorem` | [eraseIdx_modify_of_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-modify-of-eq.md) | 310 | `result-track:e9e94c412c126ef83baa2072f4a18d5f25bf0bb232307538d49100fc9750d258` |
| 54 | `theorem` | [eraseIdx_modify_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-modify-of-lt.md) | 318 | `result-track:a2a43b2933d8689092fc57432a9cef550dae7c9b99bd66322b3af259d0cafc8b` |
| 55 | `theorem` | [eraseIdx_modify_of_gt](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/eraseidx-modify-of-gt.md) | 328 | `result-track:29c629fd905d3daeefe9ae638322fa3bcfb8255080cbc461f4bcd7440a50499e` |
| 56 | `theorem` | [modify_eraseIdx_of_lt](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eraseidx-of-lt.md) | 338 | `result-track:aed8b74a79ba6c896f89a6e7147ca5b1484139c1b7802ce7c1b64d7e6bba0984` |
| 57 | `theorem` | [modify_eraseIdx_of_ge](../../../../../ComputerScience/AlgorithmsInComputerScience/ModifyPublicModifyHeadEqSet.lean/declarations/modify-eraseidx-of-ge.md) | 348 | `result-track:984363fd9ef58e26388d8f5c51c90d5abae374ef7af5265fc5eb54ffeddc3fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d864bc574b1a08f32c33bff4dea85a2ef29d780da1b88fe4137f59176f762b8c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variantd1621a4bb36e75cc49545c334f203184d0c17d26798a7596d7b730a6f78333b0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variantd1621a4bb36e75cc49545c334f203184d0c17d26798a7596d7b730a6f78333b0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
