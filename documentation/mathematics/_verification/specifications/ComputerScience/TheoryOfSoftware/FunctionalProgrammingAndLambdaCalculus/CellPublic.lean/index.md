# Verification target: Cell Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d39eec97b0d6303d100de9cc40e2cfe623a27c9",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variantf9a2a8e8342b80793464883dd2fa43da7e751a5fb979dfcc3d7900487a50b148.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d39eec97b0d6303d100de9cc40e2cfe623a27c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variantf9a2a8e8342b80793464883dd2fa43da7e751a5fb979dfcc3d7900487a50b148.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variantf9a2a8e8342b80793464883dd2fa43da7e751a5fb979dfcc3d7900487a50b148.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Find` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cell](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/cell.md) | 32 | `declaration-track:15b106e18c41db7a77fc7905930966b5edd5db25d42484d12e8074d01c7ab94e` |
| 2 | `def` | [ofEq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/ofeq.md) | 41 | `declaration-track:161122b0a4f003b61213ace5adc53e1f485e742bcb7507684d2a41de9e534b98` |
| 3 | `def` | [of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/of.md) | 46 | `declaration-track:1c070a9971bafcf5dbddc5aaa8cd43ae9ed1e5e1c7d9e8edfe291ec8dbd89f53` |
| 4 | `theorem` | [ofEq_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/ofeq-inner.md) | 50 | `result-track:7b52131e7115858248b3f0e83c3d07445141c6a528e1eea5182cffc20a6fd15c` |
| 5 | `theorem` | [of_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/of-inner.md) | 54 | `result-track:1954ebff248625230077337cc26756f2aacc427b897b58b8f5fec288591d0a6e` |
| 6 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/empty.md) | 57 | `declaration-track:f7a5ded75b9ee595eea078bf302ba2931c1a244e0f642af370a13873beb5eb71` |
| 7 | `def` | [ofOption](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/ofoption.md) | 61 | `declaration-track:819988c5ec84c4aebe5671324b33cc5073266bca400636f9decc186977e4bb4d` |
| 8 | `theorem` | [empty_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/empty-inner.md) | 67 | `result-track:37d65946dbbed6df33fd409e97e762808a3688a4276dce751505bd6c5786d31d` |
| 9 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/contains.md) | 70 | `declaration-track:17f07f1eaa6dd680461479a55968f48aecb003805ed15ef69e05345b99a3be5a` |
| 10 | `theorem` | [contains_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/contains-of.md) | 74 | `result-track:bf37dbf4097aa88ccffc055f341df5abb04c57455150ae53149c2f26084b23f6` |
| 11 | `theorem` | [contains_ofEq](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/contains-ofeq.md) | 77 | `result-track:019bcd8bdfde0b8facdaa17d317090adf8685e7f3d6b189df9e631a9df73d4c4` |
| 12 | `theorem` | [contains_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/contains-empty.md) | 81 | `result-track:f54582cee2733c3f839c26aa69fad8433f0ead1d52800049a4309ea357ddc58e` |
| 13 | `theorem` | [containsKey_inner_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/containskey-inner-tolist.md) | 83 | `result-track:a7632076ce85028757e97952022ae46b92f709cdec9b2dbb5dc7c16a7b8256c9` |
| 14 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/get-source-edition-2.md) | 93 | `declaration-track:d97a3174361dc0879bfc3bd4b52df4f3ddda929532b1bd8accf6537bfe7121ea` |
| 15 | `def` | [getEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/getentry.md) | 99 | `declaration-track:eb6040ed573712ed3c20c39d10b49c54578409db2c23cae2afabb53558ed3536` |
| 16 | `theorem` | [get?_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/get-empty.md) | 105 | `result-track:27f50ea5a0ac1dedb6c6dd2b4e1541133318771f8a42788459840314ffea7a86` |
| 17 | `def` | [getKey?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/getkey.md) | 110 | `declaration-track:32e46a76801dc37eb205da2c6fda8c67deb208d43fb0af4df8c6fa13036e920b` |
| 18 | `theorem` | [getEntry?_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/getentry-empty.md) | 116 | `result-track:8dfe79ba43e87a28f6b22943077a9c2a2d2562c0c301bc8309c88f0035f68884` |
| 19 | `theorem` | [getKey?_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/getkey-empty.md) | 121 | `result-track:cdeb2cc4574d8a484c05f6b10dc6abced42b7bc4657c50fef7b76c973ea08729` |
| 20 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/alter-source-edition-2.md) | 125 | `declaration-track:ff78ec16c0f050b9ac700f623c4a2f6407ae269cb314b4b3a4a65a6cbcc01d8c` |
| 21 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/ext.md) | 134 | `result-track:a032cde64dec433aee026c7fb50383143fa4aa257190234b2982c6f462794933` |
| 22 | `def` | [get?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/get.md) | 142 | `declaration-track:8810b4ac5653a9bae2ba016e120e64f976d3278b8c3d701b5f037dfb05033502` |
| 23 | `theorem` | [get?_empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/get-empty-source-edition-2.md) | 148 | `result-track:570dbbc0ae9f1a6a7f2150f8a608554791bb6606e4ece134ad0e5b5c769e942e` |
| 24 | `def` | [alter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/alter.md) | 153 | `declaration-track:0ea96d7eeaa7c625718f71f1d232d5811d3d299d2900b53f2f96fdf92a63a3d7` |
| 25 | `def` | [List.findCell](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/list-findcell.md) | 166 | `declaration-track:b454f8c4ea4b62e7d4f54c69e4af7f774694cdde57b2cd8a2fa7093e431e9842` |
| 26 | `theorem` | [List.findCell_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/list-findcell-inner.md) | 170 | `result-track:9cb8d7de4bcb0f264cff4807d46453b9637fc8b9221d1ef09e36c78788080a69` |
| 27 | `theorem` | [List.findCell_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CellPublic.lean/declarations/list-findcell-nil.md) | 174 | `result-track:8da9f5d80569bef93d5b6d4a464f804432fdfc7e770a9e66dabaf5aa80f20bb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5fda182f3cc909a7b8c454b9d5c0506f7313a83712a9462f2d1ad6e2763abf5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variantf9a2a8e8342b80793464883dd2fa43da7e751a5fb979dfcc3d7900487a50b148.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Cell/Variantf9a2a8e8342b80793464883dd2fa43da7e751a5fb979dfcc3d7900487a50b148.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
