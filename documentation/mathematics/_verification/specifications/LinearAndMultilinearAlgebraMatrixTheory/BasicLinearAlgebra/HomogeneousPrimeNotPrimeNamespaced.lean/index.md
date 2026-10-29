# Verification target: Homogeneous Prime Not Prime Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a46c5317696052c6f01d0aa1fe3fc91cf2cff48a",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a46c5317696052c6f01d0aa1fe3fc91cf2cff48a`.

Source path: `GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Prod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/two.md) | 49 | `declaration-track:d5c2961440724f46c7edb2973593fd799e0bda5cb665679c943755ee1c2e1623` |
| 2 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance-source-edition-6.md) | 52 | `declaration-track:c8bef591f13d84bac257cecbe09bbba2b0452023f3dbb9cb4475275fe969f729` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance-source-edition-3.md) | 55 | `declaration-track:4abb80affb9794cf806e67e9f50d2e874326d28dc09025574625e45227941269` |
| 4 | `def` | [submoduleZ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/submodulez.md) | 63 | `declaration-track:613c88bc8caf72cd0ab3c6c9136a62d21b23df6f867a400d77a305dab223d48e` |
| 5 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance-source-edition-5.md) | 69 | `declaration-track:9ce5aa23abfedd7a15a18b854f896b8b55ab774be34b5c19af3372da5d8c9830` |
| 6 | `def` | [submoduleO](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/submoduleo.md) | 73 | `declaration-track:112835d92af756bc79d8451c4a7c50b55bb870acd96839a48489e096c9673988` |
| 7 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance-source-edition-4.md) | 76 | `declaration-track:4ae7b389532f0df2b2b8d9b7d85920c76dac49055796d0ee87819050b6cb0420` |
| 8 | `def` | [grading](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/grading.md) | 81 | `declaration-track:0ac7ef02befc52621dbab72bfc88e3875732b3fa1abede8ad31daa51980a3701` |
| 9 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance-source-edition-2.md) | 85 | `declaration-track:2feb8409d92274a32ad134ee0cf2dcc14ae20bb7a2548ac657ebf1eaffecb6a4` |
| 10 | `theorem` | [grading.one_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/grading-one-mem.md) | 89 | `result-track:9c6c9a31240cdc83b0310b083aaf21bd7d2c3ac1ed3202551ca6ee646479bf6f` |
| 11 | `theorem` | [grading.mul_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/grading-mul-mem.md) | 92 | `result-track:342277908ef256c4351f0ef95820ad3b1b0761a92aafc56143f1f76304aebe0f` |
| 12 | `def` | [grading.decompose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/grading-decompose.md) | 106 | `declaration-track:e3b715acecefe8aeb89d68e9360a25e74f2c4b8fadce07622067bd4e2448ac49` |
| 13 | `theorem` | [grading.right_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/grading-right-inv.md) | 118 | `result-track:4673fc1901e076c959140b6370bac210b3812d897c3c7783a5d209e6ddcb3636` |
| 14 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/instance.md) | 125 | `declaration-track:23924abbecd5b880e1a39418bf92727f6110598b506800d9f891190819d2d19b` |
| 15 | `def` | [I](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/i.md) | 133 | `declaration-track:08a99158636dbaa6faee4dbeb62f4db0061e7167216e2d67668e81d6c15ef5b5` |
| 16 | `theorem` | [I_not_prime](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/i-not-prime.md) | 136 | `result-track:c157184eb2219e3bef96c7274d59cdfb34036927c59d9b19a605856d74eab181` |
| 17 | `theorem` | [I_isHomogeneous](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/i-ishomogeneous.md) | 142 | `result-track:fad83fa1fbed57e3fd2af7061a9df87fa93199d3937e398ceaff060699bef938` |
| 18 | `theorem` | [homogeneous_mem_or_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/HomogeneousPrimeNotPrimeNamespaced.lean/declarations/homogeneous-mem-or-mem.md) | 149 | `result-track:cad14e0a0c005d21401042870beb634ad75f36e2c2999de4b5e0bc3da7b9b1b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e242ec634252ddc3f0497e51bab6f31605333357faa1e3dc58c9f969dba608d8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean","GRWTSK/_verification/specifications/Algebra/HomogeneousPrimeNotPrime/Variantd9de189b8d1f0632c6fa95c359301bdb6b17c5153e8e95433be68127b27fe99e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
