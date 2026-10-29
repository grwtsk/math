# Verification target: Inequalities Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "81f2845c93ad0026430cb65b2a579bdc027d5770",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variant40c3b33c6347fed6ee34fcd74810e685d84c700ede16a5a54f922b29836f8faf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `81f2845c93ad0026430cb65b2a579bdc027d5770`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variant40c3b33c6347fed6ee34fcd74810e685d84c700ede16a5a54f922b29836f8faf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variant40c3b33c6347fed6ee34fcd74810e685d84c700ede16a5a54f922b29836f8faf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SuccessIfFailWithMsg` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `axiom` | [Real](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/real.md) | 24 | `declaration-track:aea5e56aa9162a27e66afda1004894e71767003080171386ad573cb2ad1aebbc` |
| 2 | `axiom` | [Real.linearOrderedRing](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/real-linearorderedring.md) | 26 | `declaration-track:e58efd6298e1e0afabe717fbfc7a77cc8e7975e3ad838f0b7421d02bd459cbb8` |
| 3 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-10.md) | 30 | `declaration-track:1f648eebf9d5b4bd3667e5aaf01b0434e5858629d6df71f976e97935500ffdbd` |
| 4 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-49.md) | 32 | `declaration-track:f7adc241a6cb298729e2596e75815233f4913d83cfcc89bd770c240e6fb49864` |
| 5 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-26.md) | 33 | `declaration-track:8e9a6b5006cfbcddc080d0d1bf6a5fcb8b5e6c8799d6b0e8542a29930244d870` |
| 6 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-33.md) | 35 | `declaration-track:adb4468af407cd068431f15ce93dabc1b3c0cb3424d9761bc1d75df82863f99a` |
| 7 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-44.md) | 37 | `declaration-track:e8b243407731119141f368734f08201d7d13aff2c22266122b7bcbf04c03a6f3` |
| 8 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-21.md) | 40 | `declaration-track:75c2dab6bd8187adcc408e9aae2bd0fbefdc9fb9541fe3b8c3abd91695e6a988` |
| 9 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-17.md) | 42 | `declaration-track:509e622236531075b7ef78c8e502ce4e06e19b8aa996a64c9cf6b7b589aadde3` |
| 10 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-9.md) | 43 | `declaration-track:12cce4e7c5c5eda2659269e983a1c0cf39aebb91a81ce74ef19a2ac5b4787976` |
| 11 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-5.md) | 45 | `declaration-track:0d486409869b88201bef2dfe3588dfaf8ca701608d2dd7ed77a2c291d7bc956d` |
| 12 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-23.md) | 47 | `declaration-track:83674a5ec3344be7f8b9ced1c886559928ab6429321c416a509e84b25764fd09` |
| 13 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-34.md) | 49 | `declaration-track:b74c59233d30819f9bf87294bca211329b9f2c1205b1442237531105ed33d58b` |
| 14 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-36.md) | 53 | `declaration-track:c063389b3a7c9134dd71c6aeefeb1b1696f5a0c75ebe8cf7f867c1dd717a83b4` |
| 15 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-46.md) | 57 | `declaration-track:ebc4f5e97d084baadde29c718a7b213ccdebed3d1269d4eb2fc12d140ff3957a` |
| 16 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-6.md) | 59 | `declaration-track:0ee47b9a8693b3141581b6514fffc4ca94ebf4d3feb379ce3cfefd90fda87e4b` |
| 17 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-4.md) | 61 | `declaration-track:0c071a6eeb52d1fd1e41d441dfdcedcef7ac2e81937109db1b5f651cbdc3d928` |
| 18 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-18.md) | 63 | `declaration-track:523bf6348999308ee425f1df557553262f4762d6cb70b7b6650bca8b2ac51a14` |
| 19 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-45.md) | 65 | `declaration-track:ea79b6d52fd08c5a41dca33ccae67fda1b00784c097529ddf05a766343a587a1` |
| 20 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-50.md) | 67 | `declaration-track:f7d87d5b253fd368c2f307b92537cb80d52cdb848c8f842f048cb24b4232f624` |
| 21 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-2.md) | 69 | `declaration-track:0418a9afaf39f3cb4f5cccbcb8b52f79215b39f518ec172fdc39e7acad31f73e` |
| 22 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-20.md) | 73 | `declaration-track:739daa26e7c74c7ee0ba8d6330d6c29c84f6a61753994e01616f9c56ae016516` |
| 23 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-39.md) | 76 | `declaration-track:cdb8f4644c948639fd5801c435b1fe41ce6bf04e758557cafaf7261adc8f1219` |
| 24 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-16.md) | 79 | `declaration-track:4859ce9c6070e382649f93aa5f55c2ca980dd76efb4b9f18f47bd90e6c7525a2` |
| 25 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-40.md) | 81 | `declaration-track:d269b659d6393a0dc4f8cf5de8c4951d7359046b32bbdd5e61c2b8975a6727e3` |
| 26 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-41.md) | 83 | `declaration-track:d2d752f761a932f8bba9217c8222bf2dfa39364e95fee31bba65277aa1e7457b` |
| 27 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-28.md) | 85 | `declaration-track:904f718dd4bf154740fc37244090682ceba96c66b1d31b2d2cdc55c18dbe8f30` |
| 28 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-13.md) | 87 | `declaration-track:305bff4a8c083568e416577a2269a6ad0b4a30e363ea76b36162b6cda3d7a413` |
| 29 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-29.md) | 89 | `declaration-track:920592ca8762d73c3be1c4878e1a07f1657d6ba48fbce90673f2cdd933692a6c` |
| 30 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-37.md) | 91 | `declaration-track:c9be6e35cae83ad7407c51bd830cc0ac2e303bf06fb91db8752eef7d258c666c` |
| 31 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-43.md) | 95 | `declaration-track:e1dc34186303e5c070deda3835c0546179e2f368614035a325bf462dc55ccd5d` |
| 32 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-38.md) | 98 | `declaration-track:cba3410980358bbd0e21f28d943c4e77157dac4afdbd9bb49a12fc9dfda2b1d1` |
| 33 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-42.md) | 101 | `declaration-track:e08947bf27abd1d62f6081ab92730d6ac3bed7d9796238564d856b7c849a546f` |
| 34 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-8.md) | 107 | `declaration-track:12049ed4bcb3c01d55e682d8bdd013d46538a609647fd7f6dc41c4c9b15245a6` |
| 35 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-12.md) | 111 | `declaration-track:2f6bbe31744ef5cfe86385acb78585dc61f2e61ea55542e482d2034956cdb39a` |
| 36 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-3.md) | 119 | `declaration-track:0612374faefa0ce40b6b6f128bfadf5bed0c448636f02c40b2c6ca05dc605806` |
| 37 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-19.md) | 127 | `declaration-track:6bc956248942f4bcd11388474538e5e89599efb7c0695bb2d418f4ecb917f73f` |
| 38 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-27.md) | 131 | `declaration-track:8f9d8f1fb32d19d253d131d0746572664ab46acd1cc131564c1a990ed29c07c8` |
| 39 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-15.md) | 136 | `declaration-track:43a5d102498fa8c4c0dd1357c4d1d36287142333c4d48f427d57d76f4795feb0` |
| 40 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example.md) | 138 | `declaration-track:016f0f18789f1124eeb3499df5e9e895a1d8449039980c26189eee9eee397584` |
| 41 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-31.md) | 139 | `declaration-track:a24febf25d063ab9783b40c28186e7d67576919436c271187275fc00f58c6146` |
| 42 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-14.md) | 140 | `declaration-track:3d5e162bca6ff89c3ec5c246a932116c28de9957067f3697c21ecbad8c68631a` |
| 43 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-32.md) | 142 | `declaration-track:a80d4ff6cbff478ab34ef34c18ab0d4be9d0fad6b5c0dd846f7827a048762130` |
| 44 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-25.md) | 148 | `declaration-track:8756e30ec6c1b1084ad1019cfe7709e48e3711f9411c67293b102fadedfd7127` |
| 45 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-35.md) | 153 | `declaration-track:b978040375058709d212cae3e58095a4c870c862bcba11fb5387e1b6f46e6de5` |
| 46 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-7.md) | 160 | `declaration-track:0febe1c3f0a74003cda88d50de21b1fe6c7048fed48b8d660d8acc370c1ba781` |
| 47 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-47.md) | 170 | `declaration-track:efde0928204ffcba19523b2b3dd9c0edcadb998835b5a1f926bd321fb9383c98` |
| 48 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-22.md) | 177 | `declaration-track:79231817ac4a05a3775852dddaec76d565edc83609572a0803f2917d6a61063a` |
| 49 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-48.md) | 183 | `declaration-track:f22e73ce167603344d7982dcbb4b81c3a938b3e5cca966a2339acce07940de79` |
| 50 | `axiom` | [f](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/f.md) | 188 | `declaration-track:99ca95496ad2046063b1a3cbb8584c0aba89c6b587cf605c02cf970e28387f46` |
| 51 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-24.md) | 190 | `declaration-track:83c6d9b201d5c9d1132525a3b0d6eb4419b71b99e7c509fda73c11582884baa3` |
| 52 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-30.md) | 196 | `declaration-track:9cf6c8c6b49278b2208e53b7c7edf71b01590896e3304c7b20ad1b4797204ee7` |
| 53 | `example` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/InequalitiesNamespaced.lean/declarations/example-source-edition-11.md) | 202 | `declaration-track:2dd2ec8dbecdc4e063079f03d4b96ad1f1d9203023c50a1e9d2e9457abecf815` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc4fc262324f490a72fd0e3688c4b9935c2a5116ce3a923d9eefd9d1b1a377cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variant40c3b33c6347fed6ee34fcd74810e685d84c700ede16a5a54f922b29836f8faf.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Inequalities/Variant40c3b33c6347fed6ee34fcd74810e685d84c700ede16a5a54f922b29836f8faf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
