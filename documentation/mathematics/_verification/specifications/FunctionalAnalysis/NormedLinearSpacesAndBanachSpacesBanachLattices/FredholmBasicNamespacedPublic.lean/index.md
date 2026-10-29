# Verification target: Fredholm Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae1ab396b95aa2c356622d81c023ef6f6e264de1",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae1ab396b95aa2c356622d81c023ef6f6e264de1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean.json)

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
| 1 | `structure` | [IsFredholm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm.md) | 131 | `declaration-track:642183440b666cc512d3f72626d77b60750cab51d56a847b1b4fd7c4c18ecd75` |
| 2 | `lemma` | [IsFredholm.closedComplemented_range](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-closedcomplemented-range.md) | 140 | `result-track:fa532bd2495e2c6f412185543f5e0f63826b036c72d05327df07e88d9a1ee012` |
| 3 | `structure` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmdecomposition.md) | 155 | `declaration-track:c328e73bb61ce6d6fb776e2bf6805407fef6d379152e3e7a50866bf62c04afaf` |
| 4 | `abbrev` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/proj.md) | 166 | `declaration-track:c375bafb858e13c82741649c19075806a416ca765f47a97643810306064483e2` |
| 5 | `lemma` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/cofg-x.md) | 169 | `result-track:3b68a8854abd345a5b0080393054f5ede1d756592b77a823e68e2895603a4150` |
| 6 | `structure` | [FredholmPackage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage.md) | 186 | `declaration-track:9a914dfe379ad42dbea06e3f105534bb47e5797460d0f1c77ad41c497c8f6ff1` |
| 7 | `lemma` | [FredholmPackage.ker_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-ker-eq.md) | 195 | `result-track:88a92d42b5550a80489467b44b0627f385801b550a7f37563a7e1f5ebdef5f26` |
| 8 | `lemma` | [FredholmPackage.range_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-range-eq.md) | 198 | `result-track:552d488685634cd3977e41c2c98a158ab97b71801379b884a81c09306f54a7f7` |
| 9 | `lemma` | [FredholmPackage.mapsTo](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-mapsto.md) | 202 | `result-track:53205062e6ced1634167113b8a3135c8e609ddb4ce6290e1b063eb63c03292b9` |
| 10 | `lemma` | [FredholmPackage.equiv_eq_restrict](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-equiv-eq-restrict.md) | 206 | `result-track:43f2233b1d6890d7256855f4c680f04e6041b11fecd2ed3dd23812c887c384a2` |
| 11 | `lemma` | [FredholmPackage.isInvertible_restrict](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-isinvertible-restrict.md) | 211 | `result-track:3f95f080a15aef8e3aca2c62a5f02d99c899bf7ce9a7dabc82bface299223ed5` |
| 12 | `def` | [FredholmPackage.quasiInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-quasiinverse.md) | 216 | `declaration-track:00831a6c6cfa51fcabf39bfb24eba2c1d6979278d70ffa69542144b9b07aee98` |
| 13 | `lemma` | [FredholmPackage.isQuasiInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-isquasiinverse.md) | 221 | `result-track:b60c93f95a559cb176f57db2ce341946b37bca92f95f9d452816607c0bde440d` |
| 14 | `theorem` | [exists_restrict_isInvertible_of_isQuasiInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/exists-restrict-isinvertible-of-isquasiinverse.md) | 242 | `result-track:9260ca257f7ba60844463b432d513ff398f12d2ac91b78a3c03aaa5f1b494cd7` |
| 15 | `theorem` | [IsFredholm.of_isInvertible_restrict](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-of-isinvertible-restrict.md) | 271 | `result-track:c5f05ec7a9c41f5e001375ace67423b5569d669cf7f1c93dc940a0934703397a` |
| 16 | `def` | [IsFredholm.fredholmPackage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-fredholmpackage.md) | 300 | `declaration-track:bb4796b730160e9cc649adc66203fc042f4ddef60f7291602e7a878a8cd680fe` |
| 17 | `theorem` | [IsFredholm.nonempty_fredholmPackage](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-nonempty-fredholmpackage.md) | 330 | `result-track:cac3592649dc465ff9c6cff69685f83b15bda67ccdbea97e115035823f648355` |
| 18 | `theorem` | [isFredholm_tfae](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-tfae.md) | 351 | `result-track:caeae5855e4a095e7a5a3f49137039ccf9d3f82436551b98cd8dc8e0a148b2f8` |
| 19 | `theorem` | [FredholmPackage.isFredholm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/fredholmpackage-isfredholm.md) | 372 | `result-track:3a5ae05ce9f85e25c3d4d04dcd6c280bcba5cda1b6f19047e56a16b53f3b442a` |
| 20 | `theorem` | [isFredholm_iff_exists_isQuasiInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-iff-exists-isquasiinverse.md) | 376 | `result-track:4621fbf8f999906a51d28388174d79f364f269cc9499098a87972b57a20b4989` |
| 21 | `theorem` | [IsFredholm.of_isQuasiInverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-of-isquasiinverse.md) | 382 | `result-track:be5b875c91a23c81958df134d95d6536a62f64352c6814fa9fe2371e9c23e576` |
| 22 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-source-line-394-occurrence-2.md) | 394 | `result-track:4343f747dbdc89a321fb591a1867ba331f1dcc534593aa9e81c3e64ea06023eb` |
| 23 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-iff-source-line-407-occurrence-2.md) | 407 | `result-track:b3fb64d8af6ae9c6182b6bf329ab7f78f077ea07f476369654b270c0e90f52f2` |
| 24 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-subtypel-iff.md) | 414 | `result-track:45ca92968fffb2247dd0425597bb896615768c002697d57e69414262830f0e5f` |
| 25 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-subtypel.md) | 419 | `result-track:2a61f59a21e220f39962ec1132fe8f7fd92480eb0b40a92ed04e9e048ff4678f` |
| 26 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-source-line-424-occurrence-2.md) | 424 | `result-track:7025ea9ca4d27974c345bdf6014ed5d721464409025ed485b0ddd65f9f9dee80` |
| 27 | `theorem` | [IsFredholm.id](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-id.md) | 428 | `result-track:cb68f94075972b5b492199bd1b03eee817e2e8fad4cc39f5f426b45a66fe74b8` |
| 28 | `theorem` | [IsInvertible.isFredholm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isinvertible-isfredholm.md) | 431 | `result-track:b554a14d82f77d1f1a622ee0826a87e20f3a3d3978d85d4a970c5030cc16ddd3` |
| 29 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-iff.md) | 436 | `result-track:30d77145a0f021e7eec624cb45fe3adb24054d08148cbb3a4047a960c5fa4286` |
| 30 | `theorem` | [isInvertible_iff_isFredholm_and_bijective](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isinvertible-iff-isfredholm-and-bijective.md) | 443 | `result-track:b61c0dce0975019194b303a3cfb22ce3533d86313665a7596738255bac6136a6` |
| 31 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-source-line-447-occurrence-2.md) | 447 | `result-track:94e6db17ff6d5aab64132c97c440e24a6839da97c0954f76e5719b272748c1f8` |
| 32 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-iff-source-line-460-occurrence-2.md) | 460 | `result-track:de3646facb690ff8641812eabceb220138a0b7a78bad17a94438e0e687b9d0b5` |
| 33 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-mkql-iff.md) | 466 | `result-track:6c1a49ebd477e18e1ce5a10b5b75cc3f8c2e0b4fe5a0faab1ea8346b93ef4fdd` |
| 34 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-mkql.md) | 474 | `result-track:2ae12331f9e1e2174e4735c6dc00f43843c8c6ab8cd0ebf5aeb72a3647140b8f` |
| 35 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-projectionontol-iff.md) | 479 | `result-track:2900cb2d32384bdd1f33444f5618146300a8ab97297aa3c0d7f470733fb3124a` |
| 36 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-projectionontol.md) | 486 | `result-track:0ddbf1676b56c20ba857b6294d6f9cf59a61585210fb254417a946547b3f7bc8` |
| 37 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-proj.md) | 492 | `result-track:553d2bef19dcb7aa2bc958f98ac8c626a06ae929e75c32bd638e7fa644ce38d9` |
| 38 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-projectionl.md) | 498 | `result-track:9bd07aa662e3332c58a8f2ae4bbfbc1daef396ea8f7e83780caa4e85ec8f4c7a` |
| 39 | `theorem` | [Fredholm Basic Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-projectionl-iff.md) | 509 | `result-track:b8c260c108469a638ff580aafe9e51738d45210bbfabba16f5197176aeb4117a` |
| 40 | `theorem` | [IsIdempotentElem.isFredholm_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isidempotentelem-isfredholm-iff.md) | 516 | `result-track:45498a71b116c7f2b4f15070e5c60107a6f871f24ae70cb72e3af2ba69c3bf1a` |
| 41 | `theorem` | [IsIdempotentElem.isFredholm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isidempotentelem-isfredholm.md) | 523 | `result-track:c9fed80935f9f1e141c10c2cf63ebf3002d97a54a82859af99a9a5bdab31eb46` |
| 42 | `theorem` | [isFredholm_congr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-congr.md) | 533 | `result-track:0547c6a588d723b4d0ad4b625d57dd721d7c161d093494ac8b275eb041fbf090` |
| 43 | `theorem` | [IsFredholm.congr](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-congr-source-edition-2.md) | 538 | `result-track:71dce022752c2a7be25429f76b1f7c592884117953560a9bb3a6479ce498dd31` |
| 44 | `theorem` | [IsFredholm.add_hasFiniteRange](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-add-hasfiniterange.md) | 542 | `result-track:34a98a43cd0e7204b2fdc0bb71ef0261c34d641f57361ca1ed08554e9402b7aa` |
| 45 | `theorem` | [IsFredholm.hasFiniteRange_add](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-hasfiniterange-add.md) | 547 | `result-track:ec4ef822929c1b47558b999c3a46ca0b33a988f84653057a202ac01135268bfc` |
| 46 | `theorem` | [IsFredholm.comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-comp.md) | 552 | `result-track:78e88bcc1dba00a1c5762bbf60ce20b44d6f002f36c126a82a71b3c9f7d74330` |
| 47 | `theorem` | [IsFredholm.comp_iff_left](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-comp-iff-left.md) | 558 | `result-track:b3f32fa83ce82788338d295357a40a33733b4bcedf7863296d23dde98ea5b740` |
| 48 | `theorem` | [IsFredholm.comp_iff_right](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-comp-iff-right.md) | 565 | `result-track:542c8ead28454cc2c0a145df249f6adbef182a70759df6ae2917e5ff9f11bbf5` |
| 49 | `theorem` | [isFredholm_comp_equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-comp-equiv.md) | 573 | `result-track:d2a983129aa7e6b7711e47b15e6e5a3ee949df0a9ee8d35761053679d7e81c04` |
| 50 | `theorem` | [isFredholm_equiv_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-equiv-comp.md) | 578 | `result-track:3fdd84d4aecf950e404f001d7f1bc6083c4ff4ad36e6180d11720b6011d879ba` |
| 51 | `theorem` | [isFredholm_restrict_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-restrict-iff.md) | 582 | `result-track:9b8c6e75171a5a6b91d39c5490392dcf4a3f7f3faed722482f94820938c891f5` |
| 52 | `theorem` | [isFredholm_domRestrict_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-domrestrict-iff.md) | 590 | `result-track:89805321a9e83aa14125c2502c98ae0ce979b58d1e921308b6e8f96ff7b1e05a` |
| 53 | `theorem` | [isFredholm_codRestrict_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-codrestrict-iff.md) | 597 | `result-track:8661bd1762198ea97d04dcd2c0615d00f33d099dc2356cff90e27e1a0717600c` |
| 54 | `lemma` | [IsFredholm.index_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FredholmBasicNamespacedPublic.lean/declarations/isfredholm-index-comp.md) | 621 | `result-track:4c7ecc12ead0eebfc5770f4c56860f7b5a109490547e932fa5584f893a4cc73e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f2c471b81063cacd733b02fb93fcc24a1b430615e8cbbd5351e2d239dbda556 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant1da4db9ea29179598da9389bceb8fd1936107ba2d0f7d1c5d364486e3d200ce1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
