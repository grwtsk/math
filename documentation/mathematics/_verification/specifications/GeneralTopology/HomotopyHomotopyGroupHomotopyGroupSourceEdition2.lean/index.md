# Verification target: Homotopy Homotopy Group Homotopy Group Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ddbdb339b960500de4981a24e9c3fe1156b294d",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/index.md) · [Full source](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ddbdb339b960500de4981a24e9c3fe1156b294d`.

Source path: `GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.FundamentalGroupoid.FundamentalGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.EckmannHilton` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.TransferInstance` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Ext` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boundary](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/boundary.md) | 56 | `declaration-track:45f9f638ec116d9a78f20772e2925c342e1ae81d93b9addaa3d61a886378200e` |
| 2 | `def` | [splitAt](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/splitat.md) | 65 | `declaration-track:e097655e7b6545f8bc48a7b64324a8f4ffd0fcfd6576839c3a166da51dc68f14` |
| 3 | `def` | [insertAt](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/insertat.md) | 72 | `declaration-track:8c01c32964caf6e4f86543e6e5c774a440cef5823dd7ccb9e39f276119d8a42c` |
| 4 | `theorem` | [insertAt_boundary](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/insertat-boundary.md) | 76 | `result-track:e4544544fe9bb7ad2470b8a191194e75f0e03370a1c99ca9a256bcd8b8e50254` |
| 5 | `def` | [LoopSpace](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/loopspace.md) | 89 | `declaration-track:385ce1002b3470047b79636dc7271cdfef6eeb62be2f35c2ed1b8c21bb4eed5c` |
| 6 | `instance` | [LoopSpace.inhabited](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/loopspace-inhabited.md) | 96 | `declaration-track:9b2bc3b493d7593d326a751e96d7eaab7468b13607d6e2eaf5013c3383e2c10a` |
| 7 | `def` | [GenLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/genloop.md) | 103 | `declaration-track:84d6281a8d8b1d4ac1b9739480fa4a8522db4ee601f0f7d519666873ea5e8c9d` |
| 8 | `instance` | [funLike](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/funlike.md) | 115 | `declaration-track:ab0c6f8693e6eb32272e4be9523a1bae83c60773a95ca362af3cba0e09d48e7a` |
| 9 | `theorem` | [ext](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/ext.md) | 121 | `result-track:9f5529d825576673a330fc1c963d2f979f907c760a35b40760b6c980454f8a42` |
| 10 | `theorem` | [mk_apply](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/mk-apply.md) | 126 | `result-track:1221b3feb145318c538ea3e4a63c6d143d56c4bfc3a12fa5d5e10e5035b88d99` |
| 11 | `def` | [copy](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/copy.md) | 132 | `declaration-track:7ccb7f6006438c5f1b211d12104a7f9b1bc81e4c0120b093a4f14a750036bc58` |
| 12 | `theorem` | [coe_copy](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/coe-copy.md) | 138 | `result-track:9b699844b6e4d33a18cb0128ef1dec12f3af6163ef625b699f96c6cbe9ae9c4b` |
| 13 | `theorem` | [copy_eq](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/copy-eq.md) | 142 | `result-track:76ed188bce9cd31327f6d8b313541c6c5c72536bf8728445daaccc58094429bb` |
| 14 | `theorem` | [boundary](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/boundary-source-edition-2.md) | 147 | `result-track:b0b9084513f4badb1bde9323c845cd2ce35f889e0f2916b51356bdf66cc33baa` |
| 15 | `def` | [const](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/const.md) | 152 | `declaration-track:ce879d20af2dfaddc6216b29b71dea80d0aba2b7313bc00cc4f397344619a8e0` |
| 16 | `theorem` | [const_apply](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/const-apply.md) | 157 | `result-track:7d5a76e597740c77d041673e5f87da1b0dae522ffafdb1955a5034dc1172f713` |
| 17 | `instance` | [inhabited](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/inhabited.md) | 161 | `declaration-track:c9aa8d18b4954ada50f46a7630eda58830996624a906cd42fce60aecceee0b94` |
| 18 | `def` | [Homotopic](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopic.md) | 165 | `declaration-track:c5488b4772e57d0b15c7fa11ac3bccd4cce6cca3b0e89ee6c78833d00078d9cf` |
| 19 | `theorem` | [refl](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/refl.md) | 174 | `result-track:ad8163008d4d9132c202bcf7c19c8e3716ce9b25d408afe793ce7f991c1b8f1d` |
| 20 | `theorem` | [symm](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/symm.md) | 179 | `result-track:125bee13e725e95c2819fb3655f2e0a25b5889b053d3635da0c515f124f95f55` |
| 21 | `theorem` | [trans](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/trans.md) | 184 | `result-track:d85e6cc7b287a74e8dfdaa4256e51c73ea2b778066caacb1130cf4ab41bc0908` |
| 22 | `theorem` | [equiv](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/equiv.md) | 188 | `result-track:f027e8247fbc8f39a0d1f5725dc8f5f8367f2325ee24083d701f3557be6d7ce4` |
| 23 | `instance` | [setoid](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/setoid.md) | 192 | `declaration-track:b75622afa27bc8a8bfe4f349c6dd7bd6f12fe2d4faa593579718173b5d57827e` |
| 24 | `def` | [toLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/toloop.md) | 204 | `declaration-track:487d4367ba02e175b05808b953f35464a7d5f7facc5905ab30dfcf73d11c005f` |
| 25 | `theorem` | [continuous_toLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/continuous-toloop.md) | 214 | `result-track:71d6d3c2c8f3abbbed56a442c7eb7ea2b9884dc85b86361781f9a1f995a6374b` |
| 26 | `def` | [fromLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/fromloop.md) | 227 | `declaration-track:8867693bd584d5a890fc1e89bf9d7ffe9d42f43c9715f3211b3d075fabd36311` |
| 27 | `theorem` | [continuous_fromLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/continuous-fromloop.md) | 240 | `result-track:f926518b1cbdc15c24242f4fff18080a807054487f0e2f257a60cf908a855e1b` |
| 28 | `theorem` | [to_from](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/to-from.md) | 247 | `result-track:cba28bd5b318d022d63571acf55166e078773ecdfe9b0740a8aeebba1e4e8e8b` |
| 29 | `def` | [loopHomeo](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/loophomeo.md) | 257 | `declaration-track:f4e5916c0e3e3ef919800f55cbfc5b68968120ec1485a7784797d1c8c5e824cd` |
| 30 | `theorem` | [toLoop_apply](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/toloop-apply.md) | 267 | `result-track:7854ea85b22af4ceccee30609e9ebc6f8808d2cdedfbf817714ef04538580ebc` |
| 31 | `theorem` | [fromLoop_apply](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/fromloop-apply.md) | 272 | `result-track:871af9c7284cae1b7022303c287c165bad77efc62723998360a585f32d148df5` |
| 32 | `def` | [cCompInsert](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/ccompinsert.md) | 279 | `declaration-track:96957cf22dffe66b9851c19261a4d24de2a8fb731d81f2ac49e575ed50c2c3e0` |
| 33 | `def` | [homotopyTo](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopyto.md) | 286 | `declaration-track:c62fd84e68d678e92eff2f90d5fb9bbcddf6904d622db599f1fe46955b23eac7` |
| 34 | `theorem` | [homotopyTo_apply](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopyto-apply.md) | 293 | `result-track:1065c7f274f512dd12483f1d48ec7826ea0d7e7287a255d25f06351ec65eb3eb` |
| 35 | `theorem` | [homotopicTo](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopicto.md) | 299 | `result-track:05933dc036a7a50398fb215725c98dac837b3e0151d7842341bdaf77b77aedd7` |
| 36 | `def` | [homotopyFrom](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopyfrom.md) | 317 | `declaration-track:b13bc07629b85799430073b18b12615eca4136099e7d0a5413471df5e62fd600` |
| 37 | `theorem` | [homotopicFrom](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopicfrom.md) | 326 | `result-track:f22656da01e28ec5f244f6510f67808b10a906cdb3a5e1634484bb85db0f5347` |
| 38 | `def` | [transAt](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/transat.md) | 352 | `declaration-track:8d87219db0e6bfe7da668002ef0043c9aa2e247c09535a3bf080e940be59387f` |
| 39 | `def` | [symmAt](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/symmat.md) | 367 | `declaration-track:77bec1c47d324f1443fd70a3c344da4e0cbabf0f65e50bed97feafe96c9f26e0` |
| 40 | `theorem` | [transAt_distrib](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/transat-distrib.md) | 372 | `result-track:c7cd8c2b76b80fd15bd8e0fb8887b02c94513a5d98f96675f765c2c6ca70efe6` |
| 41 | `theorem` | [fromLoop_trans_toLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/fromloop-trans-toloop.md) | 380 | `result-track:384506088a66d87e56ec9311591d9def3e32e67e1e86022e6e09383e0632e280` |
| 42 | `theorem` | [fromLoop_symm_toLoop](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/fromloop-symm-toloop.md) | 385 | `result-track:f4f10e840e4793d6fb3db4e869f47d827d8654c2b401572170733ba828173435` |
| 43 | `def` | [HomotopyGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroup.md) | 395 | `declaration-track:4470bc496426503ba03ae5c6fb4cc759ce2063b56ea13b6bd21f4f5a979e9d9a` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/instance.md) | 400 | `declaration-track:f466fe5425acd7c1691ce7694c04e5af15539326d45a77cc9b6b74fdd719cc86` |
| 45 | `def` | [homotopyGroupEquivFundamentalGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroupequivfundamentalgroup.md) | 409 | `declaration-track:131c8a2288f5180bc97eb493dee4188d9d5e6ed04e8a02ad2bbc1977058e9445` |
| 46 | `def` | [HomotopyGroup.Pi](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroup-pi.md) | 418 | `declaration-track:0825a17527748f68e96e8e51873a59059c29c144ccfb1a8ca310d7e11483b3a1` |
| 47 | `def` | [genLoopHomeoOfIsEmpty](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/genloophomeoofisempty.md) | 426 | `declaration-track:74f96ea2caab506b6df80b6aa1b04cc97f92d0ae574de8ff9264b63dbca6673f` |
| 48 | `def` | [homotopyGroupEquivZerothHomotopyOfIsEmpty](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroupequivzerothhomotopyofisempty.md) | 437 | `declaration-track:d39bf36e3b145a9d394d8e7ef0bf5eb6ec0bdc95a9fa3187dd80c3ebc271295a` |
| 49 | `def` | [HomotopyGroup.pi0EquivZerothHomotopy](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroup-pi0equivzerothhomotopy.md) | 455 | `declaration-track:229f3a8bd2928dc932ecb0113650bd18764401ec1c2bf2e7aaf6cf9d13fafa06` |
| 50 | `def` | [genLoopEquivOfUnique](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/genloopequivofunique.md) | 460 | `declaration-track:989a3efd62b89fa127faaf17fea5d30fe55046bd15a5ed510eb7e4c3a1cd0264` |
| 51 | `def` | [homotopyGroupEquivFundamentalGroupOfUnique](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroupequivfundamentalgroupofunique.md) | 481 | `declaration-track:72c224079e72c4691ebf49c7ff900f5de5345edc75cdbe396dd4f5be04a4ef61` |
| 52 | `def` | [HomotopyGroup.pi1EquivFundamentalGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/homotopygroup-pi1equivfundamentalgroup.md) | 503 | `declaration-track:251a6b7e486bec50ba8f01f45ff3e164dcf205963dc51735a229dcf5b4307f23` |
| 53 | `instance` | [group](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/group.md) | 510 | `declaration-track:2684209d5be41d91c9a708f4f8fcb38bfaaf2ac34f3d821f3492ba7dade329dc` |
| 54 | `def` | [auxGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/auxgroup.md) | 518 | `declaration-track:7d54c672f2e82a6214e3118fbe5c8216e1ac399a9ff234fd2bddf850057cdd8f` |
| 55 | `theorem` | [isUnital_auxGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/isunital-auxgroup.md) | 522 | `result-track:da73f5caa6d52d87748b7fd5edf82d1b43c690542726c46f3264c8aeb93cc970` |
| 56 | `theorem` | [auxGroup_indep](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/auxgroup-indep.md) | 527 | `result-track:f62d505a01ddf57353b445e2cd872b3dac505fec2c69aede8d22cdb1ffc72b1a` |
| 57 | `theorem` | [transAt_indep](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/transat-indep.md) | 537 | `result-track:c22501feceadff61c01b62e3788a89e83967a303df62e4394435655c7ad9461d` |
| 58 | `theorem` | [symmAt_indep](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/symmat-indep.md) | 544 | `result-track:994c0b2efb3117f37ddb643a1b1a710b12becafcbb10921aac0e240f3a261771` |
| 59 | `theorem` | [one_def](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/one-def.md) | 552 | `result-track:b406675eb478cbb4a9883f73736431ed0b35bb157b2226ad65ac23a9dd35eaae` |
| 60 | `theorem` | [mul_spec](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/mul-spec.md) | 557 | `result-track:aff87fddac2f81f35a5e4ec0906d4c4e94be6bff3b549359df7fa34ba27dcb65` |
| 61 | `theorem` | [inv_spec](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/inv-spec.md) | 564 | `result-track:c700d6a022b03bd946269dba066523d7d978107322493e5c3f7f42ae3140f03c` |
| 62 | `instance` | [commGroup](../../../../GeneralTopology/HomotopyHomotopyGroupHomotopyGroupSourceEdition2.lean/declarations/commgroup.md) | 570 | `declaration-track:75647e03dad939fe2aac4198d7b0e5673fc72cf146ad43b7c2bb152f5e7c7600` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d98194b988a4425e2344639e83174cc8fe552dc61fa3cf843d18ff65301ff33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean","GRWTSK/_verification/specifications/Topology/HomotopyGroup/Variantc4f033c178f8b6f4c86f7bb92782b961c1ae075d6ede4d7ba91c1ff7eba2cd69.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
