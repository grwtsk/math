# Verification target: Birthday Problem Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44d37cacd8c74452f0737cd578e844c9f01031ae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44d37cacd8c74452f0737cd578e844c9f01031ae`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.CardEmbedding` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.CondCount` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Notation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [birthday](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/birthday.md) | 38 | `result-track:8a9b45f556d06789ab1a73a30c40ecd50d9d6205c68d83db1a40abd6c667d66d` |
| 2 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:50498a15de059e02d22dacbfb28647f43c3c07dd0146d73323a01722f8946855` |
| 3 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 59 | `declaration-track:4040b012629fe9f0972b60edc85c5df7316431c97b2444a23ef10242edb952f5` |
| 4 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/instance.md) | 64 | `declaration-track:216bdc0c7efecbee9e4e5a0ca95eb4f785681b57d52d8beb845b63ffa854471a` |
| 5 | `instance` | [(anonymous)](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:b2dcf76048d8500e355e3308a77b4f0712f0efdf1c8de947b21d8c64588cf3a5` |
| 6 | `theorem` | [FinFin.measure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/finfin-measure-apply.md) | 71 | `result-track:b2bd11a210d8c6af894949b02da11db3c66951b44ecaf4ba4f8ca051c8f89dd5` |
| 7 | `theorem` | [birthday_measure](../../../../ProbabilityTheoryAndStochasticProcesses/BirthdayProblemNamespacedAligned.lean/declarations/birthday-measure.md) | 77 | `result-track:9ccf4506076e5d18324532f03639cf73375b4ffaa7358e9b9867a2cf8a38e3f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d9d8032a677f8d048b4580fc8eeaebe06c84185dcffee25606525d5c0d91971 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/BirthdayProblem/Variant40f913e6dc263d9bbd9d9a6c3caaf507e81611ed06f5ef49f40653d1b11ef33f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
