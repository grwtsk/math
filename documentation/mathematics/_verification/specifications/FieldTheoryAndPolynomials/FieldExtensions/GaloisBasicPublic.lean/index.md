# Verification target: Galois Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75ac10c7ad01e8ad002ba01c8c19938fd816aa44",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/index.md) · [Full source](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75ac10c7ad01e8ad002ba01c8c19938fd816aa44`.

Source path: `GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean.json)

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
| 1 | `class` | [IsGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois.md) | 57 | `declaration-track:92aa84330b419bc62ad99a37ee13dac58abf68208c3960b6f49c58332810676a` |
| 2 | `theorem` | [isGalois_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-iff.md) | 63 | `result-track:5432e1eaf6f991392866528b70d7342d0c81e1ff181365c85cc5292c827fd70f` |
| 3 | `instance` | [self](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/self.md) | 75 | `declaration-track:af788ee63f4b40daea2a52f8759181bdc8ebd7d3e53155398d8048c47cb4d420` |
| 4 | `theorem` | [integral](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/integral.md) | 80 | `result-track:8db9bb63dcdb7ae968a85c084d3cc477e2c3fef667b454d81aefc213f70f2032` |
| 5 | `theorem` | [separable](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/separable.md) | 83 | `result-track:a6800ff2738ad15ba06d8ff7fcfaa4b5230a6caffbeba23733d2f94363703631` |
| 6 | `theorem` | [splits](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/splits.md) | 86 | `result-track:f515f7da5e64c6a4dbe7f1abd22bf1978777a0f8740536d3c59c450f7e2da1d0` |
| 7 | `instance` | [of_fixed_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-fixed-field.md) | 94 | `declaration-track:017135e2acf8f3b10bed7af4f8049d7913a19b69c783c25c2f1482752259f02a` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank.md) | 98 | `result-track:fb9184d70c328759a59af5c2781a42a19f30cc54e755e0be67be9c878c8bc975` |
| 9 | `theorem` | [card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/card-aut-eq-finrank.md) | 109 | `result-track:b7442c6e1394893ec9dc9c8d6ffcaf261f583576874fbb336ff36c89b742f285` |
| 10 | `lemma` | [finiteDimensional_of_finite](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/finitedimensional-of-finite.md) | 130 | `result-track:079c4d711dea92051715d11199a49463c99d819ed27d94505219b52abebfd843` |
| 11 | `theorem` | [IsGalois.tower_top_of_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-tower-top-of-isgalois.md) | 152 | `result-track:0b173c021d9f87c691334c5d0ac34a19cee55734d75322a67248f2af3812103d` |
| 12 | `instance` | [(anonymous)](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/instance-source-edition-2.md) | 159 | `declaration-track:c149c774ff9f3cf8e68809b9988b08f9254791922e1fca6dc1038687e6dbd9d7` |
| 13 | `theorem` | [isGalois_iff_isGalois_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-iff-isgalois-bot.md) | 163 | `result-track:0813e7604e82224c76de9cd477380314480d10c0c4d5056d8050f4b8d8080a66` |
| 14 | `theorem` | [IsGalois.of_algEquiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-of-algequiv.md) | 169 | `result-track:c9b7c1f762509df95fe6cc2b379c5d4fabff4cff83edd9b3923488c3ddc5ccdb` |
| 15 | `theorem` | [AlgEquiv.transfer_galois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/algequiv-transfer-galois.md) | 173 | `result-track:60a59dca1a35dc18808934a6822305f8eaf4fef058ef6419a449fbdcdeb4c301` |
| 16 | `theorem` | [isGalois_iff_isGalois_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-iff-isgalois-top.md) | 176 | `result-track:e3dfb34f459965b2b32cda4a72ef1e8ac2441684e49db4b068fbe6767f9f9987` |
| 17 | `instance` | [isGalois_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-bot.md) | 179 | `declaration-track:201f1a3c051135e25015905621c9cc526b8307845fd3fcaf8768f0d9b6e1ad8a` |
| 18 | `theorem` | [IsGalois.of_equiv_equiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-of-equiv-equiv.md) | 182 | `result-track:1ccfdd27aecc27a36927aef3867b14b93ade024cd68de509c5e7ea45dae0f0bd` |
| 19 | `def` | [FixedPoints.intermediateField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedpoints-intermediatefield.md) | 197 | `declaration-track:5ece552929e2899d0468afaf81fa07ebc4c859053f4bb4c28737c1148c0777d5` |
| 20 | `lemma` | [FixedPoints.mem_intermediateField_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedpoints-mem-intermediatefield-iff.md) | 203 | `result-track:64dc26454095ff6d5afe4467632960e9572b5f9318cd79879112f75fad6f1dd1` |
| 21 | `def` | [fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield.md) | 210 | `declaration-track:811f03a9ea01e4dbe6d868a88cb691091c3c9b10ef9fd94f4332f4871859b3eb` |
| 22 | `lemma` | [mem_fixedField_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/mem-fixedfield-iff.md) | 213 | `result-track:d3f3856d64f8db9b504cda596eb11e12e9b345f72fbdf3778fdb586f601e6f25` |
| 23 | `lemma` | [fixedField_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-bot.md) | 218 | `result-track:388a7d7c46619eeb23bd269395cf56f6fcb5b12c8855d0e7b86638c722f9839f` |
| 24 | `theorem` | [finrank_fixedField_eq_card](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/finrank-fixedfield-eq-card.md) | 222 | `result-track:53526cc15e5a8c7afb54a63b3ad9ad34f73f5e8d93b3852c98dc85534baa1871` |
| 25 | `def` | [fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup.md) | 229 | `declaration-track:0670903ad50a1c366691d32106bf8e66da388eee1e773db1cf45e993f0f227e5` |
| 26 | `theorem` | [le_iff_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/le-iff-le.md) | 232 | `result-track:6a67ebfed4e100454d937041c45ff68205da6f1ebf744b24e410e4b6401883db` |
| 27 | `theorem` | [fixingSubgroup_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-le.md) | 236 | `result-track:b285f78f9e2fc0af51c40d3b2df50b4fc7f8e2ce1576dcd0b8c9017c0f4bc366` |
| 28 | `theorem` | [fixedField_le](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-le.md) | 240 | `result-track:d99d8586f8b4002ed10d5dfcb794f8644c4b5677d0a8087805a447161dfef68d` |
| 29 | `lemma` | [fixingSubgroup_antitone](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-antitone.md) | 244 | `result-track:f56e08804f084b455202908cbd91d41fbccf9a2672fa64b36ef6c98abff0e6a3` |
| 30 | `lemma` | [fixedField_antitone](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-antitone.md) | 247 | `result-track:e6cc794632c54ba223ed3f533f1bb6a73c2fca4932dafa304b3816df33b4de02` |
| 31 | `lemma` | [mem_fixingSubgroup_iff](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/mem-fixingsubgroup-iff.md) | 250 | `result-track:aea4fa8dc6557071512189993f387da0201c0accd4c6497e38e98bfd5bf2a894` |
| 32 | `lemma` | [fixingSubgroup_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-top.md) | 253 | `result-track:293db6b1121d8dbdcc8ce6176040ad38e19adb4c2e75732f92fc770ce84caef0` |
| 33 | `lemma` | [fixingSubgroup_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-bot.md) | 257 | `result-track:d883e99989634188620d3bc3573866203e6616366f3ac656210d93a79c4b4947` |
| 34 | `theorem` | [fixingSubgroup_sup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-sup.md) | 261 | `result-track:5d52335eb27d9913175113cdb4a4b184f8050d12050b0617ea926488e988ae8c` |
| 35 | `def` | [fixingSubgroupEquiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroupequiv.md) | 268 | `declaration-track:0728206775a604098174a6561be03d83001484fd8959432f19b06c6625f7099b` |
| 36 | `theorem` | [fixingSubgroup_fixedField](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-fixedfield.md) | 273 | `result-track:527c2b2ca6434c9ef019cce69e08422d26d9c85f167c937af1260bf1e5095219` |
| 37 | `def` | [subgroupEquivAlgEquiv](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/subgroupequivalgequiv.md) | 287 | `declaration-track:5da5e6d004ce7067bce7e980a217a328506fb707e05d09e7af3c7a0142d066bd` |
| 38 | `instance` | [fixedField.smul](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-smul.md) | 291 | `declaration-track:925378a1b698257dea352139c3aa9200f3eadf7febb999ca876f2325d3496a62` |
| 39 | `instance` | [fixedField.algebra](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-algebra.md) | 295 | `declaration-track:2870298a7003e5769be3d9f0fb3b69972e940e7270083eabf7a91a9447390937` |
| 40 | `instance` | [fixedField.isScalarTower](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-isscalartower.md) | 305 | `declaration-track:4447831cd856517fa21be440fda3055465df73412d3e0ef75b41f866b5f66c01` |
| 41 | `theorem` | [fixedField_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-fixingsubgroup.md) | 314 | `result-track:35f05d5238acddc2b77639f2dc0b6792b5a4e47222e2321d01ac92c5607d7284` |
| 42 | `lemma` | [fixedField_top](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-top.md) | 327 | `result-track:cd5508e322268b38475f309228a1cf427d9bd98c613eac856ac088d6a33f1222` |
| 43 | `theorem` | [mem_bot_iff_fixed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/mem-bot-iff-fixed.md) | 333 | `result-track:a095a7e8710dd71cd7f716951a30e840c1f5c0c7e7b28dffd46f1fec2f25981e` |
| 44 | `theorem` | [mem_range_algebraMap_iff_fixed](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/mem-range-algebramap-iff-fixed.md) | 340 | `result-track:276b380d8656377137d999b40bd5b67d1c3b8a83c17f780f7d507d7e77f0b7e7` |
| 45 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/card-fixingsubgroup-eq-finrank.md) | 344 | `result-track:15a3cb001d0bfd8be722c978db8c11e8475b723e3e37c1369d1126346187ce21` |
| 46 | `def` | [intermediateFieldEquivSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/intermediatefieldequivsubgroup.md) | 350 | `declaration-track:14f356ef75520c85212d72620534cd182cb40e0782afeef706296e0dea5c6eb4` |
| 47 | `lemma` | [ofDual_intermediateFieldEquivSubgroup_apply](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/ofdual-intermediatefieldequivsubgroup-apply.md) | 363 | `result-track:0941d142e394e9e3299cb339e6dce30e7b7e10dd20b6d36856e1743db714eebc` |
| 48 | `lemma` | [intermediateFieldEquivSubgroup_symm_apply](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/intermediatefieldequivsubgroup-symm-apply.md) | 366 | `result-track:fb5cdcbf6bef07bc2df66f8fbdade1fa59ef5d53fce1527b2fddb8aefb342b36` |
| 49 | `lemma` | [intermediateFieldEquivSubgroup_symm_apply_toDual](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/intermediatefieldequivsubgroup-symm-apply-todual.md) | 369 | `result-track:1a460889b8c0124427ca7f812172673ab363ffcd3057d5a507484d218f29524d` |
| 50 | `theorem` | [fixedField_eq_iff_fixingSubgroup_eq](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixedfield-eq-iff-fixingsubgroup-eq.md) | 372 | `result-track:ab2797b40f29ee8cf6ec6e5edb3c54c86c33572d2ecebe0ce4352c05f55d568f` |
| 51 | `def` | [galoisInsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/galoisinsertionintermediatefieldsubgroup.md) | 380 | `declaration-track:ba8701dff18f2e9ff7c53852c73bb79b29f80d771d38fa32260487b862f579f7` |
| 52 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/galoiscoinsertionintermediatefieldsubgroup.md) | 391 | `declaration-track:ad29a2713932bbddf232812a54fa09c6a771a8ac65f0464bdd87b4f0eee7a990` |
| 53 | `lemma` | [IntermediateField.restrictNormalHom_ker](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/intermediatefield-restrictnormalhom-ker.md) | 411 | `result-track:e8276bad6a44ec943031ff8b9953496742917720ee2ebf6a049b19c7a75c228e` |
| 54 | `instance` | [of_fixedField_normal_subgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-fixedfield-normal-subgroup.md) | 421 | `declaration-track:1fa502175b6fa0d14ada2bf2cdc4ac60c6b742df0e427261285bb76a647af828` |
| 55 | `def` | [normalAutEquivQuotient](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/normalautequivquotient.md) | 431 | `declaration-track:7b530ea264d7fdedcc9e0c2d252774284d46b8a685ef29e1d44a23a5b6b9bddf` |
| 56 | `lemma` | [normalAutEquivQuotient_apply](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/normalautequivquotient-apply.md) | 437 | `result-track:5e26bd15836acf26b2f4860cb79cc72d72878e02b25b2ad3599393a38e3c35ec` |
| 57 | `theorem` | [map_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/map-fixingsubgroup-source-edition-2.md) | 444 | `result-track:f02c2f88f095f5d6a9f3c75f126b9d6c1a65cf30d3b7bea2b25b83da17b819d6` |
| 58 | `instance` | [fixingSubgroup_normal_of_isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/fixingsubgroup-normal-of-isgalois.md) | 455 | `declaration-track:cd750e92d83a3431c8c14a85c974f8c8a171438bfdf0291c17b330d41e4c0b90` |
| 59 | `theorem` | [is_separable_splitting_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/is-separable-splitting-field.md) | 472 | `result-track:927ff9a22da882153715ce2024ad608958dc0b9aad644c0139c3b3111c852f83` |
| 60 | `theorem` | [of_fixedField_eq_bot](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-fixedfield-eq-bot.md) | 482 | `result-track:0df527f0fd303d14bc2ce1b8b77427862aa9e5a156d2bdc05c4c291b73bc7c2f` |
| 61 | `theorem` | [of_card_aut_eq_finrank](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-card-aut-eq-finrank.md) | 490 | `result-track:9c800afcd59f36ac6a09097d007eaeeb87d15bb7af4c41183cbe255c91a8e6cc` |
| 62 | `theorem` | [of_separable_splitting_field_aux](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-separable-splitting-field-aux.md) | 504 | `result-track:c07b783144f3692eb6b9a6589aa373c0073da005bae3ba54cd4f16a74bebfe45` |
| 63 | `theorem` | [of_separable_splitting_field](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/of-separable-splitting-field.md) | 534 | `result-track:11f5116d7d1a1828bf46d1e76bc6f09308d6ec9dfe89f41e72f050eb106ff470` |
| 64 | `theorem` | [tfae](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/tfae.md) | 540 | `result-track:04cf63cba7ca648fd87da3db4950d64b1f2b526d63e6595faaf29e7512b74cb4` |
| 65 | `theorem` | [sup_right](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/sup-right.md) | 557 | `result-track:7380fb72978756ec47e2e292225bd625d33443636ae721dd07b4d2b8532c3095` |
| 66 | `instance` | [IsGalois.normalClosure](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isgalois-normalclosure.md) | 583 | `declaration-track:adfe8a7cd5edb20a0eafb4c6d69e1c7d5907b9f648e9513054aa2f7cfc3af7d2` |
| 67 | `instance` | [(anonymous)](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/instance.md) | 590 | `declaration-track:92c3b0e176671b3a3e5a44aeec28860a5d0a29c866138329e18750dcdba8919a` |
| 68 | `def` | [restrictRestrictAlgEquivMapHom](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictrestrictalgequivmaphom.md) | 608 | `declaration-track:fe6f151c690c6234c276d7285f5cc6f30b8670b5c2cfe3f781a0d4a07e967227` |
| 69 | `theorem` | [restrictRestrictAlgEquivMapHom_apply](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictrestrictalgequivmaphom-apply.md) | 619 | `result-track:d9fa072b946795a226fe94f3ef85df256e0dc81ccbd6a3bda7c847fc28050b3a` |
| 70 | `theorem` | [restrictRestrictAlgEquivMapHom_injective](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictrestrictalgequivmaphom-injective.md) | 623 | `result-track:7033812c1ade7b317585307c0d0fcdc4210745a5d4be0fa0bdde49827d5b4e76` |
| 71 | `theorem` | [restrictRestrictAlgEquivMapHom_surjective](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictrestrictalgequivmaphom-surjective.md) | 630 | `result-track:789f3167d84ea266b81910f824869ba8cf6c6db730157719c8a80b4fba0d096e` |
| 72 | `theorem` | [map_fixingSubgroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/map-fixingsubgroup.md) | 651 | `result-track:38126063d832b8a8bd36f840effb76e60f259b839f352834cb7157b1e910ec88` |
| 73 | `theorem` | [map_fixingSubgroup_index](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/map-fixingsubgroup-index.md) | 670 | `result-track:68b8c3c3c799a8d7bd7dc7a012a7c3a34b04a72ada6c5c9366e6ee3ca2a4b705` |
| 74 | `theorem` | [finrank_eq_fixingSubgroup_index](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/finrank-eq-fixingsubgroup-index.md) | 678 | `result-track:899f0243a7d6f2f822d7e9327a7f33c3be33bdb86946d1e102e984a0c995a5b2` |
| 75 | `theorem` | [AlgEquiv.ker_restrictNormalHom](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/algequiv-ker-restrictnormalhom.md) | 712 | `result-track:15554615a3eef90a603b16bcc55ea54fb6d1bda63a36eab8e9262ecbca4f5627` |
| 76 | `def` | [restrictNormalHomSupProd](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictnormalhomsupprod.md) | 732 | `declaration-track:792bf5974b2d13fd4e502cc2f3b9e585958b53241e656b3bb2fc6038ad112582` |
| 77 | `theorem` | [restrictNormalHomSupProd_injective](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/restrictnormalhomsupprod-injective.md) | 742 | `result-track:9275499373c9b3ecc62d2104b2fb41c4e9ce677babcbca22054009b551850b1e` |
| 78 | `instance` | [IsQuadraticExtension.isGalois](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isquadraticextension-isgalois.md) | 766 | `declaration-track:09cbf7c8b9a037b26f67a82e28d077da1ac0f4774f576b7988027a6c30563de3` |
| 79 | `instance` | [IsQuadraticExtension.isCyclic](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isquadraticextension-iscyclic.md) | 771 | `declaration-track:58068c7d70f5aec4a7547488cece534eeae738bd97155e2624495eef1561eab8` |
| 80 | `theorem` | [IsQuadraticExtension.isMulCommutative_galoisGroup](../../../../../FieldTheoryAndPolynomials/FieldExtensions/GaloisBasicPublic.lean/declarations/isquadraticextension-ismulcommutative-galoisgroup.md) | 780 | `result-track:b7b55ae22b8836000473dac5a48b50cfe1608c0ee738c6fae0ebfe655ee63001` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e0a9d351c766eee464c6da913fd4c6c638de7a651740088dca0f2c5ab6789aa2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant59d802b6f4f3b7f44c18035fa37991962c37e28aef73d6e2859135db0b107ba5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
