# Verification target: Lemmas Lemmas To Array Injective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b7403e666f8d80dec952358600c70720b2ec324",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b7403e666f8d80dec952358600c70720b2ec324`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.Vector.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Batteries.Data.List.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Batteries.Data.Array.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Batteries.Tactic.Lint.Simp` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [toArray_injective](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/toarray-injective.md) | 15 | `result-track:c3af8edadb503b16a14e8e37f405d834b2551bd3bc8f7f76abb6185a0765d595` |
| 2 | `theorem` | [get_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-mk.md) | 21 | `result-track:923ac626c3b20b80bc4b71f589d8ecf2b6994600d667b39964c0eaefbf2e810f` |
| 3 | `theorem` | [getD_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/getd-mk.md) | 24 | `result-track:bdf303d1d480dabac12544a360575f1793a98423c47a1f6b1b87db7cde08738d` |
| 4 | `theorem` | [uget_mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/uget-mk.md) | 27 | `result-track:264937587881fe11666e8aa14658fe4ae2e4dac7658709af7f628ffde4013a0f` |
| 5 | `theorem` | [tail_eq_of_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/tail-eq-of-zero.md) | 46 | `result-track:cf03e8c3b1ace2fae0823869c349897ad4fc114cb944e3dd18ca949e75692e5a` |
| 6 | `theorem` | [tail_eq_of_ne_zero](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/tail-eq-of-ne-zero.md) | 48 | `result-track:1951f3d642e1ccf42988491c1c2ededcb8c9286425127e49718234d98c2a5b1a` |
| 7 | `theorem` | [toList_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/tolist-tail.md) | 51 | `result-track:52fb93f41025481756a03415276ad25b8bb06c112e41126eb05e389b364b0072` |
| 8 | `theorem` | [getElem_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/getelem-tail.md) | 59 | `result-track:8b803e77d9101adfd46a0cbb9534f9ab16c90798be48eb445cf8bb44721128ec` |
| 9 | `theorem` | [get_push_last](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-push-last.md) | 68 | `result-track:a09f5366711cc800550ad6bff59e1e8a836a0f1cfb72c3d108aa0fab69f62101` |
| 10 | `theorem` | [get_push_castSucc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-push-castsucc.md) | 72 | `result-track:3fae30e8b79a83d51739fce934c0cdf1105f85486c27a11cac7876552d054a2d` |
| 11 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-map.md) | 76 | `result-track:f83135d832bfa83179f1b997b05defb9edef0b707ee2f202b2c479c75ee86dd0` |
| 12 | `theorem` | [get_reverse](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-reverse.md) | 80 | `result-track:8fc6f7628d0800895ec3cbc206c7de26854eca9edcda4254af16a6bd06a4f1b7` |
| 13 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-replicate.md) | 84 | `result-track:d9c041f0fd3dba42fa60eb9c87287cebc874b18f30b09e276681eef66b0d43d2` |
| 14 | `theorem` | [get_range](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-range.md) | 87 | `result-track:c15a8648cce2f1868fdcd9f18b9ae03a702d810d11fb4e6dad3344ced86694a5` |
| 15 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-offn.md) | 90 | `result-track:8f662096fbd7a576f26bf00e955c02602f22a68a4dace3b07d31f492d4abe299` |
| 16 | `theorem` | [get_cast](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-cast.md) | 93 | `result-track:d84c2ab6ba866ac856644643d7454169a75e4ead1e6e2d07a3563822d66f633f` |
| 17 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/LemmasLemmasToArrayInjective.lean/declarations/get-tail.md) | 97 | `result-track:22d5edfc8995f2042a0ae2f30cd524ce8863b406e538ae88b849ed00fccfb3b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f001af1ef010bf1974c7ca05309533833b8b5307c7c6bf4d26d416c4d59b78ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant801f8c70ee6d1703d7cc3ce159b5e9601a01ce54a23e9cceaf2b118027243fa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
