# Verification target: List Prime Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d85174f39aea3c26c8e047a4ddcf5a09c432dbf9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Prime/Variantf0f45ddb0b1b52823eeb5625b3410a5f825bbb1416b9e2f97d33b0e95455c65a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d85174f39aea3c26c8e047a4ddcf5a09c432dbf9`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Prime/Variantf0f45ddb0b1b52823eeb5625b3410a5f825bbb1416b9e2f97d33b0e95455c65a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Prime/Variantf0f45ddb0b1b52823eeb5625b3410a5f825bbb1416b9e2f97d33b0e95455c65a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Prime.dvd_prod_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/declarations/prime-dvd-prod-iff.md) | 32 | `result-track:6c7a1ae0e740880f84ddcc4461d63fd79b3149c367745123f9ec006827eab62c` |
| 2 | `theorem` | [Prime.not_dvd_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/declarations/prime-not-dvd-prod.md) | 45 | `result-track:701d4d6066b3c6ce5ce3e80a1a871ee81690343dada94d6f7e02c67b3bc00597` |
| 3 | `theorem` | [mem_list_primes_of_dvd_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/declarations/mem-list-primes-of-dvd-prod.md) | 55 | `result-track:0e41ac52c411848a4b7f7bb58b6409a380ebb82a1936f21b30194bae9ceb4a13` |
| 4 | `theorem` | [perm_of_prod_eq_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListPrimeNamespaced.lean/declarations/perm-of-prod-eq-prod.md) | 60 | `result-track:329091528a27429294b5dc42e04efb3a7e7ae29f1e4b504be2d5d86e179e576a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=43b3788ab262dbfdaf102b9bfb52340cf9fba8409a2bc38657978656b22b325e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Prime/Variantf0f45ddb0b1b52823eeb5625b3410a5f825bbb1416b9e2f97d33b0e95455c65a.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Prime/Variantf0f45ddb0b1b52823eeb5625b3410a5f825bbb1416b9e2f97d33b0e95455c65a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
