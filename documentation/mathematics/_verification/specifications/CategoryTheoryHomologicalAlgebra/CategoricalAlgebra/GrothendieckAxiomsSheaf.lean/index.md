# Verification target: Grothendieck Axioms Sheaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a632a02a2cb8b1aedb0793619871a3062403ca8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a632a02a2cb8b1aedb0793619871a3062403ca8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Sheaf` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/instance-source-edition-4.md) | 43 | `declaration-track:4f9b9e5da75046d6b5bb69cef0983caed7c8a0e6d5a86c351f60b5d103fdaa0d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:130c94757f93bce5787fcbcc2a7e2748a7fadadf293b5cee5f16b0bd768b5441` |
| 3 | `instance` | [hasFilteredColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/hasfilteredcolimitsofsize.md) | 53 | `declaration-track:dbffb359912b308e7fed1e01a94fd62389bfafec72fafdac91d35f0a6fca13c7` |
| 4 | `instance` | [hasExactColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/hasexactcolimitsofshape.md) | 58 | `declaration-track:7873435b4ae74bf214fb46229e5d07eda1dd169ed30079263dbeeada4cecefac` |
| 5 | `instance` | [ab5ofSize](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/ab5ofsize.md) | 63 | `declaration-track:208b9a57b50b0f5929d71011f27ba4d2c2e88a21d8eccd948dd9ff88ea7117a8` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/instance-source-edition-3.md) | 68 | `declaration-track:2ccda23135645dab09db46b2d90d683f4d0292353a616abf702ba717e1ed57ed` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/GrothendieckAxiomsSheaf.lean/declarations/instance.md) | 72 | `declaration-track:08122424e52e3a84268b5493597310b68ce63684d075f7a9e321b7b7eb9084e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5dbe63af709ee003cde58a218bd8fb32e72721b9c137bcf39b05c0bab73cc53c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6aa1979fa1d13026206aff651bdd3357d2aa8df54b3828342701e1a2407c5c6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
