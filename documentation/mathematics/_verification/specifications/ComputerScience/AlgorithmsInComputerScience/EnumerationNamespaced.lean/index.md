# Verification target: Enumeration Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58bab00c6dc625506186eda7c3f95d5407a425d2",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumeration/Variant7bd44a1203940e361fc3a217ee15869b9f47146976504d8e5ff5ba79a4603dc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58bab00c6dc625506186eda7c3f95d5407a425d2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumeration/Variant7bd44a1203940e361fc3a217ee15869b9f47146976504d8e5ff5ba79a4603dc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumeration/Variant7bd44a1203940e361fc3a217ee15869b9f47146976504d8e5ff5ba79a4603dc7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [set](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/set.md) | 18 | `declaration-track:a3998157bbeb93f61530b0f2765f3cf9a8bf694c6c306fab0856832b6edbe35f` |
| 2 | `theorem` | [set_self](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/set-self.md) | 25 | `result-track:360af2a5a2efc2636572fd6dbe8875909dd426bf5e0ef547c123a95a002f0006` |
| 3 | `theorem` | [set_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/set-of-ne.md) | 32 | `result-track:bae09dbb5097092bc069a3f10565352c6f2b103861a472de2a59bf9beca77d60` |
| 4 | `def` | [DependsOn](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/dependson.md) | 48 | `declaration-track:ee153c6c3aafd97a28bbb31ee5f91412b5e26cb1572cd7a34448fda22e11d0de` |
| 5 | `abbrev` | [Assignment](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/assignment.md) | 52 | `declaration-track:2765407de15757c0e1090ab5a1c4d779c76e9726864694064b6882cb4828a843` |
| 6 | `def` | [valuation](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/valuation.md) | 58 | `declaration-track:442d38b6ac34630304edad17ff204970e38d7291ede13bc38007d9b8b9d26015` |
| 7 | `def` | [assignments](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/assignments.md) | 67 | `declaration-track:6f1ae938cdd20d1cd44536bfb13c2edc58324d217923aca6400f53a46b516fb5` |
| 8 | `def` | [valuations](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/valuations.md) | 74 | `declaration-track:53f160e98ef93b15260d842924da987fc7dc98eb0147e7c43f20f56f2e3b5106` |
| 9 | `def` | [truthRows](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/truthrows.md) | 81 | `declaration-track:0db314b4e43090bb6cdda2f9406ab968db91c7f9d1b914ca2a3befd07daf7259` |
| 10 | `def` | [valuationOfPoint](../../../../../ComputerScience/AlgorithmsInComputerScience/EnumerationNamespaced.lean/declarations/valuationofpoint.md) | 92 | `declaration-track:4584826c6fed3a5026f5c7ae230675dc809b3eaa5b85be545e69e3947afbc28f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77bf5cbb1715a190b1b444ce5a98d39e8cd52f53f719c1f5087bf031c3e1519c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumeration/Variant7bd44a1203940e361fc3a217ee15869b9f47146976504d8e5ff5ba79a4603dc7.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Enumeration/Variant7bd44a1203940e361fc3a217ee15869b9f47146976504d8e5ff5ba79a4603dc7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
