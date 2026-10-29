# Verification target: Shortlex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae5a36b022ed672fee170a6eb99e05b8f0b0493f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae5a36b022ed672fee170a6eb99e05b8f0b0493f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelClasses` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Shortlex](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex.md) | 37 | `declaration-track:7d99b396ae0bef307f421cacada384151343a5d86f357f26b31b3224284f4cff` |
| 2 | `theorem` | [Shortlex.of_length_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-of-length-lt.md) | 44 | `result-track:bc5614bfd2a09c8bc1158beb02ec3ab34a302dfad4f18d5f023829eb458518a6` |
| 3 | `theorem` | [Shortlex.of_lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-of-lex.md) | 49 | `result-track:bcb3be00bfa35d0c4fb7dfd2515a98936041f86642f4b55aba9fbc5cabe64caa` |
| 4 | `theorem` | [shortlex_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-def.md) | 55 | `result-track:d1c27c089501f16716dd1f4fc87d944b641e7834c13ab65413de6974bfd5718c` |
| 5 | `theorem` | [shortlex_iff_lex](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-iff-lex.md) | 60 | `result-track:f559c8b15fac481a377df5f6b1ecb55989146566a67022c06af38dae539195a8` |
| 6 | `theorem` | [shortlex_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-cons-iff.md) | 64 | `result-track:604aa9eeb245191f5b6f57aa711ff634f4346843ca0b694268170349df9c5ceb` |
| 7 | `theorem` | [not_shortlex_nil_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/not-shortlex-nil-right.md) | 71 | `result-track:c2db1e03e4cc4f22a85262e3998d3be6db24348654a8de24f2b96b2a60e548d3` |
| 8 | `theorem` | [shortlex_nil_or_eq_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-nil-or-eq-nil.md) | 77 | `result-track:23338900e6ddb40f7330703352256a91c3f7e9257029bb695c857300e0b3810c` |
| 9 | `theorem` | [shortlex_singleton_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/shortlex-singleton-iff.md) | 82 | `result-track:72ac9cdf659db6fe2e19b9543624247403076d71ba219d91891be371e4de16a1` |
| 10 | `instance` | [isTrichotomous](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/istrichotomous.md) | 88 | `declaration-track:71987cc02eddd6e0f7745ab640af9d346e16f61e93abd1cf032da0e23fc9892a` |
| 11 | `instance` | [isAsymm](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/isasymm.md) | 91 | `declaration-track:f8912a7c94859d34037f6727b8085adb4aea51338896a813d38fc6ec58578d9c` |
| 12 | `theorem` | [append_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/append-right.md) | 94 | `result-track:da9cd0bdbd1fca0492c774e9dde02aced1f951f0fc9e3ec19a0f87414d6e1cb3` |
| 13 | `theorem` | [append_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/append-left.md) | 109 | `result-track:912504a8d7c1f016ae7e0d617427c98b0d1f47f82ed077aa2d3648a173a947e9` |
| 14 | `theorem` | [_root_.Acc.shortlex](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/root-acc-shortlex.md) | 130 | `result-track:82d98f7e3dad616326b0c756ea46670dfe70c6e049bf8e71f6c41a3b80412595` |
| 15 | `theorem` | [wf](../../../../../../ComputerScience/TheoryOfData/DataStructures/Shortlex.lean/declarations/wf.md) | 156 | `result-track:3682fefb5d9f367e09a2d011c2aca315ed5d86ea69e6cfd965488cb45708f534` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4b09661b6554d77518c0d2149983f7efedb199632065bc680ed60c0133896e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
