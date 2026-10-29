# Verification target: Operations Public Raw View

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e339bb93aac40bc1487e93c83d949400f061b3fb",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e339bb93aac40bc1487e93c83d949400f061b3fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Nat.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Internal.Linear` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 14; external provider; requires a separately pinned dependency.
- `Init.WFTactics` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RawView](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/rawview.md) | 42 | `declaration-track:ddd4df1a3b0d9c62b80079d977f4c6a36747af26b1ff385c7b5a8fa20b243dfa` |
| 2 | `structure` | [Tree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/tree.md) | 52 | `declaration-track:8f5afb8ddf07351d5b96aece5995ce2f4acbb91728041176774bb89afd3124a0` |
| 3 | `structure` | [View](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/view.md) | 62 | `declaration-track:b789053933315e408d88191818f3416a246b08d67bb3793bc750dc74018e113d` |
| 4 | `def` | [minView](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/minview-source-edition-2.md) | 73 | `declaration-track:72ecc139922e4b431d2019441e3284058dc7dce9a0932234aac90328187b7fcf` |
| 5 | `def` | [minView!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/minview.md) | 89 | `declaration-track:5de1c4baf5f07f209eb99c8a602d2dc8f4ae27c82927a6b2904151bcd7cf0da9` |
| 6 | `def` | [maxView](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/maxview-source-edition-2.md) | 97 | `declaration-track:5e685d184ad1d9bca7bdf5e47995c4cd50e6aa532e14a36e8858754b99cce8eb` |
| 7 | `def` | [maxView!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/maxview.md) | 112 | `declaration-track:55d70b4da52b7f139c393ecbb98b640f1ae696835a85d12aae754900e5e75bf7` |
| 8 | `def` | [glue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/glue.md) | 125 | `declaration-track:92f95404acb4cf8b1a8283c281d1c90f8a9c344e85b454f8aeb02c964906fa8b` |
| 9 | `theorem` | [size_glue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/size-glue.md) | 147 | `result-track:5bdf244bff79fb6815be97812fe0db7f4c523fdc6bd05443dd2d98af6526a414` |
| 10 | `theorem` | [balanced_glue](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balanced-glue.md) | 151 | `result-track:3829cc50a129eea8a42cfe0a2007fb9355c05734c0c3b0b9ef3f388f5b68ecd1` |
| 11 | `def` | [glue!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/glue-source-edition-2.md) | 159 | `declaration-track:dbe029b954647ad617de0d2a42b51863c331ca37ef67490582433e72bdb47dde` |
| 12 | `def` | [insertMin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmin-source-edition-2.md) | 178 | `declaration-track:886bd606bbea69f789d08f4aff26a148e616e54d047095e38a46117e6b0055aa` |
| 13 | `def` | [insertMin!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmin.md) | 189 | `declaration-track:0741fbef3d8aec376b4a7b6e13bb76472149a573ed5ad4179e6267930c4b97d7` |
| 14 | `def` | [insertMax](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmax.md) | 195 | `declaration-track:4eee4fe17ad11cb695b1b15b0bbfa84092d5989e510bf6a38a1e10bea407d1ca` |
| 15 | `def` | [insertMax!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmax-source-edition-2.md) | 206 | `declaration-track:afde7c999bcfe0ca58e81387ecd49c091f792260f7ad1c4efa24540aebf4b8b5` |
| 16 | `def` | [link](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/link.md) | 218 | `declaration-track:18353c8267896de41217788c828c724a193bfb285b125788ff4fa66acba35d2a` |
| 17 | `def` | [link!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/link-source-edition-2.md) | 245 | `declaration-track:a1641f5b632aeccc1ce6e0c0353bf9e168a60a14769a799e696369f9f3015525` |
| 18 | `def` | [link2](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/link2-source-edition-2.md) | 261 | `declaration-track:8e105d507054cefb215c3eaee0aa2a9e808ff6649dbed7e8bc38fa0458fa0062` |
| 19 | `def` | [link2!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/link2.md) | 282 | `declaration-track:57ebf9a0d927bff561562c2718e7ab3ff529670c6a7356319fbf80c4bf297d54` |
| 20 | `structure` | [SizedBalancedTree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/sizedbalancedtree.md) | 303 | `declaration-track:80c9c0b2ba86168512cc6ab44f2a2712835cbe7ded1b5531a7a39146824a9201` |
| 21 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/empty.md) | 317 | `declaration-track:01286d93502b3417f6a32a55094fac09f056b5ca17ba37061f9214ecc3d21c48` |
| 22 | `theorem` | [balanced_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balanced-empty.md) | 321 | `result-track:d233fde0dd2b2b68029091f26fd2e16afd3fb8106334d6daf693cea704fb218d` |
| 23 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insert.md) | 327 | `declaration-track:20839f437444e035a53e52782c154c034e4c29f24be0bb65268f48e6729f2df0` |
| 24 | `def` | [insert!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insert-source-edition-2.md) | 345 | `declaration-track:9af9a395913851636f6ba9e6dc5dcc92a7099f2a0d3fb6c3d01b88ad6fe19fbf` |
| 25 | `def` | [containsThenInsert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/containstheninsert-source-edition-2.md) | 356 | `declaration-track:ddd975fd9a56e1b981092d14894ec6ec68367b6fa4514b0a636abd44e1498513` |
| 26 | `def` | [containsThenInsert!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/containstheninsert.md) | 371 | `declaration-track:24ee6d5018e2452c8409a6217d58839319b02a1aa742a120d37505a484d039c1` |
| 27 | `def` | [insertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertifnew.md) | 383 | `declaration-track:05cec56afe3a61865faade4d236a681b13f51cb50da985c553d4d33cabbd1a3f` |
| 28 | `def` | [insertIfNew!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertifnew-source-edition-2.md) | 392 | `declaration-track:ce8e68bc5c76b14344ed44a1cee40c1a1de885e5cafdbb919ec8a3534dc50d34` |
| 29 | `def` | [containsThenInsertIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/containstheninsertifnew-source-edition-2.md) | 398 | `declaration-track:98ca99653d67b10faecf8fd64820a937fb8bce1f6ce38ab0ec1fd41b248de9c4` |
| 30 | `def` | [containsThenInsertIfNew!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/containstheninsertifnew.md) | 407 | `declaration-track:2df781ade3e23c7c08c721c85952940687f82308179a2468dc0067075875dfd4` |
| 31 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/gettheninsertifnew-source-edition-4.md) | 413 | `declaration-track:e64c7f4b1cec2f63f3b41afe954f0394637df83254b818e7632c96214eed82ce` |
| 32 | `def` | [getThenInsertIfNew?!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/gettheninsertifnew.md) | 424 | `declaration-track:3ba8c5ce64e759b8f9dca76877f905a8dbf1bb6468870aff63ec05dddfa1e95c` |
| 33 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erase-source-edition-2.md) | 431 | `declaration-track:cb25058ba4294310fccbd08dead0a3e74c1a93f893e0c1b77d7e88c35e9dde3e` |
| 34 | `def` | [erase!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erase.md) | 449 | `declaration-track:bced8bf8cda5c2b0467f088484c9b16c9bbb3ff123be81f094262ddbd8717e71` |
| 35 | `abbrev` | [IteratedErasureFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratederasurefrom.md) | 459 | `declaration-track:959bea5a3cb67131cc0d151b4ee66cd21a93833ab0ce5e5feecee58064748e0e` |
| 36 | `def` | [eraseMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erasemany.md) | 464 | `declaration-track:d430849e0506f2c243c29fa4292f2fb316585b6541d5d21747b72a6890f7d72f` |
| 37 | `abbrev` | [IteratedSlowErasureFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslowerasurefrom.md) | 473 | `declaration-track:968f5ab1b1703c89e7d775d04b2f3bc3a0c7315255f161a75b0bdb572da18d0e` |
| 38 | `def` | [eraseMany!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erasemany-source-edition-2.md) | 481 | `declaration-track:f48ea06d2b840e62da8bdc23730247be6e05688f6fc2dd5399db038bc51ec732` |
| 39 | `abbrev` | [IteratedEntryErasureFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedentryerasurefrom.md) | 489 | `declaration-track:63d4301eb61afc86af4f44638693c90dd95f7e04b77d8443088a772a9214ac25` |
| 40 | `def` | [eraseManyEntries](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erasemanyentries.md) | 494 | `declaration-track:0957674ad518cb78c4e1a653c886eb2786692f7903163c50c43b0b1687d5a76c` |
| 41 | `abbrev` | [IteratedSlowEntryErasureFrom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslowentryerasurefrom.md) | 503 | `declaration-track:792e1fd890d24788a4f6095760093d4228a108ef0dca1eed15b0787641e770ab` |
| 42 | `def` | [eraseManyEntries!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/erasemanyentries-source-edition-2.md) | 511 | `declaration-track:d75b6cd8b75187220fdfbb970b88fd2265d0cd2557c34a50bc2750abcc274ae1` |
| 43 | `abbrev` | [IteratedInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedinsertioninto-source-edition-2.md) | 519 | `declaration-track:f197eadd3b762f0ea26f5f998f5c8a8a4eb3c37dd27786460e3db68a4a294898` |
| 44 | `abbrev` | [IteratedNewInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratednewinsertioninto.md) | 523 | `declaration-track:d0704e5ef52035272c2cde978b1558e698d3e5a00bfa2ce5bc25c3681d698160` |
| 45 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmany-source-edition-4.md) | 528 | `declaration-track:79d31de343995291d57880bb10d91e777babac0a33b2494e8c0555dec21e14c4` |
| 46 | `def` | [insertManyIfNew](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmanyifnew-source-edition-2.md) | 538 | `declaration-track:c9453113d5fa0837788977ffc393fa7105c0cfb7e7dafd9042d23e12ce24896a` |
| 47 | `abbrev` | [IteratedSlowInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslowinsertioninto.md) | 547 | `declaration-track:4130d8f26732e9cfa0512e05d56222c80d2e20927c74711365682a255b8455fe` |
| 48 | `abbrev` | [IteratedSlowNewInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslownewinsertioninto.md) | 551 | `declaration-track:de191e332d55f7439ffb07cfc268a91447f8369a52b69b1a3968ccc8e480f9b9` |
| 49 | `def` | [union](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/union.md) | 559 | `declaration-track:b4cb6669f9a78f16c1ddcfe557877b96199657e2c69c7a9dcb810efac958280c` |
| 50 | `def` | [insertMany!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmany-source-edition-2.md) | 567 | `declaration-track:254eb480c5a88722c104dbc9236f761bd07086c8cf9d24910de21535799a2dec` |
| 51 | `def` | [insertManyIfNew!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmanyifnew.md) | 579 | `declaration-track:923c730082e81b9bb7f3ee46086293de66023c3a40b5148351fcd3e9d15f7542` |
| 52 | `def` | [union!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/union-source-edition-2.md) | 589 | `declaration-track:ed8b0b69f8c027150e30d0c0d83f79da7613b269c38c75823d6f23a4645add4f` |
| 53 | `abbrev` | [IteratedInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedinsertioninto.md) | 597 | `declaration-track:a8689f63d9f990c3cc9e33f4c0c6e480aca16402119f3a326a4da5d7ef11cb31` |
| 54 | `def` | [insertMany](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmany.md) | 602 | `declaration-track:20428520637f03f75dbbb4b97a4b653b82df0a0d1e96860c83bf6a67baf4eb39` |
| 55 | `abbrev` | [IteratedSlowInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslowinsertioninto-source-edition-2.md) | 611 | `declaration-track:6fc399aa2ad8bd873230794f3e7870a8aa42392cefbf898bfa26ed02a0e2c82b` |
| 56 | `def` | [insertMany!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmany-source-edition-3.md) | 619 | `declaration-track:32b8419199724033c2059aa7c53c117d321705e1f6a952be2e7fa2966920408a` |
| 57 | `abbrev` | [IteratedUnitInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedunitinsertioninto.md) | 627 | `declaration-track:97dbe811fe83aa24bdabfca8a4ecd61abcc3a3207c23cf9415417a3cab47b35b` |
| 58 | `def` | [insertManyIfNewUnit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmanyifnewunit.md) | 633 | `declaration-track:228b1f0a26c4bf52fef36a68a84fc8332eff3b95d298359473ef2fac77a8c9b5` |
| 59 | `abbrev` | [IteratedSlowUnitInsertionInto](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/iteratedslowunitinsertioninto.md) | 642 | `declaration-track:fdce613c946dae5b48f42d2a4a54e308fb6e76e3b0bd6ae7a7bd78a1bb68890b` |
| 60 | `def` | [insertManyIfNewUnit!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/insertmanyifnewunit-source-edition-2.md) | 651 | `declaration-track:8264bd50c49cc3d850202b5af890005da745d454feddafa5f4aed00b6aac12bc` |
| 61 | `structure` | [BalancedTree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balancedtree.md) | 662 | `declaration-track:85381849bcd6ed969765bb9f73e361e08a93128be6a4a2692701ca0d21f076cd` |
| 62 | `def` | [SizedBalancedTree.toBalancedTree](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/sizedbalancedtree-tobalancedtree.md) | 672 | `declaration-track:0dec424ea165024b269a47f3db541e04ebfd430870c627de36abf15bafe77931` |
| 63 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/ofarray.md) | 677 | `declaration-track:6cb0c90bab8fe85576561ed6a9ddad542f0fbc3fb9b08dea5e0de26a22b54d12` |
| 64 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/oflist-source-edition-2.md) | 682 | `declaration-track:6d92c7630989b053c9e295233ad29a6056f13f1931e2414e580ee910d12a5147` |
| 65 | `def` | [getThenInsertIfNew?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/gettheninsertifnew-source-edition-3.md) | 691 | `declaration-track:9bc7c06fab35f388db3cabd3fd163a9808d3a8891511d9446849d905ef981712` |
| 66 | `def` | [getThenInsertIfNew?!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/gettheninsertifnew-source-edition-2.md) | 702 | `declaration-track:7b9995bfcae540b9437ffecfecaf73d5c2d6d93cff191481fba36b2877d4584b` |
| 67 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/ofarray-source-edition-2.md) | 709 | `declaration-track:fc0d5b07b0465651ecd290988ee15fbf0723ce09668898723508da5bbfd305d8` |
| 68 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/oflist.md) | 713 | `declaration-track:2319b37b55a4ba4dc7cc52940cd4875f209428e0eeb556e0404e292b6fdec2f4` |
| 69 | `def` | [unitOfArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/unitofarray.md) | 717 | `declaration-track:2935de9585a3881e8abd604cad8d02d82f9dbc049b3396c10f42fb5f2995031c` |
| 70 | `def` | [unitOfList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/unitoflist.md) | 721 | `declaration-track:705fba126a94e80b47e02354aee9daa5a0030a6ec2d67c14c533cfcf9e474ca3` |
| 71 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/filtermap.md) | 731 | `declaration-track:928bd6578ff4d4c731c905354405e28a1dd2b565e7bfeb725e183ebd212feb3d` |
| 72 | `def` | [filterMap!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/filtermap-source-edition-2.md) | 751 | `declaration-track:998044bf33a867c420f1e161f652ad45bd73f9b09971eca93ce3251cd8ab507a` |
| 73 | `def` | [map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/map.md) | 764 | `declaration-track:48dc683dfdb4f744467233791d6966f8b6ae5ffb81114bf3bdf37893227fe227` |
| 74 | `def` | [mapM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/mapm.md) | 773 | `declaration-track:6c1d6e98033904bc690b43a79bccca1ef19daf4da36a75c84d02a2103728b418` |
| 75 | `def` | [filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/filter-source-edition-2.md) | 783 | `declaration-track:f5a997b256c3a9fcd2170b1a6cd0474356d22d43b2a3656afaaa7582b6921f00` |
| 76 | `def` | [filter!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/filter.md) | 802 | `declaration-track:23f74beaa8e9ab2baaf48e5052e9edde6a60297210db8496ea6a37b51d6f42c1` |
| 77 | `def` | [interSmallerFn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/intersmallerfn.md) | 812 | `declaration-track:3b62883acbeaeb709c19ab0ba2ea7dd9c06a7ea156de7ac70a249c371f45e0e8` |
| 78 | `def` | [interSmaller](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/intersmaller.md) | 818 | `declaration-track:e5749c769bb06f69244916fbc7ed4a3853abbc9b9a8ccce626d6c4ad5a380cdd` |
| 79 | `def` | [inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/inter.md) | 822 | `declaration-track:5a3c23ae1eba050ccc4b09e5a2547c83776c657c0e29325c04f863c3666c43fd` |
| 80 | `def` | [inter!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/inter-source-edition-2.md) | 827 | `declaration-track:753980cabcb6322e4fbc7e23c29fb8c0e9534a2beb526a3332f22759ac53f06d` |
| 81 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/beq-source-edition-2.md) | 831 | `declaration-track:d71d1093c659d2f4a6fd29688e71b37ad20965956117862955eac2d9e423f1e2` |
| 82 | `def` | [diff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/diff-source-edition-2.md) | 838 | `declaration-track:2fbf3e61b03c8064033ca34529226d1f2913f85deba1c0f16269cb34428d4367` |
| 83 | `def` | [diff!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/diff.md) | 845 | `declaration-track:12a2d8b44e55c66f3b4bbe6851731b725ae5e95dc93c2bf805e7b02b56be9818` |
| 84 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/alter-source-edition-4.md) | 855 | `declaration-track:e54f1a24c2a565a4cdfea62f09312ac1befd1db209776ea4a25470fa2021130f` |
| 85 | `def` | [alter!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/alter-source-edition-3.md) | 880 | `declaration-track:d112ab7d3958600809cfe7968fc255bba7e7678c6e97afa590c9bf25a4c4953e` |
| 86 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/modify.md) | 898 | `declaration-track:c8f183c0e3e2129b2b3ae30c6a39bbd36c1cac19b93e3d22461851da931c4795` |
| 87 | `theorem` | [aux_size_modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/aux-size-modify.md) | 909 | `result-track:33172569e8eb0d2c67a3bf01b7f6e7b56803fca200e40d318bbe29ceeb8da30f` |
| 88 | `theorem` | [balanced_modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balanced-modify.md) | 914 | `result-track:d69c36f09366a754cb298af4b5a886017b704584ed2cb518eb0789974499e456` |
| 89 | `theorem` | [balanced_inter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balanced-inter.md) | 924 | `result-track:736caf10bd6cd1e7ad7f0f3dccbdea6e464216da6c045db8315a0f0784ad16f1` |
| 90 | `def` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/mergewith-source-edition-3.md) | 939 | `declaration-track:6998ea85fcc56daf781416418072a44691a658b665c09e6d5f052bc4967c67e1` |
| 91 | `def` | [mergeWith!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/mergewith-source-edition-2.md) | 952 | `declaration-track:200dc13a9cb010751eecfa5f63215f7236e0239deaccfbecde8223762c2dc8e4` |
| 92 | `def` | [beq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/beq.md) | 964 | `declaration-track:03a073e924f4643c732722fd4203004e9095eea4556acea5a8415a5503c03af4` |
| 93 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/instance.md) | 967 | `declaration-track:fb9a01e9bd05953eb686fa0bf875edd99b28010b543cbc8b1225c291736edba9` |
| 94 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/alter.md) | 976 | `declaration-track:1d77d91b7af2f4964c0fd1ede1629fbfa72bd781b7dd1efe56cf7521d36ba821` |
| 95 | `def` | [alter!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/alter-source-edition-2.md) | 1001 | `declaration-track:bb9f7f84f3fe831c65fbf9685f2328b3124e93b0e8a50f5ae2e6f581b8c774b6` |
| 96 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/modify-source-edition-2.md) | 1019 | `declaration-track:e9fd6c8de686e5e61a26e055ae39ff305d9b2aad1dbf542cd8c1c1f7fcb129bf` |
| 97 | `theorem` | [aux_size_modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/aux-size-modify-source-edition-2.md) | 1030 | `result-track:82f49306f92736d49e5b25d583533390c8df53370b3d75df8da5e1e96631510b` |
| 98 | `theorem` | [balanced_modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/balanced-modify-source-edition-2.md) | 1035 | `result-track:ee2bf9577bcf8eff44af4767b0cb131e565cf12802e5c077f84f1f768a4cf99b` |
| 99 | `def` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/mergewith.md) | 1051 | `declaration-track:050e47a440fe39b07f617bbb56564bcc166e983fafc7b814aff52fa79e0cc9df` |
| 100 | `def` | [mergeWith!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/OperationsPublicRawView.lean/declarations/mergewith-source-edition-4.md) | 1064 | `declaration-track:805682ffeca3d9615525d501234528cda167eb4d5c0074fb35a3b4b2c7d6af7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abd3af940015151bb3096e2441facfd6ed70d5b20b9ff8e89eff1efb6e34e81f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Operations/Variant8c635c967a0a6c0784fc944ae2140094c38a7fb475a839c0b3c8aa59b8a8f8fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
