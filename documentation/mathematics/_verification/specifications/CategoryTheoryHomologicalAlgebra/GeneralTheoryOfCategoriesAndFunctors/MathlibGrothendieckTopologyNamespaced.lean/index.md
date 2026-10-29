# Verification target: Mathlib Grothendieck Topology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1050b45d1df2b08c19c94ce7c0a7f4aa4e214d5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variantcf2d55d7f2a46a0ca4916739f4ef3299d7541ef8b085e7efd0320a0e2ac8302e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1050b45d1df2b08c19c94ce7c0a7f4aa4e214d5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variantcf2d55d7f2a46a0ca4916739f4ef3299d7541ef8b085e7efd0320a0e2ac8302e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variantcf2d55d7f2a46a0ca4916739f4ef3299d7541ef8b085e7efd0320a0e2ac8302e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Coverage` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.SiteCategoryMathlib` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CoverPieceIndex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/coverpieceindex.md) | 30 | `declaration-track:29e5dd5f6c767475eb194f49068cf18e6fa8f524b892b87fe0e0c6b1aa748eb4` |
| 2 | `def` | [sourceObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/sourceobject.md) | 36 | `declaration-track:b87ffe27dd75c9aafb5efd276bcdce20548ece5607af54a9b9ae7bcd1278aa99` |
| 3 | `def` | [arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/arrow.md) | 40 | `declaration-track:fa1f8b3e6bfdf2028ffbe18d79f2f78350643f0fd1d140a36a3c42c976cf1c8c` |
| 4 | `def` | [coveringPresieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/coveringpresieve.md) | 48 | `declaration-track:8bf5e57ea2ba23f219bfceb4d6e3901bf7f6dd321f793baf0eeb500247653403` |
| 5 | `def` | [coveringSieveGenerated](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/coveringsievegenerated.md) | 55 | `declaration-track:e5d5f8531985e8b22a685d095386a777da66ab53a2fec8ad5589ffd0e6c8a085` |
| 6 | `theorem` | [covering_presieve_contains_piece_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/covering-presieve-contains-piece-arrow.md) | 59 | `result-track:6b661749330d5d45a4ade3843ef0744be9c79c0b1392b32e15b81bb03f5e0436` |
| 7 | `theorem` | [covering_sieve_generated_contains_piece_arrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/covering-sieve-generated-contains-piece-arrow.md) | 65 | `result-track:d0cf47a81a4ed93a8b29aaeccbbfd15f253e5553b9192af94848fbe80aadbb28` |
| 8 | `structure` | [MathlibGrothendieckTopologyCandidateSurface](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlibgrothendiecktopologycandidatesurface.md) | 77 | `declaration-track:da2b318db09a45fda0fd96cb5fe332cf5136b42ada4bd679ec02e8cc2755cf70` |
| 9 | `def` | [defaultMathlibGrothendieckTopologyCandidateSurface](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/defaultmathlibgrothendiecktopologycandidatesurface.md) | 89 | `declaration-track:38bf1f4188c39d61d04826479c0601e64b19f516447254cc93c79e29f76e4068` |
| 10 | `theorem` | [default_mathlib_grothendieck_candidate_has_presieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/default-mathlib-grothendieck-candidate-has-presieve.md) | 101 | `result-track:77eeba2fa014c4686cab817aff8c55af40a15c0bb1e379f48a416eed01c5db85` |
| 11 | `theorem` | [default_mathlib_grothendieck_candidate_has_generated_sieve](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/default-mathlib-grothendieck-candidate-has-generated-sieve.md) | 107 | `result-track:dfd996d3677fb51f1205358a5337dddd1bf3cb0a316ebb71d3df2b81303db598` |
| 12 | `theorem` | [default_mathlib_grothendieck_candidate_has_coverage_surface](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/default-mathlib-grothendieck-candidate-has-coverage-surface.md) | 113 | `result-track:c64008adcf18c2d866e9cddfcbe09d9f4730afcb51e0650a7a95f1efcdefa611` |
| 13 | `theorem` | [mathlib_grothendieck_candidate_denies_grothendieck_topology_instance](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-grothendieck-topology-instance.md) | 119 | `result-track:75cf04d7a670fdb552686858872636efcc56864b9a0cd1bc3a839c27e8add4af` |
| 14 | `theorem` | [mathlib_grothendieck_candidate_denies_sheaf_category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-sheaf-category.md) | 125 | `result-track:71ea2bf6754f380632cb96b9b8f7d625d853b222e14d2a561f0333f3eaae57bf` |
| 15 | `theorem` | [mathlib_grothendieck_candidate_denies_lawvere_tierney](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-lawvere-tierney.md) | 131 | `result-track:c9e58a695a18e4a4bf6dceea5a4024fded776bd7fbb98f9397ae465d003f452e` |
| 16 | `theorem` | [mathlib_grothendieck_candidate_denies_essential_geometric_morphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-essential-geometric-morphism.md) | 137 | `result-track:164a9dc2500b42089b10609bd0e1b5e531dd2edc6bfd8b32b822951572bbbf76` |
| 17 | `theorem` | [mathlib_grothendieck_candidate_denies_topos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-topos.md) | 143 | `result-track:e1aac2746d477285198586f50a337f29e2cc9ca9697973aaeaf8e1ee70a231bb` |
| 18 | `theorem` | [mathlib_grothendieck_candidate_denies_theorem_promotion](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MathlibGrothendieckTopologyNamespaced.lean/declarations/mathlib-grothendieck-candidate-denies-theorem-promotion.md) | 149 | `result-track:5bebc3446004e0a578230670bfbc6c720aeba909bdbd7af062c0188a237acdda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b4d257271d8fa161115140ff4a58858d41d4cab685b50dd5d2fd189eeb88cd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variantcf2d55d7f2a46a0ca4916739f4ef3299d7541ef8b085e7efd0320a0e2ac8302e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/MathlibGrothendieckTopology/Variantcf2d55d7f2a46a0ca4916739f4ef3299d7541ef8b085e7efd0320a0e2ac8302e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
