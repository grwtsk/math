# Verification target: Cast Lemmas Namespaced Public Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1741a349f3dc5fb6c52c4429354f9eeadc2de03",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantc74dff7a425a956ecc9f810e539f4105225dc095dccb7b9db19c32f7ea20a3b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1741a349f3dc5fb6c52c4429354f9eeadc2de03`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantc74dff7a425a956ecc9f810e539f4105225dc095dccb7b9db19c32f7ea20a3b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantc74dff7a425a956ecc9f810e539f4105225dc095dccb7b9db19c32f7ea20a3b6.lean.json)

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
| 1 | `def` | [ofNatHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ofnathom.md) | 45 | `declaration-track:b0be3045b0b87cb539a7be2d31fef02bdf1765cc5ae54b3afcd77772a1afd254` |
| 2 | `def` | [castAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/castaddhom.md) | 51 | `declaration-track:82cea2e2ab815a8070b642a1438b51ab3f5a3af030c0b05bade9c08af46a9cc1` |
| 3 | `lemma` | [coe_castAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/coe-castaddhom.md) | 59 | `result-track:7d41693ef1506277bf7d7328aa65ba652fb6500c4f38add529613e16dba97a6d` |
| 4 | `lemma` | [Cast Lemmas Namespaced Public Source Edition1](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-source-line-61-occurrence-2.md) | 61 | `result-track:ce574878fbb765159c393bad7f097f2fbb55e097ca92d2674e778628cb666cb4` |
| 5 | `lemma` | [cast_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-eq-zero.md) | 65 | `result-track:bf911a5b15bcec15e90d5ed74a931d068ea5e57ef746fdbf4702816803b7ae26` |
| 6 | `lemma` | [cast_inj](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-inj.md) | 75 | `result-track:942357a5ba7d7caa0f9145b3c68cdf9dae24faed6d9feffa7857b84f9e35fb1f` |
| 7 | `lemma` | [cast_injective](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-injective.md) | 77 | `result-track:72ea12df6af03daa4adeba52a9eda602535f5b80451b8fc2dcafb509955d6c5b` |
| 8 | `lemma` | [cast_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-ne-zero.md) | 79 | `result-track:0bf266c1d0cbc481e118f7d35debac26e1547686de623b8498089e527b9e367d` |
| 9 | `lemma` | [cast_eq_one](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-eq-one.md) | 81 | `result-track:aa1365e8f2da156d3ca6bb437d9ae3338a3186d6364ac9a2d0227c5cd103f61e` |
| 10 | `lemma` | [cast_ne_one](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-ne-one.md) | 83 | `result-track:98c54b34cd914c4409554bba6ffa647bf001225efae894156c8a4556e1002916` |
| 11 | `def` | [castRingHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/castringhom.md) | 93 | `declaration-track:8f849fa83f951f809eeb139a9c47b1f21f6f7ebff14e3ef076aeec6b17d4c127` |
| 12 | `lemma` | [coe_castRingHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/coe-castringhom.md) | 100 | `result-track:45fa3e37bf8a793ec55634fc9732ffe7f7659ce54a897886136fe5b44d7ee7bd` |
| 13 | `lemma` | [cast_commute](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-commute.md) | 102 | `result-track:644fbfca617a5930aab200578e315144a3e464d72836f8ebc422feb38a5754c1` |
| 14 | `lemma` | [cast_comm](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-comm.md) | 108 | `result-track:13e296c5c7c45df8483e3a9afab7665e4b4786771007354c74afc0bfe0424b65` |
| 15 | `lemma` | [commute_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/commute-cast.md) | 110 | `result-track:b415a0d708e3cb18ae06638e960465ab8a973f8569c65cbc83b25c6055e0607a` |
| 16 | `lemma` | [Cast Lemmas Namespaced Public Source Edition1](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zsmul-eq-mul.md) | 112 | `result-track:01a0086ab4a42898dc32fd875e9fe03ec8c29e70068b861b43a4421706574eee` |
| 17 | `lemma` | [Cast Lemmas Namespaced Public Source Edition1](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zsmul-eq-mul-source-line-116-occurrence-2.md) | 116 | `result-track:6f1ad1a31c580a0fb51f18a054f4e25c61e3b5c0c8d02254a7431759a8d2a213` |
| 18 | `lemma` | [Cast Lemmas Namespaced Public Source Edition1](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast.md) | 124 | `result-track:8a96519e8aeac56c7c8c05f3d44c354bef41ba7e8b84ed116b12facf4cc4e662` |
| 19 | `theorem` | [cast_dvd_cast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/cast-dvd-cast.md) | 128 | `result-track:fa7dc0296b15224a94de6bb30aef523b81e441b2f7c5e0510ad623a98e58cdd8` |
| 20 | `lemma` | [intCast_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-right.md) | 140 | `result-track:3372df37f16e88cb5e891a37bfa2e648a7d8b59df4ccc8793e83e7ed1a400fc9` |
| 21 | `lemma` | [intCast_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-left-source-edition-2.md) | 143 | `result-track:f6a25f236d0173186c8226c8e51d4844f7fb53c41ffaf72f84aff4b4ae88e20b` |
| 22 | `lemma` | [intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-intcast-mul.md) | 146 | `result-track:a80f4caac57cc72053f40d2bcec2d64cb82f2e908bdb53230e4a2c6b32e7fb87` |
| 23 | `lemma` | [intCast_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-left.md) | 155 | `result-track:d301bcbd97cb4f85559c26aef51ccde0f85995a5446c478c6a8faa8df5c3fdda` |
| 24 | `lemma` | [intCast_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-right.md) | 157 | `result-track:5d17fc9ec6d9442998a5554b4493063f18944d994b53ef28e9d204bb576f1c57` |
| 25 | `lemma` | [intCast_mul_right](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-right-source-edition-2.md) | 164 | `result-track:908f447ccea5ab0c761ed0fbc3b77d7cc3e19ac3147a239c500851fb48b56a05` |
| 26 | `lemma` | [intCast_mul_left](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-left.md) | 167 | `result-track:c6c90f056297334253d186909b247c1af8af8cda6d3513dd25a91abaec9e4395` |
| 27 | `lemma` | [intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-intcast-mul-source-edition-2.md) | 170 | `result-track:e89644d031cc114062afe3b3302ba76c82e53f9e913e6f67e79c2188214aafa8` |
| 28 | `lemma` | [self_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/self-intcast-mul.md) | 175 | `result-track:706568100ebc7d4c11e9cda18867ffc6bfb8f11b3ec6eab7a71485173edca477` |
| 29 | `lemma` | [intCast_mul_self](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/intcast-mul-self.md) | 177 | `result-track:05fef461208d9f3be43f5990b769661f2315c12d55f013af4fce23d656d975bb` |
| 30 | `lemma` | [self_intCast_mul_intCast_mul](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/self-intcast-mul-intcast-mul.md) | 179 | `result-track:9ad11d3cf786297bae23e907d9e6398eb02e28b4ebd638b0ae2c0450603c3f91` |
| 31 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int-source-edition-5.md) | 192 | `result-track:ed01e94186190294e860ab7b25931b85a4d4c5b2b20e88c4471fe2edcdbee19c` |
| 32 | `theorem` | [eq_intCastAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/eq-intcastaddhom.md) | 201 | `result-track:b8f80f48efa1e8887c3c1c15d22d6ed988d19215eca65cfb68565c8fc711148f` |
| 33 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int-source-edition-6.md) | 212 | `result-track:f4bc5b7533918f75d3808b5030864f450cfa3fab07ce393459a4da1cd1d3a1d6` |
| 34 | `theorem` | [eq_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/eq-intcast.md) | 217 | `result-track:5e4c99b020956d4924ba510c0daf40269568efa56104a8dd0dae5bd9028bb979` |
| 35 | `theorem` | [map_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/map-intcast-source-edition-2.md) | 223 | `result-track:392d6e63bd4ead63da4d2bcfdd78f16d63522b58209530a7f036abc83d799811` |
| 36 | `theorem` | [Int.castAddHom_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/int-castaddhom-int.md) | 228 | `result-track:1ecff3f2d7700eebc50af9d519e0b996f7356172d0d2d6c0fbc54a6465a2620f` |
| 37 | `theorem` | [ext_mint](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-mint.md) | 236 | `result-track:3acfc383c11c8619134155c092fb5aea9eeacb2750d02389f236b60204531ff4` |
| 38 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int-source-edition-4.md) | 241 | `result-track:acc7dff8a9bd7db317423bfcd99ee8951e497b3942a609ba5ab3a33bb6b6ea44` |
| 39 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int-source-edition-2.md) | 257 | `result-track:459ac71b3cf814d806152c9f3e8235eaf67d064bb6199d7c64445e4a451f45ca` |
| 40 | `theorem` | [ext_int'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int-source-edition-3.md) | 266 | `result-track:78db00a175dbc0a7e4316a2ab67b4838a413d99e19cc6be5224c603d42817d10` |
| 41 | `def` | [zmultiplesHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultipleshom.md) | 280 | `declaration-track:6c92d1a5e9aaf7e79e3125cd1f2b1820d9f23baca14a67641ca59697b3aa6ce4` |
| 42 | `def` | [zpowersHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowershom.md) | 291 | `declaration-track:1c49d259f2ea902468af57020e298db308dd7c8e046d06556b8616eeab4053a6` |
| 43 | `lemma` | [zmultiplesHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultipleshom-apply.md) | 294 | `result-track:1c7dc5e1269df239dddde7416354b43b1efbd3756065cbc621ca21c6ef90e994` |
| 44 | `lemma` | [zmultiplesHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultipleshom-symm-apply.md) | 296 | `result-track:d99c279dd00cd00840246ccb9dc379dc6d24134a865e76d5f5352eb253acebad` |
| 45 | `lemma` | [zpowersHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowershom-apply.md) | 298 | `result-track:3f22624f93895d123192ebefac8bbfc2d92ae29e9468fb3b93916d3ef5813c6e` |
| 46 | `lemma` | [zpowersHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowershom-symm-apply.md) | 301 | `result-track:4b4e0cc354042c9722b9bc07eaf446d979216522b5f4aaf87eba299e6e374958` |
| 47 | `lemma` | [MonoidHom.apply_mint](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/monoidhom-apply-mint.md) | 304 | `result-track:7ad8d1cd4ea8729a3b05fe111a17b39ba04f592e0770b8df67487685349567cc` |
| 48 | `lemma` | [AddMonoidHom.apply_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/addmonoidhom-apply-int.md) | 308 | `result-track:fb6b34d85e26c075bc9cdf04404d08bf1878e886aa2bbdd85b5d56f9715bc828` |
| 49 | `def` | [zmultiplesAddHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultiplesaddhom.md) | 317 | `declaration-track:82905f5a2c44a06f7bcec2ed4e64f4c6c865489685542292ac336a9a749e3ce7` |
| 50 | `def` | [zpowersMulHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowersmulhom.md) | 321 | `declaration-track:fde908a51737d7d8171c3836d57e5740a30fd9e7ef2fb6b475ce58b49fd54f08` |
| 51 | `lemma` | [zpowersMulHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowersmulhom-apply.md) | 327 | `result-track:610ffb7b39467482ecdbdcac952639bfb1d446392e1259473df6b69d0aece392` |
| 52 | `lemma` | [zpowersMulHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zpowersmulhom-symm-apply.md) | 330 | `result-track:341426bfcf56ff72d13c58203946cb5a8a971f522706acb3a06e0606c614c00c` |
| 53 | `lemma` | [zmultiplesAddHom_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultiplesaddhom-apply.md) | 333 | `result-track:ff56ae3872724ba15374f6a90a4925e986df07112086eb5ebe87622a3dfd11ba` |
| 54 | `lemma` | [zmultiplesAddHom_symm_apply](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/zmultiplesaddhom-symm-apply.md) | 335 | `result-track:b74a10999d8cb13852bd4291228950649b857cc8bd2bcc9246dbeef33c1b6cd9` |
| 55 | `theorem` | [eq_intCast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/eq-intcast-source-edition-3.md) | 344 | `result-track:d3ceb81bbdbe4f1a2773ba24876e792090868ccf7290f37a47d4ca95566c4ed4` |
| 56 | `theorem` | [map_intCast](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/map-intcast.md) | 348 | `result-track:0c3e037de59283021631df8901955c006e49cfc48f6fafc977060747e004ef47` |
| 57 | `theorem` | [eq_intCast'](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/eq-intcast-source-edition-2.md) | 353 | `result-track:766ca148aa88d03c2c569567a663a89e69862d2ea99626bb42346725cd575f71` |
| 58 | `theorem` | [ext_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/ext-int.md) | 356 | `result-track:3a4ae50924970ec6b436c781d205b5be84da413c0d7728f4eed4f9004e42434b` |
| 59 | `instance` | [Int.subsingleton_ringHom](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/int-subsingleton-ringhom.md) | 359 | `declaration-track:181800daf16f3a74dcd9bb71cdd2d2a0a5ba1c4b0ef70fc40b87701c6cde5f8c` |
| 60 | `theorem` | [Int.castRingHom_int](../../../../../NumberTheory/ElementaryNumberTheory/CastLemmasNamespacedPublicSourceEdition1.lean/declarations/int-castringhom-int.md) | 367 | `result-track:ff6dda8f9f73e3621368a51434143d629bb18912f5334ad3bceeb576451ff04a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e71cdd6b3016c3e132315f6fce6c591ca1c857250cef8de1fd00267ea923798c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Lemmas/Variantc74dff7a425a956ecc9f810e539f4105225dc095dccb7b9db19c32f7ea20a3b6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Lemmas/Variantc74dff7a425a956ecc9f810e539f4105225dc095dccb7b9db19c32f7ea20a3b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
