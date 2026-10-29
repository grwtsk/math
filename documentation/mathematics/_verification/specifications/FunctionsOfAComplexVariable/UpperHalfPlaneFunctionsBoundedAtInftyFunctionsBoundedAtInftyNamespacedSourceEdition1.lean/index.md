# Verification target: Upper Half Plane Functions Bounded At Infty Functions Bounded At Infty Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c6957b6a982f4bdb269979ea7ea7c765de4b697",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c6957b6a982f4bdb269979ea7ea7c765de4b697`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/atiminfty.md) | 37 | `declaration-track:5fdf02b13f09afc96c045de6006b69a876c727c72d11c3bbe3ca068e40b10ea2` |
| 2 | `theorem` | [atImInfty_basis](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/atiminfty-basis.md) | 41 | `result-track:09b6c0ecc6941527ddce5fcf7f756fd0bd8e0465bf70b8a2513dca1789358a3d` |
| 3 | `theorem` | [atImInfty_mem](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/atiminfty-mem.md) | 45 | `result-track:3068866544d035addcac0ef3a8662d5e9630b94db15fbaba0acdbaf5f7c13178` |
| 4 | `def` | [IsBoundedAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/isboundedatiminfty.md) | 50 | `declaration-track:0ddf810f5b86bd1d093156c893f8aa452949148b52cc3b2c3968174983d120ec` |
| 5 | `def` | [IsZeroAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/iszeroatiminfty.md) | 55 | `declaration-track:42616221bb822c57a6b59fcc5b079c5a74c559b708467c8de9a66d135ab48400` |
| 6 | `theorem` | [zero_form_isBoundedAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/zero-form-isboundedatiminfty.md) | 59 | `result-track:09f85f582dbfa871d943f933239e5e91fb42b1996143080a43cbc8688ce930ad` |
| 7 | `def` | [zeroAtImInftySubmodule](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/zeroatiminftysubmodule.md) | 65 | `declaration-track:53618f2ea9c7ab6e63ce4e4e6614160faaeebca0abc58134a157b998345bbcbc` |
| 8 | `def` | [boundedAtImInftySubalgebra](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/boundedatiminftysubalgebra.md) | 70 | `declaration-track:13c3a16eedf2b0add13471146f01f0e24152b624b8b855aefcc01f8430d66783` |
| 9 | `theorem` | [IsBoundedAtImInfty.mul](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/isboundedatiminfty-mul.md) | 74 | `result-track:0c82505cf08e711b5738136e17677429e8ee9412966c5cab8afcc7eee73376b5` |
| 10 | `theorem` | [bounded_mem](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/bounded-mem.md) | 79 | `result-track:83004352c476a92f03276eb042d2ff2d086ca154274588970dda17d56970f101` |
| 11 | `theorem` | [zero_at_im_infty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftyNamespacedSourceEdition1.lean/declarations/zero-at-im-infty.md) | 85 | `result-track:9c18f29220fee2be5fb05c3e997a9b092e887acfd5afb32dc4882efc148b7238` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a970c57130ce0493dc094789caba73103f931f4c1e9e77d656a54643b29711ec -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant8bea47bae226895841c840427dc3910c7ff12255dc6a3c69477b1d7d05a49b04.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
