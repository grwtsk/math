# Verification target: DHash Map Iterator Lemmas Iterator Lemmas Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "890b6d612292108d88af5f09d8162e0923cefceb",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `890b6d612292108d88af5f09d8162e0923cefceb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Combinators` — import line 14; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.RawLemmas` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Data.DHashMap.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [step_iter_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/step-iter-nil.md) | 23 | `result-track:3c3f2d5d05df74ece83f10e236831f8ddb958846712cf0eff1561b1cea371c95` |
| 2 | `theorem` | [step_iter_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/step-iter-cons.md) | 28 | `result-track:7f12ef64915c908bb7a866e503db604f885ad374ed6c48369a4e99319dbb0f1a` |
| 3 | `theorem` | [toList_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-iter-source-edition-2.md) | 33 | `result-track:83e8d07519131c74238dc3f49bc7c9f2e5eb422b5eb15e08f00e1621697ada41` |
| 4 | `theorem` | [toList_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-iter-source-edition-3.md) | 50 | `result-track:c4ecb29074cbdbd3abc9ef7f774c99f1cf9a349604d4d7c7eb2f7e2ed790aa09` |
| 5 | `theorem` | [toListRev_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-iter-source-edition-2.md) | 56 | `result-track:b3287f13ce4884efb1e0422ebe4be209d72eb9401e884c418271bd57f453e7f3` |
| 6 | `theorem` | [toArray_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-iter-source-edition-2.md) | 61 | `result-track:db30486ae8e78f8ee35c6f117cf6d822f089cb1e89dda52e4eeffc2bbec38cdd` |
| 7 | `theorem` | [toList_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-keysiter-source-edition-2.md) | 72 | `result-track:8d1428e1e44d685381e941b9967913a3fb6eaab02cf62a98acc245e8a85c88dc` |
| 8 | `theorem` | [toListRev_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-keysiter-source-edition-2.md) | 77 | `result-track:56ce533ac07234d5dcdc3ef99c744404841f34e5e2cb21a0d8fa46c98f9f5502` |
| 9 | `theorem` | [toArray_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-keysiter.md) | 82 | `result-track:65aea490ac3b73d71e83d8b42db5e02f6a5782f7f6cce5474588df739146be1c` |
| 10 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-valuesiter-eq-tolist-map-snd-source-edition-2.md) | 93 | `result-track:e70334f8a73579d1b253be8e51a2c64561a8c1580a4c6d4a7882007afbf34c72` |
| 11 | `theorem` | [toListRev_valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-valuesiter-source-edition-2.md) | 98 | `result-track:e27b51f05fcf51fa329da0249ca73912adaf52c3c9315bb77dd187cacae7e7be` |
| 12 | `theorem` | [toArray_valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-valuesiter.md) | 103 | `result-track:58bd655dc6b6f8b90c7644fcf8af6a658f9f3f560aad913f7f01fc58185617d9` |
| 13 | `theorem` | [toList_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-inner.md) | 118 | `result-track:fde2e8fb067bb62b0c1965e94d617cfce6c3bf05570f3a00bce082aa1d772195` |
| 14 | `theorem` | [toList_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-iter.md) | 123 | `result-track:05ae64d0bb42d16c4712c84d43cac3c064c92681d5fa1966c4f2e4ea89be8145` |
| 15 | `theorem` | [toListRev_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-iter.md) | 128 | `result-track:4a8a80cf8fdbc65e294c4045c9ab96f1a14113a119eb8c7e3af46f85819cd44e` |
| 16 | `theorem` | [toArray_iter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-iter.md) | 133 | `result-track:1b3f64a78e355a0ebc1ab4c05ffc9f40c98efdc86cc4c0211272f8b01f75d63d` |
| 17 | `theorem` | [keys_inner](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/keys-inner.md) | 143 | `result-track:d16d7dc52623754fb852559c6b86f7f501e6a59506ee0f116436de9f92350819` |
| 18 | `theorem` | [toList_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-keysiter.md) | 148 | `result-track:01260783ca42fafcc33075e59c172715385fbedfb6116e7eb52bb8057d78ae3e` |
| 19 | `theorem` | [toListRev_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-keysiter.md) | 153 | `result-track:4fda02c2b9a56e48705568d0e2f2cd942b4490622492d97dea13c2a8a9dadb9a` |
| 20 | `theorem` | [toArray_keysIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-keysiter-source-edition-2.md) | 158 | `result-track:e67e10cbb51ef9f664c5dde1ce0b54b0c401d44ced6e9e2c567bd57950d484d0` |
| 21 | `theorem` | [toList_valuesIter_eq_toList_map_snd](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolist-valuesiter-eq-tolist-map-snd.md) | 169 | `result-track:cddf41d6eec258bc7a3bee9b228128458924cf42ec38340cdd2387352c84c0d7` |
| 22 | `theorem` | [toListRev_valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/tolistrev-valuesiter.md) | 174 | `result-track:8b517c76a6757f9965e82dfc2d58c0c343e4afab631acb18c6b68e97cb187d13` |
| 23 | `theorem` | [toArray_valuesIter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DHashMapIteratorLemmasIteratorLemmasPublic.lean/declarations/toarray-valuesiter-source-edition-2.md) | 179 | `result-track:fca11430b4b6dfdb8e5bccb729feea84fb0b4ffe29ff962b0602dd2cd05f953f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87892384c9f81cce53546b1be939aa213b7c4df27a8c089191063e5b8cbb23b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IteratorLemmas/Variant0a587724d4f39cc19053cc768392560449ca95b8d1dce58f7721a4fcec18f668.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
