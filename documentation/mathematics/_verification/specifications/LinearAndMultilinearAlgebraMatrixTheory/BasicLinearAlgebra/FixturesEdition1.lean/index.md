# Verification target: Fixtures Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e3f4939024e71f3b6937eb8f1d421a2a32ecedf",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e3f4939024e71f3b6937eb8f1d421a2a32ecedf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.Plucker24` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveFixture24](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positivefixture24.md) | 16 | `declaration-track:15a36f68b50b2e6be2cddeecb414116aa3f6879a6819f1f441f53b68f0c20aeb` |
| 2 | `theorem` | [positiveFixture24_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positivefixture24-coordinates.md) | 18 | `result-track:517e3a818180bb2c3cf9591f8b83b89bbd4ae32588a9160c93429b32533a6a03` |
| 3 | `theorem` | [positiveFixture24_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positivefixture24-positive.md) | 23 | `result-track:d4d33d75793c2ce329f888db75c3eb2b30d47bb60577f032b157c61427d0aa7c` |
| 4 | `theorem` | [positiveFixture24_ordered_minors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positivefixture24-ordered-minors.md) | 26 | `result-track:f1cbc2527f293c1b63817a4671410e983633e960b4aeeca98fa643bf8f46aa54` |
| 5 | `theorem` | [positiveFixture24_pivot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positivefixture24-pivot.md) | 31 | `result-track:073a6212d633f1cc4a53382084a456d55ea501d225d562ae681e529d888a56e3` |
| 6 | `def` | [boundaryFixture24](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/boundaryfixture24.md) | 35 | `declaration-track:a31a39f1dc872bbc26abc1a2eb0c7eef3ec04181890a44b54aadf8ae7e76351d` |
| 7 | `theorem` | [boundaryFixture24_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/boundaryfixture24-coordinates.md) | 37 | `result-track:37eff52c2a7425e73fbfc3825965cf2e244a9b3d48f0b264fa8224e35e670ed5` |
| 8 | `theorem` | [boundaryFixture24_ordered_minors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/boundaryfixture24-ordered-minors.md) | 42 | `result-track:227dbad526260e37e807720aa92e68ca601bbbe6e75b800d8672562c0cf50b8a` |
| 9 | `theorem` | [boundaryFixture24_not_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/boundaryfixture24-not-positive.md) | 49 | `result-track:35e6212d7859b66bf91166b3a709cc50e62f1053c260c7a1ae800345e15ead03` |
| 10 | `theorem` | [boundaryFixture24_pivot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/boundaryfixture24-pivot.md) | 52 | `result-track:69365174b5a4f4ea8e4f5df3fabfd6ebeed134e0a8b83fbdc39d931002a6ca1a` |
| 11 | `def` | [incompatibleOnes24](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/incompatibleones24.md) | 56 | `declaration-track:e61f5494c7e910064d6318364c8230cdc219f1b9ed8acd3985ebed4aaa5c171c` |
| 12 | `theorem` | [incompatibleOnes24_positive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/incompatibleones24-positive.md) | 58 | `result-track:a8c7cbed97475ccbae3a2c3c89d204e29708b2e7f43df028f3988026f3f29840` |
| 13 | `theorem` | [incompatibleOnes24_not_compatible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/incompatibleones24-not-compatible.md) | 61 | `result-track:4c7bc4cb430b3489e0d5aa7e56d5fb126c89c3ea70fbd2b1e0fd05e2f4ecf506` |
| 14 | `theorem` | [incompatibleOnes24_not_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/incompatibleones24-not-matrix.md) | 65 | `result-track:40fd3851e8bdcc9a982fa502b6e572e655d02e653df57f34d1e35dbe9d54ebf5` |
| 15 | `def` | [positiveRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/positiverow.md) | 74 | `declaration-track:bc5c1cdf3a18b716cd1c9e12f5a313ae16f2819af6af25deb8d2ed3c34e86f73` |
| 16 | `def` | [mixedSignRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/mixedsignrow.md) | 77 | `declaration-track:9168bdd74696129fb15383e7996045a4c24cd79ac071d03d60eea7804ea06fd7` |
| 17 | `theorem` | [rows_same_squares](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/rows-same-squares.md) | 79 | `result-track:9c2d3089a44e496da2ba4c4f1bf96dfaffe12abf69ce5ce5e243efdc9ebb82b3` |
| 18 | `theorem` | [rows_not_proportional](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/rows-not-proportional.md) | 83 | `result-track:6227e53c41ebea9824713c82bc5ce0ad2abbdd497d2d55b0d309e5a1009167c0` |
| 19 | `theorem` | [mixedSignRow_positive_gram_and_mixed_signs](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FixturesEdition1.lean/declarations/mixedsignrow-positive-gram-and-mixed-signs.md) | 92 | `result-track:ea90b38260ed49c67abb73d053989d185e095c6c458e7ded55fadc6f8e4c9e3a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c2e7c229a76174df9437e42b1defb27bd620d8594ca8a3b68b05f90f25b4366 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixtures/Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
