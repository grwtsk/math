# Verification target: Grp With Zero Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd30e7f8042ddd4b8812678ad5735c1bd42b280d",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/GrpWithZero/Variant2cde2b60c4a24f443d3b9af84ef646e28d24436fe3c570bec065a978ce91e0b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd30e7f8042ddd4b8812678ad5735c1bd42b280d`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/GrpWithZero/Variant2cde2b60c4a24f443d3b9af84ef646e28d24436fe3c570bec065a978ce91e0b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/GrpWithZero/Variant2cde2b60c4a24f443d3b9af84ef646e28d24436fe3c570bec065a978ce91e0b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.WithZero` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Bipointed` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GrpWithZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/grpwithzero.md) | 31 | `declaration-track:97614ae9245adb1fe17caa1ace9e9e88cec91df64b4b20d8072570eac7864421` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/instance.md) | 40 | `declaration-track:0231c90c07a47035a662e8d8ca29423c7a8a03733a86e7e852222ca80367fcb1` |
| 3 | `abbrev` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/of.md) | 44 | `declaration-track:c689ef2d1b8a521e96ebbcaa3e08974757cba2ea0aae36af655154880cc96852` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:1225dce2d2a68b122494604910296b7b327c1a0bf90f8a8cc4e9112d497032fc` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/instance-source-edition-3.md) | 50 | `declaration-track:b3ab3bf9efdd610edfa769cfe702bb1492e5bee621a0b49a7e9a47e51d13f74d` |
| 6 | `instance` | [groupWithZeroConcreteCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/groupwithzeroconcretecategory.md) | 55 | `declaration-track:5d43d4b4b71f96689daa2c493666a9d782d211e480ddecdf452e24e6481c14ac` |
| 7 | `abbrev` | [ofHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/ofhom.md) | 60 | `declaration-track:79aa7cf8809225621b28e0228ac59d357ac9f9db973a36c0159bd05960320432` |
| 8 | `lemma` | [hom_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/hom-id.md) | 65 | `result-track:3d9ac9575a8d11f241f46fedb507b2c4db4f636e1ba7a4af68f777d1434967ec` |
| 9 | `lemma` | [hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/hom-comp.md) | 68 | `result-track:d9e0e0c06eb446001cb8b6bac3849953085d394a3aaa4b0fbfb3e970ecf25ab7` |
| 10 | `lemma` | [coe_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/coe-id.md) | 71 | `result-track:5b1a633cc2528969561b835dae942f20ec4ed194f644b87f2857b7e370cf3f2d` |
| 11 | `lemma` | [coe_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/coe-comp.md) | 73 | `result-track:892968e8c48ea53907cd043c844dc2a2f23feceaef59785fe3a0a894efcc1253` |
| 12 | `lemma` | [forget_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/forget-map.md) | 75 | `result-track:19a0af497bff8a165e5cc8d381b11b91ddeb6d7b2b53647131fd59132a458c37` |
| 13 | `instance` | [hasForgetToBipointed](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/hasforgettobipointed.md) | 78 | `declaration-track:db9443eb347ce5ec8df98ab1af31315c2eb8afdb83c5353c7df37ac91ea0a1e1` |
| 14 | `instance` | [hasForgetToMon](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/hasforgettomon.md) | 83 | `declaration-track:6272575572e6150b685ec8b054dd20d9e60cef6779ba6ce9a6b87d09a9a3cf29` |
| 15 | `def` | [Iso.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpWithZeroNamespaced.lean/declarations/iso-mk.md) | 90 | `declaration-track:1819f42d2d213b725ca86bbafffd2b0c33111d1dade85ffc222c7f0b89ad02c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50cf3bb6cd0cf2d4d29d4fd5d6b77acd57c76ff39c9ff226410d1ef3585e83d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/GrpWithZero/Variant2cde2b60c4a24f443d3b9af84ef646e28d24436fe3c570bec065a978ce91e0b1.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/GrpWithZero/Variant2cde2b60c4a24f443d3b9af84ef646e28d24436fe3c570bec065a978ce91e0b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
