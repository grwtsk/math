# Verification target: Birthday Problem Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "597755b6cfe6ad697462bd0d57abcb1933bdaa2c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `597755b6cfe6ad697462bd0d57abcb1933bdaa2c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.CardEmbedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.UniformOn` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [birthday](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/birthday.md) | 36 | `result-track:2dd970b6c85bff043edb2e6fc6c9cd7a9afaf8d751e4c7a0a025ee480f46197a` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:f882590c1ef4aa216376ec49d08a23c8a614d6032fcf9e091c25192ff74bb54f` |
| 3 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/instance.md) | 57 | `declaration-track:4dd4297798b2207dfc00a0a49983b8c25e8fe599f356ab979c5c7a6148605f68` |
| 4 | `instance` | [measureSpace](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/measurespace.md) | 62 | `declaration-track:2f08e609eae244b16056f5b8c05cfa8008753421440ae29f7253fde84d3d4cdf` |
| 5 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:cd5d9cba43fad40e9668d559021b571123a8a8a9017793672b634bba5dbc7903` |
| 6 | `theorem` | [FinFin.measure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/finfin-measure-apply.md) | 69 | `result-track:f5bed479b98e41b09a482afea48137d32fb97be4db4be386e1dcfc0d61bf78d9` |
| 7 | `theorem` | [birthday_measure](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespaced.lean/declarations/birthday-measure.md) | 74 | `result-track:780daeb827072f1d797b114ea0d497f450318ed72026d459af064eaee5b91aea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc4d36723b5fb8bf42a9a5dff988c7a666d39aca6332d79d41e138cd7cf750ab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variantddc167c43b0e59145c80b4d6119b806386631fcb457bd4f2332e2fdd99467811.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
