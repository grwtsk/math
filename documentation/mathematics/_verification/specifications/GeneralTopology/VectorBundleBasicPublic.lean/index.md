# Verification target: Vector Bundle Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da578940fc9a46d454b8e5d1bd13861e293fa597",
  "lexical_observation_count": 131,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/VectorBundleBasicPublic.lean/index.md) · [Full source](../../../../GeneralTopology/VectorBundleBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da578940fc9a46d454b8e5d1bd13861e293fa597`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bundle.Pretrivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/bundle-pretrivialization-islinear.md) | 74 | `declaration-track:9bf6acc0f0072a50c95f4cd46ef8391a1e80b1d326b5f9a459c9592c230c78a6` |
| 2 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linear.md) | 82 | `result-track:61360abb57b0f270294629c5135171a3297ffd14ff7201d85ce1def7f9b1857e` |
| 3 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-source-edition-2.md) | 91 | `declaration-track:9ac4510699f996b75471884138516d78bcbd46c4bce5a32552084968356cedfe` |
| 4 | `lemma` | [symmₗ_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-apply-source-edition-2.md) | 97 | `result-track:6a9dc1bbf34b6c739f9dfb3221889ea8ffc4801187fbcd15686f7b47de2f4788` |
| 5 | `lemma` | [symmₗ_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-apply-of-notmem.md) | 102 | `result-track:7d0b7704eae411e94424f26c6d43bc6a92be1a0437f1629f71ee7fea260df29b` |
| 6 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearequivat-source-edition-2.md) | 109 | `declaration-track:c2ff1d4b4f6c42eef9810e6c95c21f76b60d64bdbc4b41939040299a08483237` |
| 7 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat.md) | 120 | `declaration-track:96edc8f8b6a49b8638554c8eccb3fa7274d1909b4ef2b12b01ef1cf2e26279eb` |
| 8 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-linearmapat-source-edition-2.md) | 126 | `result-track:b6cf6816c4e3e7a15436b5c3cfaab6b0762472a581fa1192132db3bc0f036c5f` |
| 9 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-linearmapat-of-mem.md) | 132 | `result-track:68855a232c3e80b166098fc1958766647fc10ebbf84407d517cdcf1509e5df1b` |
| 10 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-apply-source-edition-2.md) | 137 | `result-track:f3896cc0741211875e43d31af0becfbcc80f4b96e92145660e879e9fcc705563` |
| 11 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-def-of-mem-source-edition-2.md) | 141 | `result-track:aa5e4342e672a250537a0bd65160345a3f4d51fa7cc91a085722f49e89dd63db` |
| 12 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-def-of-notmem-source-edition-2.md) | 145 | `result-track:e5e16637756b5008728d6f6d0ad535926bff5bb29bffcbd0320bdd41f3c21f50` |
| 13 | `theorem` | [linearMapAt_eq_zero](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-eq-zero.md) | 149 | `result-track:0cabacf70cbd15ad5dc47afaf23bb634601edc114f9d60c26d57004938995fe8` |
| 14 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-linearmapat-source-edition-2.md) | 153 | `result-track:862e177454bb83a354c1610b753dad342b83be9f2ff9cb5f0c6324c265346b27` |
| 15 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-symm-source-edition-2.md) | 156 | `result-track:b84fabb00faadc33f99d823cccdfcfb7d6d7108f9536b0b3cb1addee7dc726ef` |
| 16 | `class` | [Trivialization.IsLinear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivialization-islinear.md) | 165 | `declaration-track:276897c6249fd9a3033f6347555cf8fe61c8e2f06984c9c9200f3f81c961d477` |
| 17 | `theorem` | [linear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linear-source-edition-2.md) | 173 | `result-track:a57bc20fe9c389bb1bc3ce847570a69815f4dc199be7453fb41bc8fd8d2664a8` |
| 18 | `instance` | [toPretrivialization.isLinear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/topretrivialization-islinear.md) | 178 | `declaration-track:a1d02fbf48b9439f73511f4bc868b7c35eb1584b3a0a66d0cd2c9b7260450e82` |
| 19 | `def` | [linearEquivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearequivat.md) | 186 | `declaration-track:a821549a3014b61616154093768d09e8cd7c89192241bed2902d3b9186421394` |
| 20 | `theorem` | [linearEquivAt_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearequivat-apply.md) | 193 | `result-track:5320ebac029e76d0e3a93d4c9d262f60b6921a7c01a28f5d7f42dd0a83579166` |
| 21 | `theorem` | [linearEquivAt_symm_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearequivat-symm-apply.md) | 198 | `result-track:331e8dec717b101ac1b0b483efb0b9d6cd1802097923c00fbc9f873789008f4d` |
| 22 | `def` | [symmₗ](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm.md) | 204 | `declaration-track:2b21534dd3317fa0586c546d7d17016f47f8ad57cb9e2f8653f070a3c56a8ca6` |
| 23 | `theorem` | [coe_symmₗ](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-symm.md) | 207 | `result-track:c951b1f56c38b7ca7a4cb830ad1ceef65f3c28ad453bb7bdee12efc9c9f7511d` |
| 24 | `theorem` | [symmₗ_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-apply.md) | 212 | `result-track:19503cf609515e0820b8f47aeab0916f44c676d6176d78f104f5c0a5e1d8f209` |
| 25 | `theorem` | [symmₗ_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-apply-of-notmem-source-edition-2.md) | 217 | `result-track:7e483a2d5441f56597202197d28cac90c34ed219ae9e54b6ecbf2c4ad5f6e02a` |
| 26 | `def` | [linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-source-edition-2.md) | 223 | `declaration-track:cf0abeb78d3ebd603575e7cc2e328d9c49a8c4acf8ccc8341ce11ee006ce31a2` |
| 27 | `theorem` | [coe_linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-linearmapat.md) | 227 | `result-track:a1328b4a283874f114f4a97af28fa7333473b55aa19fd4c9511807492d4fdf0d` |
| 28 | `theorem` | [coe_linearMapAt_of_mem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-linearmapat-of-mem-source-edition-2.md) | 232 | `result-track:90642769bb6d2b002e82a07a4a38b881ab6d81d1f725e339cd29f2fc705421e3` |
| 29 | `theorem` | [linearMapAt_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-apply.md) | 237 | `result-track:14fb7cf2db3c37682e4694afb04d6f9a71ff56b9e4bb7d7a585369724e307a09` |
| 30 | `theorem` | [linearMapAt_def_of_mem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-def-of-mem.md) | 241 | `result-track:20361290820fe3d9b807ca0d7d413b589cab372b3f9827651b44b70909782112` |
| 31 | `theorem` | [linearMapAt_def_of_notMem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-def-of-notmem.md) | 245 | `result-track:74f1e2cc80cfbd4e25ed1eaa477c40b1a6a385c8686657b1f19d14b71cd80705` |
| 32 | `theorem` | [symm_linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-linearmapat-source-edition-3.md) | 249 | `result-track:97745c71f51a783c79ff2ae9171cdd47e06ccecf930e813ab9ad036c78471ce6` |
| 33 | `theorem` | [symmₗ_linearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-linearmapat.md) | 253 | `result-track:7e99ad580c225a31f7d0d39d11f637c82d2ce922d09d7d129c2052ad082a0f92` |
| 34 | `theorem` | [linearMapAt_symm](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-symm-source-edition-3.md) | 258 | `result-track:ce02a943e985bcfb29681e4e0ba07706722b9f7c99cc95d687fd9af1a825e009` |
| 35 | `theorem` | [linearMapAt_symmₗ](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linearmapat-symm.md) | 262 | `result-track:3ffb1751dbf12dc5e7336681aad8b83919a2442629b31609e6d32d59146ead60` |
| 36 | `def` | [coordChangeL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchangel.md) | 270 | `declaration-track:a8a8b1c737ff9c5032ffe495ee1b5b9d4afec71a051b46ddc3f65c8d930194b1` |
| 37 | `theorem` | [coe_coordChangeL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-coordchangel.md) | 294 | `result-track:cf04a13a11a93c54fbc043c4d774a4d97cf02b57c8ecf24fff62085645102f4a` |
| 38 | `theorem` | [coe_coordChangeL'](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-coordchangel-source-edition-2.md) | 299 | `result-track:f3f2353fc2193fc04a684a0c96bac75fff6ab1bdc1cba8132b9bf40acce983e8` |
| 39 | `theorem` | [symm_coordChangeL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-coordchangel.md) | 305 | `result-track:f0c16fbb925354c6126263e5daeb5795e433d01703477b8b4c8ab0b658193938` |
| 40 | `theorem` | [coordChangeL_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchangel-apply-source-edition-2.md) | 311 | `result-track:d0ee081689cb281a985a8c4095280bad648485452665cd6e0ddd89ea15dc9612` |
| 41 | `theorem` | [mk_coordChangeL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mk-coordchangel.md) | 316 | `result-track:926a0919f92c86d3757101ec3e2d6fee28c6e3f2e1082bcb3b110c4c3fc8ccdf` |
| 42 | `theorem` | [apply_symm_apply_eq_coordChangeL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/apply-symm-apply-eq-coordchangel.md) | 325 | `result-track:a8448e511dfb409cbf299ea28d57ff00f43dea9fbfa5897310a8e4874a974203` |
| 43 | `theorem` | [coordChangeL_apply'](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchangel-apply.md) | 333 | `result-track:1aa1b4d4f4a65217dbe055640d0e5d800b068a0270de19cdaa2bf48de7702e42` |
| 44 | `theorem` | [coordChangeL_symm_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchangel-symm-apply.md) | 338 | `result-track:ead55162a002c162307eaef86bac1a447e50ecef2ae623c9c39b596da13e29c1` |
| 45 | `def` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/zerosection-source-edition-2.md) | 353 | `declaration-track:7fcdcd1826f1f598fb4845d56ddb883746e3d5ed88d184be03e0ac55d0e44d4b` |
| 46 | `theorem` | [zeroSection_proj](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/zerosection-proj.md) | 356 | `result-track:c1829f8c7a691b070611d1d44258e63dcc51d052bce70fcb0d867b2ac350f305` |
| 47 | `theorem` | [zeroSection_snd](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/zerosection-snd.md) | 360 | `result-track:968697eba7afa57da74f467864d888e7d54c3dbafd45f2bf3cce6f344680fc82` |
| 48 | `class` | [VectorBundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorbundle.md) | 375 | `declaration-track:3ead6990b76c42e4e620a7b2c2d63a2cfccfc7e481ebc73d8d31f57f1c6b50eb` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/instance.md) | 384 | `declaration-track:62da332ee62ea754473412d7ac24bc9a400648ec095d547db35581070d434760` |
| 50 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouson-coordchange-source-edition-2.md) | 388 | `result-track:f27b4af977a75272ed7b0af7af24a924c981e055ae8361f8ad9d0fb4bb006644` |
| 51 | `def` | [continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouslinearmapat.md) | 399 | `declaration-track:041f6d5fd181616790ed410771287d3db294b79c23e8b5e5cce711a2998a1b33` |
| 52 | `lemma` | [continuousLinearMapAt_apply_of_mem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouslinearmapat-apply-of-mem.md) | 409 | `result-track:74c146a120058930bfb4cc9a5302529c4542f4107d2c68c28e36aef31ded9c56` |
| 53 | `def` | [symmL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symml.md) | 415 | `declaration-track:ba9d9e8a5e74eccf99c63e79bf98002666ff7378d9b8a6ff2f8e1659914aded5` |
| 54 | `theorem` | [symmL_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symml-apply.md) | 428 | `result-track:7b389e1bf92e1c843c0a55e1f670a9f4d58399705f14a2e38c238e78abe8fe09` |
| 55 | `lemma` | [symmL_apply_of_notMem](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symml-apply-of-notmem.md) | 433 | `result-track:bebea5b1df9168f7c5f7bec619ded7eaee10168be52a9db8abee9cb0bc32bc47` |
| 56 | `theorem` | [symmL_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symml-continuouslinearmapat.md) | 437 | `result-track:f46e2959bfb12849a433e10321c29738e2a4f600ba8fcc7231bf3278732fa59f` |
| 57 | `theorem` | [continuousLinearMapAt_symmL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouslinearmapat-symml.md) | 441 | `result-track:cb36e706e75df591ec93d32c5d30d46fcc0ef2743a22534032df6b0f0501f827` |
| 58 | `def` | [continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouslinearequivat.md) | 449 | `declaration-track:6621700b91063ba6a9ad6ccb5baf276c394d3cb5705053fd08debf620d1885a1` |
| 59 | `theorem` | [coe_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-continuouslinearequivat-eq.md) | 458 | `result-track:020662ce45de0283c2c96ff196bcbfc2dd36d41fc7ddf2669d57b77c64e8da5f` |
| 60 | `theorem` | [coe_continuousLinearEquivAt_eq'](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-continuouslinearequivat-eq-source-edition-2.md) | 463 | `result-track:530a2f50564d92520dced6b427ff1e9b88711fe31657d35c4a0ce00a39fba846` |
| 61 | `theorem` | [symm_continuousLinearEquivAt_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-continuouslinearequivat-eq-source-edition-2.md) | 468 | `result-track:ef75c7358848ec009e1c6d250aac9e2553b99eed70ef5c0ff90e9ca5671476b0` |
| 62 | `theorem` | [symm_continuousLinearEquivAt_eq'](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-continuouslinearequivat-eq.md) | 472 | `result-track:8cd0d0ee98a73ebfa652bbee007ff62711de6050361dd0740af24cec601cf057` |
| 63 | `theorem` | [continuousLinearEquivAt_apply'](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouslinearequivat-apply.md) | 478 | `result-track:54067521d830ca7ab5a1df0edad01e1261f1b2de6a3cab0a3c2c4d45dd310515` |
| 64 | `theorem` | [apply_eq_prod_continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/apply-eq-prod-continuouslinearequivat.md) | 484 | `result-track:cf3453ab884f9d2c0eaed8eb3dade0c81a07e8c350496a91cc0f395778054ee6` |
| 65 | `theorem` | [zeroSection](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/zerosection.md) | 492 | `result-track:01262b6d323267482ed32a1a2fbb36d0b149a69ae6cad2dd057f8c1d1048b2a1` |
| 66 | `theorem` | [continuous_zeroSection](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuous-zerosection.md) | 497 | `result-track:74af0b7214e0bfe06584dfccf0560d3eaaf2936385dd4e53dc0db5a4fd133349` |
| 67 | `theorem` | [continuousOn_zeroSection](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouson-zerosection.md) | 508 | `result-track:32992732d648f377c837cd0ab5914afb775736f24428430b6bf6f3ed3aed7d1e` |
| 68 | `theorem` | [continuousAt_zeroSection](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuousat-zerosection.md) | 513 | `result-track:c7a0e9532c63cfdf855df16de9c8c1b4e9f78bb13c7fa12cc82570c23378bc62` |
| 69 | `theorem` | [symm_apply_eq_mk_continuousLinearEquivAt_symm](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/symm-apply-eq-mk-continuouslinearequivat-symm.md) | 519 | `result-track:b357159deaaf9ffadfd810660774160e86dbcade4cebeb0597027e0cdef7e868` |
| 70 | `theorem` | [comp_continuousLinearEquivAt_eq_coord_change](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/comp-continuouslinearequivat-eq-coord-change.md) | 524 | `result-track:f1e3f0922688d19573b56bdfd52dda85c4ec475ae535434e616b3f567086e113` |
| 71 | `def` | [VectorBundle.continuousLinearEquivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorbundle-continuouslinearequivat.md) | 538 | `declaration-track:b25613bc08f5cca7175c220264cc29bb71eb99cba1b91d936e966e0c28f25a7f` |
| 72 | `lemma` | [VectorBundle.completeSpace](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorbundle-completespace.md) | 543 | `result-track:a91e1c20f79f7219599278481e15d5a06aa6fecab4d2527242a983bff3931616` |
| 73 | `structure` | [VectorBundleCore](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorbundlecore.md) | 558 | `declaration-track:6c236ad8ca77d652a973c5f3e91fc51f71eee6733158082ef1f4428b28c766e9` |
| 74 | `def` | [trivialVectorBundleCore](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivialvectorbundlecore.md) | 571 | `declaration-track:5274c8a4dee49a5e3ac05b4360e0bd45eb2783b92f1186dc9cf82db286eea95d` |
| 75 | `instance` | [(anonymous)](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/instance-source-edition-2.md) | 581 | `declaration-track:78a3165b2318632acefefad83dfb2da3c3299464fcf420f8ed967c04b90e6198` |
| 76 | `def` | [toFiberBundleCore](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/tofiberbundlecore.md) | 591 | `declaration-track:a6df1e70001f13d185c62a12f3133682140bb6229d88ca4cdf2b50b611ffdd92` |
| 77 | `theorem` | [coordChange_linear_comp](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchange-linear-comp.md) | 602 | `result-track:bf2cd054efc155bf1c509fa65e916eb1df210d3d5538a55e33c9f28532067588` |
| 78 | `def` | [Index](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/index.md) | 611 | `declaration-track:d7c97d729833e0e0d395c92edec5afc84b137a00ca6ed1fe1468375d56f0fefb` |
| 79 | `def` | [Base](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/base.md) | 615 | `declaration-track:c51a94230e43441bc6eabc13b68243fe1333afa1811e35f2af43d4fdd4724473` |
| 80 | `def` | [Fiber](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/fiber.md) | 620 | `declaration-track:7390de3eab25d84f44ff742402c2372233131e6de60eb48c1a5a2c79db50d497` |
| 81 | `instance` | [topologicalSpaceFiber](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/topologicalspacefiber.md) | 623 | `declaration-track:0f0d15be239347eb55df5977b4e8ca3c6f97fd5793faf87880f7f976e1668729` |
| 82 | `instance` | [addCommGroupFiber](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/addcommgroupfiber.md) | 628 | `declaration-track:96fcadf9eef393e131910d890d952d75fc46a040ce3e424a67eb8464bb9a5349` |
| 83 | `instance` | [moduleFiber](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/modulefiber.md) | 631 | `declaration-track:44ee6e5e0b9be9d824ce4a6d03ab69cde5cdaf497935c398f3894e28e23ab9bc` |
| 84 | `def` | [proj](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/proj.md) | 636 | `declaration-track:abefe2bdf1278432971b92b667d50a81967c652219ae030503ec2cc9e344efbc` |
| 85 | `def` | [TotalSpace](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/totalspace.md) | 642 | `declaration-track:61e96dd830c8d147846267603573c2eb64b2aba37bdcaab2012eb0854e264af9` |
| 86 | `def` | [trivChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivchange.md) | 646 | `declaration-track:e3a0a933961bbe70e2fba50edeaeed7bb53b03cbad5dc72b03c8ca86b17b7ff4` |
| 87 | `theorem` | [mem_trivChange_source](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-trivchange-source.md) | 650 | `result-track:d926c27a078183ad2ccdf370db37301ecdac75c0a03aa38e6deafc95a24af71f` |
| 88 | `instance` | [toTopologicalSpace](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/totopologicalspace.md) | 656 | `declaration-track:49b07a3d18c11e813a3e99613fe74a78b12fd49c0005f0bb016d7526a93d3f7c` |
| 89 | `theorem` | [coe_coordChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coe-coordchange.md) | 662 | `result-track:0c770c9441bb5d0d6a167e146cb6225fdbbba8bba931d878166c1cf0b47cf77c` |
| 90 | `def` | [localTriv](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv.md) | 667 | `declaration-track:902ca4ddca636eaf212e6e0ad12fab792d0451f80253111cd2c2f2011cdb6384` |
| 91 | `theorem` | [localTriv_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-apply.md) | 671 | `result-track:fa91918a494f4910a6bbd02b97d01c5dd61d58031ab019dd148def8cac531b8d` |
| 92 | `instance` | [localTriv.isLinear](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-islinear.md) | 677 | `declaration-track:7113bc5c382097c440652c3e7906b32439b430374a3a251714b66731bc1f3151` |
| 93 | `theorem` | [mem_localTriv_source](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-localtriv-source.md) | 685 | `result-track:734685c44af2cee577a4dab14cafdcb7ba618ccb9da09a288cfa7e72ccc47171` |
| 94 | `theorem` | [baseSet_at](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/baseset-at.md) | 689 | `result-track:caab46b9a04ada8adf300a416d647b6a9c5791ec6ccb841dd85b75a4a064bbe9` |
| 95 | `theorem` | [mem_localTriv_target](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-localtriv-target.md) | 693 | `result-track:1cd7178431e22be53871463b68db4b080fbe0418b0dcc380d4feeafbe4e2accf` |
| 96 | `theorem` | [localTriv_symm_fst](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-symm-fst.md) | 698 | `result-track:6c08dd67d9ca76fed750c6c0f7e8628cf70fc4a8ed34ea02020537f100ae4c3c` |
| 97 | `theorem` | [localTriv_symm_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-symm-apply.md) | 704 | `result-track:7bb8b657976599a9ec9a33d0f55ddf549145d4cdc3bd668e42b73ccbb948a873` |
| 98 | `theorem` | [localTriv_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-coordchange-eq.md) | 709 | `result-track:b658cb222e14467517740d535ed4e7a639e7b5366a1567bde0dc24e976c8f7a5` |
| 99 | `def` | [localTrivAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtrivat.md) | 717 | `declaration-track:4664c6b08fe2e0134f0d25a1037e2aaf3225edf46125f16ba91222a4bc1de5a9` |
| 100 | `theorem` | [localTrivAt_def](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtrivat-def.md) | 721 | `result-track:5b491239ef6adc1d770851f5edb241dea744b92ec75fde7de1d35c16c087a37b` |
| 101 | `theorem` | [mem_source_at](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-source-at.md) | 725 | `result-track:78d735c90d32c08caade179aa40323e1153b14c0452f8f0882fb1cd55c9de0d8` |
| 102 | `theorem` | [localTrivAt_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtrivat-apply.md) | 730 | `result-track:72823229cfea7ef6aa2251d941ab3dbdb83500fdeb49637f49afd0b49d08d682` |
| 103 | `theorem` | [localTrivAt_apply_mk](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtrivat-apply-mk.md) | 734 | `result-track:f300b13c2ea8609d9528d05ea1ab04a8a8b468077a9c35366a819d268d0819e9` |
| 104 | `theorem` | [mem_localTrivAt_baseSet](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-localtrivat-baseset.md) | 738 | `result-track:2d235e103bed0c1e2cd745c188b877891f06dc4eedc50a158686177fdf904e88` |
| 105 | `instance` | [fiberBundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/fiberbundle.md) | 741 | `declaration-track:6a9138b6e70295bf6169463019b4809a020c2a235625eeaeb2594c3f68663208` |
| 106 | `lemma` | [trivializationAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivializationat.md) | 744 | `result-track:2858a4504060836cfaf08295e505daf6d4c5307bdd2bdb4310160c984372dd0c` |
| 107 | `instance` | [vectorBundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorbundle-source-edition-2.md) | 746 | `declaration-track:e10bdc69f954db13bb6ecbfe1df622d4286f7db8a2243c3e5da2c8e9ba305338` |
| 108 | `theorem` | [continuous_proj](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuous-proj.md) | 758 | `result-track:2ff54acdf20670fdae4f5f311257f49d891f2b998ac771628cdb115130d4fa89` |
| 109 | `theorem` | [isOpenMap_proj](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/isopenmap-proj.md) | 762 | `result-track:3f450f9b7920e650f3fbdf1ffd8ee4fd89bcb80e96264885ac88da058f53ca45` |
| 110 | `theorem` | [localTriv_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-continuouslinearmapat.md) | 768 | `result-track:f16769b1de716b559f4e6d787b9dbd1c4ea07f4d1ec16dc0222ad2e0ec74112e` |
| 111 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivializationat-continuouslinearmapat.md) | 775 | `result-track:944d437184345e1e96ed24fe122ce2bb4e5c787136b89377d749998bf7218f8f` |
| 112 | `theorem` | [localTriv_symmL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/localtriv-symml.md) | 782 | `result-track:87e72b87808a011b87dfb6a6c9924ae8702c8062f7bec9b899ea433cf5f70ac2` |
| 113 | `theorem` | [trivializationAt_symmL](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivializationat-symml.md) | 789 | `result-track:def16e2361a084261091984d7caeee4e68545a0666d3528e51fbb9454ab8abd9` |
| 114 | `theorem` | [trivializationAt_coordChange_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivializationat-coordchange-eq.md) | 794 | `result-track:a1413a3add61c09fd6262d3f5d8d99bfec6c68c60c78143b22acec2b96acccb8` |
| 115 | `structure` | [VectorPrebundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/vectorprebundle.md) | 826 | `declaration-track:2d83616f3762bfd9e5d204e757afd19950a7956bf4e37c2fef125434abe21add` |
| 116 | `def` | [coordChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchange.md) | 843 | `declaration-track:e3973432e4ee58f39bded38fd258b9c9c755d4ec28c4d58509365794410584e8` |
| 117 | `theorem` | [continuousOn_coordChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuouson-coordchange.md) | 847 | `result-track:e7470a197c76c1e313d64f6644f21aaca2f2454e1d2e323695a0f9fe5d63813b` |
| 118 | `theorem` | [coordChange_apply](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/coordchange-apply.md) | 852 | `result-track:95a51cd972321810b5ec8ddc7341179580319a6fc6b57dcc01c82559e50c9e78` |
| 119 | `theorem` | [mk_coordChange](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mk-coordchange.md) | 858 | `result-track:b7e4104f9727ad3fbd142ad508167ca2d81346571cf526338ce0829a42eed891` |
| 120 | `def` | [toFiberPrebundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/tofiberprebundle.md) | 869 | `declaration-track:6510263ec4e186c936ba291e4ced0448c89bc67e76901df023032e238852951d` |
| 121 | `def` | [totalSpaceTopology](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/totalspacetopology.md) | 884 | `declaration-track:8b4b61ce074ffca2c238321b7bb542ea2d2e22d735e595f7fadb1ce94ce8076f` |
| 122 | `def` | [trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/trivializationofmempretrivializationatlas.md) | 889 | `declaration-track:631315d1e3817cd047140316ba525cff9c3c817b25c23b870ab90d3048ee48fd` |
| 123 | `theorem` | [linear_trivializationOfMemPretrivializationAtlas](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/linear-trivializationofmempretrivializationatlas.md) | 894 | `result-track:935bcef5245584a0e287b1c08a49b21320d7e2e3818b73d393f741aa8082c403` |
| 124 | `theorem` | [mem_trivialization_at_source](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/mem-trivialization-at-source.md) | 903 | `result-track:67d90997e164ff51d50b747c6c417e8ee73a75f5dced37a26ac51164148889e9` |
| 125 | `theorem` | [totalSpaceMk_preimage_source](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/totalspacemk-preimage-source.md) | 908 | `result-track:3bf14ebc4aa9c453524607c9deb625b38ba64afbaf1ba6476c8eba96d06538b4` |
| 126 | `theorem` | [continuous_totalSpaceMk](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/continuous-totalspacemk.md) | 913 | `result-track:9ef18c4e9069eaac2e64a581cb7b274cdfe88cf6487b74fcb292961a2fb545ed` |
| 127 | `def` | [toFiberBundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/tofiberbundle.md) | 920 | `declaration-track:77445ae49e0e0e4f6c51b129e30eb50c2718f0715eedd3a4c4842d54d2ebd1f0` |
| 128 | `theorem` | [toVectorBundle](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/tovectorbundle.md) | 930 | `result-track:0734a4edad70bcf7db846a3283ee81ef15ef26eb7e94a6082ddb00f7fd03db8c` |
| 129 | `def` | [inCoordinates](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/incoordinates.md) | 978 | `declaration-track:640bb2bb930e07c2eef753d4937bad9f6415058a7f3593e384aa4ce5de75b698` |
| 130 | `theorem` | [inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/incoordinates-eq.md) | 985 | `result-track:e6aab93ff27f84a9e4f12c0f68646fba44ed7090cf4106e230f081c5669740d8` |
| 131 | `theorem` | [_root_.VectorBundleCore.inCoordinates_eq](../../../../GeneralTopology/VectorBundleBasicPublic.lean/declarations/root-vectorbundlecore-incoordinates-eq.md) | 997 | `result-track:aec3b27942ee279cefda678e2d4753e23b9746bdc764727470362e3ca4a807e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f886fab8ce5b9104bfdc99ce2082dacf0404238fb9324fae5c7dc2be1d29f68a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant6686f7f37c32b6fcd115227430717b8dc3539e1e72ec973354418164979a1226.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
