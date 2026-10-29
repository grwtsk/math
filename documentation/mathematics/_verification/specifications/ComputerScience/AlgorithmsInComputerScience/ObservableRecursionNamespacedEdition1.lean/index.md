# Verification target: Observable Recursion Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28cea9cecde440cc7635cd2e1460b7fffbfa05c0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant7f25511f3c1f3aec3980a9e827fc60f5b3332c4f575310ad74805d046f4b594e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28cea9cecde440cc7635cd2e1460b7fffbfa05c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant7f25511f3c1f3aec3980a9e827fc60f5b3332c4f575310ad74805d046f4b594e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant7f25511f3c1f3aec3980a9e827fc60f5b3332c4f575310ad74805d046f4b594e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Iterate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [System](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/system.md) | 35 | `declaration-track:5e098829cfabfba55997d4b3f97204599a72b0799b5f1d763ea227e95cf0f0f1` |
| 2 | `def` | [run](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/run.md) | 48 | `declaration-track:95a76e434d32bcc3bddf8984d33581007283ac031f0aa1babde28bea71a18a9b` |
| 3 | `theorem` | [run_nil](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/run-nil.md) | 57 | `result-track:03c965c906505175596c421158587f1ae38f4d84357b931c18e32bd1e2783573` |
| 4 | `theorem` | [run_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/run-cons.md) | 64 | `result-track:2c14697a63183127160a336544420d407cf21b80e2c38b60fdf062b3f2721468` |
| 5 | `theorem` | [run_append](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/run-append.md) | 74 | `result-track:3180e49362f020b6692c3d65cb17471c166e6359251e962d5e5e680b3b5e7999` |
| 6 | `theorem` | [run_singleton](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/run-singleton.md) | 87 | `result-track:bc8d93a0f481358ef9bbede713c47dbc3e29164ba789a1ad23181ba9fd399791` |
| 7 | `def` | [autonomous](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/autonomous.md) | 95 | `declaration-track:cd423f5107775f283b989c8055115fb82357e97fb3457c0e8072cae964a31a72` |
| 8 | `theorem` | [autonomous_run_replicate](../../../../../ComputerScience/AlgorithmsInComputerScience/ObservableRecursionNamespacedEdition1.lean/declarations/autonomous-run-replicate.md) | 105 | `result-track:a3d0985bb4b771ec697692c6f93d16719d28ea7c2f93e67d35121cc487c9b334` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=875edf58e9749954d6d3d5c211dcabb52538368cca1741cdd672748b009ee142 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant7f25511f3c1f3aec3980a9e827fc60f5b3332c4f575310ad74805d046f4b594e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObservableRecursion/Variant7f25511f3c1f3aec3980a9e827fc60f5b3332c4f575310ad74805d046f4b594e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
