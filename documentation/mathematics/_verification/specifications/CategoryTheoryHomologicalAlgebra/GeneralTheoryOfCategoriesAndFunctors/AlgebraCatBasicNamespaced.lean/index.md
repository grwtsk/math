# Verification target: Algebra Cat Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a53db9bd05367743c2e9fa42b968b5ce7fc1c6a9",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante80c2fdaa47ed38dc418487565ed16b7ad9d03e62d600dab257354f15d95c6d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a53db9bd05367743c2e9fa42b968b5ce7fc1c6a9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante80c2fdaa47ed38dc418487565ed16b7ad9d03e62d600dab257354f15d95c6d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante80c2fdaa47ed38dc418487565ed16b7ad9d03e62d600dab257354f15d95c6d4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgebraCat](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/algebracat.md) | 40 | `declaration-track:5c1bc629540fd881b0504bc6cfbe32731139648ba0e8d1c1772a927f2b0f6853` |
| 2 | `abbrev` | [AlgebraCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/algebracatmax.md) | 50 | `declaration-track:79e9dee31897416b6f897ab0e3bc1a4e9588416b0f7b2dd5362e7ace02c4ca33` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-3.md) | 58 | `declaration-track:74a229bca514c4bd95211e4d73bef1fb249273070fce0a36e729493da54925c9` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance.md) | 63 | `declaration-track:19de13b0f26aff6d7e25156c9813a926b5ff77bb31c02e9cfc7231d218c838fe` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-9.md) | 68 | `declaration-track:f754c1c3dc4ec3750615ecadf7aa61c85ab515aa1b39d3fae6f5e1797d707747` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-5.md) | 71 | `declaration-track:b8c14d61fd70ac04e22b784c88679e2bf4cdb714a2f246706f872c8919a304f0` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-4.md) | 77 | `declaration-track:9d62962530b336019a4c2a2c175b5cc942e7dcd8467dd7387f393442498e286d` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-8.md) | 80 | `declaration-track:e4e38f126a89fb270f3e28048f4f86c787a877d4302558005cc748f25b80f4ab` |
| 9 | `instance` | [hasForgetToRing](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/hasforgettoring.md) | 83 | `declaration-track:af8b58449ad67e08bf1efe2c53cbd43e3faa4d9c1ff58eced145f9902fd06663` |
| 10 | `instance` | [hasForgetToModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/hasforgettomodule.md) | 89 | `declaration-track:845e2c732bcf74e21fe17d6df0d38b5e08f0d0f32eea4fadea3058f194048e8e` |
| 11 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/of.md) | 97 | `declaration-track:3b662b1084b94e6b50663625058397c6592b20fc434bd19dac9f7454a8dba7b2` |
| 12 | `def` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/ofhom.md) | 102 | `declaration-track:5ccbe3da01b0ca26cebff4f824cbec0ccac7af9a0099450ac7b2ab11b394d912` |
| 13 | `theorem` | [ofHom_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/ofhom-apply.md) | 108 | `result-track:2348b219974dc0461b8a2153a7bd3e464d59edecc3cb8d9d2a7ec2261f3cc2d1` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-7.md) | 113 | `declaration-track:cc0396c8cc41d2f59cc9f3f455e846b40418e735180b19cab1936bf25c82dee6` |
| 15 | `theorem` | [coe_of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/coe-of.md) | 117 | `result-track:43fc1c8d6c46d2413ae9c9bdc95e18d88608c1e559e86d5e1d8c335addf3e37f` |
| 16 | `def` | [ofSelfIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/ofselfiso.md) | 126 | `declaration-track:79580e36a35c5b0412c079968617173aaaa7db4ec478c53723c7327e2a74eea2` |
| 17 | `theorem` | [id_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/id-apply.md) | 134 | `result-track:3b633cc7382206f8bdbb223eff54ee8a06a1c8669009cd4ee185fe56b1d05a25` |
| 18 | `theorem` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/coe-comp.md) | 139 | `result-track:edaf88eceddae53987d851355e8ade6b05fd6fdac4d9d98a4c21eeddc674829d` |
| 19 | `def` | [free](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/free.md) | 147 | `declaration-track:4e394f465a2005a72cebcb73dc357d028f9f87c34239385bc2de173cd2b834c3` |
| 20 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/adj.md) | 166 | `declaration-track:85ddaea74ab316f9e7aa9808fc6cbd83f728b3a830aa22dfc5b22b14482c725f` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-6.md) | 188 | `declaration-track:bd38ed9d31d2ef1a7b533580cedf0838786788fb89d435a8ed62a676b9da852b` |
| 22 | `def` | [AlgEquiv.toAlgebraIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/algequiv-toalgebraiso.md) | 199 | `declaration-track:a740d42509ab78b6922807b58879e9a7fed81dfd2986cc54dfdcbeb5d1c94dc1` |
| 23 | `def` | [toAlgEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/toalgequiv.md) | 211 | `declaration-track:cdc8c46001d054143a632cf008bf09475d6af3d27a4399ef16e572d13688a4b5` |
| 24 | `def` | [algEquivIsoAlgebraIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/algequivisoalgebraiso.md) | 234 | `declaration-track:299813c39ccaed8b389496804c3db47b3f46e01cdfb28dac781349965cd29424` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/instance-source-edition-2.md) | 241 | `declaration-track:5699196aa258432650e58f1783bf67c5843714b7b31cce2ef6d806feb3ed2289` |
| 26 | `instance` | [AlgebraCat.forget_reflects_isos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgebraCatBasicNamespaced.lean/declarations/algebracat-forget-reflects-isos.md) | 244 | `declaration-track:0cf0c66b58976b2daf805d6e3b1795e4c754c82cc74243ba1d0a78debd6f1141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be9cda0983ce7d3a05e236ed212164d4a4440aac30bc5c4f193cca3fe9c574a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante80c2fdaa47ed38dc418487565ed16b7ad9d03e62d600dab257354f15d95c6d4.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variante80c2fdaa47ed38dc418487565ed16b7ad9d03e62d600dab257354f15d95c6d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
