# Verification target: Homogeneous Prime Not Prime

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cf1c2387ba7aff8ee6dcf29a3506f95167eedb9e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cf1c2387ba7aff8ee6dcf29a3506f95167eedb9e`.

Source path: `GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/two.md) | 41 | `declaration-track:b47c764627ed70691bfce4362a370d0e5f6105f43876a3b17a93d907392be92e` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance.md) | 44 | `declaration-track:57f7663793c1d9ff4ada2facad002e4756e9356e5eb02f1b7e54580e6123baaf` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance-source-edition-6.md) | 47 | `declaration-track:d75c5b1c283e7b6babbee17d5e046f844cf274756e77094db4b33d36002bb406` |
| 4 | `def` | [submoduleZ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/submodulez.md) | 55 | `declaration-track:c5b9f8909bb91bb9efa15c5a4e33e42e29412ac1e6b7b21ec66cb35cb9c74e9a` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance-source-edition-5.md) | 61 | `declaration-track:cd336ac1a0008b317e13fcdf65be8739d8c9c399c50b80361528d6bb620fe344` |
| 6 | `def` | [submoduleO](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/submoduleo.md) | 65 | `declaration-track:2ba2d7b81d6ffaa343e09954c1791bec3bbc70978aafc019b2a1d5281838a7a3` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance-source-edition-4.md) | 68 | `declaration-track:bb140675c73c44045580cc4c9d4c8b20c2d120b4c1779988b593970e0e3d936b` |
| 8 | `def` | [grading](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/grading.md) | 73 | `declaration-track:ce8fb7db5955cae867314c169cd99c0d90e5774c2ce8970df7e011ddf4353951` |
| 9 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance-source-edition-3.md) | 77 | `declaration-track:ba90909ff043858024b164448d84c8ec940476c7b18c55db73a6cab7c45c4394` |
| 10 | `theorem` | [grading.one_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/grading-one-mem.md) | 81 | `result-track:1ada0847e3b88b391b71f040dc232bcc5616ddfb0f924aba02873aefdd4500c4` |
| 11 | `theorem` | [grading.mul_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/grading-mul-mem.md) | 84 | `result-track:9813c4aae3a01c9093fa7ce8cd147af8d3ac8edf83530aa7286be922a5e3eadf` |
| 12 | `def` | [grading.decompose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/grading-decompose.md) | 98 | `declaration-track:faf17e97f2c3bed2ad2587c54ee2e5c71631a851ea251b890528f9ea2850af3b` |
| 13 | `theorem` | [grading.right_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/grading-right-inv.md) | 110 | `result-track:96c2ab0e069233e03a4d823c85453664cdd5d5b6dca9bda4c517ec833798d05e` |
| 14 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/instance-source-edition-2.md) | 117 | `declaration-track:9df8b46e2abac62ceac68257fd9aa2eb3fb9430b89c3d4fe0c5f94fda0cab26c` |
| 15 | `def` | [I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/i.md) | 125 | `declaration-track:505b5413af3c826c44ee7f5c0f7eb61353ee83f0f738a68dfcd92da166515e0e` |
| 16 | `theorem` | [I_not_prime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/i-not-prime.md) | 128 | `result-track:156136871a06dc6865aab51ec44d0c59d5633ee0a2f6164b20f9e33cb4b5cf6e` |
| 17 | `theorem` | [I_isHomogeneous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/i-ishomogeneous.md) | 134 | `result-track:295d1a23951bb3a7b53dfc8fd7d2e196023d8a8b77cdf90b38bfe96586dea813` |
| 18 | `theorem` | [homogeneous_mem_or_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrime.lean/declarations/homogeneous-mem-or-mem.md) | 141 | `result-track:b4b7280dbf187d37189f78ab06354be458aac312b4520c41e48d9ec2f364c538` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=11d7283ef4b34c7334607c5cf76969885e5e3a85db96455b12e76dc5a8fced7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean","GRWTSK/_verification/specifications/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
