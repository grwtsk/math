# Verification target: Finsupp Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e60d68ec52bed6bebc71bf574a6e15d10e478229",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e60d68ec52bed6bebc71bf574a6e15d10e478229`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Finsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/finsupp.md) | 88 | `declaration-track:b241c73682f3e9a069f3db3d483c477fd66f4c966497a02e7842f108591e870f` |
| 2 | `instance` | [instFunLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instfunlike.md) | 110 | `declaration-track:8786a499c7a3590c1fb603c14d9badc6db287be98c369bc3650f9795575a4098` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ext.md) | 120 | `result-track:f7aaabff1dd45de7ec1e7adcd6231a70a8e38e1e789e2c2577f076a0a2643c53` |
| 4 | `instance` | [instSubsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instsubsingleton.md) | 123 | `declaration-track:1ecc026c348cb0804894412e9eff126a2746adb7c300ba7f141dcd835d8e7067` |
| 5 | `instance` | [instSubsingleton'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instsubsingleton-source-edition-2.md) | 126 | `declaration-track:2d4791c8ece14b3ff680bcf09fddffcdfc39c85b7af0b6e4767a2899e68a3d58` |
| 6 | `theorem` | [nontrivial_of_nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/nontrivial-of-nontrivial.md) | 130 | `result-track:ba76458c1860b51dd2ff666626744dd9f342b751cb8a7719c920483356a19615` |
| 7 | `lemma` | [ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ne-iff.md) | 133 | `result-track:e5ce8119757d1e626866ed83554d6852563adf2bead2184b8dc41e3ec7d69ab5` |
| 8 | `theorem` | [coe_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/coe-mk.md) | 136 | `result-track:bc27e644ab73fc8ef2f2103bdb7ec26195d3b4c2c082eeaea09d9dc47ac8402b` |
| 9 | `instance` | [instZero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instzero.md) | 139 | `declaration-track:64bdda2abec220e97e51c4f43d279a729cc45791ad170f3aa2997b15d737a164` |
| 10 | `lemma` | [coe_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/coe-zero.md) | 142 | `result-track:46792df765aaec5ae93366921f150c6da7c1d0e9705d8e501c39ca8b69146702` |
| 11 | `theorem` | [zero_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/zero-apply.md) | 145 | `result-track:57929607597aa28d4a3a72d1d5c5d6746041cc70432a708cfd8d0670b07dfdd7` |
| 12 | `theorem` | [support_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-zero.md) | 149 | `result-track:d15b768129e303e433b484e4a85a0566e95a12cba683ab9dde246cbc0c1ec6f0` |
| 13 | `instance` | [instInhabited](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instinhabited.md) | 152 | `declaration-track:224b8b7b9bbc67f2e971353843836bf557f803f8df32fe449389af5b047c761a` |
| 14 | `lemma` | [default_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/default-eq-zero.md) | 155 | `result-track:eabed7f3c68a03beff872e9e909a2b06303b91ddcfe703442e4a5b3c42e64e70` |
| 15 | `theorem` | [mem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/mem-support-iff.md) | 158 | `result-track:7f9d271f03b2fdcc48424ff7e30e73840b2ab60c8ae1dac2da4271afb7cc04ab` |
| 16 | `theorem` | [fun_support_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/fun-support-eq.md) | 162 | `result-track:3bee7ee40ccb83a2db0a8bd3a978238b45cc24aa0b6271bab2d5d56c4e1773a5` |
| 17 | `theorem` | [notMem_support_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/notmem-support-iff.md) | 165 | `result-track:7dcfaeb88d5ab9ef91b2d33bc6d2f6f92d707dbf29cd0f4a2d740e198f81e965` |
| 18 | `theorem` | [coe_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/coe-eq-zero.md) | 169 | `result-track:a07de2c9098ff17b284b9febcbe549af2bfa5215fc5770dd6c12d0d9f96514ec` |
| 19 | `theorem` | [ext_iff'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ext-iff.md) | 171 | `result-track:bdb2dbda299c37b4adbe61c178a12e313196e14d24a33fc51d892da2b92a8f15` |
| 20 | `theorem` | [support_eq_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-eq-empty.md) | 181 | `result-track:925bd51346a8046f3a71c1d6e193e85cf3c635f39120679e9d2f80d3374a2689` |
| 21 | `theorem` | [support_nonempty_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-nonempty-iff.md) | 185 | `result-track:6b49c87cee5ecdbd91081eb37ef8daa779755e9ed1c81136e0e6dc285a9e37c8` |
| 22 | `theorem` | [card_support_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/card-support-eq-zero.md) | 188 | `result-track:cd2338d79fe73ae12f87921908e600d94554f4d40f17f15b5fbd68e03e783d21` |
| 23 | `instance` | [instDecidableEq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instdecidableeq.md) | 190 | `declaration-track:4de0cb959dbeb364101deb705bdad6b986b18219b0dd94518ba0a2c5b1eb172c` |
| 24 | `theorem` | [hasFiniteSupport](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/hasfinitesupport.md) | 194 | `result-track:325d68cd4d44415ac9d6746e61e883ac4b1b50207ad2310d428750e3c8872b4f` |
| 25 | `theorem` | [support_subset_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-subset-iff.md) | 200 | `result-track:601ea84f6d5b7253f86fb7f544a6c9870163a9bba1298d91f1048e9a2359b0f5` |
| 26 | `def` | [equivFunOnFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/equivfunonfinite.md) | 207 | `declaration-track:a2e6a637f33beab2e80808bfd938244f12a6cb1e3b4458da5f20e2e103d33b6b` |
| 27 | `theorem` | [equivFunOnFinite_symm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/equivfunonfinite-symm-coe.md) | 212 | `result-track:d8c29a3d73e11920299d2e46626437562478a8c1afd4dfb1d068407732fb451f` |
| 28 | `lemma` | [coe_equivFunOnFinite_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/coe-equivfunonfinite-symm.md) | 216 | `result-track:6a555a32d5382e98690c14d55e4c5b0754ec0eddfa2bfa1c048a57802bd5b461` |
| 29 | `theorem` | [unique_ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/unique-ext.md) | 219 | `result-track:a507c17333c0cdbcaa1170ce00f45675dd27a013198211480ece1adc8f5f5260` |
| 30 | `def` | [onFinsetSupport](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/onfinsetsupport.md) | 232 | `declaration-track:415a97a9d6a2b000c71fa15acee1449f62b8f3ed1d3c6dc7cacdcc385df2f2b0` |
| 31 | `def` | [onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/onfinset.md) | 239 | `declaration-track:9937f49c74926f0494d78f937a2c8ae187ac402216bb0e68fca5efa017623631` |
| 32 | `lemma` | [coe_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/coe-onfinset.md) | 244 | `result-track:c7d36698de2ec343a19481d922ec1e3f5980563b9b9a83eb5fd9787b88705730` |
| 33 | `theorem` | [onFinset_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/onfinset-apply.md) | 247 | `result-track:cef84f97c368e91f5872b419beb5e7e36d8e853ad681fb19d6d560598ea5cbef` |
| 34 | `theorem` | [support_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-onfinset.md) | 250 | `result-track:a2ad74ecfb9cab1a714dccad8c112c19c9bfb3ed94399fca29a753458056a27f` |
| 35 | `lemma` | [onFinset_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/onfinset-support.md) | 255 | `result-track:f2226a9ea32a9c9c3cc3acc4348c3b1cfd28c4b0562b3f51a7c455f904372e61` |
| 36 | `theorem` | [support_onFinset_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-onfinset-subset.md) | 258 | `result-track:0e6e9d786b8ee412afd81e8e6da416ee16aea7c73232ae50aeddaadec131a3b7` |
| 37 | `theorem` | [mem_support_onFinset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/mem-support-onfinset.md) | 264 | `result-track:4bf0b9891111160e95318c69cfd3673a76d2945b5771a6e89993ba6fd3ad5fe6` |
| 38 | `def` | [ofSupportFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ofsupportfinite.md) | 275 | `declaration-track:09709539b1b9076f58217d788eb75238541b36f63a05bada4d5a33beaafd6daa` |
| 39 | `theorem` | [ofSupportFinite_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ofsupportfinite-coe.md) | 281 | `result-track:41fb2a7168c0de3ee9609d5e7a78a017f29f85dcd346b2dd76c98ce57968206f` |
| 40 | `theorem` | [ofSupportFinite_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/ofsupportfinite-support.md) | 285 | `result-track:1da3993c29ef70c123ba0a90f3f5c701677ed179a0ddd452a7888427450b1361` |
| 41 | `instance` | [instCanLift](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/instcanlift.md) | 289 | `declaration-track:72777b149ed8dc408d45b968085223e7a0c758eaa4596fd6f2291f3a23c8775c` |
| 42 | `def` | [mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange.md) | 314 | `declaration-track:4413c36d02a615b0697c27ebbc609ec148e5b8d132ce3d20beffeeb945c301d0` |
| 43 | `theorem` | [mapRange_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-apply.md) | 319 | `result-track:416951bcf099cd5638139a60ddec1ce67796fe1c7ee01dc52ff60b925835765f` |
| 44 | `theorem` | [mapRange_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-zero.md) | 324 | `result-track:39ee39b53afdc6c8b71841c68fadeefbb4e28df1615950af53db07289dbeecbe` |
| 45 | `theorem` | [mapRange_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-eq-zero.md) | 328 | `result-track:81b0202cd21127b1cd3d41c80cf49d86c66318a1136181077b97d68f5e1cc940` |
| 46 | `theorem` | [mapRange_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-id.md) | 333 | `result-track:e421fe1cd6a1729973d668e0e135682ee4fe75961226113f9e4ab4b24575118f` |
| 47 | `theorem` | [mapRange_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-comp.md) | 336 | `result-track:9b91cda5b59c7cabb9b4bae0ab08e53c125e3cc3686159b33d984cb5f5ec4302` |
| 48 | `lemma` | [mapRange_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-maprange.md) | 341 | `result-track:0d2a648cbcff641f2d5f4d3445c6bfe25af49d1e4743f9ccddb8ec585d17ee5e` |
| 49 | `theorem` | [support_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-maprange.md) | 344 | `result-track:20d72524ef0ef7a55eba6e47a2fff8b331487a308b0df76fde0940a388d58b67` |
| 50 | `theorem` | [support_mapRange_of_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-maprange-of-injective.md) | 348 | `result-track:6c0fd70a818c56265f6b3c33edc2ab5cf5ad010c0e4a568af169187ba32e8eea` |
| 51 | `lemma` | [range_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/range-maprange.md) | 351 | `result-track:da69a442ea32138c1071c406931dc62a7dbd88eba8322c571854ff9ba7188117` |
| 52 | `lemma` | [mapRange_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-injective.md) | 364 | `result-track:cd8ca0a755eb0d59b989167a080e78903f909971c1bc52715df318bb036e6a98` |
| 53 | `lemma` | [mapRange_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-surjective.md) | 371 | `result-track:864d81e75fe178e6e58656af02283f5cda19900f5a7b4f52cc802224e7d307e0` |
| 54 | `lemma` | [mapRange_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-bijective.md) | 376 | `result-track:07bc87774d0970b05c47383f54c3019a4f80d97dc65c7debc9692077d958c5cf` |
| 55 | `def` | [mapRange.equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-equiv.md) | 387 | `declaration-track:cbbe2f8fd04942d3f5b6f4bb2587be77bc4fe515b0c7362ccdc79ea1fff907c9` |
| 56 | `lemma` | [mapRange.equiv_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-equiv-refl.md) | 394 | `result-track:df970a6fd0a4e2a8e7ee11bcc8886ba1af6fcb0f4bdb5849458ea1cceb614f22` |
| 57 | `lemma` | [mapRange.equiv_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-equiv-trans.md) | 396 | `result-track:024e23277f775ef0c826a8e318b7900f3b9192f06b2494dc7de0b1b5c72fdb2e` |
| 58 | `lemma` | [mapRange.equiv_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/maprange-equiv-symm.md) | 401 | `result-track:deaa515e50da51060f53c3410d0ce0b2a5599b67dde5d8eec2a7e84c2910e5c2` |
| 59 | `def` | [embDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain.md) | 416 | `declaration-track:5bce43a98a1d27a34040b226eb075bc526ecafd77e12a9d8089b4d6b2d838861` |
| 60 | `theorem` | [support_embDomain](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-embdomain.md) | 426 | `result-track:84565ddf43f55e5615353eae7a61af0b21afe5c0ad5ca68c5a2dde52206216fe` |
| 61 | `theorem` | [embDomain_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-zero.md) | 430 | `result-track:f71aaed90838ea14d5c92a2068734ffad337cc2b62d0edbf27006d69146617be` |
| 62 | `theorem` | [embDomain_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-apply.md) | 435 | `result-track:7693c10c33363a556974dd456d6732bd6a5ee3c7d334262c20bedf6c155742a5` |
| 63 | `theorem` | [embDomain_apply_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-apply-self.md) | 442 | `result-track:69dde9028d64d268e7e5b32f6ca0a32e82096ed28f95e2f2fb1eed0658d5e420` |
| 64 | `theorem` | [embDomain_of_notMem_range](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-of-notmem-range.md) | 447 | `result-track:5107d6dbdda6b4b5e49591dfb6f6d40d7fc6b316c1123355bd11b47787382bdb` |
| 65 | `theorem` | [embDomain_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-injective.md) | 452 | `result-track:0bf417459dc595da98607ac7ffca400bca3a8cf931c7e90c44ee3fcae1b222bd` |
| 66 | `theorem` | [embDomain_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-inj.md) | 456 | `result-track:11c8e512583ab8659873c0be18cc9147e9e271180ebdbaa934db95df9e5b4d3f` |
| 67 | `theorem` | [embDomain_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-eq-zero.md) | 460 | `result-track:ca84c14d7445333925751b25221de0c06c5d04d4fa21514c6922203c0bb8a4d3` |
| 68 | `theorem` | [embDomain_mapRange](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-maprange.md) | 463 | `result-track:0f1c4b895f2c4e6547d57079cc1089f392167c0ea31ea02ed32430f7d558bd79` |
| 69 | `lemma` | [embDomain_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/embdomain-refl.md) | 467 | `result-track:67da94154f057d32799e922760140d31b680cf679f03b70eef1e78b68bd7d43e` |
| 70 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/zipwith.md) | 482 | `declaration-track:42b8e2b47d082c90fa0b854e1eb632d8ee203e571405de97d2d8039140c5450c` |
| 71 | `theorem` | [zipWith_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/zipwith-apply.md) | 491 | `result-track:a3faa6e605238013613618a5f6d910f04652105afeb1e2cf749d799a8ed66ee3` |
| 72 | `theorem` | [support_zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppDefsPublic.lean/declarations/support-zipwith.md) | 495 | `result-track:0695cd1f88c71b3fcb7639bab5b7c3b570b087461374e0201f84e5fad56aecd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e81051d2ca6ca003a8b03ad740a660f26d863d5b5b122564296d0b18f7b051d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant12d6dd765a6f413ee84b414cbd8dac2b9274a5a2db3fbcb4220446e5449f4af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
