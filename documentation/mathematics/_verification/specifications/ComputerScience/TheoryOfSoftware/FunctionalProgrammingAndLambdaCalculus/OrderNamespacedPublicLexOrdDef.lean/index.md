# Verification target: Order Namespaced Public Lex Ord Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726acaa62989f64e73d4e63c07638c9fdf30078f",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726acaa62989f64e73d4e63c07638c9fdf30078f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean.json)

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
| 1 | `theorem` | [lexOrd_def](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lexord-def.md) | 21 | `result-track:98fc44a6b4cf00decbd92152f9972917fdfb86d10f9a30736af011c5e7c85a67` |
| 2 | `def` | [Ordering.byKey](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/ordering-bykey.md) | 25 | `declaration-track:e75e928ab4ec599e8ab956892b8a829c63a600ec7afc7fad2ca2692488c04cf5` |
| 3 | `class` | [TotalBLE](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/totalble.md) | 31 | `declaration-track:eddddb966a0ea7b1bc1f74bdcc51a7781195cdf449310dc67977887df627f2ac` |
| 4 | `theorem` | [compareOfLessAndEq_eq_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/compareoflessandeq-eq-lt.md) | 35 | `result-track:514442ec5c70066407023edc539c6785169e58196da6332784c7209f2989ec6a` |
| 5 | `theorem` | [le_iff_ge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/le-iff-ge.md) | 50 | `result-track:282168277b0d72a460978e0211a73d96ff40b5bb9a9728d2923751d74a6816df` |
| 6 | `theorem` | [le_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/le-trans.md) | 58 | `result-track:fbe3726c89b0e22f03541fe738db62157b7756b9429e8411ad71ce750abadde2` |
| 7 | `theorem` | [lt_of_lt_of_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lt-of-lt-of-le.md) | 61 | `result-track:f796dce4fe6d2c1a66258a66f3487263fdfab0ff1987b44c9c46dc85a00943fe` |
| 8 | `theorem` | [lt_of_le_of_lt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lt-of-le-of-lt.md) | 64 | `result-track:f6ea4d3d4f79432be045eb5f911b062e2a08f7823ca6e256768fa84a5f8b2559` |
| 9 | `theorem` | [ge_trans](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/ge-trans.md) | 67 | `result-track:8fa7cab192e88bfcf19f3a5d3afc949f3cf7690178ff341f29239444e3f9ec0d` |
| 10 | `theorem` | [gt_of_gt_of_ge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/gt-of-gt-of-ge.md) | 70 | `result-track:7a1c5cff66cee50b8062bc5be0ad65772886ad536b22c1b49fc5d5df5b8a8aba` |
| 11 | `theorem` | [gt_of_ge_of_gt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/gt-of-ge-of-gt.md) | 73 | `result-track:f241c7ff0233cf804913c813bef112fc223f3ff807e8adcf0de888bf293d78e2` |
| 12 | `class` | [LawfulLTCmp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltcmp.md) | 79 | `declaration-track:2583626f47854bee3d7c2d0358dc1b6324c7c266d868e37c4488db72053d77c3` |
| 13 | `theorem` | [LawfulLTCmp.eq_gt_iff_gt](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltcmp-eq-gt-iff-gt.md) | 83 | `result-track:5289a14075a2d5424eaf632c888342aaf87cdfb14e0193f25a012fc684a3006d` |
| 14 | `class` | [LawfulLECmp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfullecmp.md) | 87 | `declaration-track:1cec02c1c73c4a1b25ceeb3f5fb08c3a153ff2d9e4e846ca85d9ca9062b795fe` |
| 15 | `theorem` | [LawfulLECmp.isGE_iff_ge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfullecmp-isge-iff-ge.md) | 91 | `result-track:1d2cb272fc40ee1669fbbc04e884abf1542866c2be7e8f0ad7926b768f18ca7a` |
| 16 | `theorem` | [LawfulLECmp.ne_gt_iff_le](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfullecmp-ne-gt-iff-le.md) | 94 | `result-track:0b833464dd9491e5128fda968f5cd32ca93ffcc7baab4c65f7e5aff0d9a36a39` |
| 17 | `theorem` | [LawfulLECmp.ne_lt_iff_ge](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfullecmp-ne-lt-iff-ge.md) | 97 | `result-track:13b42a788b4fc3e2f8d48a60f3294b47186c41a8212068140e83723287ffe6e1` |
| 18 | `class` | [LawfulBCmp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulbcmp.md) | 102 | `declaration-track:6d00b7810b11c7c732a614e74c82fa8a73083cdeb7a81acfe319780ab92da509` |
| 19 | `class` | [LawfulCmp](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulcmp.md) | 107 | `declaration-track:19649cb9a110fa148552ecda14cc4ce619ea621ac69a6577bcd67b8b7d3c5c2d` |
| 20 | `abbrev` | [LawfulLTOrd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltord.md) | 111 | `declaration-track:e9f00f34952442e84e7cfe40c475cb9310d3fd0faf25f7186e49f6af7ffb3a48` |
| 21 | `abbrev` | [LawfulLEOrd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulleord.md) | 114 | `declaration-track:3ab0ea274b4cbe06076c14854724c3f0ec51a8b6deb972b0c607432b2c560581` |
| 22 | `abbrev` | [LawfulBOrd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulbord.md) | 117 | `declaration-track:001f1894f014f92236f889da8813783c7036a3da36cd6857d8e2acca927cc735` |
| 23 | `abbrev` | [LawfulOrd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulord.md) | 120 | `declaration-track:55947b193fb00a7548d8e455d6603f01b35116bf5ce2839a17af4ca9a1470b7f` |
| 24 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-7.md) | 122 | `declaration-track:7d3f18bea129ca2fadf9b9a24b8852216465e33fe2d420675166ee035edda98a` |
| 25 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-2.md) | 125 | `declaration-track:1acfbc8c4b5c6e05ef4ad8f7907ab5d3d19bef1297f1e588a40fa367150425e0` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-8.md) | 128 | `declaration-track:ac46ce36799fe99ed1cfe41982f806655d28415bd890a3c2f699c0ef2d3ed642` |
| 27 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-10.md) | 132 | `declaration-track:e169e4dfd5279f935eea07a440d4ca9dd67b03b5b18fc970e21938dd1b7a989e` |
| 28 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-4.md) | 136 | `declaration-track:2807f4b3f04ea6d524245e3a5f4b801f6e36175853543a04ac6dfcacd07a2fde` |
| 29 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-3.md) | 139 | `declaration-track:1def430d9e4bdff48087ce1036a56f16adb18b6bf0817c89c76c2506df9a686d` |
| 30 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-6.md) | 142 | `declaration-track:56e6446d26cd7dc8c3acc5695a99e2e7a859269fd755912db32f8f1615595182` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-9.md) | 144 | `declaration-track:b3bf87fbc9162b86baf928fee254573ba64bc12789a5a9358503021a40dc9f64` |
| 32 | `theorem` | [OrientedOrd.instOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/orientedord-inston.md) | 146 | `result-track:aedc6174d807d7c43f8d5de0ee5feaf296fa9dad69208f8b438013dc59259cad` |
| 33 | `theorem` | [TransOrd.instOn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/transord-inston.md) | 149 | `result-track:63d07876e6fe5887541a14a0f5e9bfb5e2f63ca9d66c54e1f355c9e72bb17fd8` |
| 34 | `theorem` | [OrientedOrd.instOrdLex'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/orientedord-instordlex.md) | 152 | `result-track:06cbbcd27b28f8416e2e219601dd26851f1b2f7e1df27f2a649b7d7a9228727d` |
| 35 | `theorem` | [TransOrd.instOrdLex'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/transord-instordlex.md) | 156 | `result-track:7c5f349f63ee150beff7f996a15f3a46beaeb4420d65f2b7f755746ae817bb6f` |
| 36 | `theorem` | [LawfulLTCmp.eq_compareOfLessAndEq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltcmp-eq-compareoflessandeq.md) | 160 | `result-track:f183e34945423ed98e38563909b2bf9436128b2ea6cb02f5b6ffa25bec3eb0d5` |
| 37 | `theorem` | [ReflCmp.compareOfLessAndEq_of_lt_irrefl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/reflcmp-compareoflessandeq-of-lt-irrefl.md) | 172 | `result-track:24b56bb658784202d5221abebb75b6994650b07a16f22def7b7dd53f2cc57c9f` |
| 38 | `theorem` | [LawfulBEqCmp.compareOfLessAndEq_of_lt_irrefl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulbeqcmp-compareoflessandeq-of-lt-irrefl.md) | 177 | `result-track:f5f08a6468a55c4f1781c74758e8fa569686d6fb1a10de62e979fb33612037d7` |
| 39 | `theorem` | [TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/transcmp-compareoflessandeq-of-irrefl-of-trans-of-antisymm.md) | 187 | `result-track:ef9c9490e6dff5b511afdbdcae9022a1f82410a1b6ac7645d11943e308c4c836` |
| 40 | `theorem` | [TransCmp.compareOfLessAndEq_of_irrefl_of_trans_of_not_lt_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/transcmp-compareoflessandeq-of-irrefl-of-trans-of-not-lt-of-antisymm.md) | 208 | `result-track:9bb90040f4abb4cdca745246d3edd60dea275f32af2b86d6fb82c5a6b751bee2` |
| 41 | `theorem` | [LawfulLTCmp.compareOfLessAndEq_of_irrefl_of_trans_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltcmp-compareoflessandeq-of-irrefl-of-trans-of-antisymm.md) | 219 | `result-track:d9ac4f70de7c08c31d21a04c303e155778fe9f5de1782656080894d48b846f0e` |
| 42 | `theorem` | [LawfulLTCmp.compareOfLessAndEq_of_irrefl_of_trans_of_not_lt_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulltcmp-compareoflessandeq-of-irrefl-of-trans-of-not-lt-of-antisymm.md) | 230 | `result-track:eac70ee4a5764adda2c15036f84ce4154f682b9ebb3a74459ec2c9df9dc883d0` |
| 43 | `theorem` | [LawfulLECmp.compareOfLessAndEq_of_irrefl_of_trans_of_not_lt_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfullecmp-compareoflessandeq-of-irrefl-of-trans-of-not-lt-of-antisymm.md) | 242 | `result-track:82665a6c8aa21f7475d5c879f97d57c26612876cde75f2a13838e6db841ab4a3` |
| 44 | `theorem` | [LawfulCmp.compareOfLessAndEq_of_irrefl_of_trans_of_not_lt_of_antisymm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/lawfulcmp-compareoflessandeq-of-irrefl-of-trans-of-not-lt-of-antisymm.md) | 258 | `result-track:ac871fb792dd4df497d02519ae3a5e53ab67e62db40566a669184ddb0413ae4e` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance.md) | 277 | `declaration-track:01560ff1adb0546ef28eb75f575f734bfa8b5cc9cf9ff6d5d4d394fb01943c47` |
| 46 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-12.md) | 281 | `declaration-track:fbea1e66226a5b0f478b08c7be5e5b4e65d1c19a816755fb493e3640ae3aee75` |
| 47 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-11.md) | 285 | `declaration-track:e2fd685be295047dafa74a927886b779055a9d7795d8078f3cc0dde155f8d220` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OrderNamespacedPublicLexOrdDef.lean/declarations/instance-source-edition-5.md) | 288 | `declaration-track:4722697ddddae5cfe0c365ba72c9f27cf7bef54892bcd0a56105ae8ff79c9af8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=860bdef2eedef33e129f56a45764c92e2882ae1103e6d6de98c87b7f75a56059 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Order/Variant961233dc63da4adad4bc6e6869d290e6703d096b2ef7f2e683cd7167fed8de86.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
