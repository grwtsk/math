# Verification target: Homological Complex Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e7c6fa5fb4838a4e6a44f0a5dc7118b5c6a8a6f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantec569b1bec766b1f144a26af063c1f24af216b70304632ac443e7e09b3a875d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e7c6fa5fb4838a4e6a44f0a5dc7118b5c6a8a6f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantec569b1bec766b1f144a26af063c1f24af216b70304632ac443e7e09b3a875d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantec569b1bec766b1f144a26af063c1f24af216b70304632ac443e7e09b3a875d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.Karoubi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [p_comp_d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/p-comp-d.md) | 45 | `result-track:8b3a0d99882c8e9b714bee0fa0fe43eb19c0a03ad932e9482ea83b16acf52b8f` |
| 2 | `theorem` | [comp_p_d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/comp-p-d.md) | 49 | `result-track:7fd9b4a887adce81a6e86490795a99d5c9200d88a6c87a9deb0642e1e229ee0d` |
| 3 | `theorem` | [p_comm_f](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/p-comm-f.md) | 53 | `result-track:6480c60c24896ad6172a47929089753d08f6d47cf87d4db8d5676dc8af171424` |
| 4 | `theorem` | [p_idem](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/p-idem.md) | 59 | `result-track:fb3ff4b00d584eb4a2e0aedd9bc080946538baa9ea379bccf207576a9cf38272` |
| 5 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/obj-source-edition-2.md) | 75 | `declaration-track:44f38522096854f7d7283d47df5aac28afb0e6fc20e86c6a731448b4d67a29f7` |
| 6 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/map-source-edition-2.md) | 85 | `declaration-track:d1efc5139aec24843748e5865860232f9f18d3e1d2c058eda368ed50b0ca2e8c` |
| 7 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/functor.md) | 93 | `declaration-track:1cdb4e79c7d862914b0b3c59995fb3e0f6c20a782892b91652ea33e89510d2a7` |
| 8 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/obj.md) | 102 | `declaration-track:43a9aae788084e467a83b3c22db762d46c78d912338c815eaf9ef3bf9aa4a00e` |
| 9 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/map.md) | 114 | `declaration-track:78ad26514e839d7cda869753e18c2d8db02fa63a581587aa1ffef03007092804` |
| 10 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/inverse.md) | 123 | `declaration-track:5eb0a2416f6c4aa37936041e48ff5874533568e75d090171db618ab4dd2319c8` |
| 11 | `def` | [counitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/counitiso.md) | 130 | `declaration-track:fdeae1a30889cbbc3ff4056cf2911895c744a0f8e80f1e443f74f40d21452ba8` |
| 12 | `def` | [unitIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/unitiso.md) | 137 | `declaration-track:23b7fe77431db72400ca8c28b7b81f4e43c5f306302853800130ffb5d6d541c6` |
| 13 | `def` | [karoubiHomologicalComplexEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/karoubihomologicalcomplexequivalence.md) | 187 | `declaration-track:68978cada88a03a6362bfa09a936d560bb2f6af9b5a71dcfaa5da5264b9aa588` |
| 14 | `def` | [karoubiChainComplexEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/karoubichaincomplexequivalence.md) | 198 | `declaration-track:410efce94e06ef646b140f7540293c46e65b5267c2867a8f6521e40c853c9f1f` |
| 15 | `def` | [karoubiCochainComplexEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/karoubicochaincomplexequivalence.md) | 203 | `declaration-track:c33710a904578c2d9db4735bb7cd6e0204a75e1a3c613bc4ed82acb154dd6651` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HomologicalComplexNamespaced.lean/declarations/instance.md) | 207 | `declaration-track:45af673c43ef628873bcc82e182d21a76e0606e124f1a2519741c057799e08b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=433da690f82f24af2817afac269d40096d35728e84e6e32a7a6c1886b21b86dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantec569b1bec766b1f144a26af063c1f24af216b70304632ac443e7e09b3a875d5.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalComplex/Variantec569b1bec766b1f144a26af063c1f24af216b70304632ac443e7e09b3a875d5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
