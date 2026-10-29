# Verification target: Bousfield

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3248728b80767044eb76d00448e2542858ebd56",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variantfc22d25a6b807852a37ffb83109e04a52287ecdf27c5bdac3c87033ab160237b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3248728b80767044eb76d00448e2542858ebd56`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variantfc22d25a6b807852a37ffb83109e04a52287ecdf27c5bdac3c87033ab160237b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variantfc22d25a6b807852a37ffb83109e04a52287ecdf27c5bdac3c87033ab160237b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ObjectProperty.ClosedUnderIsomorphisms` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Adjunction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [W](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w.md) | 50 | `declaration-track:185d6a7cb4f2b6c05a3155e7341022b10213b84a83a1c9a2a8ffbaa7847fef06` |
| 2 | `def` | [W.homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-homequiv.md) | 57 | `declaration-track:8fb5220fa27d774981cb06ab4b9cbaf3eff52984322af8d34005594462b751e1` |
| 3 | `lemma` | [W_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-isoclosure.md) | 61 | `result-track:f9764fa01774f37a47b839fb8bbb0a0541f4b7edf620f879281cabbe1173949a` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/instance.md) | 76 | `declaration-track:51d1dfc8e57f40c33b10897427849d8ef70122f1f1d73f796b99b2c6eaf06c91` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:f629e672a26e32a387a0597b6eddc1a3ff99a38716bd3264c330fbacf3ad213c` |
| 6 | `lemma` | [W_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-of-isiso.md) | 89 | `result-track:87c9eb9eaca0af1e26bd57c8042481f845fa1386f9839fbb8ffb7dd89c20fa3a` |
| 7 | `lemma` | [W_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-iff-isiso.md) | 96 | `result-track:a5787aa1de1e05848979ef8fd91b4ad6b069798420c987b64926aebab4b4f20e` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/instance-source-edition-2.md) | 104 | `declaration-track:803f52e4403a012514a5dfa47191bf08db46a199c59fde2fa6eb088e0cad591f` |
| 9 | `lemma` | [W_adj_unit_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-adj-unit-app.md) | 115 | `result-track:db90a7a2eab62a4e75553eaebd5238f71e138e0bebfc7b4d1e2e58786f044d29` |
| 10 | `lemma` | [W_iff_isIso_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-iff-isiso-map.md) | 122 | `result-track:a86441caf00b058457aa2731892475889349094bcace239611e6174f8a54e2af` |
| 11 | `lemma` | [W_eq_inverseImage_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/w-eq-inverseimage-isomorphisms.md) | 136 | `result-track:8332cfe564747a3711f68dc96ec22b8405d329e956bc5a48a174c176a13a57fc` |
| 12 | `lemma` | [isLocalization](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Bousfield.lean/declarations/islocalization.md) | 142 | `result-track:ceb905a0bcc85b675ba13e2fbe4230a4e90a826a4187cf4cad82d992f679d929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1d063a2c1ef9b5f7b6f6d1975b8ce09d0868b50aac6b4c79d56e2a71d852576 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variantfc22d25a6b807852a37ffb83109e04a52287ecdf27c5bdac3c87033ab160237b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Bousfield/Variantfc22d25a6b807852a37ffb83109e04a52287ecdf27c5bdac3c87033ab160237b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
