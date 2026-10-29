# Verification target: Complement Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34c95eab8f317f84942becdbf02f661b92d1ab90",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34c95eab8f317f84942becdbf02f661b92d1ab90`.

Source path: `GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean.json)

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
| 1 | `def` | [IsComplement](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement.md) | 48 | `declaration-track:0dc452dbad2f2e5d3c10e7a6e6166486bd77125fa486f3fedf2eeb09f8a732f7` |
| 2 | `abbrev` | [IsComplement'](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-source-edition-2.md) | 53 | `declaration-track:156047fc58121dba8d48a51f9bb4fb7c901f0ddb6dec124cec7f6be4fad211f9` |
| 3 | `theorem` | [isComplement_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iff-bijective.md) | 60 | `result-track:54951927fce9ee6a4df9f354bcda10c6380db8dfd6f41e7c7a86d96ca5f97e03` |
| 4 | `theorem` | [isComplement'_def](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-def.md) | 65 | `result-track:20fe13865820735d62b24c5a55877091b18e74724dff5a389d97896b7e05fd22` |
| 5 | `theorem` | [isComplement_iff_existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iff-existsunique.md) | 69 | `result-track:fad7735265a52bd398d61b2a3601a826c469b6c4cefbed5334e38920b8e31aef` |
| 6 | `theorem` | [IsComplement.existsUnique](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-existsunique.md) | 74 | `result-track:834a5be6a90ea9e37bca61ee1071bbb3b2bce7c818bc02675682e553928bcf11` |
| 7 | `theorem` | [IsComplement'.symm](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-symm.md) | 79 | `result-track:4dc42ed309f1cbf14985edbe988d64eba203bad23cee9917e036116dec623e39` |
| 8 | `theorem` | [isComplement'_comm](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-comm.md) | 90 | `result-track:0a36597a29dc887d621028463b5517e3c8bc5bfcaf4d69d116963aad255b6975` |
| 9 | `theorem` | [isComplement_univ_singleton](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-univ-singleton.md) | 94 | `result-track:77cdb9ea30d7679e49ccf3a11905d71cbecc78e3f3ad0f07b90ffa68a9515fe2` |
| 10 | `theorem` | [isComplement_singleton_univ](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-singleton-univ.md) | 99 | `result-track:e9f4a698c23bdf4a73b2084be8e7f8b18025ec6f960c1fde09443898fb835e8a` |
| 11 | `theorem` | [isComplement_singleton_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-singleton-left.md) | 104 | `result-track:487fc3387af7c9f609887e655a8283238e452b815bddaefdfd3a3418c7245a3c` |
| 12 | `theorem` | [isComplement_singleton_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-singleton-right.md) | 111 | `result-track:5c0b1780e9148defc9ee24c4aec1f58c33cee274a3db6c610d659a6a9912b142` |
| 13 | `theorem` | [isComplement_univ_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-univ-left.md) | 120 | `result-track:a1595b3fe7d4b6a12f00dca72bd76eebdf0e3f0f1a7347d878038e37e3306a56` |
| 14 | `theorem` | [isComplement_univ_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-univ-right.md) | 132 | `result-track:801aed24490b284e42733c1c220e884c6268ad93ee9fd36d727c6699fdf76bc0` |
| 15 | `lemma` | [IsComplement.mul_eq](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-mul-eq.md) | 144 | `result-track:d31f935261380ce6a7d1a26a1db799c849b111548e3ee01a9bad7c17b4fe6cb9` |
| 16 | `lemma` | [not_isComplement_empty_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/not-iscomplement-empty-left.md) | 148 | `result-track:c9bf5ce49616673d5c4fd28f12c2ca8b4f19d354e7da6b01fc458680fae83725` |
| 17 | `lemma` | [not_isComplement_empty_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/not-iscomplement-empty-right.md) | 152 | `result-track:78344642f19c9f9b434b12c11f0267060b8b88c2215d56cdf3072c6e52208f89` |
| 18 | `lemma` | [IsComplement.nonempty_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-nonempty-left.md) | 156 | `result-track:e9e82b9d769bdd372e315f1591503a5297b8bea3022545b6b9328c30b5b26f6f` |
| 19 | `lemma` | [IsComplement.nonempty_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-nonempty-right.md) | 160 | `result-track:b57d20661d82ff0fde6e9b5f2ce8574f44dbdb3f75a046928cdfa5d44c8b7799` |
| 20 | `lemma` | [IsComplement.pairwiseDisjoint_smul](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-pairwisedisjoint-smul.md) | 163 | `result-track:348c1b7e1d05ccb55f2922041a0ebe2758d98f3267f14286cfe8a54ef52c0aaa` |
| 21 | `lemma` | [IsComplement.card_mul_card](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-card-mul-card-source-edition-2.md) | 169 | `result-track:7ba55b3b1272cf2eebc5097bd3b4f01bd9d446331907e8d5aaa0d1dcd10fdf36` |
| 22 | `theorem` | [isComplement'_top_bot](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-top-bot.md) | 173 | `result-track:ba52288044d913461f286a8561cd2dde1a5aa5137a9e428fe59f396c42d24f79` |
| 23 | `theorem` | [isComplement'_bot_top](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-bot-top.md) | 177 | `result-track:03d134ad2e74524d5b0fc2c7582b1c259a17efdb0d7b380870127e1e6ce62dfe` |
| 24 | `theorem` | [isComplement'_bot_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-bot-left.md) | 181 | `result-track:37670dcc2d11ea020bc46182baebf00deee7ceac123120e2d785a6c7a124aab7` |
| 25 | `theorem` | [isComplement'_bot_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-bot-right.md) | 185 | `result-track:a7136b4ca30ef193fe8a3399185ac6096f45dfcdc5377c711ac256bf7a048ea6` |
| 26 | `theorem` | [isComplement'_top_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-top-left.md) | 189 | `result-track:851b6c3d60ccd5adf3e6398b3d7f8977d23550c3493b48b45cf767611155f036` |
| 27 | `theorem` | [isComplement'_top_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-top-right.md) | 193 | `result-track:09bf814ef5ac6043e656ab5572e86f4d624598fa966555d9f18eb21060a57137` |
| 28 | `lemma` | [isComplement_iff_existsUnique_inv_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iff-existsunique-inv-mul-mem.md) | 197 | `result-track:82e983cc22b3af4453b8cfabae953fd9493dc0d049fe8e5fd0ceff293419b257` |
| 29 | `lemma` | [isComplement_iff_existsUnique_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iff-existsunique-mul-inv-mem.md) | 205 | `result-track:9a7839079b07fd7ff6060eb0cc80fee154fec50b66eda71f3759d0d107fe74ca` |
| 30 | `lemma` | [isComplement_subgroup_right_iff_existsUnique_quotientGroupMk](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-subgroup-right-iff-existsunique-quotientgroupmk.md) | 213 | `result-track:b9ebaf4c905b531069eea60b8409bd08fd6f7e66573d4f4b1f85b36e531975af` |
| 31 | `lemma` | [isComplement_subgroup_left_iff_existsUnique_quotientMk''](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-subgroup-left-iff-existsunique-quotientmk.md) | 220 | `result-track:4a05654c5a342f76ebf1a1e63f7cf251a0dd819a3419343cfe05ff02e271ff1f` |
| 32 | `lemma` | [isComplement_subgroup_right_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-subgroup-right-iff-bijective.md) | 227 | `result-track:c8055b13b166cee095867da7aad342260c6bdc6be880205a6f92048b99211296` |
| 33 | `lemma` | [isComplement_subgroup_left_iff_bijective](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-subgroup-left-iff-bijective.md) | 233 | `result-track:284c9b8fb14d368420125e9471d2861e4afc13187146c40b5ab3508636e46fe7` |
| 34 | `lemma` | [IsComplement.card_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-card-left.md) | 240 | `result-track:887cf0cc7e20673049c9f1d563c4488bb99a90491a34f80dd33022d9edaae9a4` |
| 35 | `theorem` | [IsComplement.ncard_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-ncard-left.md) | 244 | `result-track:7107c842cf82188e478ab588c05ba73717925667d2c93dea547ff961de794ae2` |
| 36 | `lemma` | [IsComplement.card_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-card-right.md) | 248 | `result-track:63567da044a00dd72603990fc4d163dd7b9ee3c8bc3c14367480b61b1432dc80` |
| 37 | `theorem` | [IsComplement.ncard_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-ncard-right.md) | 253 | `result-track:0d2bdeb68646a7c2d2638a8218f5c3d5c959cc21dfaf34c1516062c522421b27` |
| 38 | `lemma` | [isComplement_range_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-range-left.md) | 257 | `result-track:88530c61daf01786e6425572642bd678fbf5aaad2fac47a7c240c31e2f233c8a` |
| 39 | `lemma` | [isComplement_range_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-range-right.md) | 265 | `result-track:f1f7c98734cb290dc2bb84ecfe29513eeca6363ac877e4e9dbda42b48acaf58e` |
| 40 | `lemma` | [exists_isComplement_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/exists-iscomplement-left.md) | 273 | `result-track:84786e10ea456b58a679940d32f6eeb97876fdb1574edabbfb9d056ee3be6035` |
| 41 | `lemma` | [exists_isComplement_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/exists-iscomplement-right.md) | 282 | `result-track:027d791e5e96b69ce436140974ff3dfeb25f7c46b2e3a5df4eea996271d37580` |
| 42 | `lemma` | [exists_left_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/exists-left-transversal-of-le.md) | 293 | `result-track:8f5cf3655eaac0f75343dd11f388909c18cc24b36303e017ba73880abf37d333` |
| 43 | `lemma` | [exists_right_transversal_of_le](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/exists-right-transversal-of-le.md) | 309 | `result-track:ce373a70356cf1f596a49eba19455f4684250b7ac15e81f14124da5b8172946b` |
| 44 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv.md) | 327 | `declaration-track:2e95922cb186264adf31ba769c50e21ddaa0274e70d933189466bfeffc057d3c` |
| 45 | `theorem` | [equiv_symm_apply](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-symm-apply.md) | 332 | `result-track:eee4446c26dd4f605f6b4259ae7ef4e698842a6909df571ed667b1813e328f43` |
| 46 | `theorem` | [equiv_fst_mul_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-mul-equiv-snd.md) | 335 | `result-track:0a55e6af7a3400a43b68884757187d692924714bfb1c8d16357682abf7906a13` |
| 47 | `theorem` | [equiv_fst_eq_mul_inv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-eq-mul-inv.md) | 338 | `result-track:91485c61fb9e1b16fc8322757fdd22f3c5f415909aab7d168fb14ac5b92d95b6` |
| 48 | `theorem` | [equiv_snd_eq_inv_mul](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-snd-eq-inv-mul.md) | 341 | `result-track:f16e2b1535543447ef3f7d001954b9b4d3302595977f6f378264230f62dac9f8` |
| 49 | `theorem` | [equiv_fst_eq_iff_leftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-eq-iff-leftcosetequivalence.md) | 344 | `result-track:cc07fd3e057810e3dd7df62560ad12742c8e6f245c15afd60b7fcfd9de352b0c` |
| 50 | `theorem` | [equiv_snd_eq_iff_rightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-snd-eq-iff-rightcosetequivalence.md) | 360 | `result-track:8656c2fb59f37e18d6321651a719768d5c48e4d4158d6761d00f34ad24017525` |
| 51 | `theorem` | [leftCosetEquivalence_equiv_fst](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/leftcosetequivalence-equiv-fst.md) | 376 | `result-track:07e6a0c7db772198d0a44201486767d2cb6aeaffc870166fe1ee526a052f415c` |
| 52 | `theorem` | [rightCosetEquivalence_equiv_snd](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/rightcosetequivalence-equiv-snd.md) | 381 | `result-track:59fa777fed0c41a87da6d89c011b2e424323a1efff414b2bc71f39c5af1fe432` |
| 53 | `theorem` | [equiv_fst_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-eq-self-of-mem-of-one-mem.md) | 387 | `result-track:6ba06c088e41240914a52e250be240ea9f7b9e92234a5291c48c44fec1bd2017` |
| 54 | `theorem` | [equiv_snd_eq_self_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-snd-eq-self-of-mem-of-one-mem.md) | 394 | `result-track:89e8738851222c37dbad478928dc141f9cfb2d22b9a6c15dac8746f1396d11f0` |
| 55 | `theorem` | [equiv_snd_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-snd-eq-one-of-mem-of-one-mem.md) | 400 | `result-track:a58163f6720c19754b11c52f06a7a3d4f9af40b4d63b4914f17a4b41896d7eb8` |
| 56 | `theorem` | [equiv_fst_eq_one_of_mem_of_one_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-eq-one-of-mem-of-one-mem.md) | 405 | `result-track:c33762836f195c4b22edaf43edc227f1a44289e8f9e774bf9060bb66f5020b8e` |
| 57 | `theorem` | [equiv_mul_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-mul-right.md) | 410 | `result-track:e0d0636ceaf93444da4fe8b72ef166f5591b741123024c55571d1fdeef51669d` |
| 58 | `theorem` | [equiv_mul_right_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-mul-right-of-mem.md) | 419 | `result-track:bd066ac38c550dd4d8e5ab68d152b9566afaa800e8b9b3e79064b268f1353814` |
| 59 | `theorem` | [equiv_mul_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-mul-left.md) | 423 | `result-track:669130da315e6120911dc43f3bfb366b7979f23f37f51e128c0b1737188e9658` |
| 60 | `theorem` | [equiv_mul_left_of_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-mul-left-of-mem.md) | 431 | `result-track:e9a0dfb6e0eaaca36c132b5a79583c3447526827174a7a8452b9ebfb7287b8d9` |
| 61 | `theorem` | [equiv_one](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-one.md) | 436 | `result-track:4490783948a91459e0e2330f8173f0f24f942994565ace7da6889f848ed231e6` |
| 62 | `theorem` | [equiv_fst_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-fst-eq-self-iff-mem.md) | 440 | `result-track:3f2d74ff1a9cf956996e6425fb54a0578a02bf990598362114e03670183a3dfe` |
| 63 | `theorem` | [equiv_snd_eq_self_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/equiv-snd-eq-self-iff-mem.md) | 449 | `result-track:b535435ab2a6c922e3cd7f06bfc1326a6c1c1f6327da22ec5978fc2c82bf8249` |
| 64 | `theorem` | [coe_equiv_fst_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/coe-equiv-fst-eq-one-iff-mem.md) | 458 | `result-track:98640af3b6389d0280a0a213af37dc1e3e657f784f687ed41220cc175be69534` |
| 65 | `theorem` | [coe_equiv_snd_eq_one_iff_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/coe-equiv-snd-eq-one-iff-mem.md) | 462 | `result-track:cabb05a7bef736b5cca330983392f26148af04f35af29ea52403ee7373f9749c` |
| 66 | `def` | [leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/leftquotientequiv.md) | 468 | `declaration-track:9bcaffda1e1665a46721ba93509130cf2c3947615e8d90e20b89d55011813e17` |
| 67 | `theorem` | [finite_left_iff](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/finite-left-iff.md) | 473 | `result-track:424c10ede7a1df2f1cf20b2f9ada371e10e3b260e29f61172d48b6ecf633a0be` |
| 68 | `lemma` | [finite_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/finite-left.md) | 478 | `result-track:74a1ddcd041175b7028106403fb3300303a78bcbbd92b879276e613163d5bcad` |
| 69 | `theorem` | [quotientGroupMk_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/quotientgroupmk-leftquotientequiv.md) | 481 | `result-track:36f17cc6ab34d7492883bd295409545828f2d6a111e9d43ee5993ee8de19771b` |
| 70 | `theorem` | [leftQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/leftquotientequiv-apply.md) | 486 | `result-track:2bc85d32b6ae03f26c05b071e2ce57a7ddec92c4b543989a315fda93abd4578f` |
| 71 | `def` | [toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/toleftfun.md) | 495 | `declaration-track:983a40b983116edd3234952f3ba0a1225ef2bbcb41de40ac574162e6b866c4e6` |
| 72 | `theorem` | [inv_toLeftFun_mul_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/inv-toleftfun-mul-mem.md) | 498 | `result-track:f24aa107dbb8a073f2a1023d423e3e6873eef9d24b1d3b210f99fcfa97c5b123` |
| 73 | `theorem` | [inv_mul_toLeftFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/inv-mul-toleftfun-mem.md) | 503 | `result-track:35fa25414d2abcd1df35fd1b1f296c6350d486eee51da1b4b6c6165a774aa0c9` |
| 74 | `def` | [rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/rightquotientequiv.md) | 509 | `declaration-track:45d8ec78059c2769013bcefef8af21a9b763cd258b946755e2c3ad20ada0dd19` |
| 75 | `theorem` | [finite_right_iff](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/finite-right-iff.md) | 515 | `result-track:d10ebf58c526a286c94b1c661fdb63ca05531c6fbcffb8868161cb613b9b0a28` |
| 76 | `lemma` | [finite_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/finite-right.md) | 521 | `result-track:24f14545b2da3bad624b8bcb2a4e0f1cdba835ae270bd9ba24f5ff251d93ea0f` |
| 77 | `theorem` | [mk''_rightQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/mk-rightquotientequiv.md) | 524 | `result-track:59ce36558461e21bb2042b3db6aa04f1872f5d956f7e87e828150c4e0bb567a6` |
| 78 | `theorem` | [rightQuotientEquiv_apply](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/rightquotientequiv-apply.md) | 529 | `result-track:fbf41f83c58aa3a9afc27f60afb8b8ebff263e62efdd2fdd10930b9bbec82a96` |
| 79 | `def` | [toRightFun](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/torightfun.md) | 539 | `declaration-track:b26ddbfc5709b92d486366963283f8ca3b9274225d952e367c726cb18c8f26b0` |
| 80 | `theorem` | [mul_inv_toRightFun_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/mul-inv-torightfun-mem.md) | 542 | `result-track:41507452dd07ad0e11e54994758379d5f0ae50ce2b545e45bfdfab77d92ac3b6` |
| 81 | `theorem` | [toRightFun_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/torightfun-mul-inv-mem.md) | 547 | `result-track:aca36410717bbeb06954f29df07b3e2dda80a61a4dcbd7659f91de923483f425` |
| 82 | `theorem` | [encard_left](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/encard-left.md) | 552 | `result-track:cff6f5097d44f5aa0804fbb3ac1cfa934f5fb7443d4162e2ec728fe184cf2c03` |
| 83 | `theorem` | [encard_right](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/encard-right.md) | 556 | `result-track:5ea35bdb05b399c2d4a67ace30c03e9ceeb778273dbfbbb5d343efb86ce4f480` |
| 84 | `abbrev` | [LeftTransversal](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/lefttransversal.md) | 568 | `declaration-track:b28a7e2b123401b309a02ede17938f0088b03ce49098c9d2d7b40a4bafa4cc40` |
| 85 | `abbrev` | [RightTransversal](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/righttransversal.md) | 572 | `declaration-track:a04537c2c5f2fb8f152ca42e9e522585c943eed3baba338ad67af780699dc128` |
| 86 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/instance-source-edition-3.md) | 577 | `declaration-track:f3eac9cc4cbabe9b42806a00c4f903b8f4c4d35d2622a467cd95a5a7025ef24d` |
| 87 | `theorem` | [smul_toLeftFun](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/smul-toleftfun.md) | 592 | `result-track:8e4eaabe0be148963b8ddcfa5f3331874df28275a61b60724a96085abd1dd923` |
| 88 | `theorem` | [smul_leftQuotientEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/smul-leftquotientequiv.md) | 602 | `result-track:b5b7f2f6df2be809ad96a16076b4bd5ffd9db833cd43bb5ac863ed4ea29842f8` |
| 89 | `theorem` | [smul_apply_eq_smul_apply_inv_smul](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/smul-apply-eq-smul-apply-inv-smul.md) | 607 | `result-track:b0328cfe8d6c69878f9ad89f82f94cc045d88ff14766abd3dd6a7ec19f86c050` |
| 90 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/instance-source-edition-2.md) | 616 | `declaration-track:c7ad3a3f460bdb94a620a38d7d919b917edb06a0fc78280dfc2165b0fdca98d4` |
| 91 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/instance.md) | 622 | `declaration-track:b480221811df667495c2d3a6220b4a72d102d01b1c5598d7236675ace7b0ed94` |
| 92 | `theorem` | [IsComplement'.isCompl](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iscompl.md) | 625 | `result-track:a419296cb75730775006bbc9627f3f8c3ff5630719a29ecff050a929e0ec2022` |
| 93 | `theorem` | [IsComplement'.sup_eq_top](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-sup-eq-top.md) | 636 | `result-track:31b21c46c880a76ac1cc67ec5372964656a348a6c011934558065c885b594f70` |
| 94 | `theorem` | [IsComplement'.disjoint](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-disjoint.md) | 639 | `result-track:88ab78fa4ded5250296a6499105712250c923302f78084b4aae5fa3ac29e180a` |
| 95 | `theorem` | [IsComplement'.index_eq_card](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-index-eq-card.md) | 642 | `result-track:5fe1effbe94b57a2161baac6f4c285ff42e67845d680b99adf52459c8564d965` |
| 96 | `def` | [IsComplement'.QuotientMulEquiv](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-quotientmulequiv.md) | 650 | `declaration-track:2cac36122ec1cda69bf33dbe802dbbe7e614be37688fc8432a50e2a20a27bfd9` |
| 97 | `theorem` | [IsComplement'.card_mul_card](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-card-mul-card.md) | 656 | `result-track:4a6954cd5cc737408ffde8f0b35c0ab686fd84a034081d4d5cd0351599f04da5` |
| 98 | `theorem` | [isComplement'_of_disjoint_and_mul_eq_univ](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-of-disjoint-and-mul-eq-univ.md) | 666 | `result-track:57c1b23a6476499852ad951d61035dd8aff1b49e3e937d3291377e3d8e99429a` |
| 99 | `theorem` | [isComplement'_of_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-of-card-mul-and-disjoint.md) | 672 | `result-track:6c84d7452c67fbb7bd207a6682f00ab968d344ee42f7bc23316409e87165d7bb` |
| 100 | `theorem` | [isComplement'_iff_card_mul_and_disjoint](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-iff-card-mul-and-disjoint.md) | 678 | `result-track:d3886e4a71b8b6f9db133a3957911c4dbbd83bbac5eb91789d302878bc526ddd` |
| 101 | `theorem` | [isComplement'_of_coprime](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-of-coprime.md) | 682 | `result-track:94c2d9be773091f49d197835f1ce4baf8dc74dfca936930e49e9d1007f0e88f2` |
| 102 | `theorem` | [isComplement'_stabilizer](../../../../GroupTheoryAndGeneralizations/ComplementPublic.lean/declarations/iscomplement-stabilizer.md) | 687 | `result-track:ca19dd9e57a2ea4e0d26c9b5ca35dbe53266f5a013a19d4bf0e5f9d87154dea0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1e2e434d4646b0174ca9ab6672cb1e041b69719c60bfab36b910e28f9e0d1ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Complement/Variantd659f98281c08db18296576007ef150b0c41600767f0342f777d039cedee0931.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
