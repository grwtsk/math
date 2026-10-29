# Verification target: Balancing Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55",
  "lexical_observation_count": 67,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a9edfc50ebaaf22b84d3e1758a3e5989fc92b55`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BalanceLPrecond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancelprecond.md) | 59 | `declaration-track:3b214ed1be5c03acef8006bc2579440184744f9dfb846d5090e7dea1b1e09f67` |
| 2 | `abbrev` | [BalanceLErasePrecond](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanceleraseprecond.md) | 64 | `declaration-track:15e7afc838e04215193299b282811ab833b0fc60d10724d7fed1c7504652dc67` |
| 3 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/macro.md) | 73 | `declaration-track:281d947fd92fde5034eee2a1d4d7ea531ae1d806cfaeae4822079e0e3cea96c2` |
| 4 | `macro` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/macro-source-edition-2.md) | 91 | `declaration-track:cce95c9f027a9a8f57dfba9b4334b59807b825eafb63d1020abc080fcb42f691` |
| 5 | `theorem` | [BalanceLPrecond.erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancelprecond-erase.md) | 95 | `result-track:b5cc5d82a70c25fb331b4aa43c5586e299c838cb8e9fe704d1bfc11512f92105` |
| 6 | `def` | [balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancel-source-edition-2.md) | 108 | `declaration-track:a3974200566213225d951daba085e8b4d1a6ed0ee1bf6abb78cdea6942e46e61` |
| 7 | `def` | [balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancelerase.md) | 138 | `declaration-track:bf9246c2cb76d1b9cd534594377f6bf0865270a4eb18364eca2b57b1fe654b4f` |
| 8 | `def` | [balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancel.md) | 169 | `declaration-track:70aa0027386fe00e18e233e4dbab6fb64d63c147cf52135d1384c9747d6cd211` |
| 9 | `def` | [balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancer-source-edition-2.md) | 203 | `declaration-track:53d89245a778b9addfb6a47547f507e1d6b3b186ba4e1b7051f9f85d81a0c718` |
| 10 | `def` | [balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancererase.md) | 233 | `declaration-track:476a6beaedb49586ddcd0f4161cfd412441af299cc6af2fade13624bbf2bf03c` |
| 11 | `def` | [balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancer.md) | 264 | `declaration-track:29dee7c560b9781745eb5af48ef63086f2f17f4d233de4f0da7411725938d659` |
| 12 | `def` | [balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-source-edition-3.md) | 293 | `declaration-track:f9188f8272157d29a73729b329b6b550ef4e45f4136723c0868d9fa6338ae986` |
| 13 | `def` | [balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-source-edition-2.md) | 361 | `declaration-track:7476e223f0c05dab6757f69a50b1c222e2cba0137a4c71d1495612d5cf440bf2` |
| 14 | `theorem` | [BalancedAtRoot.erase_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancedatroot-erase-left.md) | 410 | `result-track:2125725b4560fc3b37da4ae9ef4336c0cd09f771980272c9dbeccae70c4ae6a3` |
| 15 | `theorem` | [BalancedAtRoot.erase_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancedatroot-erase-right.md) | 413 | `result-track:11c1b1d424a67e468992a5c86245aa7f7c7e5275d1d8c87a9cca871c8770be0c` |
| 16 | `theorem` | [BalancedAtRoot.adjust_left](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancedatroot-adjust-left.md) | 417 | `result-track:e3021462d232b27365cba7d943848cac0e1912b42f3efe32e28e56a21afcc72b` |
| 17 | `theorem` | [BalancedAtRoot.adjust_right](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancedatroot-adjust-right.md) | 420 | `result-track:394c0ca6fd86e323fcababc9b5781cca2c48cf84c1582c7ed450815fc724bc37` |
| 18 | `theorem` | [balanceLErasePrecond_zero_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanceleraseprecond-zero-iff.md) | 424 | `result-track:9c4013ee76a983b3463dacc36d2b5106a50648fb31b13849b3087485dcac4f1b` |
| 19 | `theorem` | [balanceLErasePrecond_zero_iff'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanceleraseprecond-zero-iff-source-edition-2.md) | 427 | `result-track:f1827068d23dd05270e48d723d386e8b8c5de7f05eb39288be2c9985053b3421` |
| 20 | `def` | [bin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/bin.md) | 441 | `declaration-track:6ac44a91cc5cf7ebd983cf9e5644b7f385350b1841299324b0273d9f7a9a1df9` |
| 21 | `theorem` | [size_bin](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-bin.md) | 444 | `result-track:8a0a993f5d06b5f6f8950ad0d5a1c2f9b2850a78b646db44f7d920bcc2fc61ce` |
| 22 | `def` | [singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/singlel.md) | 449 | `declaration-track:e3afea099c850d743084613c80ad53af77c24e1b37a320a9d1506db30f252be2` |
| 23 | `theorem` | [size_singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-singlel.md) | 452 | `result-track:f8c17d04388fa4c3fb34e51aa85ddd115890391292249855484eacca28a6ba8d` |
| 24 | `def` | [singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/singler.md) | 459 | `declaration-track:193293364ab0689e904883279efeb8b43820c268ad72525bac2693101d13af51` |
| 25 | `theorem` | [size_singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-singler.md) | 462 | `result-track:e0310b9ecd4cfd3da4957a673c15c95e8113fa372b0da61b06bc032d2c806b7d` |
| 26 | `def` | [doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/doublel.md) | 469 | `declaration-track:78eb16f64d2abdc060a521d73c623eb255e3aeb4b26a4ab72815b09f8c62c0b6` |
| 27 | `theorem` | [size_doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-doublel.md) | 473 | `result-track:25e18c9d0ea2d0222f103a096a567d573639f599d4f4f437642e94e77dfa7124` |
| 28 | `def` | [doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/doubler.md) | 481 | `declaration-track:590a7f81a84c878ac86ef64ca1321a1e22001da946bf93371aa9ef564963fe30` |
| 29 | `theorem` | [size_doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-doubler.md) | 485 | `result-track:9d7036db81a62f020855b6b3779ad411e5aa051a0af095f879e6db774046140b` |
| 30 | `def` | [rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/rotatel.md) | 492 | `declaration-track:d583ab468df6197118c4e26b6104f755a8d25c352e5982ca1f25988fc7a9840e` |
| 31 | `theorem` | [size_rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-rotatel.md) | 501 | `result-track:f415c3490f3f9f8c937152c21b83d25b6c1ece2fe02fa317934536fdc600bda2` |
| 32 | `def` | [rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/rotater.md) | 511 | `declaration-track:516e1313cc93e6bb546ce51ab35ac347b4059f53d1bfeb40e15a97d3bd935fc7` |
| 33 | `theorem` | [size_rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-rotater.md) | 519 | `result-track:3aa5fec5fd1e674607d98dbf02beea0960503f1070e2c7618bfad67231775594` |
| 34 | `def` | [balanceₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance.md) | 529 | `declaration-track:2f0484f9b7c79ed9c51881d79c9ead88b5ad8c128f0c2ff5f938812fbf596959` |
| 35 | `theorem` | [balance!_eq_balanceₘ](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-eq-balance.md) | 545 | `result-track:23a8aadd33575af65ed93bff51784a41a5877aaef8ca42ebd2683408c65689a8` |
| 36 | `theorem` | [Balanced.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-map.md) | 632 | `result-track:334c1ba383a85a2912b7a1f8201628d1d3e3c628bf874b855011b2de0292b66b` |
| 37 | `theorem` | [balanced_singleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-singlel.md) | 635 | `result-track:cf8b4939e0065fd780d49064dcc27b28ae2215fc50a29ce73515b829c0eebb32` |
| 38 | `theorem` | [balanced_singleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-singler.md) | 643 | `result-track:26a939ada5b25ae99ad40f294e5ef115b5fae8fc3744ed1c5440d5906786565a` |
| 39 | `theorem` | [balanced_doubleL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-doublel.md) | 650 | `result-track:838a84ccadfac9f7fdf91a1db827c58421522be4bc278cc957d9b66ce23138af` |
| 40 | `theorem` | [balanced_doubleR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-doubler.md) | 657 | `result-track:547d1a6cef88fdb3653367cdfb9771ba17cf0fbaaa69c813343df804e2327f47` |
| 41 | `theorem` | [balanced_rotateL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-rotatel.md) | 664 | `result-track:ae02f81ca3a034280cbab870fabaadfabde9dda2dc39a56348c0587b2a7746b7` |
| 42 | `theorem` | [balanced_rotateR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-rotater.md) | 674 | `result-track:281886342030e2994b99c1ee494989446b98d9f9eb87eb8da4d0a2dd2d21daf2` |
| 43 | `theorem` | [balanceL_eq_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancel-eq-balancelerase.md) | 683 | `result-track:b96d30c6437d9fa8c78b8e14441a529905bdb8a2c605f53e988e1c806b6afdcc` |
| 44 | `theorem` | [balanceLErase_eq_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancelerase-eq-balancel.md) | 689 | `result-track:e3370c4d161916b9b01d781380fe7722c36748c8811d952c034b885c6d67f646` |
| 45 | `theorem` | [balanceL!_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancel-eq-balance.md) | 697 | `result-track:d18e8d6d32527b05e48639a2dd337077ac0fba12789caadf86ee8d4bcd27d7ec` |
| 46 | `theorem` | [balanceR_eq_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancer-eq-balancererase.md) | 707 | `result-track:7db816f5b4ace1b72e1d33d66aea7df11212015a748c61c2c22c9e5ca7d3732a` |
| 47 | `theorem` | [balanceRErase_eq_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancererase-eq-balancer.md) | 712 | `result-track:5cbc5cd754d0500b0412b8c70527062ee1ecbaf9dbbfe2cce660113a3eb07ff5` |
| 48 | `theorem` | [balanceR!_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balancer-eq-balance.md) | 720 | `result-track:71ff7c6245cb0b1811b84c0ff749a88855728d01cbe0fc0d466938aecf44dda0` |
| 49 | `theorem` | [balance_eq_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-eq-balance-source-edition-2.md) | 728 | `result-track:7d00704237c2854e15f4f71c99ab7301adadd9966248c3dd67e26be306611a34` |
| 50 | `theorem` | [balance_eq_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-eq-inner.md) | 735 | `result-track:266c89811e8631fb4cb5adc52b11517d921f2ff11fba8e47abfb2f210a2d3a20` |
| 51 | `theorem` | [balance!_desc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-desc.md) | 745 | `result-track:73bd68508447d340af4abe143fdf41c12172ff09949fd971d7c017f7bbe970d0` |
| 52 | `theorem` | [size_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balance-source-edition-2.md) | 766 | `result-track:78ce44e68c049d26cec6e7a914a39e360b283b0b2c685596e5c694e0164ba124` |
| 53 | `theorem` | [balanced_balance!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balance.md) | 772 | `result-track:2b00db390bd42a24222ae5ce1ac0edd002ed9ffd839406d1e266cd2bc799ab95` |
| 54 | `theorem` | [size_balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balance.md) | 778 | `result-track:470a7f4d072cdca18f1bfeb7a4753bfdd146f9e119d62522dea980066b83daa5` |
| 55 | `theorem` | [balance_balance](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balance-balance.md) | 784 | `result-track:c949c4168d73c1cdec12753043da30176fb3a3f296bb8b0b3d1e36d6271dfbb4` |
| 56 | `theorem` | [size_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancel.md) | 791 | `result-track:325c996e315529f3819ce51d2d1860b5f6ca3075ccca064903c9da50f7d4a668` |
| 57 | `theorem` | [balanced_balanceL!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancel-source-edition-2.md) | 797 | `result-track:cb3e8f790c3228bddb5064031624dc88cd4825a59952e3402f1a87738ac9ccb3` |
| 58 | `theorem` | [size_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancelerase.md) | 804 | `result-track:fbed3ce8b527342a2e094262b245ca9578ec3013b62a77219643fd47aac34f7b` |
| 59 | `theorem` | [balanced_balanceLErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancelerase.md) | 810 | `result-track:f5fcb52bfa53d1505ef19b14d25c6b095a97b858a652aec7613851fbc2ef5a1b` |
| 60 | `theorem` | [size_balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancel-source-edition-2.md) | 817 | `result-track:3359e1ed60fa320676bede67996f6cbc66b39c40f0210180a9a4ac2ed7f34545` |
| 61 | `theorem` | [balanced_balanceL](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancel.md) | 823 | `result-track:6c3c82455f64a3e62a1e2b86cd54c9d583539c4b31d47e60742de6b523fe82af` |
| 62 | `theorem` | [size_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancer.md) | 830 | `result-track:83a67b542338c7e7c1313ed7652c8ed3c2e5014c1b9a880a51c4e674e7a5fba1` |
| 63 | `theorem` | [balanced_balanceR!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancer.md) | 836 | `result-track:93fecc3e2aa72d7c73a41c62ce26ba03726bbafbe10dbc69d44847a26201a8a7` |
| 64 | `theorem` | [size_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancererase.md) | 843 | `result-track:b97685a3a42a30d22070d0db1e929db6737774c75fb1bfcadb58c6ee79e426ce` |
| 65 | `theorem` | [balanced_balanceRErase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancererase.md) | 849 | `result-track:c96e1b789138da04d0631fdad1bffa2cebdcc7c3f6ab784a6a58d64fa1856cc7` |
| 66 | `theorem` | [size_balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/size-balancer-source-edition-2.md) | 856 | `result-track:d92f1f1fec58213923ecbe574251ad10910ceb8fdb357de21acd14c9542bbf50` |
| 67 | `theorem` | [balanced_balanceR](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BalancingNamespacedPublic.lean/declarations/balanced-balancer-source-edition-2.md) | 862 | `result-track:b472ed5e5bd49e1619709783e3cd9412bb48317826f1ae15e647b4a617ea2bd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f3368c80af3742837575a5da5097fa26893a507ec4ba731f7e7ed2531621df8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Balancing/Variant0c41a6888324ca90e0143d3b4f3d05729742743a47d13176b22bd831eb4ce4d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
