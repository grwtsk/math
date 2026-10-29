# Verification target: Big Operators Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b4d01ce424c4d27f6dc84879de1ba7d850232f45",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant04fc7010d40ea55aea2ef31d5db093cbd28bd1c03e543da4ed57fbd41a984f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b4d01ce424c4d27f6dc84879de1ba7d850232f45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant04fc7010d40ea55aea2ef31d5db093cbd28bd1c03e543da4ed57fbd41a984f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant04fc7010d40ea55aea2ef31d5db093cbd28bd1c03e543da4ed57fbd41a984f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Forall2` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-nil.md) | 29 | `result-track:e34c3dd07955ff37111e22d5f5e06d8ee9ea13c2db2a965a985e1fad700d5ffd` |
| 2 | `theorem` | [prod_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-singleton.md) | 35 | `result-track:e54e629cc121496881368328a012872691b47bd02624cfa7d3febd8096fe1722` |
| 3 | `theorem` | [prod_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-cons.md) | 41 | `result-track:5690b7ff812050a5e37a82ad795e710dcaa32c5072ef6b41dfc156d6155f9c2c` |
| 4 | `theorem` | [prod_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-append.md) | 50 | `result-track:c1a981e86dd9ae83047d3003f31cfe1bb53b3c1b6688e2382e2b0d0361ca50c0` |
| 5 | `theorem` | [prod_concat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-concat.md) | 58 | `result-track:c600187509cad8e3cb37fafebaff23779bc182f17b215ed0e7f89f5f5bec6119` |
| 6 | `theorem` | [prod_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-join.md) | 64 | `result-track:a512a4d42a434d519d4e053c38050af0c72df232462910db88a6f5da1c49abd0` |
| 7 | `theorem` | [prod_eq_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-eq-foldr.md) | 70 | `result-track:c0024da565fbb73f9c7f10cc6d964ac6d150941004f46121c849ab541843ddb1` |
| 8 | `theorem` | [prod_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-replicate.md) | 77 | `result-track:f18d5ed767ac745c3ca0b7b751aa00da4fae94d57243dc90861d1d68cb383584` |
| 9 | `theorem` | [prod_eq_pow_card](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-eq-pow-card.md) | 86 | `result-track:a4f6ddda76a0d1f9ddabd815f998fc638fce046cc550b6a69c2643eba52ae0e3` |
| 10 | `theorem` | [prod_hom_rel](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-hom-rel.md) | 92 | `result-track:77aa81e77f720745639576409b84de1a65fbbafb4238e2f59d376cb613c99c58` |
| 11 | `theorem` | [prod_hom](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-hom.md) | 99 | `result-track:6e9649252f2d19bb566cfaca0ce74f7cedfdf83fdca2a9bf3df2ca07b381cf94` |
| 12 | `theorem` | [prod_hom₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-hom-source-edition-2.md) | 107 | `result-track:86b7d572d7c1c3c9123be355d5370a4334c17b3b70cdd42f5f1fbd7af3fad67c` |
| 13 | `theorem` | [prod_map_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-map-mul.md) | 122 | `result-track:f11c1863037471f39787fff960f82ab4bd32dbc8e49e06c0761b58bb5698572c` |
| 14 | `theorem` | [prod_map_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-map-neg.md) | 129 | `result-track:29824dc12a263ee7577ca2db8c39c2afbd432e20679dfb969a84c668ab03b1a7` |
| 15 | `theorem` | [prod_map_hom](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-map-hom.md) | 136 | `result-track:5b99c870359bb1078408d55681269abd9bd954a2d752a3371ca00c626e41defa` |
| 16 | `theorem` | [prod_isUnit](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-isunit.md) | 142 | `result-track:83c148ed333e880cb5deb4e1b74da414e6ae83ff7a2c109857cdcdaeb4060413` |
| 17 | `theorem` | [prod_isUnit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-isunit-iff.md) | 151 | `result-track:a777eec3017a574b9bc0f2a2b6824a80f49420e235a0300e85876c9bcf44a031` |
| 18 | `theorem` | [prod_take_mul_prod_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-take-mul-prod-drop.md) | 162 | `result-track:2bb9e95ef319770496b9aa12bcc9fe6e7c594aac8e77398be533f2fe13cb7f74` |
| 19 | `theorem` | [prod_take_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-take-succ.md) | 172 | `result-track:ed02a2dd17b727de8ca65d1aab7a6c9f52655f6834571df3a6542ebe8f541c74` |
| 20 | `theorem` | [length_pos_of_prod_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/length-pos-of-prod-ne-one.md) | 186 | `result-track:98cf8a3afe1aabbad9204ba59046a462819bbd21ece00c60aa43dd3c5c07e338` |
| 21 | `theorem` | [length_pos_of_one_lt_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/length-pos-of-one-lt-prod.md) | 196 | `result-track:8512d940d8dd7c48fefebc4ca488b81d5e95c206e7d30405bcbad8bc6bf2035f` |
| 22 | `theorem` | [length_pos_of_prod_lt_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/length-pos-of-prod-lt-one.md) | 203 | `result-track:89b6f104b3a9b3ec962ef46fda7c8f8f35a91ab4109d9eb60c89f6ad8fd1a07e` |
| 23 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-set.md) | 209 | `result-track:72426e229c2a197b1f00ae2033694b057853f40ca7707e6d57e3cf5674f29fda` |
| 24 | `theorem` | [get?_zero_mul_tail_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/get-zero-mul-tail-prod.md) | 228 | `result-track:6adfc5448d8ad51e008359e6286b52d5cbd423a0c7ee58f7d69a932f7889c8a3` |
| 25 | `theorem` | [headI_mul_tail_prod_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/headi-mul-tail-prod-of-ne-nil.md) | 237 | `result-track:f3b97328d63e9be35b3c600aa7520f1bb5168da1f2c26bc49c1d3f454ae9632c` |
| 26 | `theorem` | [_root_.Commute.list_prod_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/root-commute-list-prod-right.md) | 243 | `result-track:bd4697794ae86d5a4657f9c6871a412fb1b7fa423ef748a2e2b71251d7dae76d` |
| 27 | `theorem` | [_root_.Commute.list_prod_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/root-commute-list-prod-left.md) | 254 | `result-track:08c1ec4eca336e7e70bcf726747d332c39c05982c0baa4a8e3bc98f122090b6c` |
| 28 | `theorem` | [Forall₂.prod_le_prod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/forall-prod-le-prod.md) | 261 | `result-track:2b909b7cfca15809b313c4bec88649844ec9e80423aa30ea06c0b22598832c0a` |
| 29 | `theorem` | [Sublist.prod_le_prod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sublist-prod-le-prod.md) | 277 | `result-track:75a9f33e5fcb0ab0235ad0ba624c579cf388a30c7db9fe9b341a5edebccdcf87` |
| 30 | `theorem` | [SublistForall₂.prod_le_prod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sublistforall-prod-le-prod.md) | 292 | `result-track:d1c796bd2c79995bb73c19a5ceceeb0e47e7eb39ae26cf7d69889feabc4f21f6` |
| 31 | `theorem` | [prod_le_prod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-le-prod.md) | 302 | `result-track:87a894849f3483ef9fafe035363fdd0475281ed81252247e351ea74cf9049090` |
| 32 | `theorem` | [prod_lt_prod'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-lt-prod.md) | 310 | `result-track:e3b07b3e9f0a410ab830e86b8d8470ae142de04f9bb0754c15871ef86b44f4b8` |
| 33 | `theorem` | [prod_lt_prod_of_ne_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-lt-prod-of-ne-nil.md) | 324 | `result-track:44bac6e4c547dcf2c544482339062ac33dc1be3d7514f5b09641aeaa642bda91` |
| 34 | `theorem` | [prod_le_pow_card](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-le-pow-card.md) | 334 | `result-track:a490c6fd50cf1aeebf690ecba4e6556411b938f8563511b4bd0d764d767d494e` |
| 35 | `theorem` | [exists_lt_of_prod_lt'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/exists-lt-of-prod-lt.md) | 342 | `result-track:1b237960e329dc42bac3117178ac4dc533b96177a3c3fe78eeef232be61bf405` |
| 36 | `theorem` | [exists_le_of_prod_le'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/exists-le-of-prod-le.md) | 351 | `result-track:983b8b0164e8ef7c32ad785307be21402ba02d39e5e78d85f300a632ecbf4039` |
| 37 | `theorem` | [one_le_prod_of_one_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/one-le-prod-of-one-le.md) | 361 | `result-track:75d1428896a1d03892ff3ad3b6bacf3454ea99fd5828045ae4c83334c612d0a7` |
| 38 | `theorem` | [prod_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-eq-zero.md) | 381 | `result-track:5655fe0aefe327e594ecc9b964173d5cb122df884f45dd901ef397780bba353d` |
| 39 | `theorem` | [prod_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-eq-zero-iff.md) | 392 | `result-track:663bbe01d566e56a0f70135aee8aec6956fa37a62833c817ab4f8b70d8e12e12` |
| 40 | `theorem` | [prod_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-ne-zero.md) | 399 | `result-track:f54cf1b3e6163ee299e8eee0e6ae9c52e039e1da5fd151d71ac9d8eab13a24fb` |
| 41 | `theorem` | [prod_inv_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-inv-reverse.md) | 412 | `result-track:6139839ef0ed3cf15d3311e9782bbb1d860aa73ec91c8527a614bacc5ec073cc` |
| 42 | `theorem` | [prod_reverse_noncomm](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-reverse-noncomm.md) | 420 | `result-track:4f25cc9dd9ca254b5e51c5026b04d229fa28a3d9ff93db4a683429cb8e946a02` |
| 43 | `theorem` | [prod_drop_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-drop-succ.md) | 429 | `result-track:37270c56db678b91f7df7fe457b2d64357f4f7501cc46faa1d541038dd3b2d26` |
| 44 | `theorem` | [prod_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-inv.md) | 445 | `result-track:2e6cc93ac9b94d9e70988887284958c59cf07969ff7a546eecfe32e318f0234b` |
| 45 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-set-source-edition-2.md) | 453 | `result-track:ad85bcc1b27a9b484113123e4f09acf66741fb515f38844fdb0a0c0c7d9b6dc8` |
| 46 | `theorem` | [eq_of_prod_take_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/eq-of-prod-take-eq.md) | 467 | `result-track:bd1a5196c526011a3169ad8fb6a9e7436698ea8de52a94b2a6ed90edb55fe514` |
| 47 | `theorem` | [monotone_prod_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/monotone-prod-take.md) | 477 | `result-track:8ebd8d343c363825276c9c0b924fc78af08bf159a6e49beea988ac30c453e8ac` |
| 48 | `theorem` | [one_lt_prod_of_one_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/one-lt-prod-of-one-lt.md) | 488 | `result-track:3af16e7e344a5cfc389c9bac1c03f692e1861c19763d04c06e24f25c88f2839d` |
| 49 | `theorem` | [single_le_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/single-le-prod.md) | 504 | `result-track:12d05f1522dc97e100d975e0cce9d201a28b343edfb2e20f44ad5874b9150870` |
| 50 | `theorem` | [all_one_of_le_one_le_of_prod_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/all-one-of-le-one-le-of-prod-eq-one.md) | 516 | `result-track:f753a2527125858f0062ff92dd82bed45f95f579bc6d5514b696dee9fd222d22` |
| 51 | `theorem` | [prod_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-eq-one.md) | 525 | `result-track:6617cd19f9bfc8025f460babc7c720a024264e4f177f6a4a9e71c784dbb62695` |
| 52 | `theorem` | [exists_mem_ne_one_of_prod_ne_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/exists-mem-ne-one-of-prod-ne-one.md) | 534 | `result-track:f8684eddcd75c060ff389480b77ac8d30505cf2521e474af7da2eab60b4b7c26` |
| 53 | `theorem` | [sum_le_foldr_max](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sum-le-foldr-max.md) | 540 | `result-track:b7292b0cee9b00f0d801997fd78081601d4a95573bc63377bb6c19b4d7d3062b` |
| 54 | `theorem` | [prod_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-erase.md) | 549 | `result-track:aea4b04887555164be6c6c4965bc95a2d1d031bfc38d099dbc48f7e77a064bec` |
| 55 | `theorem` | [prod_map_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-map-erase.md) | 559 | `result-track:24308ea133439a75ec74f2fe71af9387197e6948459177852e6622ad9999c57a` |
| 56 | `theorem` | [sum_const_nat](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sum-const-nat.md) | 569 | `result-track:126f33d80e064b71c9390e9c728e9ae344ea345abf6d22f4e502011f2747e659` |
| 57 | `theorem` | [prod_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-pos.md) | 575 | `result-track:d0d9c7e787bae3811561a63e22302aba86fe33316538a999b0a6b9dbe53878e4` |
| 58 | `lemma` | [_root_.CanonicallyOrderedCommSemiring.list_prod_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/root-canonicallyorderedcommsemiring-list-prod-pos.md) | 584 | `result-track:e248f720df2bb055946aab0f55efa23368745c2fbcf020fdef17de96f9e5e6e9` |
| 59 | `theorem` | [headI_add_tail_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/headi-add-tail-sum.md) | 599 | `result-track:ea65d3633d309705c8c8a873eefe643dcbb1d8446ba2f82a53d9a7cf697fd439` |
| 60 | `theorem` | [headI_le_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/headi-le-sum.md) | 604 | `result-track:c67d4e079ee50d8871280ff8310d4967d477cfd055708e4c5e942ba7cd778689` |
| 61 | `theorem` | [tail_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/tail-sum.md) | 609 | `result-track:2905b375778b8883e73d98d115a6eb9fa3dff428874ab693b96e12a88456693a` |
| 62 | `theorem` | [alternatingProd_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-nil.md) | 620 | `result-track:95a66a410a0d29da90c6d5dfba200a12dd09b503002fda4ba6b9ca7e16dd23ab` |
| 63 | `theorem` | [alternatingProd_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-singleton.md) | 626 | `result-track:f75bcc22b0e80c7e6d860eeacc4cb12e0a7dd3369a070c6a044afcf514d0a6bd` |
| 64 | `theorem` | [alternatingProd_cons_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-cons-cons-source-edition-2.md) | 632 | `result-track:a0aa534329993b3d99cdc29308618084cbc79390056ca072c8d4fb09fbd3cb64` |
| 65 | `theorem` | [alternatingProd_cons_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-cons-cons.md) | 641 | `result-track:876997fcbb88001aa33aa295f666dd41d3e590d31ca01761461c839972f899dc` |
| 66 | `theorem` | [alternatingProd_cons'](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-cons.md) | 650 | `result-track:eb5828c2986b054ab9b4728981ed077bd56f4ea53f03e186e8ff3527f2dc571f` |
| 67 | `theorem` | [alternatingProd_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/alternatingprod-cons-source-edition-2.md) | 659 | `result-track:f85acda80599717ba6bcc31611f83a981b5a2a615ea73e3a141359a5111ccbae` |
| 68 | `lemma` | [sum_nat_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sum-nat-mod.md) | 667 | `result-track:fa167c6f74732874f4444a738077ff3f0141ed0c5be97da9ee66a09986922ab2` |
| 69 | `lemma` | [prod_nat_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-nat-mod.md) | 671 | `result-track:63b23b60ba3edfdd480e0fc22479c9e1aaa750391acb0825bc9f2ba979eb34dc` |
| 70 | `lemma` | [sum_int_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/sum-int-mod.md) | 675 | `result-track:7522a6fa2ded8a107b5d28b8b1db673f756945c8080b8b0aa1e6f332f1e3a884` |
| 71 | `lemma` | [prod_int_mod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/prod-int-mod.md) | 679 | `result-track:bc5cd81e55f16aa759d305884b8ac8356aa893549945487d81f66e188996d929` |
| 72 | `theorem` | [map_list_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/map-list-prod-source-edition-2.md) | 690 | `result-track:a4b75c9b9e73a4cddc73bf0fbd8ab4d4d44d3e8677389480afa5461dff6a2d4e` |
| 73 | `theorem` | [map_list_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/BigOperatorsBasic.lean/declarations/map-list-prod.md) | 700 | `result-track:1fbfaea22a8ade555c8bb66ac70cd62bb6985aaf878a587312425c2954268290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d16ff269280e7b9c1ef735a96685bbceb77602166032dfdb5f730af6b3961b3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant04fc7010d40ea55aea2ef31d5db093cbd28bd1c03e543da4ed57fbd41a984f82.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant04fc7010d40ea55aea2ef31d5db093cbd28bd1c03e543da4ed57fbd41a984f82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
