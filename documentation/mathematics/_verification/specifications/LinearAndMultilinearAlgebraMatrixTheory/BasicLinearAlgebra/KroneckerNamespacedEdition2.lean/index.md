# Verification target: Kronecker Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18f2c8f37a46d5c2f14f5794ea558f1c4fe9f9a4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant134824e33baf9e595f788faac4477ec89ffe5cf5dd694ee84338c53a1ac79cbe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18f2c8f37a46d5c2f14f5794ea558f1c4fe9f9a4`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant134824e33baf9e595f788faac4477ec89ffe5cf5dd694ee84338c53a1ac79cbe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Kronecker/Variant134824e33baf9e595f788faac4477ec89ffe5cf5dd694ee84338c53a1ac79cbe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Hilbert.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `MathDiscovery.Kernel.Kronecker` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [raw_eq_zero_of_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/raw-eq-zero-of-posdef.md) | 35 | `result-track:c76aa43dd2e085b23f6a27b1ea4502dedc1c409aa578fa4e87d77e61e9880cde` |
| 2 | `theorem` | [kernelVector_injective_of_posDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kernelvector-injective-of-posdef.md) | 48 | `result-track:e66b3e79ea0a7208d8b76d1dfe1f5ae48e58e04d8b9355faf89bbf3ab08a6042` |
| 3 | `theorem` | [kernelVector_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kernelvector-injective.md) | 72 | `result-track:211b5dc2630dbb5f0f2fed91c1adcb9906598bdc5122b666ea32b1bb8408509a` |
| 4 | `theorem` | [kernelKronecker_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kernelkronecker-apply.md) | 89 | `result-track:5010a4a53edbb506a2be73f772c55d7ac5109f66ef12b17bc7c8102b02545a1a` |
| 5 | `theorem` | [kronecker_kernelVector_orthonormal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kronecker-kernelvector-orthonormal.md) | 95 | `result-track:1d581e21160937f0b0a74f0bd39245c620b5b696c288b75769b883e20c25e7f1` |
| 6 | `theorem` | [kronecker_kernelVector_total](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kronecker-kernelvector-total.md) | 102 | `result-track:0736d2ccd437fcef424ad4960868842392461c50dc7d0a1b5b151789260ad938` |
| 7 | `def` | [kroneckerHilbertBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kroneckerhilbertbasis.md) | 109 | `declaration-track:62f1682c01706f7b24018f0651e2bed233b3064c61898bfec068341a73d010b8` |
| 8 | `theorem` | [kroneckerHilbertBasis_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kroneckerhilbertbasis-apply.md) | 117 | `result-track:d33c0920fbd617d3ae1723faa397933e2fb2b1e8ffc8c9373950f22ab31330b9` |
| 9 | `def` | [kroneckerCompletionEquivL2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kroneckercompletionequivl2.md) | 124 | `declaration-track:3fa83916d206189948fa59490380a9f8ea30d87ca47edc2b21634b94e9be8a19` |
| 10 | `theorem` | [kroneckerCompletionEquivL2_kernelVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/KroneckerNamespacedEdition2.lean/declarations/kroneckercompletionequivl2-kernelvector.md) | 132 | `result-track:3584e8890e0a5a18a4648672852fd5d8680b85d3302bb023b47cefd0c114fb7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4d71a6fc44fa1d8ba58384fca1363780aba71bd3e732c8efaa583ec99f8378a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Kronecker/Variant134824e33baf9e595f788faac4477ec89ffe5cf5dd694ee84338c53a1ac79cbe.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Kronecker/Variant134824e33baf9e595f788faac4477ec89ffe5cf5dd694ee84338c53a1ac79cbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
