# Verification target: Maps Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdcac8f4fe54684f8d660b4cb435d4d125082abd",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdcac8f4fe54684f8d660b4cb435d4d125082abd`.

Source path: `GRWTSK/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean.json)

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
| 1 | `theorem` | [eq_of_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/eq-of-eq.md) | 52 | `result-track:a7bdc0063044269f0f1edbf6f6a112267ad5532c146b9dddbd3fff751243d880` |
| 2 | `theorem` | [comp_eq_of_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/comp-eq-of-eq.md) | 65 | `result-track:38bb740da9acdb2a9b01b31e3aa2a6aa1efac5755db033dbbfcebf090438b23c` |
| 3 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift.md) | 80 | `declaration-track:7a1b748d39fe77a8f80cfdd098d1daf8100a597fe0d184ef3e087b6807b48a42` |
| 4 | `lemma` | [lift_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-apply.md) | 92 | `result-track:c84661de7ca01ecf6e9777879d0b1f483b12e560a05350dbee1c6dd21b1680ea` |
| 5 | `theorem` | [lift_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-mk.md) | 103 | `result-track:60c01844a891a81294591d2c39262912b0a702272643521a38001b1666ee3062` |
| 6 | `theorem` | [lift_localizationMap_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-localizationmap-mk.md) | 116 | `result-track:c81afd828ee7c2c1f78954d1c7393a7bce531e870022beaa2b6df323b83a9ef6` |
| 7 | `theorem` | [lift_spec](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-spec.md) | 128 | `result-track:6652e99acf7b08a6c3db8d69c8c6a6030f2e41bf12d94391e071d2e7d6c3f4c6` |
| 8 | `theorem` | [lift_spec_mul](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-spec-mul.md) | 140 | `result-track:265f8b7a787e05a3b6ccb1da703386bcbc101d197e3d75b412da937dc4580c46` |
| 9 | `theorem` | [lift_mk'_spec](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-mk-spec.md) | 144 | `result-track:cba2598c1995a7277af20554eb2d7553860b3d86684d11dfbfd25fb9fc126371` |
| 10 | `theorem` | [lift_mul_right](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-mul-right.md) | 155 | `result-track:d729aea2238da21b54ccbce97a8b8a489b0b529673bf2205f01dff6a29a8ed06` |
| 11 | `theorem` | [lift_mul_left](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-mul-left.md) | 165 | `result-track:08e7e6f419b8c3a2ffda6ee63deaa130f1d644a22dd9a85b6a5b14c1ad128dde` |
| 12 | `theorem` | [lift_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-eq.md) | 169 | `result-track:0f76e143b252ac6333ed0371041e04634a7879806b0a862911faac729d42797a` |
| 13 | `theorem` | [lift_eq_iff](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-eq-iff.md) | 173 | `result-track:7ff05f1da89564f28fbe7b345dc5f4a020da89f1f035a26d6fb33fb27a8424e4` |
| 14 | `theorem` | [lift_comp](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-comp.md) | 178 | `result-track:2e9c42a1e61aaa89743b4b0fbb12b166168d7570381923a384844d8777871e1f` |
| 15 | `theorem` | [lift_of_comp](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-of-comp.md) | 181 | `result-track:b9ce93617209684ad840eb94cb51a87b05df4df0ffcb752452f061ee94c39988` |
| 16 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-unique.md) | 185 | `result-track:878ad0fabb51cfcd6c30c0859614e8dedd0b5a09146d075cd4742d1ebab1af4b` |
| 17 | `theorem` | [lift_id](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-id.md) | 192 | `result-track:76200ac599bce200913fe3cbff8380e4ab2c738ab077588eddaf6ceee0d88532` |
| 18 | `theorem` | [lift_comp_lift](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-comp-lift.md) | 204 | `result-track:e0fb0e8fe39e3a108be2a335f50fa0ca350d29f0dd8a4fa5900a0f72c15905c0` |
| 19 | `theorem` | [lift_comp_lift_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-comp-lift-eq.md) | 213 | `result-track:d87c833ee5f5c0e41e212bdcbec7b72e889916b70b064638926056ed49184c25` |
| 20 | `theorem` | [lift_left_inverse](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-left-inverse.md) | 223 | `result-track:a284754c91d88457ffff7d61b44fa88a2c80f71c44ee32b0abb27fddd4a22b61` |
| 21 | `theorem` | [lift_surjective_iff](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-surjective-iff.md) | 228 | `result-track:979715703f7c5850645f8183289f4269c50dbeb7479bfc9fe7b5360d8f8fda71` |
| 22 | `theorem` | [lift_injective_iff](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/lift-injective-iff.md) | 243 | `result-track:86d9f02476398fec1d7c5249b36ad04aa42c7a2ab63b75575751962b19b6243f` |
| 23 | `def` | [map](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map.md) | 272 | `declaration-track:28942a6eeb201c7e65fd85f8bcdbc0245a91b13caea0d6094c36816beb592a8c` |
| 24 | `theorem` | [map_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-eq.md) | 278 | `result-track:6ab07fc439c46c0937c05fa867db89b4f490b26611b35efeec081a3879b7cef3` |
| 25 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-comp.md) | 282 | `result-track:b9b1c2300b597514351bd899046c866dcdc34adfc8ce4b4dac7ec8483d3c6208` |
| 26 | `theorem` | [map_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-mk.md) | 286 | `result-track:2e58701599364edb424f96d590c99cf240fd6b886ed0de07674e298b0b2502fe` |
| 27 | `theorem` | [map_spec](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-spec.md) | 301 | `result-track:010645d109a9bb1533219af0ad14504a361ea593c8e228d8ead9abeb71829182` |
| 28 | `theorem` | [map_mul_right](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-mul-right.md) | 313 | `result-track:a0b8bce19988f7b9a8963377881b150f38038b972c67b60f97dd151a0c0cbd79` |
| 29 | `theorem` | [map_mul_left](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-mul-left.md) | 325 | `result-track:8aeaa40453df00c3ef4300d14256348ce3916019e7a688dff94555863326be7a` |
| 30 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-id.md) | 329 | `result-track:d6e92877da35d1a2207e84c9ceae4d73366294905bdfa802c38b430697f231ea` |
| 31 | `theorem` | [map_comp_map](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-comp-map.md) | 337 | `result-track:8738b66fe5a474a6adba16522fa77f0b3f5a2ada6eb15ebe7253cc29fc295bd0` |
| 32 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-map.md) | 354 | `result-track:bea431ed723c03af62119b6798ea605030de2d1132e71684eb9a8972d01e0c6d` |
| 33 | `theorem` | [map_injective_of_surjOn_or_injective](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-injective-of-surjon-or-injective.md) | 361 | `result-track:22825833734fa3962b658dd808db597f04dd96d70ab8cc90356c497fde58aa61` |
| 34 | `theorem` | [map_surjective_of_surjOn](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-surjective-of-surjon.md) | 377 | `result-track:f972115f0ad31a5a2c137c79833626b54676657501b42e4f4c540751b682d531` |
| 35 | `theorem` | [map_injective_of_injective](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-injective-of-injective.md) | 392 | `result-track:f5f743b864180ddcc0ffc3d2d60aa9d286c31f5bd734abfc048d9736a52de906` |
| 36 | `theorem` | [map_surjective_of_surjective](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/map-surjective-of-surjective.md) | 403 | `result-track:c82e9c751d096fea61f700d18d9c5eb95b619329178f12164748400a11e70de8` |
| 37 | `def` | [mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations.md) | 423 | `declaration-track:beba6107566f08dc7cd5c8cf820ba505e47643941ca9efbd00e7ece6ddfedd05` |
| 38 | `theorem` | [mulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-apply.md) | 431 | `result-track:c6cd4963da827d10e44776c94eedbb6a06c39645b69d433f9c320c2ad55f1edc` |
| 39 | `theorem` | [mulEquivOfLocalizations_symm_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-symm-apply.md) | 435 | `result-track:4fa33e9e4e026858566211fb2dccea1fc7b2469297425cdf5a05b90cc5f845e9` |
| 40 | `theorem` | [mulEquivOfLocalizations_symm_eq_mulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-symm-eq-mulequivoflocalizations.md) | 439 | `result-track:ef056954106ba023b913d0caa14a113a8c6c4a618e8e7451413aa1798a038c2e` |
| 41 | `def` | [ofMulEquivOfLocalizations](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations.md) | 447 | `declaration-track:5e5285fe3d539bca3ec6310477b677fe20c3be90869da304d94ee5edc83f4279` |
| 42 | `theorem` | [ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations-apply.md) | 456 | `result-track:5d8a677bbb764fa49d862f252aaadb6a60695166e6344465dfbd9f72c7548592` |
| 43 | `theorem` | [ofMulEquivOfLocalizations_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations-eq.md) | 460 | `result-track:7837bd6a75b98cdd1dc24b0393331a4877d0e19611dbfd53e035997eb931d354` |
| 44 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/symm-comp-ofmulequivoflocalizations-apply-source-edition-2.md) | 464 | `result-track:e267aa87dd6ee50bc0f93a63481ba622e0198fde580b78ba32b3fc1c1e027ebb` |
| 45 | `theorem` | [symm_comp_ofMulEquivOfLocalizations_apply'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/symm-comp-ofmulequivoflocalizations-apply.md) | 468 | `result-track:8effd9c555450f635ea61e61f419d774ca77db3f72aec5d8da15be7613e386cc` |
| 46 | `theorem` | [ofMulEquivOfLocalizations_eq_iff_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations-eq-iff-eq.md) | 472 | `result-track:88d7d0a6e88a949b5cdeea4890b4beb0d4aa9af7b1293045cfb3804731a511cc` |
| 47 | `theorem` | [mulEquivOfLocalizations_right_inv](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-right-inv.md) | 477 | `result-track:ddd3dcd967063e5b3d7fa17e4261bcc54080492bbc128abab99643fac1f42136` |
| 48 | `theorem` | [mulEquivOfLocalizations_right_inv_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-right-inv-apply.md) | 482 | `result-track:a543a39773897f3b82372196b314354798a3caf5d70f4772e08ab674ad50b85d` |
| 49 | `theorem` | [mulEquivOfLocalizations_left_inv](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-left-inv.md) | 486 | `result-track:866e87255d45c8c826ba3b873ddc67e0e3f9866024ac2ff176b844bf71f184ea` |
| 50 | `theorem` | [mulEquivOfLocalizations_left_inv_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivoflocalizations-left-inv-apply.md) | 491 | `result-track:16c0580b485145c57be758936b8feb12ebde82473e6fbfd58836bd26a82e383b` |
| 51 | `theorem` | [ofMulEquivOfLocalizations_id](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations-id.md) | 495 | `result-track:6854657b6c14114d31c2a1bddbc6d8e1ef8339009577dec2e053854ecc20aef5` |
| 52 | `theorem` | [ofMulEquivOfLocalizations_comp](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivoflocalizations-comp.md) | 499 | `result-track:0540f38a631f0ea26334cf1b7ae7c9c4a689abc05bccf78c3b7b6a0cbafeef21` |
| 53 | `def` | [ofMulEquivOfDom](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom.md) | 511 | `declaration-track:d790aadcbdf1e57415a3e94582e1df7ef77644b2adb6c8690419d2e0744abbc0` |
| 54 | `theorem` | [ofMulEquivOfDom_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom-apply.md) | 535 | `result-track:309f038b138b25b76a556290890a11889a1026e51e55d8937694bf14f5085ad8` |
| 55 | `theorem` | [ofMulEquivOfDom_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom-eq.md) | 539 | `result-track:92a372460cada8c49afad8a96ae776af1b1699c881fc00293b31357da9a73262` |
| 56 | `theorem` | [ofMulEquivOfDom_comp_symm](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom-comp-symm.md) | 543 | `result-track:4b6a31215c7de394457d639d329ed0edfcc80303a1430a776a8d899999ea5d29` |
| 57 | `theorem` | [ofMulEquivOfDom_comp](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom-comp.md) | 548 | `result-track:d03942677264e489220ec616fe1125130a1a82d2d69af939c7643d823f167ff9` |
| 58 | `theorem` | [ofMulEquivOfDom_id](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/ofmulequivofdom-id.md) | 553 | `result-track:72aec8f3901c639793974b16e1a3b0c5c5aa9316841082130ee066f6fdd4fc58` |
| 59 | `def` | [mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofmulequiv.md) | 564 | `declaration-track:29849f33fcbd36bc57206a5d4e754965f8e0f8c47d3a709f05502dbe2f73797c` |
| 60 | `theorem` | [mulEquivOfMulEquiv_eq_map_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofmulequiv-eq-map-apply.md) | 569 | `result-track:967cc4f99531dddcccde10344837e1232f3bf27348570d8cc59fdcc1bc153924` |
| 61 | `theorem` | [mulEquivOfMulEquiv_eq_map](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofmulequiv-eq-map.md) | 575 | `result-track:65fc82ef389737e5b9d6d8812d166ec7f6eb8c4ba58abe478f15b039bc8e92ee` |
| 62 | `theorem` | [mulEquivOfMulEquiv_eq](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofmulequiv-eq.md) | 581 | `result-track:146968f8b70da92a8333a1b5cb54b62e36eff9778172404b11f4ac1d2bd953e3` |
| 63 | `theorem` | [mulEquivOfMulEquiv_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofmulequiv-mk.md) | 587 | `result-track:c48510c362c38ccf7cc2934dc2a9b38cc2c4509ef931e83dc2eefeaea561b6e3` |
| 64 | `theorem` | [of_mulEquivOfMulEquiv_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/of-mulequivofmulequiv-apply.md) | 593 | `result-track:031b3de3dca87bc6e02bba8dc9ce491a9f6c4baa2ad4c70dc219063d5b56a31b` |
| 65 | `theorem` | [of_mulEquivOfMulEquiv](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/of-mulequivofmulequiv.md) | 599 | `result-track:3e57faf7364af86aeb2769f9482d9235ea79584052d40c7aa1e66fd42fa388bd` |
| 66 | `def` | [mulEquivOfQuotient](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient.md) | 617 | `declaration-track:0ceb7f238f29628687e7a2bfdf365b29fde7c8988a5b1c824e1267b04097bb56` |
| 67 | `theorem` | [mulEquivOfQuotient_apply](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-apply.md) | 623 | `result-track:75b7a212d62b4740dc651e5fdfa6df721082ae57986add20b48f459a26e5bdc2` |
| 68 | `theorem` | [mulEquivOfQuotient_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-mk.md) | 627 | `result-track:17b218259cfc58ebc1fd9f5b4c2f9443139a4d243e89777c151aa7cc563c127c` |
| 69 | `theorem` | [mulEquivOfQuotient_mk](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-mk-source-edition-2.md) | 631 | `result-track:9d794c4232391767baab264f113dfb9fea7da63f230eca9a0ee73b853078429d` |
| 70 | `theorem` | [mulEquivOfQuotient_monoidOf](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-monoidof.md) | 635 | `result-track:caeac99a07c78ab7d0ea81a246c33830b90cd4b9d7ae6a4f9175bb3af1472d31` |
| 71 | `theorem` | [mulEquivOfQuotient_symm_mk'](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-symm-mk-source-edition-2.md) | 638 | `result-track:a061d808bfefa0d124e8a60989c8f094cb5755420536d31beecd65b296ffb579` |
| 72 | `theorem` | [mulEquivOfQuotient_symm_mk](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-symm-mk.md) | 643 | `result-track:1cb9b02b4b4768f4d1282d05a79e23f13ba659f50837ed2d975b12c956012553` |
| 73 | `theorem` | [mulEquivOfQuotient_symm_monoidOf](../../../../GroupTheoryAndGeneralizations/MapsPublic.lean/declarations/mulequivofquotient-symm-monoidof.md) | 647 | `result-track:7d1d8101df76685eca96bf3788aa20d8a7e7889916d19ef07195781394a1784e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d707d5a09020246f10c1fe3ca6aefc8b97268a59c23cfa9c7a72a536e404152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Maps/Variantcc9390a4031a3fd2a2e369556bc8524c21bd1f85dfd94c9e7bb631a3722bcfea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
