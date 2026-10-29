# Verification target: Regular Mono Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "224c3ae61f1772c8991abfefee0c4e681dc5b75b",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `224c3ae61f1772c8991abfefee0c4e681dc5b75b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean.json)

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
| 1 | `structure` | [RegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono.md) | 65 | `declaration-track:e68d406f20f7f2f4eef53f61891ba966b82d079f2dcae490bd61a8381385029f` |
| 2 | `lemma` | [RegularMono.mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-mono.md) | 80 | `result-track:233cc88b1057c731ad08936c2c185df0e57a03e57b4903ed0228fff17a356ac9` |
| 3 | `def` | [RegularMono.ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-ofiso.md) | 84 | `declaration-track:b9afe284f69a0a8af7b444dc8ea613d5a92046f50f2b81c8235d14348773d91b` |
| 4 | `def` | [RegularMono.ofArrowIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-ofarrowiso.md) | 92 | `declaration-track:2b850d2df7ed13ea6d1b9b93f99702af2ad4f578994f0d6cb11a4051f65020f9` |
| 5 | `class` | [IsRegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono.md) | 103 | `declaration-track:8ef0c3ac7ad0eed9141cacfb57c71d22c169418c8a2c119e21519e56e3770158` |
| 6 | `def` | [MorphismProperty.regularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularmono.md) | 108 | `declaration-track:09def102ae2c2ab8b024415fcc44c3841cd08256b787d3d6510d20e4d6d393f6` |
| 7 | `theorem` | [MorphismProperty.regularMono_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularmono-iff.md) | 111 | `result-track:de067f8ad57a434c5d433819c153ae0560a364e6c2077104edd5da1832c59a80` |
| 8 | `instance` | [MorphismProperty.regularMono.containsIdentities](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularmono-containsidentities.md) | 115 | `declaration-track:c049c333239b6c4c775a9cdc564929457fbbfadbecb285cf29ee116e2cba57a7` |
| 9 | `instance` | [MorphismProperty.regularMono.respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularmono-respectsiso.md) | 119 | `declaration-track:74a0fa3c637018f6bf3fedcf825e7bd71258d9acbb2d7cefc65753c4da1f6f29` |
| 10 | `lemma` | [isRegularMono_of_regularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-of-regularmono.md) | 123 | `result-track:bd402cfc5505b5c8a0fa61b02c3ab65bdef073b4a52ef6fd1022d11c169ddce6` |
| 11 | `def` | [IsRegularMono.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-getstruct.md) | 126 | `declaration-track:119e770ef471fc0be007e4ef01f3c71758321e0cfcbd82c451c9f4cb7d51ed3d` |
| 12 | `def` | [Fork.IsLimit.regularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/fork-islimit-regularmono.md) | 130 | `declaration-track:5242970ddab6a25dead1b9f0d02d175798d383fdd222fa5ec4de7c9dae07df94` |
| 13 | `def` | [IsRegularMono.Z](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-z.md) | 159 | `declaration-track:1be3897e76d577791356c8dfb19159642e969f21aa237b3e74c667eadb590975` |
| 14 | `def` | [IsRegularMono.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-left.md) | 162 | `declaration-track:209c771d9e6d3644170e22e3b291929ba00097cfdde0674a5038a5976e696fc9` |
| 15 | `def` | [IsRegularMono.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-right.md) | 165 | `declaration-track:54c10d85db69260c618171b53e7b584c3453bf777c59502a4fc89d37efa0896b` |
| 16 | `lemma` | [IsRegularMono.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-w.md) | 168 | `result-track:c236cd24d3f35b282a14720d4f095e120eefdeab41e755415c23349eeb6eb209` |
| 17 | `def` | [IsRegularMono.isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-islimit.md) | 171 | `declaration-track:aae87d1aa3cd317c08f322adcb6ecba9f0e21893c7f92e85c801892f28afbdf1` |
| 18 | `def` | [IsRegularMono.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-lift.md) | 174 | `declaration-track:5993adfa019a8996c4ffbd7c3b486e673bd1c04da5cc4d2b288a13ba0c791950` |
| 19 | `lemma` | [IsRegularMono.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-fac.md) | 179 | `result-track:c0c7d6f8f2b2c7b7947e018d3235c1bf8865fc91879cf150280f6c4598a5b490` |
| 20 | `lemma` | [IsRegularMono.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-uniq.md) | 184 | `result-track:8c601fafce9b7c2023b7904495cbd65f3cc25b966ba5a8bab634fe204debc430` |
| 21 | `def` | [RegularMono.equalizer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-equalizer.md) | 191 | `declaration-track:db2020cef98d1d33da277107f7ddf1c669178bcbe7d83d1685a873e614baad4d` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 202 | `declaration-track:dc4b24972b2afb262ab3f3510c2cc3991493b0f53df99505a580fe93b06f263a` |
| 23 | `def` | [RegularMono.ofIsSplitMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-ofissplitmono.md) | 207 | `declaration-track:8042f5cc2fd68f9050cce633d8f157e78b69733cf2705f9e3980ae155bd44b35` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance.md) | 214 | `declaration-track:0079eef0e400b05383d9217df1ccd7814b70d0932c0948cc7ea80b949d8ec1a0` |
| 25 | `def` | [RegularMono.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-lift.md) | 220 | `declaration-track:e441aecbd51265da96399437d0ae9911e894e73cedf3e9c1c192551a29a84ee9` |
| 26 | `def` | [regularOfIsPullbackSndOfRegular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularofispullbacksndofregular.md) | 230 | `declaration-track:c44aebb3afd304b80d55902d9222797a2fb5c69a552f03046064927880e6380e` |
| 27 | `def` | [regularOfIsPullbackFstOfRegular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularofispullbackfstofregular.md) | 261 | `declaration-track:e1fb5b14c2e097adaf2308a6d9cd7ea0a01d10d92435fcf5636dcf0bf0812d63` |
| 28 | `lemma` | [RegularMono.strongMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-strongmono.md) | 267 | `result-track:fa7a05a2faf9fd55ddd911e20f35392b4abcb912c0c44585c79723bddfe0a6a8` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 279 | `declaration-track:64945302ec509e4bd7746bab2b42f49c0b4a73dd927a37f12f5cebc89ebb9072` |
| 30 | `theorem` | [isIso_of_regularMono_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isiso-of-regularmono-of-epi.md) | 283 | `result-track:6585d5d2cf58a612bd4e1a25a6930cff4e8b5c1bb63fa05466e2b5b34eae3b03` |
| 31 | `class` | [IsRegularMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmonocategory.md) | 292 | `declaration-track:e86072fd00df66ae64995bbed2993dc536fd2f69a2ee2b2fc96d7cae37865410` |
| 32 | `def` | [regularMonoOfMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmonoofmono.md) | 300 | `declaration-track:f3c8ffbcdb9194001b712dbeab0a2f4d2433f8e51f754bc8ea10a7a288a14f04` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 304 | `declaration-track:67fb542c36140b486fa9a9f311664ba37e1a2bdae7de4fc94e9f9768295e8369` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 310 | `declaration-track:2ec5d95a5f84a03f4c1926ac69d175524db26fce862326708082317c36ac1d14` |
| 35 | `structure` | [RegularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi.md) | 316 | `declaration-track:9089f3eff3441eddf4978cbe0cf70807323fbe09f4b0959a203702f65be12944` |
| 36 | `lemma` | [RegularEpi.epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-epi.md) | 329 | `result-track:e80191cd6c046c8fd536562edb7f256a79becba408cf008f17ba3cc437c674ca` |
| 37 | `def` | [RegularEpi.ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-ofiso.md) | 333 | `declaration-track:66a0d681fbd91dcbc12b1d46e099e0c8af67e43879fdc47fd47c0a0db0011e53` |
| 38 | `def` | [RegularEpi.ofArrowIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-ofarrowiso.md) | 342 | `declaration-track:8ce8273163273b89b4484e99662cd061ead358c6c73b1de6aa9dff81297ab00d` |
| 39 | `class` | [IsRegularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi.md) | 355 | `declaration-track:a4eba485951ebea6abe2d6a651761dc3cfc052bc714e1b5824f7c2a8931a020d` |
| 40 | `def` | [MorphismProperty.regularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularepi.md) | 360 | `declaration-track:016fd216ef291436bceafac0f78299b5438501913593b7accde02845d8bde5e0` |
| 41 | `theorem` | [MorphismProperty.regularEpi_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularepi-iff.md) | 363 | `result-track:a79d5a77559bbc1fd12dc64ddd7111e5f7075f01a5db059d1ef4b1564350ec5d` |
| 42 | `instance` | [MorphismProperty.regularEpi.containsIdentities](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularepi-containsidentities.md) | 367 | `declaration-track:3ee4db3e906a7792f2573e8e36fad9d82b580fadac1a4b9b556b81db1dcc1b0b` |
| 43 | `instance` | [MorphismProperty.regularEpi.respectsIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/morphismproperty-regularepi-respectsiso.md) | 371 | `declaration-track:b335dcc45e53806b21ff3f8f88e4507db2c3ddbab1a8534d72a63e88d1b65f5a` |
| 44 | `lemma` | [isRegularEpi_of_regularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-of-regularepi.md) | 375 | `result-track:a2f64e5a44f11df33fec5c0be6b2f734254664289253b66d639cea57e5dd3032` |
| 45 | `def` | [IsRegularEpi.getStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-getstruct.md) | 378 | `declaration-track:da07d6d7f9433e9729728eab09ea8c05c306d92e1d85ce293417a3b0a85eba4c` |
| 46 | `def` | [Cofork.IsColimit.regularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/cofork-iscolimit-regularepi.md) | 382 | `declaration-track:86ad73a851c888c62fb10864c84d426440fba53a3ec2eb778057c1ec175440d0` |
| 47 | `def` | [IsRegularEpi.W](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-w-source-edition-2.md) | 411 | `declaration-track:c18c1e86ba2531de6a2538c1c116b8a2080ea0e4f228234edb6acd1de6113834` |
| 48 | `def` | [IsRegularEpi.left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-left.md) | 414 | `declaration-track:06fd413b96b3d743b2d17c81d0cfb4f54b7526d131ecda5b749ec82a6f3075b4` |
| 49 | `def` | [IsRegularEpi.right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-right.md) | 417 | `declaration-track:73889ea0d3bc064474cc8151467ab686847639bd179abb686f746685a9bbbbeb` |
| 50 | `lemma` | [IsRegularEpi.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-w.md) | 420 | `result-track:33eac27730c0b2297418cff6d29e9ebc21ed5d339bc461bd582d25c4a45cb129` |
| 51 | `def` | [IsRegularEpi.isColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-iscolimit.md) | 423 | `declaration-track:21ae4cf9cdce565e76465ef0c6d833bf553ce040a8535c441e2184786f363287` |
| 52 | `def` | [IsRegularEpi.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-desc.md) | 428 | `declaration-track:876b7e725335d55335cfad64b4823b5679c28735e8684687819a2ac77461d4a4` |
| 53 | `lemma` | [IsRegularEpi.fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-fac.md) | 433 | `result-track:4970765499d1c73b1e240fcb16c223ff29de5dcb72115b1f247c5bad86988a7e` |
| 54 | `lemma` | [IsRegularEpi.uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-uniq.md) | 438 | `result-track:387dcc1af58fb2384d445c593424fc37d866f2d40d012c5bd6cce88f27919369` |
| 55 | `def` | [coequalizerRegular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/coequalizerregular.md) | 445 | `declaration-track:ee18259c98d6b70ad678cbb23669a5635a93140b4922008ea27d6bf91ebb4553` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 456 | `declaration-track:f1ec54749cdea01856e6f6bd78817fe6e6d5665b188d185cc718e6d81cc7a689` |
| 57 | `def` | [regularEpiOfKernelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepiofkernelpair.md) | 461 | `declaration-track:81ef2f487ae74b1870b7ac9d29732634f3637129f31216bfb9bacace6f22b568` |
| 58 | `lemma` | [IsRegularEpi.of_epi_of_exists](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-of-epi-of-exists.md) | 469 | `result-track:9c98c054151037d7cb5df8a1464a4d7236cb92a6fd4c07e4aeb346cc9d1eb222` |
| 59 | `def` | [effectiveEpiStructOfRegularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/effectiveepistructofregularepi.md) | 479 | `declaration-track:95e710258a203b67c772fbd26b8fd6dcd0332e25ca7d467592a9aa66b4c4923a` |
| 60 | `lemma` | [RegularEpi.effectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-effectiveepi.md) | 486 | `result-track:c43c60a3c803e1cc23bfcd9db01dcd978c9b9a06c46637ae480999ea37c75873` |
| 61 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 489 | `declaration-track:23fe7e2f09af0b6a458641de9c358577d0b1b0b9bf543a216752e13efbb383c7` |
| 62 | `theorem` | [effectiveEpi_of_kernelPair](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/effectiveepi-of-kernelpair.md) | 493 | `result-track:5fd606a1ed44fdb166d547980e4eb035f8f47a40770c925e5105f84b0e8f7d57` |
| 63 | `def` | [isColimitCoforkOfEffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/iscolimitcoforkofeffectiveepi.md) | 500 | `declaration-track:060e10eb0b644541ec554529378726dc3a99d613284d3ad866e61fbad00b1cb6` |
| 64 | `def` | [regularEpiOfEffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepiofeffectiveepi.md) | 519 | `declaration-track:05cd4f8d12855f8850a16bfecd6f0a00d14c8a3e7ccdb66ff5883213576eb5a7` |
| 65 | `instance` | [isRegularEpi_of_EffectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-of-effectiveepi.md) | 527 | `declaration-track:4d60fbd9320e26a12064f209f0ecaacf7c7e7fc6a4f243ade95e22d6b2bacc32` |
| 66 | `lemma` | [isRegularEpi_iff_effectiveEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-iff-effectiveepi.md) | 531 | `result-track:2784efbc75c794ccc3f94b290fcb66e2e21de39035a6d2b028f82cc029a387a5` |
| 67 | `def` | [EffectiveEpiStruct.isColimitCoforkOfIsPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/effectiveepistruct-iscolimitcoforkofispullback.md) | 538 | `declaration-track:5ea90be25809996d9290f1e8fea981e0c857dd58616ee6b8a2b8f5eca6f6fd99` |
| 68 | `def` | [RegularEpi.ofSplitEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-ofsplitepi.md) | 549 | `declaration-track:e3d37e573affde6b97e5defb045b0b875ac015c45e95f4358bbd2744cc6450ee` |
| 69 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 555 | `declaration-track:6fcc3eacd7a0e9df051fa34278ffd6714f02eaf84ec73140a24ac378074d27f4` |
| 70 | `def` | [RegularEpi.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-desc.md) | 560 | `declaration-track:a92a1754fac7baab59ed35c8c4584972e33387a9e1cc87676f6137db51e1fa54` |
| 71 | `def` | [regularOfIsPushoutSndOfRegular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularofispushoutsndofregular.md) | 572 | `declaration-track:0f5edea313dbb3c2ef6535b0a0469b1d5d7dcabddaa9b3911f13ddca62a79f60` |
| 72 | `def` | [regularOfIsPushoutFstOfRegular](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularofispushoutfstofregular.md) | 602 | `declaration-track:b702e3b48e4411bcd7f18ee455bf3b568198dd41449046c9e9cd1f56d31efd7f` |
| 73 | `theorem` | [isIso_of_regularEpi_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isiso-of-regularepi-of-mono.md) | 608 | `result-track:28e99ed85fd94a9cd6e899bdff7a6a08edd2530440f30d9e3e1aaba078976b86` |
| 74 | `def` | [RegularMono.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-op.md) | 615 | `declaration-track:fff96dd8649d87a19fede359dffc14b8ecde51599ae5945bc2c05b02a26b0146` |
| 75 | `def` | [RegularMono.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularmono-unop.md) | 624 | `declaration-track:c97bc6efb5bab541a85ad26a892751dc20e69c5f564eafcb6a38ecb787d334f0` |
| 76 | `def` | [RegularEpi.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-op.md) | 633 | `declaration-track:34dd2701ef773449501ad49a0bdf2da247d32dadca0aa22eea94bdccd0250073` |
| 77 | `def` | [RegularEpi.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepi-unop.md) | 642 | `declaration-track:6138bc6bad04451a29508761b7ca40bfb40a3ab43d626545c408097de1c6c406` |
| 78 | `lemma` | [isRegularMono_op_iff_isRegularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-op-iff-isregularepi.md) | 651 | `result-track:e68a360d19f8a4b339611d3cb64673050aa556912cd3db3acb070283eb34cf8b` |
| 79 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 655 | `declaration-track:74fe6e35ebaf5a7c031b0f17304d131fefd4081c433fcb709bc2a61e5f0600d2` |
| 80 | `lemma` | [isRegularMono_unop_iff_isRegularEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularmono-unop-iff-isregularepi.md) | 659 | `result-track:5dc2d9f3ab81e72b4d626cf0dcaa657214c97116e391406e304cca02109b74ac` |
| 81 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 663 | `declaration-track:8720dc03bfd35f7ccab26c753dd37d01df777ce437593ba8837fc1755efd4ec3` |
| 82 | `lemma` | [isRegularEpi_op_iff_isRegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-op-iff-isregularmono.md) | 667 | `result-track:268fe099823d70f3b3f92221a9f1621d69b0836ac4255b6376435cee2671a8f4` |
| 83 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 671 | `declaration-track:5cbb21cc5b519069b4821d5f2191474ce537c38c4335887aa705e81925e783a9` |
| 84 | `lemma` | [isRegularEpi_unop_iff_isRegularMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepi-unop-iff-isregularmono.md) | 675 | `result-track:baab2c3066954554be18c73e2b4392cb9c622ba52d15a16632c1ca09c71d6f96` |
| 85 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 679 | `declaration-track:25c938e0c4f0819e3662cfc2c36c4b457844c39cae1d0070183b79cc9fc2cfde` |
| 86 | `class` | [IsRegularEpiCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/isregularepicategory.md) | 689 | `declaration-track:6a8a86dd020c0ea147249c640838a2f2e0eafb97bd96bf1284635bf60163ff83` |
| 87 | `def` | [regularEpiOfEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/regularepiofepi.md) | 697 | `declaration-track:2ab6f51338da3dc4597c5b6299b09ba52db9bc0dfd2c7fe6c5cfc10c7d749581` |
| 88 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 701 | `declaration-track:1e3834e61e014166c084a46f980e372c7bd9e73ac6a9fc16665ef770ff570326` |
| 89 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/RegularMonoNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 707 | `declaration-track:e792442d3b149d4cc78c3cbd97afe1230f89e42e0cf427101fd654f0dc701cef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff2ac3bb632c37f0d12c94c03e975009c35da90000d35cbe887bd0c0a687c535 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularMono/Variant59012036eb1c950c4014ac9e2365aaa133cad59dc361fb249944c0c23077bb0c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
