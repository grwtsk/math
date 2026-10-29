# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0fb4b806bbb430c80642390811538e7ddff949a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteDependencyExamples.lean/index.md) · [Full source](../../../../Combinatorics/FiniteDependencyExamples.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0fb4b806bbb430c80642390811538e7ddff949a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.FoundationsLogicAndTypeTheory.Order.Closure.FiniteDependencyClosure`](../../../../Combinatorics/FiniteDependencyClosure.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicDependencies](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/cyclicdependencies.md) | 27 | `declaration-track:3ecefb5279ebb94953f6f8378fd58f3c068a9e89839817682b365e666780eb77` |
| 2 | `theorem` | [cyclic_affected_exact](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/cyclic-affected-exact.md) | 34 | `result-track:d8d9cb82d0b8036320a8499708e22855e52eee2926d47ba138d941d811d59adb` |
| 3 | `theorem` | [unrelated_survives](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/unrelated-survives.md) | 47 | `result-track:76c02552bb6ca1458fac66f841fac3094b9d4de919cb194c78a8093deeec494c` |
| 4 | `theorem` | [unseeded_cycle_stays_clear](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/unseeded-cycle-stays-clear.md) | 53 | `result-track:8eba59cfdec67421b093675ee4861617cd3f9f0ac7b948a406f9a2bb4b0a2865` |
| 5 | `theorem` | [transitive_consumer_not_in_first_pass](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/transitive-consumer-not-in-first-pass.md) | 57 | `result-track:787c188b2fed7cc58669b695262686e20b59fc6ccd521f5199c8c4c75d0d1b74` |
| 6 | `theorem` | [transitive_consumer_invalidated](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/transitive-consumer-invalidated.md) | 62 | `result-track:3ac29491f81400dea13e9ecb7e92700d0fd178769054abb1e72ac9f2671fd334` |
| 7 | `theorem` | [changed_consumer_does_not_invalidate_prerequisite](../../../../Combinatorics/FiniteDependencyExamples.lean/declarations/changed-consumer-does-not-invalidate-prerequisite.md) | 69 | `result-track:249b51d03309dff30c1cfa1a4ac720a4b1a542ff088169b83b3ae85106db1a1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aae5b5e8ed84eb251345c594a94f5227ffba8535b6ff52bc475d1d35d5877162 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyExamples.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrence0de8b4049d242f70dad6995d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
