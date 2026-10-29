# Verification target: Strong Epi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5f5d8bc1363bd25e96cfbc4d306409c98a6b327",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1daae84e99bdaa0c16d8ab5cce0d89ffc3e549fbba93f1c88813ed7523d40175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5f5d8bc1363bd25e96cfbc4d306409c98a6b327`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1daae84e99bdaa0c16d8ab5cce0d89ffc3e549fbba93f1c88813ed7523d40175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1daae84e99bdaa0c16d8ab5cce0d89ffc3e549fbba93f1c88813ed7523d40175.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Balanced` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.LiftingProperties.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [StrongEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi.md) | 46 | `declaration-track:59d950466372473ffbd95c169921205eadc719d2a18e7e26790d18ca958c73df` |
| 2 | `theorem` | [StrongEpi.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-mk.md) | 53 | `result-track:7e0f5513b940880a380700c76526b1b5e56d7845a59e50a690298e8a4dbebfed` |
| 3 | `class` | [StrongMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono.md) | 62 | `declaration-track:9b36ce4559d35ed55f523e58b2174b2f893d5ab157bd34d37082a1bc5dc5d40b` |
| 4 | `theorem` | [StrongMono.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-mk.md) | 68 | `result-track:21d91a669b5b82d630ed20cf8ab35ad3e83da92fa3cb1c3e5880b8843776ed8e` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance-source-edition-2.md) | 78 | `declaration-track:18895121ee798f283b3ff1ef6b40fbab816df02691b775619c2b0a6e0da01767` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:1abe0f47aa3b1e0277b5905716951cfb43386e596ba9cd02ed5ae985cc5e7beb` |
| 7 | `theorem` | [strongEpi_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-comp.md) | 89 | `result-track:4fc3f6d42a602206af5c5dd9147e9e5f76aba14e7e24c1034521a1dc8b889bda` |
| 8 | `theorem` | [strongMono_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-comp.md) | 96 | `result-track:c8bfdd3bea378b1a593d5c422237a9a3df7d52c2be50a0eab87a172beddfb14d` |
| 9 | `theorem` | [strongEpi_of_strongEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-of-strongepi.md) | 103 | `result-track:517fa2920c8b9215a2d4f82548222690f7665afc1bfa002c36405fa64fdd9e1b` |
| 10 | `theorem` | [strongMono_of_strongMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-of-strongmono.md) | 115 | `result-track:04cd546356f2c434bf05a8d1de9c90e006e03101b463838ec34d2577e0ad811b` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance-source-edition-5.md) | 126 | `declaration-track:a752a6b69dc861c23a0988a101c042498fda683f47b591596835c13115a6bfcc` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance.md) | 131 | `declaration-track:073a051dd1ff6512c1bc3a72419c5e05798262fdf8d6c03c6c81cbeb5b643d24` |
| 13 | `theorem` | [StrongEpi.of_arrow_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-of-arrow-iso.md) | 135 | `result-track:4510637a3ffcb4848e8ae86b79ef21f4283f10b30cd0647068e6936034034028` |
| 14 | `theorem` | [StrongMono.of_arrow_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-of-arrow-iso.md) | 144 | `result-track:eda91e9f6a12ddcdd5477a4983f801b28e29447ff7b82571c7bddcc37eedbe7a` |
| 15 | `theorem` | [StrongEpi.iff_of_arrow_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-iff-of-arrow-iso.md) | 153 | `result-track:b3a33e23e6e9c76e1051f290691fb9e8b36514d9bab80ee2240988ad1dabb6b3` |
| 16 | `theorem` | [StrongMono.iff_of_arrow_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-iff-of-arrow-iso.md) | 158 | `result-track:8c09aced2b948c34db4a5941122719f41a308b520be859e637a9c2619711068b` |
| 17 | `theorem` | [isIso_of_mono_of_strongEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/isiso-of-mono-of-strongepi.md) | 166 | `result-track:b1ddf8f611f91a157e32deea63ff3b19f2071acb576ca889b5b631266e5b5f34` |
| 18 | `theorem` | [isIso_of_epi_of_strongMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/isiso-of-epi-of-strongmono.md) | 170 | `result-track:9bcaea1b8a922baf495ee136513ee516cf8b58aae7997180d717698cf93e8875` |
| 19 | `class` | [StrongEpiCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepicategory.md) | 178 | `declaration-track:a65e2d1737fc6303a23cd782a3369ba5d0b6d3b97aac3c2cfdbf1dc37e7cea9b` |
| 20 | `class` | [StrongMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmonocategory.md) | 183 | `declaration-track:b3b1359836d042dff6ba5c20bf5740805567bc1f6e7843cd3cea7a4273bcfa16` |
| 21 | `theorem` | [strongEpi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongepi-of-epi.md) | 189 | `result-track:c9967df8a3ed6994db359af0cddc868ec560fecfc6de61ca379e99f19aceabee` |
| 22 | `theorem` | [strongMono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/strongmono-of-mono.md) | 192 | `result-track:19b508b7324c869bf2a87f12607f2a213ae204155db0578a404ff7ad9ea43453` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance-source-edition-4.md) | 199 | `declaration-track:513aca3ac90697cd4f4e97133c372e7b76ca2f1627c387125c8aff7fc5e6b0e8` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/StrongEpi.lean/declarations/instance-source-edition-6.md) | 208 | `declaration-track:dfb3923c9bfd2b3e01195c7b83a28f221b443c71bff014e774ebe49fda5a033b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=008c45d1236d19324da5e05c719caed724a87c632dcc1c0a76ccfc1762bcd2d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1daae84e99bdaa0c16d8ab5cce0d89ffc3e549fbba93f1c88813ed7523d40175.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/StrongEpi/Variant1daae84e99bdaa0c16d8ab5cce0d89ffc3e549fbba93f1c88813ed7523d40175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
