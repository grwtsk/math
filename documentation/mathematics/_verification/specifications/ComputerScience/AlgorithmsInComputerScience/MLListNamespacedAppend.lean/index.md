# Verification target: MLList Namespaced Append

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a43d3e8b39acb9eb30d7c6a501adbf117f063ec",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a43d3e8b39acb9eb30d7c6a501adbf117f063ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.MLList.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [S](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/s.md) | 17 | `declaration-track:2ace0a9e42ecf665bc8f9760a4f27ba07d2d54d7b6eaf176bf54b5c94609d3aa` |
| 2 | `def` | [append](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/append.md) | 18 | `declaration-track:4a741bd632a310bac58bc400d96fb04de68b613816cef48e100ffadddb3ed658` |
| 3 | `def` | [F](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/f.md) | 21 | `declaration-track:adb14814b7122ee5d50a84b85889222dc3607b08cf5f3a24f286d80e6694f944` |
| 4 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/example.md) | 36 | `declaration-track:1591bca42eb5f8449dbd3537f9a9d4c132d5ba480956e74bafedce1d75ec750a` |
| 5 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/example-source-edition-2.md) | 38 | `declaration-track:cdd6f6e45e0d00c3b2ef5ca024ef122b27b47125fd1d5f659186403f7c8f1630` |
| 6 | `def` | [l1](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/l1.md) | 43 | `declaration-track:e9ba7fc03f088f59a1455a70625aad63f6fe4d299cabe1c795c1426151a93406` |
| 7 | `def` | [l2](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/l2.md) | 44 | `declaration-track:b4859365a9e9653184613092a193dd6c01b6cf0f4134f5a34cb6b42a2fe5216d` |
| 8 | `def` | [ll](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/ll.md) | 45 | `declaration-track:bbe092f7158c47db91648bb596e7545909a18a6cd54451fee0b6d0617529fa45` |
| 9 | `def` | [half_or_fail](../../../../../ComputerScience/AlgorithmsInComputerScience/MLListNamespacedAppend.lean/declarations/half-or-fail.md) | 51 | `declaration-track:8611312c4e60cbbda4bb926f18309068ee20a00b08ac1e50750ee1084b680dc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a94c84c293c577c38c222e7d59080f54ac6f73b8135e237d762c9ecdccb4cea9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MLList/Variant457a6ec5884ea7f9751ce67f2817af3c439dac322e3d1657972c247c7cfaf7a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
