# Verification target: Presieve Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb07c06ae3668ccb5f1a32cf3bd053a9694a3e8c",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb07c06ae3668ccb5f1a32cf3bd053a9694a3e8c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean.json)

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
| 1 | `def` | [Presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/presieve.md) | 45 | `declaration-track:e57728033f8ed4ab1811e5cc897a83fe10101de0204e2642041992b162b401b8` |
| 2 | `lemma` | [top_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/top-apply.md) | 50 | `result-track:8f45d3d1cc7965c527d50bf0971722abb9f2142de37360b781f0404fe84bd257` |
| 3 | `lemma` | [bot_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bot-apply.md) | 54 | `result-track:f85a31182e48b6faca129b146a1ed1cf2c0f9cc1a1a5a288c5f3573e1f56cc86` |
| 4 | `abbrev` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/category.md) | 61 | `declaration-track:b23814859197b64294113b904303cb4f1c7869ffa031e2bfa761d8018e82cf2a` |
| 5 | `abbrev` | [categoryMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/categorymk.md) | 65 | `declaration-track:d734ef3dd316c43da28b009087501e5a3262ab5356fe91350a3076ddfac7f488` |
| 6 | `abbrev` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/diagram.md) | 71 | `declaration-track:bbcc74ead3bc8f602b9d4274f6985a7ac8dc2567d9f619f3f7afaa1aaa76e224` |
| 7 | `abbrev` | [cocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/cocone.md) | 76 | `declaration-track:cde857ff2159832871e7789588734074c3e7e020924a6faf4ea5b68a178a25ad` |
| 8 | `def` | [bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bind.md) | 83 | `declaration-track:2921dba974c242221438ef913ead95708c1e521e19699c12aa18493eb17d42c8` |
| 9 | `structure` | [BindStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bindstruct.md) | 88 | `declaration-track:e3003ab735f95935d6af0d1a6eebed31abadc92c9e9db943d83b56a25320a888` |
| 10 | `def` | [bind.bindStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bind-bindstruct.md) | 104 | `declaration-track:34c369fa6059d1c8bc1b841b656a377c3f8c54ad80b5ece569d723c697d5e053` |
| 11 | `lemma` | [BindStruct.bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bindstruct-bind.md) | 110 | `result-track:20f2d12ef388e79f3f33622931f2c37b4425faf9970f1202176c7f0c95a38fb0` |
| 12 | `theorem` | [bind_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bind-comp.md) | 115 | `result-track:f41f931099246e198c362e4ee49a9de81e8916a13a99ac9142edcbcf9838101b` |
| 13 | `inductive` | [singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/singleton.md) | 121 | `declaration-track:3c7cd7e57c6d2f1eeb553d8ef2843a96ef917d6fdb3e903c94bef50a1dd83c04` |
| 14 | `theorem` | [singleton_eq_iff_domain](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/singleton-eq-iff-domain.md) | 125 | `result-track:3bae6409507f83b1dbe40c00d7a8a4e1518d16bdf10080dceb00fe8dc4b885a5` |
| 15 | `theorem` | [singleton_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/singleton-self.md) | 132 | `result-track:e96c52abb4201b72573b36c0fc2d96a28dca7942804bf0a6dc33bfb03974c4a5` |
| 16 | `lemma` | [singleton_le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/singleton-le-iff.md) | 136 | `result-track:3ad22773767ade8e2be8353006ca61747affabbef02d13686bd576550d49912e` |
| 17 | `class` | [HasPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/haspullbacks.md) | 142 | `declaration-track:c6721e6d583cd7a317631f306917c0b72cddc95bf67196e129d33d094e8a249e` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/instance-source-edition-3.md) | 147 | `declaration-track:ab0c8aaef7f6a50805227d2887b2029f5e1cb482990fde511e8eedad0b17b4a6` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/instance.md) | 150 | `declaration-track:73b9fa27ef02961ce22fef76333dad073ea8b9f295be0dd38c622a88be5debcf` |
| 20 | `inductive` | [pullbackArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullbackarrows.md) | 160 | `declaration-track:72d233efe2e59601dfaad3189360b0a04e0fed7f59bc8317a9b78c741073a90c` |
| 21 | `theorem` | [pullback_singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullback-singleton.md) | 165 | `result-track:c139688faadf8d71e248b981a8e28671f8aba280cc3f328f454ff232734a58f9` |
| 22 | `inductive` | [ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows.md) | 176 | `declaration-track:f8b8f2b0b7f693ea4ae1b9f1a41de65c29defbd302d336959b886fc82d265770` |
| 23 | `lemma` | [ofArrows.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-mk.md) | 179 | `result-track:00d0134044cd44da4b4d93c2bb248469121fa0bb58dd6d0bfa4c9bc507ad749e` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/instance-source-edition-5.md) | 187 | `declaration-track:cc4d02b48643d8f4d0f8b61d6d88afd264d9332a90f5381646561d24edabb503` |
| 25 | `theorem` | [ofArrows_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-pullback.md) | 191 | `result-track:9076f27d0b2d973c822d5690da8bbe389af3b832483e7408c729c29167809686` |
| 26 | `theorem` | [ofArrows_bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-bind.md) | 203 | `result-track:9106c852326ea7a8a968c97fd5a02e2eeb48db0431b9d7fa4622b4c8f0353214` |
| 27 | `theorem` | [ofArrows_surj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-surj.md) | 217 | `result-track:c4effd51a89ac5bdf87d1ec285893503c983d1f76f2519c3448ca25d947e64fb` |
| 28 | `lemma` | [exists_eq_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/exists-eq-ofarrows.md) | 223 | `result-track:c95cc19900305a87620da14660b3c3e49dab9787bfdbed86a67ff220ce49dceb` |
| 29 | `lemma` | [ofArrows_category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-category.md) | 229 | `result-track:bbe26c77889e15619a2acf40b522479ac47a64fb8c6f39a5003d5f09f3fab4bb` |
| 30 | `def` | [ofArrows.idx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-idx.md) | 242 | `declaration-track:a513ce1e0696b62d6c2b1243f067b4ce11937d8fbef7702ea9c58e2cba251109` |
| 31 | `lemma` | [ofArrows.obj_idx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-obj-idx.md) | 246 | `result-track:c15af5f1d03dd52ea44a6969f562538fa8b748ad8fe35e141c4764c4e55d8eb7` |
| 32 | `lemma` | [ofArrows.eq_eqToHom_comp_hom_idx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-eq-eqtohom-comp-hom-idx.md) | 250 | `result-track:0a90ec5b10f8b726bf40340ab7dddd8d75772ac10d3b5355e4e60f9120c622b7` |
| 33 | `lemma` | [ofArrows.hom_idx](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-hom-idx.md) | 254 | `result-track:8e34c265cdf40898d0be17a1f18f20067e57eb24cf72ab9b0250a53498a6529d` |
| 34 | `lemma` | [ofArrows_comp_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-comp-le.md) | 258 | `result-track:16996da1a9b569321cc73bdfc80991c221860620c0c7324dda55d9235b979c54` |
| 35 | `lemma` | [ofArrows_comp_eq_of_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-comp-eq-of-surjective.md) | 263 | `result-track:22ddb0347e941632bdde820440fdb82010d7f6a90d2af35648db396b89fad72e` |
| 36 | `lemma` | [ofArrows_le_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-le-iff.md) | 271 | `result-track:a92d071391ab400f9b03d61bec5b3c35a646b42496d378409a003616fd82a587` |
| 37 | `lemma` | [ofArrows_of_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-of-unique.md) | 275 | `result-track:8c9f9d25cb53cf65ec0558ed0d34c009e0961cd049993f9ceb0ee641f22e2142` |
| 38 | `theorem` | [ofArrows_pUnit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-punit.md) | 283 | `result-track:69a9486d164fbc1022a63c7c4ff19c1740d89a662b9f5db30d13ca871e5cd42f` |
| 39 | `lemma` | [ofArrows_of_isEmpty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-of-isempty.md) | 287 | `result-track:ebbcfc218d759d5e001ea60541bb483d1ea17a2307001361678f9e8e948801f8` |
| 40 | `inductive` | [bindOfArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bindofarrows.md) | 295 | `declaration-track:afd7908949bff8a737d26bd386d44dccdeb87504643825a7bd72aa4485e93496` |
| 41 | `lemma` | [bindOfArrows_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/bindofarrows-ofarrows.md) | 299 | `result-track:0595a407ff39c4e6ebb059c88958f9467a4e9f1d612a67f2e5ac36f9a5f6903c` |
| 42 | `def` | [pushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward.md) | 308 | `declaration-track:7567b1e8637ee987325d0780f3d3551b88634f226996ba75e6fce87cf3b28b90` |
| 43 | `lemma` | [pushforward_apply_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-apply-comp.md) | 312 | `result-track:2ee09a9c2e746c675b1cbb331de203554d0381ec0e3125da83c2b2191e603b11` |
| 44 | `lemma` | [pushforward_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-ofarrows.md) | 316 | `result-track:84355eca20365b62166f82037c979963caf68df120fe364286406e694c3f5da7` |
| 45 | `lemma` | [pushforward_singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-singleton.md) | 326 | `result-track:851d3948672f64edd10b53b17b74a31c6d5d7acfe9f72c600d5834f328495f72` |
| 46 | `def` | [pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullback.md) | 332 | `declaration-track:cf37db6512212426f3853251e19339f0d1d3e132634b2c8a8584d9b0a079ccb6` |
| 47 | `lemma` | [pullback_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullback-iff.md) | 337 | `result-track:a41228b8ac24c408800ef6f5c54e9d4ae0771608022dc7441bc54e79ff969ced` |
| 48 | `lemma` | [pushforward_le_iff_le_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-le-iff-le-pullback.md) | 341 | `result-track:3af199ab745d2e3ae8648bc0ce1826c34e9350016a2aade9b5f8e01423b05b7a` |
| 49 | `lemma` | [galoisConnection_pushforward_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/galoisconnection-pushforward-pullback.md) | 347 | `result-track:ba8976dc28438bfd57b9909d8cc9373c66e0f8779cec526fa9b392d1a6501a4e` |
| 50 | `lemma` | [monotone_pushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/monotone-pushforward.md) | 351 | `result-track:60ed17fd7d7050afb17feb851dd8f8447676a9bbe70bdde7de1927196e4da368` |
| 51 | `lemma` | [monotone_pullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/monotone-pullback.md) | 354 | `result-track:55167e38e02a147604267129aa4cf92efa75cea12c27d34bb4ed1243ebd009dd` |
| 52 | `lemma` | [pushforward_pullback_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-pullback-le.md) | 357 | `result-track:96c8a3cc73cd5326279d7abf6b318b0e0e35aefc881f3c3796acc80fa5e25bae` |
| 53 | `lemma` | [le_pullback_pushforward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/le-pullback-pushforward.md) | 360 | `result-track:6b8c39c276199029a20ce2ed1931513c07abd932e0416f10b0590474f509e135` |
| 54 | `lemma` | [pullback_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullback-id.md) | 364 | `result-track:ba105d0e5a690f368641f7f6bbf32bfc9f26434cbfe6b3e9dfa3306154fcdf1f` |
| 55 | `lemma` | [pullback_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pullback-comp.md) | 368 | `result-track:0d53026514f27c34a4d838ab0faa03a3002f291257f8e7c30d2f585de4e5d32e` |
| 56 | `lemma` | [pushforward_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-id.md) | 374 | `result-track:4dc0f9e75a2f7d25cc04c0d9475021f5b461564895011482ba53d6f92468f188` |
| 57 | `lemma` | [pushforward_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/pushforward-comp.md) | 378 | `result-track:b683d4dc02590365c34dd32132a573c3d65446c9e8641f56aa460aee181688f4` |
| 58 | `class` | [HasPairwisePullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/haspairwisepullbacks.md) | 385 | `declaration-track:33faebed956ad44f9c209fe263f3b657e5966faddde66cbae82fc7551037ff13` |
| 59 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/instance-source-edition-2.md) | 389 | `declaration-track:904f6265d55f0dc11c916c2b90c781540f96202b89f8e65318f9236f24b5e746` |
| 60 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/instance-source-edition-4.md) | 391 | `declaration-track:bdac4c834fa62bda8373a39b288a7fcb7b19f0e8de3210a991e253ffa434e503` |
| 61 | `def` | [uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/uncurry.md) | 400 | `declaration-track:de5a95df27c2ec5922c4358c97d008017069115eda7fff3b1c57c46c177c39e5` |
| 62 | `theorem` | [uncurry_singleton](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/uncurry-singleton.md) | 403 | `result-track:774a8ae6ad000588355bfd81834452db87e030ddf24bf5b5e14797f64b5f030f` |
| 63 | `theorem` | [uncurry_pullbackArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/uncurry-pullbackarrows.md) | 410 | `result-track:ec264facdfe976b6908683bd0a2b25ba16d3aa4dfcaaac9c2a89368fef6c0028` |
| 64 | `theorem` | [uncurry_bind](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/uncurry-bind.md) | 421 | `result-track:126b6d0b5ee2b348d46519d4117763fbcfcfe02be83df3ae6f4920cded7b5f8a` |
| 65 | `theorem` | [uncurry_ofArrows](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/uncurry-ofarrows.md) | 433 | `result-track:9e75bc38975a9ca70a60eda4f6f541085c17c2e0340e1e3f45a6bcab0af706f9` |
| 66 | `lemma` | [ofArrows_eq_ofArrows_uncurry](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PresievePublic.lean/declarations/ofarrows-eq-ofarrows-uncurry.md) | 440 | `result-track:8ce50c427ead49882403062628ea372591ee2dd90e8d85b7a115f8cd767ff780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=533d598f12ccd56d0c281fdf984de2afcf893244ff65562ca646c4143fe2f980 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presieve/Variant6e90d96313f98de2330e97f3a25711e50aba6e2d540de2624c8027b7db08c298.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
