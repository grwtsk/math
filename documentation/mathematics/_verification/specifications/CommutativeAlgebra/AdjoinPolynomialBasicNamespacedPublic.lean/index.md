# Verification target: Adjoin Polynomial Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Adjoin Polynomial Basic Namespaced Public](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/adjoin-x.md) | 54 | `result-track:be759044af0acdd10ad82e29b26e6418ef965fb5c9b1c30028397486f429967d` |
| 2 | `theorem` | [adjoin_singleton_eq_range_aeval](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/adjoin-singleton-eq-range-aeval.md) | 61 | `result-track:d0358e83612d0921daf1f73b6979f7e35feaa5e38f728ae585624bd38e483396` |
| 3 | `theorem` | [Adjoin Polynomial Basic Namespaced Public](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/aeval-mem-adjoin-singleton.md) | 66 | `result-track:2cc8d473fce441bc15b26a30a19fd5e7066dfd18a899233d3897cc0e3634fe86` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/instance.md) | 69 | `declaration-track:bbcd80fb560525742af4e81cd85ccf285d0d97000e1c49aafa3fb60de1217342` |
| 5 | `theorem` | [adjoin_mem_exists_aeval](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/adjoin-mem-exists-aeval.md) | 73 | `result-track:5cc135b88d1e23a558c5c17e7b6c58206730d0124ff08507c6c1da8f2848b48b` |
| 6 | `theorem` | [adjoin_eq_exists_aeval](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/adjoin-eq-exists-aeval.md) | 78 | `result-track:5fc21de19114ae75c48efcd79c48a72730af4f20c916468118c4f5e8e8c46b9e` |
| 7 | `lemma` | [exists_mvPolynomial_aeval_eq_of_mem_adjoin](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/exists-mvpolynomial-aeval-eq-of-mem-adjoin.md) | 85 | `result-track:2264d08da0ea92e4b39f281ef45230a803772fff3511a82bee697e7d1703c096` |
| 8 | `lemma` | [exists_mvPolynomial_eq_of_adjoin](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/exists-mvpolynomial-eq-of-adjoin.md) | 93 | `result-track:32059c5b7fe73e74211a4571d302ce02a7639335a7abecda579592c4b7180104` |
| 9 | `theorem` | [adjoin_singleton_induction](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/adjoin-singleton-induction.md) | 103 | `result-track:7e6642981bfef741577ecd485e1fd818dfa066580ca3447039c4c8c3f3add681` |
| 10 | `instance` | [instCommSemiringAdjoinSingleton](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/instcommsemiringadjoinsingleton.md) | 108 | `declaration-track:be6b0ca2b83f1acce765650a219226d47593f96ce2bf47b0cf6661eb68d44114` |
| 11 | `instance` | [instCommRingAdjoinSingleton](../../../../CommutativeAlgebra/AdjoinPolynomialBasicNamespacedPublic.lean/declarations/instcommringadjoinsingleton.md) | 116 | `declaration-track:b6c28e96fc415993302a46b87b53b6409e173aa00db710572aa5857293c0f296` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9170e42e5c2d9be974b5367f22e137510907a917d9ea45408c3177f3b160ee36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
