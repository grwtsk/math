# Verification target: Partial Equiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecd5ae63a5e6963f650710a9d9703978cfb17485",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecd5ae63a5e6963f650710a9d9703978cfb17485`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.ModelTheory.DirectLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Ideal` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/partialequiv.md) | 57 | `declaration-track:95db600aa551c39329d6ecc86da3193a9fbcd68f6a8cb7831d21542c6f108e2f` |
| 2 | `instance` | [instInhabited_self](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/instinhabited-self.md) | 73 | `declaration-track:cbee507f93a66d5c3558862540b0aaa0c7a475524a9247cd388f70b9101591fa` |
| 3 | `def` | [symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm.md) | 77 | `declaration-track:311794df428bb4326dc328d73646b9bfbcb9d0dbd799daffa80dfaa18eb450c6` |
| 4 | `theorem` | [symm_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm-symm.md) | 83 | `result-track:6df7e56c84f8edfce54efc148e1f8ad64e7f2bcd3d17dc9a4db57d26a4314683` |
| 5 | `theorem` | [symm_bijective](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm-bijective.md) | 86 | `result-track:80cd57322dbf495a11cb2f54aae09e869f65a79c9be5abe25120ecb1fce72e60` |
| 6 | `theorem` | [symm_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm-apply.md) | 90 | `result-track:1156916af17ffe368d36dfdeff77821b3fbeb306128fafd78289054cc10da9a9` |
| 7 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/instance-source-edition-2.md) | 93 | `declaration-track:565a7613ed76bd72e419c869cbe2c4d6d8e7c644075f913b18f5aa2a792b0635` |
| 8 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-def.md) | 98 | `result-track:1aa1bd7aca7a615ae0efb1f845fe0b91c774a82f202248dd8700328a9ca25f9c` |
| 9 | `theorem` | [dom_le_dom](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/dom-le-dom.md) | 103 | `result-track:be67f4e2cd39373541c764164c2919b050e498582d5d14c3b5509ef5738f39a4` |
| 10 | `theorem` | [cod_le_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/cod-le-cod.md) | 105 | `result-track:20c93436058414d5c581f787e897ce51e071f1812f40f9c562155e98b953ba19` |
| 11 | `theorem` | [subtype_toEquiv_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/subtype-toequiv-inclusion.md) | 114 | `result-track:19c7e39e0cbe09a546977cf2f11524e9937c3adf69fda811660ea9b77c3f1b75` |
| 12 | `theorem` | [toEquiv_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toequiv-inclusion.md) | 119 | `result-track:cfaec8b634ee4dd485a2120b1e3f25e10e92249462154f8c95d0715d27caea22` |
| 13 | `theorem` | [toEquiv_inclusion_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toequiv-inclusion-apply.md) | 126 | `result-track:de8cb1a70866a15ad43eb2bb5352e68ce28723287fff792a4e4e14e326394004` |
| 14 | `theorem` | [le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-iff.md) | 134 | `result-track:cc33fdf26f672ada726c25acc60d1a1bf2f6b2a548ca0aa58ccdfe949633a403` |
| 15 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-trans.md) | 145 | `result-track:8ee5271bdcc3fc02addd4037719a67446f49b8037985f75b0caf1ceefbae5e64` |
| 16 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-refl.md) | 152 | `result-track:a0beddf00b903eaf7c5e219c4cd3bb686a373036396f3d79ccdd54646a747548` |
| 17 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-antisymm.md) | 154 | `result-track:40f59e0dae7c38baf31ee8105edc5e2b05d415c1fa8db409fdf2f6f94127ea46` |
| 18 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:79cf2126237a56874b7b556b640af1cae87667e723a00f0e2495b764c523dc7a` |
| 19 | `lemma` | [symm_le_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm-le-symm.md) | 166 | `result-track:9e4ecd61c5bb6ce3abdb4bf1d5d2e9fdaf8f42f11c1dafaaea558632e636c83c` |
| 20 | `theorem` | [monotone_symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/monotone-symm.md) | 176 | `result-track:33b77cb0152366809f5b9173a8fd7f962c72f9bdae2edfc1cb756bb7acf7b009` |
| 21 | `theorem` | [symm_le_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/symm-le-iff.md) | 178 | `result-track:62a5fd2682290c70e1e5bfc342030b2fc9c2be624d1677b1fc2a6d48e7aafd2b` |
| 22 | `theorem` | [ext](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/ext.md) | 182 | `result-track:95d32b61d63995ce86f4aed3f9ac5612e931044b261d56a8e6ffe2c039d12af3` |
| 23 | `theorem` | [ext_iff](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/ext-iff.md) | 191 | `result-track:6fefdfbba22f4fc8bf2b5db23f87cf76889c974d4ce8fe8bf0fa97150c2d0bc8` |
| 24 | `theorem` | [monotone_dom](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/monotone-dom.md) | 201 | `result-track:d2871bf255ff80a454465f910a384ac24b72049903e9c1c864632beb99269d39` |
| 25 | `theorem` | [monotone_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/monotone-cod.md) | 203 | `result-track:bf6cc73779944d162b5f233435433568911f1bc66003b247af5287dd2f2a90b7` |
| 26 | `def` | [domRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/domrestrict.md) | 206 | `declaration-track:28ca1baaaa6c070f2b3fd77bdedf6f591ac6b8d6141241417411b6c2c52310ad` |
| 27 | `theorem` | [domRestrict_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/domrestrict-le.md) | 215 | `result-track:333865f4a99ceafac50d0cd403fd00347a78d60399580e0eb92fc9fc946f4ec9` |
| 28 | `theorem` | [le_domRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-domrestrict.md) | 218 | `result-track:d01e0f72bc5eb5341b7f1b0adce8194fdb587b60ce282e8853035c5fc4cecb84` |
| 29 | `def` | [codRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/codrestrict.md) | 223 | `declaration-track:7b62bf7b26fb1dbc3cc010f9d6d392dfa02aee02600cc13d501f3207f6169476` |
| 30 | `theorem` | [codRestrict_le](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/codrestrict-le.md) | 227 | `result-track:9edff76bac70c18f693be9007135df6d74bcf76c1a6932c0de338b403e079064` |
| 31 | `theorem` | [le_codRestrict](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-codrestrict.md) | 231 | `result-track:fd807858601e065590f8776d5d770fb97062d07f3b25a338e80a63d7ce42564b` |
| 32 | `def` | [toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toembedding.md) | 236 | `declaration-track:3be3ed77c29bf787ef2276b869f67d5a25abad488a7dc7d11052cbcc73e36da8` |
| 33 | `theorem` | [toEmbedding_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toembedding-apply.md) | 240 | `result-track:bf0ddf2f5bd8976f882f5d8f2acf89c2c9250b5dc709fc99a8371481f1d0506e` |
| 34 | `def` | [toEmbeddingOfEqTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toembeddingofeqtop.md) | 246 | `declaration-track:fe79eccdacef0123ea720e87c33d47af84420abdac379739daaf1c6b47624372` |
| 35 | `theorem` | [toEmbeddingOfEqTop_apply](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toembeddingofeqtop-apply.md) | 250 | `result-track:4be31ba882d54ead43eb073c0143332cc395ce02314b05137966e5994008ddfe` |
| 36 | `def` | [toEquivOfEqTop](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toequivofeqtop.md) | 261 | `declaration-track:8032a45d7703d3a173f6acc7f8384a128cc8f815389642ec1f864e76b34eb89c` |
| 37 | `theorem` | [toEquivOfEqTop_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toequivofeqtop-toembedding.md) | 266 | `result-track:9c9dc3625f41108d7ee53a9d02ae948e61b804722daf39cb830a9d39035bfb96` |
| 38 | `theorem` | [dom_fg_iff_cod_fg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/dom-fg-iff-cod-fg.md) | 274 | `result-track:c31e5891bb56eb25c176006ed8c005e40e3a4c35856a4f3e857003893130885d` |
| 39 | `def` | [toPartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/topartialequiv.md) | 283 | `declaration-track:b3069a01ac8213fde31bcf2ebf344084719897c75ed05fa7a14647ac8ae078e7` |
| 40 | `theorem` | [toPartialEquiv_injective](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/topartialequiv-injective.md) | 286 | `result-track:d524816bd69e8721ef0e9f60189ec36a10c524b06155efa5d9374e3747de09bb` |
| 41 | `theorem` | [toEmbedding_toPartialEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/toembedding-topartialequiv.md) | 295 | `result-track:4124aff280405c462b70d738bebcc6c152cf4ea880593ac5fb5a393389a2b3fa` |
| 42 | `theorem` | [toPartialEquiv_toEmbedding](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/topartialequiv-toembedding.md) | 300 | `result-track:fe29ae4704205e195527bcecd3ddc9feeae33af0e1803e29a478cc5f74d03f76` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/instance-source-edition-3.md) | 318 | `declaration-track:722c71c25c2a65fe60210cc6edb09ad5390f3740ac72c5d9d7e1f67792e7f73d` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/instance.md) | 323 | `declaration-track:3fafa2f5a4cdf1635c9762ecbb88e8d7375c110de786851abc6fd20ed0412089` |
| 45 | `def` | [partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/partialequivlimit.md) | 329 | `declaration-track:7a012d5eddd4dba5f778d7ddfff8b4a67b508000eff4c298ddbb7467c5260e32` |
| 46 | `theorem` | [dom_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/dom-partialequivlimit.md) | 349 | `result-track:06983386668111e8eaba504a1b399b9bf5f1c519f5c8b133195a91d56ddc2936` |
| 47 | `theorem` | [cod_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/cod-partialequivlimit.md) | 352 | `result-track:e636ba16186c0100bd0f0858dd1ffbd06750e02c9a90ef628e38235794f219f7` |
| 48 | `lemma` | [partialEquivLimit_comp_inclusion](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/partialequivlimit-comp-inclusion.md) | 355 | `result-track:ccf4e4be44428676551ce3aa9f231630d84b9293e077f28ef7269d51d83e3e59` |
| 49 | `theorem` | [le_partialEquivLimit](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/le-partialequivlimit.md) | 362 | `result-track:e411c575590537bdfc68777d1617964c2c18c0856f61f19f785a739a083ad654` |
| 50 | `abbrev` | [FGEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/fgequiv.md) | 379 | `declaration-track:7684d4a88a582cc5701b8106eccb95e1e408e89597c164d9e1fe6a61f6693d5d` |
| 51 | `def` | [IsExtensionPair](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/isextensionpair.md) | 383 | `declaration-track:e8f393c896257761490b7c56c2128d2e118bc54d892b6e00dddad39eeaed3079` |
| 52 | `theorem` | [countable_self_fgequiv_of_countable](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/countable-self-fgequiv-of-countable.md) | 387 | `result-track:726d46aaba8255e7bea1565e07fe9124df4ee051ecaa7eed7add919c51d52816` |
| 53 | `instance` | [inhabited_self_FGEquiv](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/inhabited-self-fgequiv.md) | 404 | `declaration-track:8ef0c621507de5f11d2112119f06549071e8a70ff523b4304d8609baa7b93862` |
| 54 | `instance` | [inhabited_FGEquiv_of_IsEmpty_Constants_and_Relations](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/inhabited-fgequiv-of-isempty-constants-and-relations.md) | 407 | `declaration-track:385d62836fe7615288767395170ea7c852c3a37c5efd6683af85c12cac91a8cc` |
| 55 | `def` | [FGEquiv.symm](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/fgequiv-symm.md) | 427 | `declaration-track:a170238562272dfb9c5e56b41d07708e567769d931ff3efe60761f5aa720f91a` |
| 56 | `lemma` | [isExtensionPair_iff_cod](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/isextensionpair-iff-cod.md) | 429 | `result-track:b4b91d07dd9f3153a095262aa69f2697e15bee067e2a02c82ab159cbade6d802` |
| 57 | `theorem` | [isExtensionPair_iff_exists_embedding_closure_singleton_sup](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/isextensionpair-iff-exists-embedding-closure-singleton-sup.md) | 438 | `result-track:17ccb429a865b047334c4f7ae3571e789648aecdc8260cd6a0f9ea01a5f9937a` |
| 58 | `def` | [definedAtLeft](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/definedatleft.md) | 466 | `declaration-track:e9d8faebd3d7e7ad9e44f13e346c8f308697d3a66144b49c187809bdad1fc62f` |
| 59 | `def` | [definedAtRight](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/definedatright.md) | 472 | `declaration-track:9c50985f8e333c1292504372c41e096d5c589898c70046acf6779f86f5e75138` |
| 60 | `theorem` | [embedding_from_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/embedding-from-cg.md) | 482 | `result-track:e3f7f907bdcc07f732896fefac618329914d403975961843114b2a6c3a323cc4` |
| 61 | `theorem` | [equiv_between_cg](../../../../../MathematicalLogicAndFoundations/ModelTheory/PartialEquivNamespaced.lean/declarations/equiv-between-cg.md) | 505 | `result-track:583198397c243c7f32a029d35204ba252508cc5b97c2bf88b757bdc3e8974789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ac5831f368d0b5dd4b39cf38220e919bc85be7e7cfc76ab4d7221558f404f3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/ModelTheory/PartialEquiv/Variante8e5556096c4d0d0a8fbab583f41cee4ec9c0ede431f1cc3fdf231c464fc0f5c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
