# Verification target: Big Operators Group Finset Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04fc6ed3e31ef9cd594f3db95e8edf87bf593bf3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.OrderDual` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_prod_nonempty_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-prod-nonempty-of-submultiplicative-on-pred.md) | 45 | `result-track:0233ca11d54603a1f43450678506a411711b7b81a36d35e4b3220b27e39da385` |
| 2 | `theorem` | [le_prod_nonempty_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-prod-nonempty-of-submultiplicative.md) | 64 | `result-track:1b7e2bea14470e513744f03bb48d037b2da5b607503e1faf81bbf5f0956a1291` |
| 3 | `theorem` | [le_prod_of_submultiplicative_on_pred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-prod-of-submultiplicative-on-pred.md) | 79 | `result-track:47bceac33f96d6882bac64736b013234a947225f9855d9a752b97818cf14ca70` |
| 4 | `theorem` | [le_prod_of_submultiplicative](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-prod-of-submultiplicative.md) | 96 | `result-track:376021d5921cb45c0a5ea3b3dcf957ad38e437fc7a591582fb1898e7218d1fde` |
| 5 | `theorem` | [prod_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod.md) | 111 | `result-track:7129033cd839e751278ddf2d984ab764a5404d91b551e8ad96d519dec824c262` |
| 6 | `theorem` | [_root_.Monotone.finsetProd'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/root-monotone-finsetprod.md) | 125 | `result-track:c31a096cd4906756439525e7c3007a69c32337368f26608504cbf1abc326f3c5` |
| 7 | `theorem` | [_root_.MonotoneOn.finsetProd'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/root-monotoneon-finsetprod.md) | 132 | `result-track:836e96493bc7d788d3b8c75ab25bc61de3d3341000adda6ec40e60c3a7a1b306` |
| 8 | `theorem` | [_root_.Antitone.finsetProd'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/root-antitone-finsetprod.md) | 139 | `result-track:2de5bcef5f21eddb96b83c2bf0f799566136ed89169f08a9c318d98b69000b65` |
| 9 | `theorem` | [_root_.AntitoneOn.finsetProd'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/root-antitoneon-finsetprod.md) | 146 | `result-track:58baadd45653ea59b1cdad8c3187764e7e1f6a010ce45eb53d79ccfca8f4426f` |
| 10 | `theorem` | [one_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-le-prod-source-edition-3.md) | 152 | `result-track:5b7494fdc86fdceaf1c621faf2c14af7c0eff0947b6cf7b18aae875aaa8d4927` |
| 11 | `theorem` | [one_le_prod''](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-le-prod.md) | 158 | `result-track:15b69294202126f73742e66402632f3e8c0c841a2e20138e82fd366bc4677f51` |
| 12 | `theorem` | [prod_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-one.md) | 165 | `result-track:451fa2fa14efa1d63ee4883beab090601113712baea03b4064b4ad8c6b9f79a9` |
| 13 | `theorem` | [prod_le_prod_of_subset_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-of-subset-of-one-le.md) | 171 | `result-track:cab3e0cb694bacebf25bf678f1bb16f35e5c8876d4ea93db7c097d0c4ddd8f1c` |
| 14 | `lemma` | [prod_le_prod_of_subset_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-of-subset-of-le-one.md) | 183 | `result-track:9c2b6bd3155ed1c3fa14ba58913b30c13e403b1fadbcf516e1b119684b2a444c` |
| 15 | `theorem` | [prod_mono_set_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-mono-set-of-one-le.md) | 194 | `result-track:c9c26c10dd3b631258d53b505f8ffc31d2ac130dd3046f0fc73e1d90cb98f171` |
| 16 | `theorem` | [prod_anti_set_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-anti-set-of-le-one.md) | 201 | `result-track:df5201b2e8924bbfc27049a50be78b44916bc0775583fdaad36f206d552e1d74` |
| 17 | `theorem` | [prod_le_univ_prod_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-univ-prod-of-one-le.md) | 210 | `result-track:91f655fd8711fca00125c16ab5b8be95b0cc9af5f439c8972b84421b5eb0dee7` |
| 18 | `theorem` | [prod_le_prod_of_injOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-of-injon.md) | 218 | `result-track:671f118d6d08dc5ec6fadca551cc39502311cf9d52b14ef936024a47983b9737` |
| 19 | `theorem` | [prod_eq_one_iff_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-eq-one-iff-of-one-le.md) | 230 | `result-track:77e1a3cd105dc4815a99fb5795fae58cb10093010b4498e12b916962f6542df9` |
| 20 | `lemma` | [one_lt_prod_iff_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod-iff-of-one-le.md) | 244 | `result-track:0b6aade7e10a144a120a7aec28b56b0a4fa89ce5ac05258d107077f1b66c3410` |
| 21 | `theorem` | [prod_eq_one_iff_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-eq-one-iff-of-le-one-source-edition-2.md) | 252 | `result-track:dc2a154ee516b8cc42506365e026264086632ae0c3325b355370e136084e1ad3` |
| 22 | `lemma` | [prod_lt_one_iff_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-one-iff-of-le-one.md) | 260 | `result-track:874f85738eacdb1114b9302448579d2ab26c815e1d702f030f1772ee2f50173d` |
| 23 | `theorem` | [single_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/single-le-prod.md) | 266 | `result-track:3441b906c4b725d1a4df23d5f2320afddca3c2903e21ac42f400090cb21d48f3` |
| 24 | `lemma` | [mul_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/mul-le-prod.md) | 276 | `result-track:2c7038457935d0ce03cb08141646da07db930806ea82955b8517c2d32cc022c1` |
| 25 | `theorem` | [prod_le_pow_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-pow-card.md) | 286 | `result-track:37b5a6e6f26be46200093742b8d80bfa84c5bcce43724927b8c38a0cf382e568` |
| 26 | `theorem` | [pow_card_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/pow-card-le-prod.md) | 293 | `result-track:599736b2357c2326a1bc8b978ac975fe0398cc86df76ca5ff2f2c4e78038aa54` |
| 27 | `theorem` | [card_biUnion_le_card_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-biunion-le-card-mul.md) | 296 | `result-track:91927be4062fe4d89d73deddffe4615d470e05d4befa9d474d2c1f8d8e26b42a` |
| 28 | `theorem` | [prod_fiberwise_le_prod_of_one_le_prod_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-fiberwise-le-prod-of-one-le-prod-fiber.md) | 303 | `result-track:27211de853193bd388e7a14bb7d12ad9175af6f239f0a04d6a41c8769eda5054` |
| 29 | `theorem` | [prod_le_prod_fiberwise_of_prod_fiber_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-fiberwise-of-prod-fiber-le-one.md) | 317 | `result-track:ddc0e6eebd9fde0104d93e3a7ad792bbe28f7eb30206d8c06ac09e7af32316ea` |
| 30 | `lemma` | [prod_image_le_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-image-le-of-one-le.md) | 326 | `result-track:7544a52e215d2d8abe95a040a4d9bb0e181793993e6e5ef137cd909f93fe57b2` |
| 31 | `theorem` | [apply_prod_le_sum_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/apply-prod-le-sum-apply.md) | 343 | `result-track:0f95243bd5671384113ac4404f832923267684116be91ac21df8f557334a7c2c` |
| 32 | `theorem` | [sum_apply_le_apply_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-apply-le-apply-prod.md) | 348 | `result-track:a1819713208107932be21c0717bc10de8a01e389c9479c88c20f30d7f803fb18` |
| 33 | `lemma` | [max_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/max-prod-le.md) | 355 | `result-track:30dd02a8cb87d0cf630973b53050819980c3c026e68463086e5295518834c7dc` |
| 34 | `lemma` | [prod_min_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-min-le.md) | 360 | `result-track:d4cb541eb7bbe5803b412b023bc8771425906ee842534caa9cd7b3c36d5cdb37` |
| 35 | `theorem` | [abs_sum_le_sum_abs](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/abs-sum-le-sum-abs.md) | 364 | `result-track:d27fd92928f74cc96b4628339c89cea424218433fe5b49321703650f59196a9e` |
| 36 | `theorem` | [abs_sum_of_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/abs-sum-of-nonneg-source-edition-2.md) | 368 | `result-track:e5071e5406588f55139145dce8511525fb4cc399228f7ba0265dd9171264ed9c` |
| 37 | `theorem` | [abs_sum_of_nonneg'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/abs-sum-of-nonneg.md) | 375 | `result-track:defb754b83202fb131e94995ef6003423505cb13cab052d5dd1d0a2e0696c0e3` |
| 38 | `lemma` | [mulLECancellable_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/mullecancellable-prod.md) | 384 | `result-track:3b67439513a42a214a33715b3830dc115eaf31b557301f4ed68ffd3f02369b37` |
| 39 | `theorem` | [card_le_mul_card_image_of_maps_to](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-mul-card-image-of-maps-to.md) | 394 | `result-track:8d1c8f421c3131aeca91182d7dc188411c1bf2728d0c5d2a2b357fff76ff8d36` |
| 40 | `theorem` | [card_le_mul_card_image](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-mul-card-image.md) | 401 | `result-track:e4a18f91e5139ab8a1447fa60f411f7b9a3c611d8f6208937907aa0c57312599` |
| 41 | `theorem` | [mul_card_image_le_card_of_maps_to](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/mul-card-image-le-card-of-maps-to.md) | 405 | `result-track:60e646de437180b574fed2351d8ba4970e43f35404be73189a18927fb7f847ff` |
| 42 | `theorem` | [mul_card_image_le_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/mul-card-image-le-card.md) | 413 | `result-track:7eed52f3eca3ab02479bab2b50c45d221fe682ecfc33a439834d6ec6ba57ca66` |
| 43 | `theorem` | [sum_card_inter_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-card-inter-le.md) | 425 | `result-track:f86cdec2f2e02746e2f160ba7c27166c67dd08882267d11cd03efbc5ac963409` |
| 44 | `lemma` | [sum_card_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-card-le.md) | 432 | `result-track:00c107680a06d30bbaca997d72decb89de12388e9f7bbe42e074c10986d85769` |
| 45 | `theorem` | [le_sum_card_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-sum-card-inter.md) | 439 | `result-track:624e991ea061fda3fc2297edf79b3238b1201ba15eeb416860ca054a62d80282` |
| 46 | `theorem` | [le_sum_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/le-sum-card.md) | 446 | `result-track:b0e5918e49ae9a842ff361401ca82fd1d26bb1cfbdb71e2c1841474e87c34303` |
| 47 | `theorem` | [sum_card_inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-card-inter.md) | 454 | `result-track:4de002fd12e4973b6a0d1bc85db1c27ea1302502d8d2d00a984403fe65b71f4f` |
| 48 | `theorem` | [sum_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-card.md) | 460 | `result-track:847454e0f2d3db9f757874e4bf05d52140799b07f1698dc7903e17dfdf892bed` |
| 49 | `theorem` | [card_le_card_biUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-card-biunion.md) | 464 | `result-track:1ddcfe4a041792a3a37038d3b413ea6824fa3194388c97f69a479f0bee0bb44e` |
| 50 | `theorem` | [card_le_card_biUnion_add_card_fiber](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-card-biunion-add-card-fiber.md) | 469 | `result-track:699eeb5aa701dbb803646ffbb5e7c635143e808b2e2e87bf5d99adaddf002c2e` |
| 51 | `theorem` | [card_le_card_biUnion_add_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-card-biunion-add-one.md) | 475 | `result-track:60c2ca58325fa7f7f009d66d0baafd5b0c22563162edd053894797621a814eea` |
| 52 | `lemma` | [single_le_prod_of_canonicallyOrdered](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/single-le-prod-of-canonicallyordered.md) | 492 | `result-track:3805366907114703a913659c98ba8e8bd31a0e406c4f340b020ac7a2be074fcc` |
| 53 | `theorem` | [prod_le_prod_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-of-subset.md) | 498 | `result-track:654d7a9758f1838209092fbff261d74e5e438e2650564d532371ef153f4e6945` |
| 54 | `theorem` | [prod_mono_set](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-mono-set.md) | 505 | `result-track:f921ba4789d0a620aee295b26293c43daa1e3c3bccc7bd52c71f449bfc5fb1ce` |
| 55 | `theorem` | [prod_le_prod_of_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-prod-of-ne-one.md) | 512 | `result-track:6b5a47dd38cf2a9944d204a2bbb72b211aa42a308bd7c87f83b784e72a353783` |
| 56 | `lemma` | [one_lt_prod_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod-iff.md) | 527 | `result-track:054063cafae516699abf42fcb6b778ed15849f5e8845011afb827696eb2d268c` |
| 57 | `lemma` | [prod_lt_prod_of_subset_erase_union_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-prod-of-subset-erase-union-singleton.md) | 537 | `result-track:4f1a0a95b8624fa2364377a8b7ffd2e70b361d113774bd14e174922b929a5481` |
| 58 | `theorem` | [prod_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-prod.md) | 569 | `result-track:bd0583072852d486abedefb742e9cdfed1d090ecec89f6be59f6b5814a625553` |
| 59 | `theorem` | [prod_lt_prod_of_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-prod-of-nonempty.md) | 579 | `result-track:9af0e55434780ce5d24202dc7e7cad2c6c35fce20bdc35a03fd3e38db8482571` |
| 60 | `theorem` | [prod_lt_prod_of_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-prod-of-subset.md) | 592 | `result-track:8402057efc10243fec6183ba173cf12dbe65661f983e475d43cb514e534ceada` |
| 61 | `theorem` | [single_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/single-lt-prod.md) | 609 | `result-track:531904922b6d9be2d5598bb37e9481fe0286b95f1a9816ef983782aab910e99c` |
| 62 | `theorem` | [one_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod-source-edition-3.md) | 620 | `result-track:e671a015437ac095b83fc52fc0c8e8170b178d4372a88aec758a259fa206be33` |
| 63 | `theorem` | [prod_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-one-source-edition-2.md) | 625 | `result-track:0c4171fa4e4ecaa66840347b48e8ec817f5954a9c1c68e8d148a58bcafac3c96` |
| 64 | `theorem` | [one_lt_prod'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod.md) | 630 | `result-track:2189500d458d2a8a239391ce8054ce277230341d81d8475cf3a09e8af6c700b9` |
| 65 | `theorem` | [prod_lt_one'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-one.md) | 635 | `result-track:03bdefba5bcd21a3da7063e1d0b1dbe73db921cb9915c63225fd0672af3b9768` |
| 66 | `theorem` | [prod_eq_prod_iff_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-eq-prod-iff-of-le.md) | 640 | `result-track:5d7788752f6951de01b716f63401ea95fa159a06231fcf0d8a1b46d95e819a5a` |
| 67 | `lemma` | [prod_sdiff_le_prod_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-sdiff-le-prod-sdiff.md) | 653 | `result-track:469227ab0a1cecababffe083e6fdd94731216740a037e4d9924be6b1087b2d2a` |
| 68 | `lemma` | [prod_sdiff_lt_prod_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-sdiff-lt-prod-sdiff.md) | 659 | `result-track:291951c76aba6f80687763e195e0b6c6451d9dc76f6a52afac448de647a08605` |
| 69 | `theorem` | [exists_lt_of_prod_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/exists-lt-of-prod-lt.md) | 673 | `result-track:02b9fed08bb032078e58e8e1d58854c576c4f83e48eb7a74e27f335be7a14539` |
| 70 | `theorem` | [exists_one_lt_of_prod_one_of_exists_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/exists-one-lt-of-prod-one-of-exists-ne-one.md) | 681 | `result-track:1f29dd82ad7a4c3b2feb0516dde6058ab16f564bb8d75b72da916ef66c0348b7` |
| 71 | `theorem` | [exists_lt_one_of_prod_one_of_exists_ne_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/exists-lt-one-of-prod-one-of-exists-ne-one.md) | 688 | `result-track:7e2d49c19a3d4dd60e621752d28d94409abffc1e4c5cff0f3485315c2c4f1df3` |
| 72 | `theorem` | [exists_le_of_prod_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/exists-le-of-prod-le.md) | 695 | `result-track:94bd8b1dc918ba0074ffc58268702e949d3fd8d7d35c12cf37fbd78de5c21c19` |
| 73 | `theorem` | [apply_sup_le_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/apply-sup-le-sum.md) | 707 | `result-track:99ba95432510410564b43c8b50bdcd3ae0f9fd6661a6696aa4953fd92101d219` |
| 74 | `theorem` | [apply_union_le_sum](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/apply-union-le-sum.md) | 716 | `result-track:2c21cc08400a6b437c64fffbc8a61a37c9960f55e4ec8928ee263185947d767d` |
| 75 | `theorem` | [sum_le_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sum-le-one-iff.md) | 722 | `result-track:03c7366ae6ceff7eb7aa692d3a773cb368c00653fa3d004ecccfdd3b6dac1ecf` |
| 76 | `theorem` | [prod_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-mono.md) | 741 | `result-track:c31ac24cbffc0021a542b26b1d110b55f5ae54d3f60d01501e45a8d813842733` |
| 77 | `lemma` | [one_le_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-le-prod-source-edition-2.md) | 747 | `result-track:544bbbf0b402befdd399515a7e9c2bebbe6bf30b46655e972e29492cd2fd0698` |
| 78 | `lemma` | [prod_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-le-one-source-edition-2.md) | 749 | `result-track:a316edce0bd732f26e9ca95d8a39a5faaa77029d28967b99044ea36d3db03be6` |
| 79 | `lemma` | [prod_eq_one_iff_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-eq-one-iff-of-one-le-source-edition-2.md) | 752 | `result-track:dc769800dff13fececd3c9191339a1881339286ba2caa7f27eab8d08972477a6` |
| 80 | `lemma` | [prod_eq_one_iff_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-eq-one-iff-of-le-one.md) | 757 | `result-track:5d3272d657fe76a216217c8e73f356172e7fc10593b29de21fd90a18f0e4be3f` |
| 81 | `theorem` | [prod_strictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-strictmono.md) | 767 | `result-track:354b44520499540e278ff516298b108e6f8286c8dbe8b33f22a8aa069bc6e417` |
| 82 | `lemma` | [one_lt_prod](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod-source-edition-2.md) | 775 | `result-track:88a932fcf79be989f692697021dcad5eec96cfb1b2e593b92cfbfc675653b71a` |
| 83 | `lemma` | [prod_lt_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-one-source-edition-3.md) | 779 | `result-track:bfed4751acbc0348f681571172c18b23312d87dd7794fcd1a51e7e3ae435eea9` |
| 84 | `lemma` | [one_lt_prod_iff_of_one_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/one-lt-prod-iff-of-one-le-source-edition-2.md) | 783 | `result-track:fb231f63e200e03c3543b64178b04d65ab2c69892ab8cadb5da48db2eae570ab` |
| 85 | `lemma` | [prod_lt_one_iff_of_le_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/prod-lt-one-iff-of-le-one-source-edition-2.md) | 787 | `result-track:9beeee6fbeda6a9fe362ad2bf345b7db6ee8d85642b057f3046a68ef2e8592aa` |
| 86 | `theorem` | [finsetSum_eq_sup_iff_disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/finsetsum-eq-sup-iff-disjoint.md) | 795 | `result-track:25b1c8db005695152dc7a58070a4d79b95dbfb3dbe045aabf12a40cbd86a56e5` |
| 87 | `theorem` | [sup_powerset_len](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/sup-powerset-len.md) | 814 | `result-track:63d4b40f8c93c1c984f3f57947a35f9ac4d96a335e46b72a4c1fd1f3c80929d9` |
| 88 | `theorem` | [card_le_card_toFinset_add_one_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/BigOperatorsGroupFinsetPublic.lean/declarations/card-le-card-tofinset-add-one-iff.md) | 821 | `result-track:2f4e2fe707f209876f51b385f2cc33bf42a670d004f15608dbdfbc5eaeaef6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b52552df288eac23ec35a0b0f539e660b9643e5469aeee58b868741c755b1790 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finset/Variant17c2e6e0d7b41171e8d023f58f583230da93ae4e8576be56ac8cbb07dd00f478.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
