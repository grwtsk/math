# Verification target: Variadic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a408f470fdbf503da63d590e5d1b291d9e993e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a408f470fdbf503da63d590e5d1b291d9e993e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Tree.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.List` — import line 7; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Polish` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Prefix.Variadic](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/prefix-variadic.md) | 26 | `declaration-track:79b50d5a2eab31286dc00db2978720576a350eaa4fc07a5f6baa1631b2fa84a0` |
| 2 | `def` | [Prefix.Variadic.toTree](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/prefix-variadic-totree.md) | 41 | `declaration-track:4a7a131b6a829d818ced72039fcbace769839107c987b58972a8a48a04f124e1` |
| 3 | `def` | [Prefix.Variadic.toTreeList](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/prefix-variadic-totreelist.md) | 53 | `declaration-track:d070532544883463ccdc7a767c796e58806ed8f4dcba72046dc55793b2f12d76` |
| 4 | `def` | [Prefix.Variadic.eval](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/prefix-variadic-eval.md) | 61 | `declaration-track:f90989e6f59c1aec31c2511aec6dbe57ced5f955045b2d9cc89e1c6d449dbde9` |
| 5 | `def` | [Prefix.Variadic.toStrictPolish](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/prefix-variadic-tostrictpolish.md) | 68 | `declaration-track:12d4ca3e9804c8cb782df494441afcfdc6b4005d5ea1cddf56e7f0bfb21a4e4d` |
| 6 | `def` | [Tree.toPrefix.Variadic](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/tree-toprefix-variadic.md) | 82 | `declaration-track:2a99a0d0da43b150b302bad3aadacac5e2dcf4d460f63f1e2bd711a196291c7a` |
| 7 | `def` | [Tree.toVariadicConjArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/tree-tovariadicconjargs.md) | 99 | `declaration-track:0755eaf2495de3e23c7abaafd5ea0b0713a99b1afa4ed6a42f84d186a06b9139` |
| 8 | `def` | [Tree.toVariadicDisjArgs](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/tree-tovariadicdisjargs.md) | 105 | `declaration-track:79a457d93cdc1a314fb8b2937854a462f4aacd21aebded972d6e8bac20fc0162` |
| 9 | `def` | [PolishExamples.implicationAB](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-implicationab.md) | 113 | `declaration-track:5457c995fab81d477905aafa50eab4a112422bbd8675a761cc7e58f7e7646d81` |
| 10 | `def` | [PolishExamples.implicationBA](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-implicationba.md) | 117 | `declaration-track:be27d078dd680d3301595db006f6d89e65c4449d72e89cc5ba9678c95feedaf5` |
| 11 | `def` | [PolishExamples.leftNestedNand](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-leftnestednand.md) | 121 | `declaration-track:123ef3764a0b26d596f24eedfa2813732673caa403385f07a52178e4c65aa4a7` |
| 12 | `def` | [PolishExamples.rightNestedNand](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-rightnestednand.md) | 125 | `declaration-track:eded074e546dbeb1914fff34205ca8d343f0ed00e023b32775d96b34e3ad9a9e` |
| 13 | `def` | [PolishExamples.flatAnd](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-flatand.md) | 129 | `declaration-track:6f3a1f4e1649511db3c9502a3da0b491f69c22185ad6bad61b6bc5af6f626009` |
| 14 | `theorem` | [PolishExamples.parse_implicationAB](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-parse-implicationab.md) | 133 | `result-track:f3aad560983e8a6840e398932dc4ef93ff4dae5f512756d877853c734915a0ed` |
| 15 | `theorem` | [PolishExamples.parse_implicationBA](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-parse-implicationba.md) | 139 | `result-track:6d62594fbc2fd5e22a4606f9c65761ae7d825bc0b3d0168067b6a21d8d37e222` |
| 16 | `theorem` | [PolishExamples.implication_order_distinct](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-implication-order-distinct.md) | 145 | `result-track:fe2022c8cfeb569ac7b27f2532fab240cf64a069a6dc99e9227d47383b73d45a` |
| 17 | `theorem` | [PolishExamples.parse_leftNestedNand](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-parse-leftnestednand.md) | 150 | `result-track:e5bd6aca3ad94e20192c3e9eb3868d7353271c28f9a01d25fbed55075caf4b0b` |
| 18 | `theorem` | [PolishExamples.parse_rightNestedNand](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-parse-rightnestednand.md) | 156 | `result-track:ef49b994276c9bfc6e9c44d84bc7897f18748bed7b84af5196856c3c1d8f7837` |
| 19 | `theorem` | [PolishExamples.nand_nesting_distinct](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-nand-nesting-distinct.md) | 162 | `result-track:dd5ce3d0baa9ceff4da30ad21044166cb9919ce636e9bb709ff6dfcf04bb343d` |
| 20 | `theorem` | [PolishExamples.flatAnd_toTree](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-flatand-totree.md) | 167 | `result-track:d60c5f27a177da26eda99fb3b6d2f5198d853e8dbd0f58ef273ca2ae71d08b9a` |
| 21 | `theorem` | [PolishExamples.flatAnd_toStrictPolish](../../../../../ComputerScience/AlgorithmsInComputerScience/VariadicNamespaced.lean/declarations/polishexamples-flatand-tostrictpolish.md) | 178 | `result-track:e583c1e93f250ae695c525c08f837518c98d7d36c87a5c0d035058d5f909fdb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c0153a10bb106286dea5bc913c9a4c2fba6c8107f6783e94d454bc715c6592c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Variadic/Variant0f8a94ec93af1b152308d628a670ae260afb4596bdf01f6239526e5c4d389814.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
