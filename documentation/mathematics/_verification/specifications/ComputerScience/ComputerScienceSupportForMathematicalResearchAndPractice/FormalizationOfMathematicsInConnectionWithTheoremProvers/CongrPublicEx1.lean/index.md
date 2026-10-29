# Verification target: Congr Public Ex1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b87b9a8400b2679a8c48057381bd65afda8bb43e",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantaaddbbf78c434b182d0ad0d2406e58f58242827a76ce3e146b2dd9316d669574.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b87b9a8400b2679a8c48057381bd65afda8bb43e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantaaddbbf78c434b182d0ad0d2406e58f58242827a76ce3e146b2dd9316d669574.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantaaddbbf78c434b182d0ad0d2406e58f58242827a76ce3e146b2dd9316d669574.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CongrExclamation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.List` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Subtype` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [test_sorry](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/test-sorry.md) | 7 | `declaration-track:d4ea800de085da657237b5598b58826afd7b134d681d79a8c89a2620db360887` |
| 2 | `theorem` | [ex1](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex1.md) | 13 | `result-track:df58430ca485a679efc503badf6f0592979320edbe577059a9de6a37be26d615` |
| 3 | `theorem` | [ex2](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex2.md) | 16 | `result-track:69a5fe14b62eb255c763d18d4f93b7ac9d363a83967409f6201837dd70aba2d3` |
| 4 | `theorem` | [ex3](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex3.md) | 19 | `result-track:c5f532ffb2a33330c0a1fd30d255308c5d135928908084ec60d67a2ae899db97` |
| 5 | `theorem` | [ex4](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex4.md) | 22 | `result-track:74e771922739e57ce4fabbfab6622ec5e6f1dd96ebf7c55b35aeedc29d6c689b` |
| 6 | `theorem` | [ex5](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex5.md) | 27 | `result-track:c9a80b7bdd4462ca56b953873274086e67fd669a3fd13c1268788bbca25cfb63` |
| 7 | `theorem` | [ex6](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex6.md) | 32 | `result-track:8e4c2d05c735bfab78e80642afe07d0d77d86ae07ad0e3b2e89d952710fedea4` |
| 8 | `theorem` | [ex7](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex7.md) | 37 | `result-track:2ce49e5f9ada879d17606d6bda7f4d5c9c6bc8dde92c1a99c7537d3b35bc590e` |
| 9 | `theorem` | [ex8](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex8.md) | 40 | `result-track:05cf8f3efe40248d135b8d52904b57f3d03d2ce75d5628ba79879e2f7272d225` |
| 10 | `theorem` | [ex9](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex9.md) | 43 | `result-track:5d995e868cd1304c7a716ea9a2edb698100d5e45d996519616360e0854e9ed6c` |
| 11 | `theorem` | [ex10](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex10.md) | 46 | `result-track:b4ccd5561ebcc34d57868a62ad78df0d9a8c7b58dc7a32b2fc41a27e7734215e` |
| 12 | `theorem` | [ex11](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex11.md) | 49 | `result-track:fc94edbc90411527ed5f2987473ec31bd9bb482a815e726672b1bcf04c34c8d4` |
| 13 | `theorem` | [ex12](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex12.md) | 52 | `result-track:4b46caeb29f2a1f01eb58e552020c1b45d36920363b57f0a93ff19d31ed61802` |
| 14 | `theorem` | [ex13](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex13.md) | 55 | `result-track:ce121138fcd4f827f0b9c0846848efd2b0f09eaf21cccca4c6b9d730d5599369` |
| 15 | `theorem` | [ex14](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex14.md) | 58 | `result-track:9e657ce7bcc7a8b69632958f7d5d801542f41ca3bd7483b3cfd5f1bed79c0f40` |
| 16 | `theorem` | [ex15](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/ex15.md) | 68 | `result-track:26c3c2fbcec7577ebd40bf8ed3215e081f0c860eb81f570fb49879545af1b1bf` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-9.md) | 76 | `declaration-track:337534519aa93b302542ad663907ddcf1d299b8d2d272d5cf40ba4f77239d453` |
| 18 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-21.md) | 84 | `declaration-track:819e6835e5588aed3b05617a718dcf19dc5bb47f6c2d6350eed0fa88ce340cf1` |
| 19 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-38.md) | 98 | `declaration-track:fe16135e6b63e6433735320eb3ac5c6b61421d3529eebeb138f5d10cc4ca5e61` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-11.md) | 109 | `declaration-track:488f37bbf388782043c71855cedaec319d6ee09fcaa19f5e5cebb74824ba24b0` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-20.md) | 115 | `declaration-track:782e7d7e68ff62e579ec321dac1200df269c01dd85da36074ff1ed5199c410bd` |
| 22 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-26.md) | 123 | `declaration-track:90703196133f05efe2201ff630cdb2e6c24ae70421c6a225af27e1642cffe3f5` |
| 23 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-4.md) | 130 | `declaration-track:1938b7fef520f650a9e94c45fdfa8848cbcab42dbf8c412910fceb5c0464613a` |
| 24 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-30.md) | 142 | `declaration-track:a24c3c322b438e3cc4d213240eafbeafc260f87ffafa98e212e858d94aada44c` |
| 25 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-28.md) | 150 | `declaration-track:9cee5cf1962d19338e65808ea03533313e2224026ba0e6307040ac6a4f782aaa` |
| 26 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-8.md) | 158 | `declaration-track:32cfc8315b35388083f4804ae9c7204c4fb21d3b6e050c9ff80208aadb811d57` |
| 27 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-5.md) | 164 | `declaration-track:1e4a388216242d6f3374e589a33fe1102b83a5777e9c7801cacbc9469da67ac0` |
| 28 | `opaque` | [partiallyApplied](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/partiallyapplied.md) | 170 | `declaration-track:392759eba7acd9a17f66207d772018485e1c34cc97d7d6ba5060585ea1578d86` |
| 29 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-2.md) | 173 | `declaration-track:17c1b3b53b73eaf20c74f2538f649184ea478910887c7562184fe8f07108811e` |
| 30 | `inductive` | [walk](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/walk.md) | 177 | `declaration-track:efc26271fbad4614da202986c7547edda0d203481802461fb3c8e48d39c06698` |
| 31 | `def` | [walk.map](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/walk-map.md) | 180 | `declaration-track:dec5cc08867586f7baf470e315c031f970739dfa5af9a028c206ba07e4fe2fe9` |
| 32 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-13.md) | 184 | `declaration-track:55bba1de499388ed9dc8d7b28eda13ae0272c3a564994e2a48ded3ffff7f97d4` |
| 33 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-34.md) | 196 | `declaration-track:e0f9c36ae78d66993437e7fc314fcf54eb53ffbcaeb18ef76a19d62ba8a7be53` |
| 34 | `def` | [MySet](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/myset.md) | 205 | `declaration-track:75e8dc93f2c852039a40eee6ffa18a3ac2129da301715e48987678bad6f027d4` |
| 35 | `def` | [MySet.image](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/myset-image.md) | 206 | `declaration-track:ea29b8d2c478fb3fc07457b4a01e1d828d0999dca6f05ea381432e5498e9103f` |
| 36 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-16.md) | 209 | `declaration-track:604a37dfd1d3e2c0b72b5ec677597d9812cce07183264b2c46eb80d530a80bd5` |
| 37 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-24.md) | 214 | `declaration-track:8a2641959a194886e12281385bf940362fcba214237f4f2b34db18a8bde94edf` |
| 38 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-23.md) | 218 | `declaration-track:84b5c62ffec4b49d929ce54917d7c705015d0fcd24f1e19baf28aec7b4b5346b` |
| 39 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-27.md) | 224 | `declaration-track:9525ca582d5050d0092c042e77bfe2b42b04d61ea8d5d3a9701bc81b4fad4705` |
| 40 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-29.md) | 230 | `declaration-track:9e828d6711792d972f5aae9da17f2c4e76d50bf49fe42f11c8eada1695a164a1` |
| 41 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example.md) | 238 | `declaration-track:15d020ce5e972412ceb0bb19b2ebaf52fa80103bcfff4e50367fbce6fcda75f2` |
| 42 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-36.md) | 245 | `declaration-track:f946de47241ede6d57358ac6d5cc3cff9d2294acf8af4026a0228ce6750a073f` |
| 43 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-37.md) | 251 | `declaration-track:fd0a3ee05ea494a1aa0ca2e945d2b4e70f0c2951335ed0e280d353ccdeef32ff` |
| 44 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-18.md) | 252 | `declaration-track:6a2d26a952d681656049ec7ce150b8a0e966ab5f593ca20b32bf2fa9600fe0f2` |
| 45 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-12.md) | 254 | `declaration-track:4a790d24c2eb7a6b3f3484fd00487d9f0ea8ee4de47b24c7534579cd85b01abf` |
| 46 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-3.md) | 256 | `declaration-track:189e14d73e2e4dcb31317b47a472ab3f2ad322bf09bf36295737cc815147f57c` |
| 47 | `def` | [g](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/g.md) | 260 | `declaration-track:cc80b1e9696665f7da4a9a508a991d96b886f18cef4f571f76cfebdbe32e2ae6` |
| 48 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-6.md) | 262 | `declaration-track:254806fb4d6729485ced6756fba0c5027ca570ee858df0b69bc69b5df8d79f99` |
| 49 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-17.md) | 269 | `declaration-track:689cc664c755373a632db9b28358a703d41d84cb526f553ee078e387c7456f6a` |
| 50 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-33.md) | 279 | `declaration-track:dc60ffde46edaeb36532809f4a9039eabdfa3749d6d57a2b986ec8c2a2d2cad8` |
| 51 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-32.md) | 285 | `declaration-track:c431626eecee4fb4d6df091154dc6125163aa5f87abffc7f825d60e5c8a21d23` |
| 52 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-7.md) | 290 | `declaration-track:31ec0dc4089066692d75fc5c39cd326b0527a97608def79b340b9fd197f412f6` |
| 53 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-15.md) | 295 | `declaration-track:5fccc2bed64512404ec92447390046d8abc1f7de30e546913cbf57aa00c860fc` |
| 54 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-35.md) | 298 | `declaration-track:edb3b55c356f516f37b9734dd609f1b0ffaf3c1ef15ec911a0a8a190af7b6ae5` |
| 55 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-19.md) | 303 | `declaration-track:72929101563298d593c4915d0554e89addc11cddc6b7cb1130bd87ce8fb58da3` |
| 56 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-10.md) | 311 | `declaration-track:42609616482f81b4145ee10a4a20aa17a0a57a9a46cee1d7b49735106386458d` |
| 57 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-14.md) | 314 | `declaration-track:5c46a9d172a595a593f9066be2a6ab9af4e0577be4d12384d341a56ccea8a722` |
| 58 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-25.md) | 318 | `declaration-track:8a84211b6dde9f73c830bc90f27617ab8cd809e8b7e712cef055c6a38e15bb88` |
| 59 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-22.md) | 328 | `declaration-track:842cb33001868f0d8a57efc8fea75b43b28836bbeb06b4997419140c8475ec43` |
| 60 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/example-source-edition-31.md) | 345 | `declaration-track:a9bded45d1a18db8397ac0b93dbcb07111aa9c87525b2de017da71978fea105a` |
| 61 | `def` | [F](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/f.md) | 357 | `declaration-track:4e6b334f5bc553ebf9d3453e3090078745de9d221dc3f62ef38ac61ed992a5f7` |
| 62 | `def` | [F.A](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/f-a.md) | 358 | `declaration-track:765b361c588da38afd24e003336c30463eb4275d6ca709eabda3c278ba5569ef` |
| 63 | `def` | [F.B](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/f-b.md) | 359 | `declaration-track:0aa6fa9864d8b4added7256307d9dd25c205e2ec061bd0c5dbadac4f59a3441d` |
| 64 | `theorem` | [bug](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/CongrPublicEx1.lean/declarations/bug.md) | 360 | `result-track:fc29d5a0e40dca336046faea671c2340b59d65d588ff1eaf8add7bae40cf1ad2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4a663318e050de3352a795bf6b2d79da820d1fad1df51b9c73baadaf4e33b76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantaaddbbf78c434b182d0ad0d2406e58f58242827a76ce3e146b2dd9316d669574.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variantaaddbbf78c434b182d0ad0d2406e58f58242827a76ce3e146b2dd9316d669574.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
