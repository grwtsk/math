# Verification target: Upper Half Plane Functions Bounded At Infty Functions Bounded At Infty Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e45ce4f90fbd5ddb4bbc7ab4d265d99276880950",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e45ce4f90fbd5ddb4bbc7ab4d265d99276880950`.

Source path: `GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.ZeroAndBoundedAtFilter` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [atImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/atiminfty.md) | 29 | `declaration-track:1204e9467177e1d2d8e6f003f333e38a12dd72876e93dce54b19dddde16a0968` |
| 2 | `theorem` | [atImInfty_basis](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/atiminfty-basis.md) | 33 | `result-track:5ffb0e27ee8c4a3a1d95aa39f599ba3933b646d108f6749020b0dbd240af0105` |
| 3 | `theorem` | [atImInfty_mem](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/atiminfty-mem.md) | 37 | `result-track:98cb14406377294a184f432ca3ec0c2e61e2f0f7fdbeb85ce961a12f254cd350` |
| 4 | `def` | [IsBoundedAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/isboundedatiminfty.md) | 42 | `declaration-track:d06359ac6308f19be68edf6088f7c4ab9836dca10dbe75deb3cca7aefb719eae` |
| 5 | `def` | [IsZeroAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/iszeroatiminfty.md) | 47 | `declaration-track:d6d5259b2468bdcc5654ad62cd619fe4508ec30c79704698b142b0cb3e45983b` |
| 6 | `theorem` | [zero_form_isBoundedAtImInfty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/zero-form-isboundedatiminfty.md) | 51 | `result-track:7156ed8135e0ee4e386e71926732503755b81cbb720e69d4811f43b52bdc61bb` |
| 7 | `def` | [zeroAtImInftySubmodule](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/zeroatiminftysubmodule.md) | 57 | `declaration-track:d24a3c703bcf02dd799c622ec42b74fcf9c18c5582ebe9aba60b256c8c02a2dd` |
| 8 | `def` | [boundedAtImInftySubalgebra](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/boundedatiminftysubalgebra.md) | 62 | `declaration-track:df11b4f47b8ab78a266b6b4f32a9f9760294c67386ad00e44cf24a2739c4eb1d` |
| 9 | `theorem` | [IsBoundedAtImInfty.mul](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/isboundedatiminfty-mul.md) | 66 | `result-track:4e6c811ac51556f72f295ec954496895ce4073a54cc4e4dc831efed3db6881cf` |
| 10 | `theorem` | [bounded_mem](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/bounded-mem.md) | 71 | `result-track:75fa322a40af04c1a6e765a1ec4defb3c5e20e0f836a6cfe4465f563aead0bd0` |
| 11 | `theorem` | [zero_at_im_infty](../../../../FunctionsOfAComplexVariable/UpperHalfPlaneFunctionsBoundedAtInftyFunctionsBoundedAtInftySourceEdition1.lean/declarations/zero-at-im-infty.md) | 77 | `result-track:3585029f1e93452a6ecef60b5d886eaeb3408092b711c0e0585fa495ca0123f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cdea102bf5e91f4ba83fb642baee7e272b1252460983c70bb63251cbca7a320 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
