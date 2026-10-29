# Verification target: Least Greatest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c3e42e3fb5ae3dfd06e7d8c22ea2485016bd7ce`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Find` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leastOfBdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/leastofbdd.md) | 46 | `declaration-track:c8bab0be347f5ab718706736b6ee060a18c248f18414ced8305e0e8942e9871c` |
| 2 | `lemma` | [isLeast_coe_leastOfBdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/isleast-coe-leastofbdd.md) | 58 | `result-track:b0a7d58b2900669735f057d5fc87396a35e74d5b2f393c2282f22271290a305b` |
| 3 | `theorem` | [exists_least_of_bdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/exists-least-of-bdd.md) | 66 | `result-track:c97e372d3c25d1fef65fe989cf398c20a851f11ef0b92983d402874aec133562` |
| 4 | `theorem` | [coe_leastOfBdd_eq](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/coe-leastofbdd-eq.md) | 75 | `result-track:8759533d1a0c94aaf1d306daa71802215546dfeba178f3d5a2dc43dfc4e8f227` |
| 5 | `def` | [greatestOfBdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/greatestofbdd.md) | 85 | `declaration-track:accc68068a2a5eb4da2080933cdf315eab918372d151d0ea7049a4ef8304629b` |
| 6 | `lemma` | [isGreatest_coe_greatestOfBdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/isgreatest-coe-greatestofbdd.md) | 96 | `result-track:6f44861f7f52aec66d83375d68327818df5b6d1408c461ad7798a625a0d690c3` |
| 7 | `theorem` | [exists_greatest_of_bdd](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/exists-greatest-of-bdd.md) | 105 | `result-track:6ffd5b83ecf1e4d29bee050eeb1c7b5352da145cf5eda7a68ddae704b3cecd78` |
| 8 | `theorem` | [coe_greatestOfBdd_eq](../../../../../NumberTheory/ElementaryNumberTheory/LeastGreatest.lean/declarations/coe-greatestofbdd-eq.md) | 114 | `result-track:f8ea761a5c68fdbd2d539d04740b16ee59e99089468c7b5d4b7ebb48fa08eb4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e65c39e33eafdd5591c904eaf79f69dc927fa9e7f829d856863bdc23c537a63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/LeastGreatest/Variant920a4797294fa1d500f8f7f2bff4194c3ae120ada0a8c2fd039da7205cb38bbb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
