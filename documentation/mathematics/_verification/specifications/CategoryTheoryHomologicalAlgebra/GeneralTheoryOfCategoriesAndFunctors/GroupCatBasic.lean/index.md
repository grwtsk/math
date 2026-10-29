# Verification target: Group Cat Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f2ce8cee8f8af205db7312397c21b7b6c98150d",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f2ce8cee8f8af205db7312397c21b7b6c98150d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [GroupCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/groupcat.md) | 31 | `declaration-track:c7efde1cbe06f8d13d72a3d52ae16774ab0f6cf0920236bcc9bd0add94810980` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-4.md) | 44 | `declaration-track:5a37c18aa5c29560b6872419818e2c04c56b74ebed1c9b2b9a450c3d25df36a8` |
| 3 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/concretecategory-source-edition-2.md) | 51 | `declaration-track:d813f648c6ab3ee33339cb0da454f7af1bfc748de55e7a12c20bb6e1b73e074a` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-11.md) | 56 | `declaration-track:d403b702963ffe71dbbb39f5903e46000de8e1d9b9f102238e04b8bba038f159` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-2.md) | 60 | `declaration-track:3ec896afd463be4047d6a560b3fd41b7778cda7d4c7272921d971f163c0af51f` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-14.md) | 64 | `declaration-track:e05c7ac1d4b9fbacfacd791165a3c8d0d18a4ab01d117d0c788e0298b82c38e3` |
| 7 | `instance` | [FunLike_instance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/funlike-instance.md) | 68 | `declaration-track:4c9da7c5dffaec8d932bef142e89713ade8b526629b60b4a0f6c57016417ae4e` |
| 8 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-id.md) | 73 | `result-track:675e7ca214fb30d88225e406e8bd26f7042aa1ec2a6fa62e3c34aabd0b357cb1` |
| 9 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-comp-source-edition-2.md) | 77 | `result-track:cff958fe30a7421ed78968a91fa5598e62ed51b270f095454db40074192eb1a6` |
| 10 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/comp-def-source-edition-2.md) | 80 | `result-track:f896b4aae2b98af9e9d60c6152fc83578f9f5bbaa26d060bc7dcfde6bd08fe9b` |
| 11 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/forget-map-source-edition-2.md) | 83 | `result-track:f5eaceacfd7d07fb883d540a360a6652b810aab244d6053b40b189f79d5840b2` |
| 12 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ext.md) | 86 | `result-track:21dda4e3cf1341d0f8dbb8f8abd116ee114aa43ff3fe2186936793d1e14c9eb2` |
| 13 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/of-source-edition-2.md) | 91 | `declaration-track:855a94201c4d7b99d0efbf8365af929719d41ae71f444651ac27ffcdecf9fd09` |
| 14 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-of-source-edition-2.md) | 102 | `result-track:346f3488121102a547e3ad6fd5bf7787dd966b7521813cac4cbc55279a8d3f5d` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:4a8f23d59a35d8092a6c47969cba34c1dc8b92daf1da0e288c62755d4a2d7aae` |
| 16 | `instance` | [hasForgetToMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/hasforgettomoncat.md) | 114 | `declaration-track:257ff031f54c60b005a5224b9e2ced8d6bd7c82e063827419fac2c2a0a941bcd` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-13.md) | 122 | `declaration-track:de67168c855b82d24e3072566f073a10d23c4c62afa13d2eb983d6b31c5961dd` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-6.md) | 126 | `declaration-track:a4708204076415f1d431251ce9ac4862daf6eb30d98d08ee92345f4e39fe1a2b` |
| 19 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/one-apply-source-edition-2.md) | 129 | `result-track:924a11e072c941089e35901c9f0cad04b683672e3c86ba7fbec562961d754f18` |
| 20 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofhom.md) | 138 | `declaration-track:8d5e3ee3125a3ca4d0703f35afee88ea4e7d4d66eade41bbcccd8adb03a54521` |
| 21 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofhom-apply-source-edition-2.md) | 149 | `result-track:e370f947bf6bc59cb3dae4372a541c630a7b173e514cc1d54ab61fdf34048eba` |
| 22 | `instance` | [ofUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofunique-source-edition-2.md) | 158 | `declaration-track:6d5e9b964cda32fe74e32b196afb22b1dfdadaf370dcd86ec1d3974577e0aa39` |
| 23 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/example-source-edition-2.md) | 166 | `declaration-track:74e92c24e2b6fcd63ca78cd31247864101272edb736e59a38be38ca9f4cb5815` |
| 24 | `def` | [CommGroupCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/commgroupcat.md) | 172 | `declaration-track:1e713a2469a9362db926aba7a574d3f3601be2ee5a7f9e33bfeffd23c370e660` |
| 25 | `abbrev` | [Ab](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ab.md) | 183 | `declaration-track:3a03532edaf8fb0a1e0eb7966d6c8a193ee075e1bd2184e3382032b37d4f0a69` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-10.md) | 190 | `declaration-track:c8dca2beac596602e60e42c0680b97f184d9c854bf1daa111cc8867718292797` |
| 27 | `instance` | [concreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/concretecategory.md) | 196 | `declaration-track:754191718ad041906e5aadd8c08788560b2ed518b6ec47cca56868bc707ea38e` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-5.md) | 201 | `declaration-track:7fe10abf5d4dee83bf4b41a601433828b90281bc0bd52da6f16e370e409bf801` |
| 29 | `instance` | [commGroupInstance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/commgroupinstance.md) | 205 | `declaration-track:1e51b80bf2cc51ed417d03eac41669d273bc80518d9618e2cc042946f05e2d77` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-9.md) | 213 | `declaration-track:bf299b39c1e64f50e6278238025dcee1995ef5b1cce76dbe2579d8ed77b141ac` |
| 31 | `instance` | [FunLike_instance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/funlike-instance-source-edition-2.md) | 217 | `declaration-track:d95e878009793c55fe75b8f813b02a957f4e17bb982c49aaac0a399f60edf963` |
| 32 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-id-source-edition-2.md) | 222 | `result-track:b75df026bc0863653b72c8fedcef07b8a60cd2907b9ce55211c6cbeff61c2f96` |
| 33 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-comp.md) | 226 | `result-track:bf857d0806e9f330c9094c6bcf55c9c3fbf71cf032f5efe418ceabb8550b8d10` |
| 34 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/comp-def.md) | 229 | `result-track:77ed70f9188a0a254b1d8809b4dd296cb7541acdbc4057a3ee96dedeb9504074` |
| 35 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/forget-map.md) | 233 | `result-track:9958cb760fb7422ca4786de07d59ecf36820b949e3e2ad8336bfd4d6acbec3c1` |
| 36 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ext-source-edition-2.md) | 238 | `result-track:cc2222fcb88258882cb8328072c445a0f01f24f6ac99cafac78249a32bb01de3` |
| 37 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/of.md) | 243 | `declaration-track:4ab49e050d150ad661cd94c6627feae94954bc6f9935715771f051ed8746b44b` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-7.md) | 254 | `declaration-track:b68e0a0c6019516f0487a791179dcfcbeb647152fb9293fa3b898a08a35c0b7b` |
| 39 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/coe-of.md) | 261 | `result-track:0a08bb19ee3602d0037ef333a314f49ac8af18082c07b1666f192a192d9fbf59` |
| 40 | `instance` | [ofUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofunique.md) | 269 | `declaration-track:089593dd154aeccea7e25ebabe29e804aa8862199588836571da1f2973756f30` |
| 41 | `instance` | [hasForgetToGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/hasforgettogroup.md) | 277 | `declaration-track:2a5c1b889494c34c6e449913faa7f4f6b9fc2e86f571436c0e30ffc82f07e903` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance.md) | 285 | `declaration-track:3753f8b601495f70c7c2e137864113cc4641384911247c8bf63cc715c401ddbc` |
| 43 | `instance` | [hasForgetToCommMonCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/hasforgettocommmoncat.md) | 288 | `declaration-track:a010c9bf47713498a9c4970c666c4800913e60b306814065a269b534a64f3c78` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-8.md) | 296 | `declaration-track:bc2ce8738596641f9c1bde463d3a1334cb2e034b2f32f14f8a3993e367f49c29` |
| 45 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/instance-source-edition-12.md) | 300 | `declaration-track:de2da030ff7e0cb0007f8dd360cb8492dec703a34d4a7c41041f73d477a28d39` |
| 46 | `theorem` | [one_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/one-apply.md) | 303 | `result-track:3b22d2a8375df02f10c15f13db10743da7534051944d06e0b94d0bd67f685921` |
| 47 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofhom-source-edition-2.md) | 312 | `declaration-track:9a7a5daf5c3614eb4128dcc96133cdc26a8eeec22c2c2503d6c369cb8ae31a04` |
| 48 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ofhom-apply.md) | 323 | `result-track:5dd6370a7f63eae89d89ef35078fd8212b8ef7055a576e74c0953acb111cd4db` |
| 49 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/example.md) | 333 | `declaration-track:3d83a81db841e7c97bf43fa5f034d80b9da8192ca4d57b31970951fa575bdd55` |
| 50 | `def` | [asHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ashom.md) | 344 | `declaration-track:bf6b80c5ff23b8afa4c4c2a1e24cdf65c93e969225a36c33b7b73da83888a7ec` |
| 51 | `theorem` | [asHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ashom-apply.md) | 350 | `result-track:0ed7b8f16998d7d5fbdd6f3096bdbf2b45d98904258414429da6dbd5dea892ad` |
| 52 | `theorem` | [asHom_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/ashom-injective.md) | 355 | `result-track:5783f2e60d11bb6636b434b61cf87afa14d6cd7cac91115bd5c689b18725e1e1` |
| 53 | `theorem` | [int_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/int-hom-ext.md) | 361 | `result-track:5e13c8271dabf92a39eabd49f78032fd1990aeb81bc53501b080931a85a02e22` |
| 54 | `theorem` | [injective_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/injective-of-mono.md) | 369 | `result-track:064be136685f19cb46ab076cf4fc8183dbb28fa83ca95bc9ed0d6b100fb55050` |
| 55 | `def` | [MulEquiv.toGroupCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/mulequiv-togroupcatiso.md) | 381 | `declaration-track:d59c7748f816117e045354280ff0f8e9fc71b1c3e284e8b39666125ae93b45ae` |
| 56 | `def` | [MulEquiv.toCommGroupCatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/mulequiv-tocommgroupcatiso.md) | 395 | `declaration-track:0434eb6649168435cf17f04a97687dabe55475cbfe3555e62c3b227ca694031b` |
| 57 | `def` | [groupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/groupisotomulequiv.md) | 411 | `declaration-track:66e66cc9c7c87354154c9d1fcde79aa27780b614eb90913a9e41c6709a0f5c11` |
| 58 | `def` | [commGroupIsoToMulEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/commgroupisotomulequiv.md) | 423 | `declaration-track:19629e0864265c3f4cf70602b02f37f27a790815340d871ffd912965c882dd64` |
| 59 | `def` | [mulEquivIsoGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/mulequivisogroupiso.md) | 438 | `declaration-track:84b0b12ad8bbe54f82c1c87a46e4389d620dfac05a4b3a6d5cefeeef94b49d18` |
| 60 | `def` | [mulEquivIsoCommGroupIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/mulequivisocommgroupiso.md) | 453 | `declaration-track:1bd4a733927e9156991c09af25621a418ebc77614f16e674fa375177d22545ed` |
| 61 | `def` | [isoPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/isoperm.md) | 469 | `declaration-track:500e3cebc197d517ca02603955246398eba81ded7410d4a678c3b9663921839c` |
| 62 | `def` | [mulEquivPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/mulequivperm.md) | 483 | `declaration-track:7e159591d093e7ddb8f18af8fb3f1f5f08b98a94473c5184ff32392bcb71d00c` |
| 63 | `instance` | [GroupCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/groupcat-forget-reflects-isos.md) | 491 | `declaration-track:7aa5d6c6d3405f80a13c9050f91f4163674a85f1c5ac46ec8094c280e6fc81f2` |
| 64 | `instance` | [CommGroupCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatBasic.lean/declarations/commgroupcat-forget-reflects-isos.md) | 504 | `declaration-track:42336b60cc4036a277ed04e61ec28bea8aaa0b9b0395dab7429fc7bfdc81caac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ea3239ed9298806fc32b1996fc252c8ef3dde26bf582593f01760df58b00dc1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantad7a0030e4b611a9951914477053037137603f605fad6176cf61b2c83057d19f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
