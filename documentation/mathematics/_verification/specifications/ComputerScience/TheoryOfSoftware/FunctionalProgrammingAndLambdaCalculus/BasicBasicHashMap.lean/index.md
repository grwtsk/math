# Verification target: Basic Basic Hash Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74b059585ca9e4aceb706dfe83a17eec79186023",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74b059585ca9e4aceb706dfe83a17eec79186023`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.HashMap` — import line 6; external provider; requires a separately pinned dependency.
- `Batteries.Lean.HashMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/findentry.md) | 25 | `declaration-track:1d5e71729d6f8e3a9847685872743d0f4bf849a2bce21173f92f166854bbc2ad` |
| 2 | `def` | [ofListWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/oflistwith-source-edition-2.md) | 34 | `declaration-track:adf53f1eb761c93a884891119ac6106eec146249858019b89a3522a6b1fe4a77` |
| 3 | `class` | [LawfulHashable](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/lawfulhashable.md) | 45 | `declaration-track:a67fb236c9656f12637140192daf055d49635f3928a71d64ab80b124f6d2a39f` |
| 4 | `structure` | [_root_.Batteries.HashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/root-batteries-hashmap.md) | 57 | `declaration-track:40a996dc765f0e80533e78319bef2bf784ac2f3666de35fd64d5e4039b21b8c0` |
| 5 | `def` | [_root_.Batteries.mkHashMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/root-batteries-mkhashmap.md) | 64 | `declaration-track:f9ce6cbf20c5dfd5fdd43e141d7cf6f7a42fdadee767e53dcd789c917150b1b2` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:8e68a46e1438e6e2abdb6899c8fa149c3d19e3089d866a2e5a54669701fdcea7` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/instance.md) | 70 | `declaration-track:7c5723b77484b4acf42808043bb4b4ad552d6a4f73dfd68bf4493bc33cf5b832` |
| 8 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/empty.md) | 78 | `declaration-track:82095cc57af3e49b95c3411e5f937ee40a6f52b89986d4f6ca8423d7fb479efa` |
| 9 | `def` | [size](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/size.md) | 88 | `declaration-track:2f9a55e7287c9f013b1a56cf47d013eb0457728616fa0fcd0170bd75793fdb68` |
| 10 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/isempty.md) | 97 | `declaration-track:36860b4186ffbe350b76fb22a338470f103718f1c1ff2cc8a899c598f3f56b33` |
| 11 | `def` | [insert](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/insert.md) | 108 | `declaration-track:296ecb9fba35f43a42c2572dcf9341026a3c26e218c1b952227da13aea34aead` |
| 12 | `def` | [insert'](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/insert-source-edition-2.md) | 120 | `declaration-track:6da1d8eb20816dd53387138f883ab5bd4f8bd6b05733bf3d419c297f15b5222b` |
| 13 | `def` | [erase](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/erase.md) | 132 | `declaration-track:38a71d3481ef0e8fbce6ad7480c0db146099b8d9ca90042810d04b2cea142290` |
| 14 | `def` | [modify](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/modify.md) | 142 | `declaration-track:34928c6202eb2f102a4c5515146df7e4dc19ba4fd9436a530f8245ca064db5e8` |
| 15 | `def` | [find?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/find-source-edition-2.md) | 153 | `declaration-track:6ea73a88cda46e314b40d166008ec54c831c2db0d37ca6682c7a892cd4a55d2d` |
| 16 | `def` | [findD](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/findd.md) | 163 | `declaration-track:a0d499961efc98854a9b8a564f1e94bf66572d4f08652139a5f08e691ac1c8ba` |
| 17 | `def` | [find!](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/find.md) | 173 | `declaration-track:34b5e7390c712e2e154e3ceb0fc64a0e37cac1c1e289fd568e0c3dc76199277f` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/instance-source-edition-3.md) | 176 | `declaration-track:b1b452c98032147440c95e05cb9aff073605e65a290b48781fac63bb2e509127` |
| 19 | `def` | [findEntry?](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/findentry-source-edition-2.md) | 191 | `declaration-track:ac203eb6919dbc83333b18e8d97f8b21a47ce6547099964e2c5c3702a99fab99` |
| 20 | `def` | [contains](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/contains.md) | 202 | `declaration-track:65438152c60a8de81311935bec8f642723ef1314be74487c12c959cba598f23c` |
| 21 | `def` | [foldM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/foldm.md) | 215 | `declaration-track:dcdbdf81b1f9a1790236667e5dbeafe887df559bd201fe48545f688f360eacdf` |
| 22 | `def` | [fold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/fold.md) | 224 | `declaration-track:5f58c29ea831f5d6632a7922f4c9ea23ba2bb3d5e62a7427d4df68b806a58a4d` |
| 23 | `def` | [mergeWithM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/mergewithm.md) | 241 | `declaration-track:0b285f9ddb7ae468d3dcb9af19108bd8239eb5053ae7db9cace0499a806a20ea` |
| 24 | `def` | [mergeWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/mergewith.md) | 253 | `declaration-track:f10e3738aeb0e2f685f25b2a466a5003e42063354dc88fbc4b9b6291217d86f8` |
| 25 | `def` | [forM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/form.md) | 266 | `declaration-track:a932ad4c03ab7a0d0845b2700c6d3599a60da14d50806bef4a82828395a8f253` |
| 26 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/tolist.md) | 276 | `declaration-track:3549f96102a0bd43782fcb07d1e54c98f3c321fe4684d7f05eb34151adb41f82` |
| 27 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/toarray.md) | 285 | `declaration-track:e72b4bc7534d361be488fc6baea529e62cf1f65ae4d92137766a70ef603b8bd8` |
| 28 | `def` | [numBuckets](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/numbuckets.md) | 288 | `declaration-track:8a8a2ae9fd444967e07a725d6c126e741db33844b0b0c6f00e1adef0bfa8c187` |
| 29 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/oflist.md) | 297 | `declaration-track:b25bd9f3123cb82a2b829dcb5414a9255e17cd71e2c44a1eac7c0235fb6f101e` |
| 30 | `def` | [ofListWith](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/BasicBasicHashMap.lean/declarations/oflistwith.md) | 306 | `declaration-track:30cac4789a493211a773d4cd739f66b3127337227a3a7d45bdb68ad6aa1ca2df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28e40d8245a04cd317c80b6e77473ffc6ca1ab15c783a07fc195bb730c76eb33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc679abb396882cc66da73b9363072f5b6cc02597ad2fbfaed6d20561b29360c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
