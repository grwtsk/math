# Verification target: Comon Equivalence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0780c407a539751cd9033f46b2a5c21369fcd3e1",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0780c407a539751cd9033f46b2a5c21369fcd3e1`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.CoalgCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Monoidal.Symmetric` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Braided.Opposite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Comon_` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Tower` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.TensorProduct` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toComonObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/tocomonobj.md) | 44 | `declaration-track:9453d5213dba799c6bd01deb0279ca6599d12a8e6e9bb01fd432227f331c495e` |
| 2 | `def` | [toComon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/tocomon.md) | 55 | `declaration-track:47b04e99fdbacb35de0e8ad2ee32175f36944576597a5ee34f7a817d9f47d7bc` |
| 3 | `instance` | [ofComonObjCoalgebraStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/ofcomonobjcoalgebrastruct.md) | 65 | `declaration-track:bbe2e8f994d7ffc596d6522443b5e2da9867c22e0a053a99a85549ec7dcd03ac` |
| 4 | `def` | [ofComonObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/ofcomonobj.md) | 72 | `declaration-track:2dc95b0f6147f18e269923c510e51e4570730df71c1040202e6b4508443156f3` |
| 5 | `def` | [ofComon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/ofcomon.md) | 83 | `declaration-track:7577121aa21a474baad8cd9acf82b63118967b5a5a463d778ef849fd9522d82b` |
| 6 | `def` | [comonEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/comonequivalence.md) | 94 | `declaration-track:ec95d90ba5c23a82d7382607bf763587931e83e55bfbc0ad6f0de24d9dff49cf` |
| 7 | `def` | [instMonoidalCategoryAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/instmonoidalcategoryaux.md) | 106 | `declaration-track:f6896c42cd4875cbcc56c78424074e3c8903904e069eb5e15a24e8336abf9b10` |
| 8 | `theorem` | [tensorObj_comul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/tensorobj-comul.md) | 119 | `result-track:bfc882d94db3abf70c8292e5703d506d238ebd3723c417895b4e072d8aaa3d26` |
| 9 | `theorem` | [tensorHom_toLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/tensorhom-tolinearmap.md) | 129 | `result-track:7987061334690ff0d199237214bb87e37e74f791796e115952931b3265d49002` |
| 10 | `theorem` | [associator_hom_toLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/associator-hom-tolinearmap.md) | 133 | `result-track:f30684907b410480b38866a9c45a78c56aacad77a27b45e8b974d40afddabbe2` |
| 11 | `theorem` | [leftUnitor_hom_toLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/leftunitor-hom-tolinearmap.md) | 138 | `result-track:3bc8d813056d4b34e1b8624561b4fa71230fcfb64601b32a2899a8dd3ae97ffe` |
| 12 | `theorem` | [rightUnitor_hom_toLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/rightunitor-hom-tolinearmap.md) | 142 | `result-track:da33d477e57eb2de9c12c0c018889be1010af0829bbef256ecadd2cede0a8a4b` |
| 13 | `theorem` | [comul_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/comul-tensorobj.md) | 148 | `result-track:c07c9af46c5a169089f1d4c11104abf088a3bb8087113c5412915c2d735e8d4f` |
| 14 | `theorem` | [comul_tensorObj_tensorObj_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/comul-tensorobj-tensorobj-right.md) | 156 | `result-track:1cf99c22cf749d1342e77bfce01ddc5082d2ac2b39fe68ae2142e185a717fd1e` |
| 15 | `theorem` | [comul_tensorObj_tensorObj_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/comul-tensorobj-tensorobj-left.md) | 168 | `result-track:ca1a907ebc2b8429e97301df808edaa36708a81403c2fd1ed002864ba5b84704` |
| 16 | `theorem` | [counit_tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/counit-tensorobj.md) | 180 | `result-track:f6d39ca5eadb7833cd6a57c377b7dc52ab039b57d84fd3a51b8549d8e4d7079d` |
| 17 | `theorem` | [counit_tensorObj_tensorObj_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/counit-tensorobj-tensorobj-right.md) | 187 | `result-track:33de41a927d5bbfc775490889ff968e8527b8f2903ab346524a9bad5f31bc26c` |
| 18 | `theorem` | [counit_tensorObj_tensorObj_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ComonEquivalence.lean/declarations/counit-tensorobj-tensorobj-left.md) | 195 | `result-track:8275f72eff7c3574ac3e7109f22b8fbc449d97d8527969b1417f905f0930bc52` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ada815775f7bb3102472a652a20c8d288ed30f9124e87810ccccdce3126c2d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/ComonEquivalence/Variante3d18bd28458f01e2666f7579208fa82adf610d31d670c85ed5a8f7b625c587d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
