# Verification target: Count Public Sublist

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5a558e4dc01c980a35b89f396649f59d4aee8c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5a558e4dc01c980a35b89f396649f59d4aee8c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/countp-set.md) | 30 | `result-track:34ace5406081bfb056dccb374fb71b3ceffcbd508a7a500d73402be4f34da30f` |
| 2 | `theorem` | [count_set](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/count-set.md) | 44 | `result-track:9383e4ee3ea50d9b72ff3860307d5297b4222b64c33767b803eaf48cecbb1b87` |
| 3 | `theorem` | [countP_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/countp-replace.md) | 49 | `result-track:79bce2e77bfc6cb3c5a5970d432d82e57b48bbbd22517adf718b5e3070c4f854` |
| 4 | `theorem` | [count_replace](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/count-replace.md) | 72 | `result-track:6a17b264d9cb4273fc1bd46271ca1322cc629aa6deecd85b8708e0ea6e545f92` |
| 5 | `theorem` | [count_insert](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/count-insert.md) | 77 | `result-track:55602d1dc3fa1f5dca897600a31bd0fa726520c1e350acb257b4b9ac809fb09d` |
| 6 | `theorem` | [Sublist.le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/sublist-le-countp.md) | 100 | `result-track:6dd57f137355b61605de66da3ee9b7ffe2d67596a4c6cf4bf4bb5a22d36d7df8` |
| 7 | `theorem` | [IsPrefix.le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/isprefix-le-countp.md) | 116 | `result-track:8824302f7fcf30653831172a208bc2b4362e60fa4ab1f2b6ef1fbbcca018b505` |
| 8 | `theorem` | [IsSuffix.le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/issuffix-le-countp.md) | 119 | `result-track:cbad56c8410e15180b60c08e169edd911f2a6d80fe6b88ecde2a98aa00d2f82e` |
| 9 | `theorem` | [IsInfix.le_countP](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/isinfix-le-countp.md) | 122 | `result-track:3b50336bb23808a99482b573c67f2c5855e5aefe1c94d69774533ce6e175989a` |
| 10 | `theorem` | [le_countP_tail](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/le-countp-tail.md) | 129 | `result-track:d629d31d93b07fc1ea09fdd49d865a8046b4547e82d6d75a50b5ecd2e6757ba6` |
| 11 | `theorem` | [Sublist.le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/sublist-le-count.md) | 138 | `result-track:103295b9e5905c3bcf16cfffb7d3d25c6c3b20c2125662d5d9220653498dc30f` |
| 12 | `theorem` | [IsPrefix.le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/isprefix-le-count.md) | 141 | `result-track:c1ce2d2bc54e2d188b1e09e528e6b753dd5e2030f62ade6d3b92fd4655afe9f8` |
| 13 | `theorem` | [IsSuffix.le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/issuffix-le-count.md) | 144 | `result-track:2612438aaf4787efe309dc7d7a3dda4e0876c27c3ad496dc21b25cd7e54f47f4` |
| 14 | `theorem` | [IsInfix.le_count](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/isinfix-le-count.md) | 147 | `result-track:5cab90506b37fcd0e0b6854412aaeeccaff8980833328b152a42097e54133d82` |
| 15 | `theorem` | [le_count_tail](../../../../../ComputerScience/AlgorithmsInComputerScience/CountPublicSublist.lean/declarations/le-count-tail.md) | 150 | `result-track:e8fbeb88f04cf522359af93baa333c6952a09635a2d61b5228c426757669b994` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca184b4efd6ae2910057cd049163025cfc5cc9f4e3a4b73518f3a3832f14103f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant8fb9e46490b20a288e0e5c7001859e49e796f86cf8872d85e41c3683cd22f95c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
