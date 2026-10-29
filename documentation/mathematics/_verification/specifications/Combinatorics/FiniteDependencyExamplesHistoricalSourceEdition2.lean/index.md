# Verification target: GRWTSK.Order.Closure.FiniteDependencyExamples

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19f904fdeb9fa5ff29e1b337b3f554e19dae99e6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Order/Closure/FiniteDependencyExamples.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/index.md) · [Full source](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19f904fdeb9fa5ff29e1b337b3f554e19dae99e6`.

Source path: `GRWTSK/Order/Closure/FiniteDependencyExamples.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Order/Closure/FiniteDependencyExamples.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Order.Closure.FiniteDependencyClosure`](../../../../Combinatorics/FiniteDependencyClosureHistoricalSourceEdition2.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicDependencies](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/cyclicdependencies.md) | 27 | `declaration-track:6eef88ae79662592c2f96b2ae427084c08f86db2f412b2f7f19d1b455d56d3b1` |
| 2 | `theorem` | [cyclic_affected_exact](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/cyclic-affected-exact.md) | 34 | `result-track:ac13557987318cefdd0da2c2375d7bd498a6eafc4509772032e157db05c06427` |
| 3 | `theorem` | [unrelated_survives](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/unrelated-survives.md) | 47 | `result-track:cb2cbe1e8504ffca270fa3e09e2e3b589a35508f954e69a1e60b47e776829f5c` |
| 4 | `theorem` | [unseeded_cycle_stays_clear](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/unseeded-cycle-stays-clear.md) | 53 | `result-track:f647ea005c661e3999a2fd1b621548e7ff552e4fa36ec709d075f7da923a6b88` |
| 5 | `theorem` | [transitive_consumer_not_in_first_pass](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/transitive-consumer-not-in-first-pass.md) | 57 | `result-track:8c03e8303dba186e84c71a13b0dee8e38fdd78d749d82cc80cb273aeefbfaf91` |
| 6 | `theorem` | [transitive_consumer_invalidated](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/transitive-consumer-invalidated.md) | 62 | `result-track:44e5618de3b5a172ba49ee362b6300317f530a1139f1e3b4d53179dfc5d2c087` |
| 7 | `theorem` | [changed_consumer_does_not_invalidate_prerequisite](../../../../Combinatorics/FiniteDependencyExamplesHistoricalSourceEdition2.lean/declarations/changed-consumer-does-not-invalidate-prerequisite.md) | 69 | `result-track:538512552e421515fa2cf5c6979a15ec5f075ea158ff78f2d11749996d68d735` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=84b93c10bcdb67d4d9baf4b220552ebe04a943ab59651e3b76b5dbe6f80d339c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Order/Closure/FiniteDependencyExamples.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyExamples__SourceOccurrencebf9f97bc3e98aa30a96bae3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
