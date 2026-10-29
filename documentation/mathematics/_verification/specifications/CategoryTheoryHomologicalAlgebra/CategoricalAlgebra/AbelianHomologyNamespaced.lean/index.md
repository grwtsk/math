# Verification target: Abelian Homology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "240e58fdca7d553a768a8a718661ca2317d1623a",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `240e58fdca7d553a768a8a718661ca2317d1623a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Pseudoelements` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Images` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [homologyC](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyc.md) | 55 | `declaration-track:692fd2e5194d703b4c0b685869ffff6ea76afbaf350bdf4e5dc3b726cbd49f5e` |
| 2 | `abbrev` | [homologyK](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyk.md) | 61 | `declaration-track:387183b6bb070a23885e9d6ff6745ed5b544dd1873f9404f3240e226a8b7214d` |
| 3 | `abbrev` | [homologyCToK](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyctok.md) | 68 | `declaration-track:a90610ffab66feb64259ceb637980164cc73e186c41c7a7d8bb15432f26a5162` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/instance.md) | 74 | `declaration-track:37fe509281a2d281e91a6d6cbe4b90153233d9567d469826ef0693d82f4fd1d2` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/instance-source-edition-2.md) | 90 | `declaration-track:bf28f2f08a49ed09f05d9ad8acfa54743d3b4010108510610806023a23daf4de` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/instance-source-edition-3.md) | 108 | `declaration-track:c40231fb83b3b1da42e732a99a7f476c1d163f6a9e2611e161737381001cdc19` |
| 7 | `def` | [homologyIsoKernelDesc](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyisokerneldesc.md) | 114 | `declaration-track:0853cda89ee2865f146f29e64db08c7eeb2c8ea0183969a1a6a2df67e796e40c` |
| 8 | `def` | [π'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/anonymous.md) | 122 | `declaration-track:06f477fce11f36cf47650cda312e804b6d1c3c6114524588346b212ae485b06f` |
| 9 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/anonymous-source-edition-2.md) | 127 | `declaration-track:35a19f42089ae0d76c9cc13293d4de041e7c3004b606f6c12ac90e52367ce3ba` |
| 10 | `def` | [desc'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/desc.md) | 132 | `declaration-track:a98578c15903e1425ef8a7828559ee23f44ba0bc44a2a1465fe9aa75506b0d38` |
| 11 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/lift-source-edition-2.md) | 137 | `declaration-track:f07f1a5dc629a99221feb44c8afe3af59b99456a9ef28187b59439f070f309e0` |
| 12 | `theorem` | [π'_desc'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/desc-source-edition-2.md) | 142 | `result-track:b1420e771a6507dcf34972367372abfe0b3a54d1c0d1146ed23f68a613b1ff2d` |
| 13 | `theorem` | [lift_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/lift.md) | 149 | `result-track:09078517530c23ad02f0c811e3bbfabfb0accf71c8c69431256b31435251d4b9` |
| 14 | `theorem` | [condition_π'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/condition-source-edition-2.md) | 156 | `result-track:67a21a98d19fa0e486b7076f8539afaf4961925012652dc6e7bfc9dad1514651` |
| 15 | `theorem` | [condition_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/condition.md) | 162 | `result-track:16e9f43654d10db23afb2b99446e525859fca15b478035e81b90c9a2357437fc` |
| 16 | `theorem` | [hom_from_ext](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/hom-from-ext.md) | 168 | `result-track:ad0619904033606089a76b4004574a9bf54549b12674fb3d6ab5a5699edbacea` |
| 17 | `theorem` | [hom_to_ext](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/hom-to-ext.md) | 181 | `result-track:96bb4f3e87100a75661013c9f5abf61ca39fb4369c7c073b9bc0c93ebf8f4d17` |
| 18 | `theorem` | [π'_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/anonymous-source-edition-3.md) | 193 | `result-track:9d63eedb9759042edd2ecd944a5335518bdfbf1c0beff8ebc3ac51ca652936b2` |
| 19 | `theorem` | [π'_eq_π](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/eq.md) | 199 | `result-track:bbbf843b08d539cc3474b00c552356c513d645b780b7914e23dbd81b0da9884f` |
| 20 | `theorem` | [π'_map](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map-source-edition-2.md) | 212 | `result-track:8717b3927c20125feceb1530e42aa27a844b3fe075852e225f502953ec116a4c` |
| 21 | `theorem` | [map_eq_desc'_lift_left](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map-eq-desc-lift-left.md) | 244 | `result-track:4e36bba5c2a5e7e1be3ce573c4665f1fdc7a23f32918c76815e3eff32dd86a39` |
| 22 | `theorem` | [map_eq_lift_desc'_left](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map-eq-lift-desc-left.md) | 261 | `result-track:fab0b268435d6e4c2e89f3c66416155d51257a83cb192c8dc0dbed2ac3e26d9c` |
| 23 | `theorem` | [map_eq_desc'_lift_right](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map-eq-desc-lift-right.md) | 280 | `result-track:4cea2ed01c22908e981b5a2e62ae69d2049586961e575d74197410d888abafaa` |
| 24 | `theorem` | [map_eq_lift_desc'_right](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map-eq-lift-desc-right.md) | 294 | `result-track:36cae2331e2a206a5791adf6759b8aac1e6a30c8ecb53e6679c7bcde278a9742` |
| 25 | `theorem` | [map_ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/map.md) | 314 | `result-track:7cd8edd73eddc74ff003f0f411e414cb229cd2bccbdfc66523d32e6c2fd6bd55` |
| 26 | `def` | [homologyIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyiso.md) | 334 | `declaration-track:e03e3241ee0b4c8af8236bd9195080ee4fe9fcf20070d6fc37ea4cf572fa6a40` |
| 27 | `def` | [homologyFunctorIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianHomologyNamespaced.lean/declarations/homologyfunctoriso.md) | 351 | `declaration-track:222effc78d952c971e656415dd79ff240699e0e34d830de645fa630dc304c032` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=731cae8674b3ebbc0755f354a6d5a52a57fec02bfe97f2cb30ef942faabf2cf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variant650887cb5ebd1bc0786dc152fe5f180f675eea66f9584486ce173346dd705067.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
