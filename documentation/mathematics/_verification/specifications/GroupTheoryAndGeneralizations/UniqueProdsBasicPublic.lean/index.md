# Verification target: Unique Prods Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3af3a13d0165afd4873fbef728cf13bc78dc12fd",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3af3a13d0165afd4873fbef728cf13bc78dc12fd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean.json)

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
| 1 | `def` | [UniqueMul](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/uniquemul.md) | 67 | `declaration-track:93e38d5957e479f5137c99606f5e21258d9056e6e270205e6271abf87b00fe18` |
| 2 | `theorem` | [mono](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/mono.md) | 75 | `result-track:48f3c6d2d8d0074415e4e1b19a9d3da484699480e0d4945076ee0b44ed2be706` |
| 3 | `theorem` | [of_subsingleton](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-subsingleton.md) | 79 | `result-track:8ef885974f0953648ccb1a4e45ff8216aef726beb2a5422c9be2ee3be7b1e7bd` |
| 4 | `theorem` | [of_card_le_one](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-card-le-one.md) | 83 | `result-track:04a53c757ae643e4b25b154d0e01c86f5af6ebac8442383a1674b6c088e9a926` |
| 5 | `theorem` | [mt](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/mt.md) | 90 | `result-track:7fbdec4fb3170d0dea3c05e8401438e3e3e38569716530419ae0481424d8d2e0` |
| 6 | `theorem` | [subsingleton](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/subsingleton.md) | 96 | `result-track:b7a311a58267ee66eed2da9316d36082bb1965d7694d95e2b07dc5b08450d06c` |
| 7 | `theorem` | [set_subsingleton](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/set-subsingleton.md) | 104 | `result-track:a7a353011362c277e5db80781b001c4dd2539d362a86e0ba03e26ff3fd6fde15` |
| 8 | `theorem` | [iff_existsUnique](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/iff-existsunique.md) | 113 | `result-track:55a48be5b425bf04e27a6d18f8198934930a997cd77aeee848992206df9320e5` |
| 9 | `theorem` | [iff_card_le_one](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/iff-card-le-one.md) | 124 | `result-track:206f16f6bd37d748e90f63f29744528ea439ba137cadd155d008b09d2b684f1f` |
| 10 | `theorem` | [exists_iff_exists_existsUnique](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/exists-iff-exists-existsunique.md) | 133 | `result-track:de62f9a5bbc56483f305eca1db09c32ecb4fd8cbc192c5dd2e5b0f46b0583603` |
| 11 | `theorem` | [mulHom_preimage](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/mulhom-preimage.md) | 144 | `result-track:c3d0bfca267944f205099ac39cecb0db36ed63500a739b41165b225aaf0a4326` |
| 12 | `theorem` | [of_mulHom_image](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulhom-image.md) | 151 | `result-track:0325d1fc1324ede99fcfc96e7ca34434118dbad0f8692c06ff1982b2081a38d5` |
| 13 | `theorem` | [mulHom_image_iff](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/mulhom-image-iff.md) | 164 | `result-track:7b57099d471b71670433ce7f9e474434dc7eddbf679095c6c22f1145364a4439` |
| 14 | `theorem` | [mulHom_map_iff](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/mulhom-map-iff.md) | 179 | `result-track:2601ccf6461c3c4f5fb5b440adb6cb4cd40523d6b14527df87000966d4cea21a` |
| 15 | `theorem` | [of_mulOpposite](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulopposite.md) | 187 | `result-track:935a1e50d8c25f2680bcc74a452172ef36312cd70456c9f161ec3d72ef0b2831` |
| 16 | `theorem` | [to_mulOpposite](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/to-mulopposite.md) | 193 | `result-track:6c8b9a62c2f4db1385e926256092d8921131929b51eba1209fddee1365b20109` |
| 17 | `theorem` | [iff_mulOpposite](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/iff-mulopposite.md) | 198 | `result-track:74b1624392ee88b52007119cf5641bd82a51f30d5cb4dcca5bb5b1dd1ac5de95` |
| 18 | `theorem` | [of_image_filter](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-image-filter.md) | 207 | `result-track:fff7f5396f2f19e95caf99f6e2c892cd0f9096e7f30744dfce0d5ae1997f345f` |
| 19 | `class` | [UniqueSums](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/uniquesums.md) | 222 | `declaration-track:216b54f92e00c0cc8252c5569e52d793d6bd6122987eca5faae77294febaa6bd` |
| 20 | `class` | [UniqueProds](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/uniqueprods.md) | 231 | `declaration-track:710c64c71e8b738b5d190d65c32a7101e0329c06a1c1957ff4363917cdbbd439` |
| 21 | `class` | [TwoUniqueSums](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/twouniquesums.md) | 242 | `declaration-track:cae03cb372729d819cfc310d9846f1c2eb44aa70539dd60b48708de31b97a2ce` |
| 22 | `class` | [TwoUniqueProds](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/twouniqueprods.md) | 251 | `declaration-track:28551bc105db44c62be02c1044882a1ef13d65ff28a2beb5f2eb7d5e9e7a81bf` |
| 23 | `lemma` | [uniqueMul_of_twoUniqueMul](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/uniquemul-of-twouniquemul.md) | 260 | `result-track:e8c86cf07bdda562c6fced1f0c75d7218f1d70b8d02a3587564e64acf6feacc0` |
| 24 | `instance` | [TwoUniqueProds.toUniqueProds](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/twouniqueprods-touniqueprods.md) | 270 | `declaration-track:6d1ab8b30d403081bd7e2739c8d112c16482321a23de1c9df208e3e1ef60eded` |
| 25 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-13.md) | 276 | `declaration-track:f448537e1d98577e2b95d7549705f76240d00d3bffb2423f8554001150d34041` |
| 26 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-6.md) | 279 | `declaration-track:4fa4d953a52b1ce9729eb756032fc825cdeec93b535a1de6ea22ba4bc24c12ad` |
| 27 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-4.md) | 286 | `declaration-track:296b42b0c9326abee59f118bc826bccf30acdd570d6ab2bbe0df4f00c84410e6` |
| 28 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-11.md) | 289 | `declaration-track:98451692807fe1c154358c85e7ffa7726be905be2f756a766753caf946ca5232` |
| 29 | `abbrev` | [I](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/i.md) | 297 | `declaration-track:251bc2fd6ec79069587771379a9a8d79553c23054815750113867312e73aa750` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-5.md) | 298 | `declaration-track:375f9b7bedbac61d38aa8af35f9571f812505285e41fae68ae45fc8238642039` |
| 31 | `def` | [Prod.upMulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/prod-upmulhom.md) | 299 | `declaration-track:63746ea54673875dac2874ef14ec140d4979fe189bd82ef3ff73cb6230a16f1c` |
| 32 | `def` | [downMulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/downmulhom.md) | 301 | `declaration-track:985abf9b166efbaa542d90dbdc5cf1ee947a9aee81238ac526d27e17d1071bd5` |
| 33 | `theorem` | [of_mulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulhom.md) | 309 | `result-track:101ac084a7016289e56a6510a36fd0d17780e9065b0a9e3081c19b7fbe734fe0` |
| 34 | `theorem` | [of_injective_mulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-injective-mulhom.md) | 320 | `result-track:2f08ea973dea73079f9d71550c19ed16f399952b45a9b75576d3eb19c1c18801` |
| 35 | `theorem` | [_root_.MulEquiv.uniqueProds_iff](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/root-mulequiv-uniqueprods-iff.md) | 325 | `result-track:bbf8d17339ff6300bcd5bc49682d388ce4f4c9adfce5ebe5808bcdb395bbe0ec` |
| 36 | `theorem` | [of_mulOpposite](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulopposite-source-edition-2.md) | 330 | `result-track:accd5dc76064f4fc23acc82c71df8cab58c63db2103c1c47a3cb169f59952b05` |
| 37 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-3.md) | 336 | `declaration-track:190bc73eea181e35ea0de46c92f56b430c0dd3df133eab4aa47693205cbd9617` |
| 38 | `theorem` | [toIsLeftCancelMul](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/toisleftcancelmul.md) | 339 | `result-track:82ca24aa1650a96f110d27728a036e9752cb0e1896f7f84d92da91735a621b28` |
| 39 | `theorem` | [toIsCancelMul](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/toiscancelmul.md) | 351 | `result-track:ad7905f770ad2e5c3ec88f2c53104e93f4c1812ed4a8178e18d158876823904c` |
| 40 | `theorem` | [of_same](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-same.md) | 363 | `result-track:d76718436deeddcb1ab5abf8de58199fa3303fa220716f992d1998fbc304a046` |
| 41 | `theorem` | [toTwoUniqueProds_of_group](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/totwouniqueprods-of-group.md) | 380 | `result-track:72d9a0f87a43b36e03a2f39975461c9e81664bc9fc17b7943ef1ab0b951af67b` |
| 42 | `instance` | [instForall](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instforall-source-edition-2.md) | 431 | `declaration-track:8d011cc48d780f49ea79eff7eef4361142fb424244380f75e30bd565b488a6b4` |
| 43 | `instance` | [_root_.Prod.instUniqueProds](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/root-prod-instuniqueprods.md) | 454 | `declaration-track:ec838ce3104783edee2179a2d52e6e44b3dd62fe660720ec1a8495a7803cb4f3` |
| 44 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance.md) | 465 | `declaration-track:00f447c52cc80ab9aed7a183198d95bbd5ad751f01fe2755d600e00a8c614b40` |
| 45 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-10.md) | 470 | `declaration-track:975df7a024221273a8f90ddc0589561f05ee566f79a36b1ee2e7ee086c468444` |
| 46 | `theorem` | [of_mulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulhom-source-edition-2.md) | 478 | `result-track:5db78e7e740ac35fc887a7a3e8cd589ee74dc3c876868f5bb6d97011dd10ffa8` |
| 47 | `theorem` | [of_injective_mulHom](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-injective-mulhom-source-edition-2.md) | 499 | `result-track:d55514c07c73d6b11b6bfc016eb25d59deb7310d6520642b630c3fc10885463c` |
| 48 | `theorem` | [_root_.MulEquiv.twoUniqueProds_iff](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/root-mulequiv-twouniqueprods-iff.md) | 505 | `result-track:ca47804af0c3abf1e7885f111a33b03be0637327eb3883806cc130fa25604e71` |
| 49 | `instance` | [instForall](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instforall.md) | 509 | `declaration-track:7115881946e0659569aff8e0ec6fa6e75414372172df0bb4261c7be2f1e9389c` |
| 50 | `instance` | [_root_.Prod.instTwoUniqueProds](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/root-prod-insttwouniqueprods.md) | 544 | `declaration-track:23136de0b49edfb48e9d3b73dc082460b038ce0e27a441316e68d4928ea1737e` |
| 51 | `theorem` | [of_mulOpposite](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/of-mulopposite-source-edition-3.md) | 555 | `result-track:d6083380dd0d73d12df648692d62d91b4f57e2f318ab47ad7ac5914fb7a7c73a` |
| 52 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-8.md) | 568 | `declaration-track:7bf1df4a81d9328af9cc144ed223f1d2be99adacd981ecf5949c087de6c44715` |
| 53 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-9.md) | 577 | `declaration-track:8904641afa210cf19b3275af5c6047952bb04e51a852b6472372ae6327a88df1` |
| 54 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-7.md) | 611 | `declaration-track:58663fc5e22b9fc117af117ef14bdf4c7e484fd752dce37abe637656b4883e2d` |
| 55 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-12.md) | 621 | `declaration-track:e4cb74e29abeece2188b4cfd8c5cf4f715b832eb79c83d60a4f47dd556169b57` |
| 56 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/UniqueProdsBasicPublic.lean/declarations/instance-source-edition-2.md) | 626 | `declaration-track:0ed937abe91e5f9c889523bd741d790f165248d7b2807d7db22b7c9526382c2d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59e698a90e0b5ca60912b0d82c26c0b927d8b6855d0f6a0b8216b2c1c966d717 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant50cbcba813634b4cf7bbd6826b64ff0f0f77c51b160f0e583dcb4bf6de5a677b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
