# Verification target: Differential Complex

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d19b7f18bcfb052f70d88888e83077d4eaeeff5a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant9740b89414f208a234805c445960402105f44996f6a586ac665ae810ca2020b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d19b7f18bcfb052f70d88888e83077d4eaeeff5a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant9740b89414f208a234805c445960402105f44996f6a586ac665ae810ca2020b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant9740b89414f208a234805c445960402105f44996f6a586ac665ae810ca2020b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Hilbert.Finite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteDifferentialComplex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/finitedifferentialcomplex.md) | 20 | `declaration-track:e96f127ff9cf54df6cb2f0a515f22af7a3d7d8b3707b15fd4f2737f9621cdc24` |
| 2 | `def` | [codifferential](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/codifferential.md) | 30 | `declaration-track:ef0af7fd159824f72f2f486f360d1bf9712c309a518d3806c52a5a972671840e` |
| 3 | `def` | [hodgeDirac](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgedirac.md) | 35 | `declaration-track:324f604ce6629b298ff57ca280dc8110e5cd4f28721befa43287f62115b9135a` |
| 4 | `def` | [laplacian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/laplacian.md) | 40 | `declaration-track:7e152458e506cb66628a1032bdc2bc596c98704d52d55ed849146b8cebc1f119` |
| 5 | `theorem` | [codifferential_square_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/codifferential-square-zero.md) | 46 | `result-track:0f30a22c8858c8290d6348eb83cd3493e16813de095e0e79d1c0eaa6ec16ad96` |
| 6 | `theorem` | [hodgeDirac_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgedirac-ishermitian.md) | 54 | `result-track:b8bca9d17648fc8a8faacf734191b9f93f6aa8f06350ca237085946e73529370` |
| 7 | `theorem` | [laplacian_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/laplacian-ishermitian.md) | 60 | `result-track:2d03934ab134a6d328922b65e6b49ee8e04ace931600266b3db636d10990ea82` |
| 8 | `theorem` | [hodgeDirac_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgedirac-square.md) | 66 | `result-track:bb305b77864c9ee3ac4f68df0fd452a073b058ce363f0f8d93245ad1964501f7` |
| 9 | `def` | [hodgeDiracOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgediracoperator.md) | 83 | `declaration-track:8a6df12b5144ad26e76d2ac3474e498da05d07c75b848c506e1d26d08ae2d58a` |
| 10 | `def` | [laplacianOperator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/laplacianoperator.md) | 88 | `declaration-track:6d919dc9581f7042dd8ed54c5d53a431770f3fc684a585d4b6c28fd461d37beb` |
| 11 | `theorem` | [hodgeDiracOperator_isSymmetric](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgediracoperator-issymmetric.md) | 93 | `result-track:b26dc5744b94f205dea0782ace586d1fb09a54ddb8a45c348d98ca8444f0a065` |
| 12 | `theorem` | [hodgeDiracOperator_adjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgediracoperator-adjoint.md) | 100 | `result-track:8088b5d65d3b464a8d374f69406e301148e254325ab12dd1d6af929f4e1783be` |
| 13 | `theorem` | [hodgeDiracOperator_isSelfAdjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/hodgediracoperator-isselfadjoint.md) | 109 | `result-track:a84ead77b03e4a96010fbc268ee6a96d6e161cde096215620092dbf2d1559e64` |
| 14 | `theorem` | [laplacianOperator_adjoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/DifferentialComplex.lean/declarations/laplacianoperator-adjoint.md) | 115 | `result-track:b2af3ea6358352e37c6d7a4095edf28a5e742297d95174c253df38b5fb5a2b0c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70b8f6e4331addcc507d1d805850c74f5a98a7ef2897a8fb9a5c5ff5c368113a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant9740b89414f208a234805c445960402105f44996f6a586ac665ae810ca2020b5.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DifferentialComplex/Variant9740b89414f208a234805c445960402105f44996f6a586ac665ae810ca2020b5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
