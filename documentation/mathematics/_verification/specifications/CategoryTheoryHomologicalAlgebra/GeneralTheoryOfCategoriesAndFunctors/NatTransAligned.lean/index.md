# Verification target: Nat Trans Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83150c6de066c3f034a5dcb1e5870813e6e9e968",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variant72a34cb0cde66d433b8475abca3398e335705be88ede0771270567016ed0378f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83150c6de066c3f034a5dcb1e5870813e6e9e968`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variant72a34cb0cde66d433b8475abca3398e335705be88ede0771270567016ed0378f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variant72a34cb0cde66d433b8475abca3398e335705be88ede0771270567016ed0378f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/nattrans.md) | 48 | `declaration-track:544476584ef1041e06eb7e4019e68059be8b6ea577074a85346cf005484b1fb7` |
| 2 | `theorem` | [congr_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/congr-app.md) | 63 | `result-track:6cd5fa77b271385b2aa999a3de9f9b9d3e0a9f090a8ed907b9e54ba6baf737d2` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/id.md) | 70 | `declaration-track:aa7287d9d1a236d028a06df1dbb13b33b5b084a426140c62ad8c685f04815617` |
| 4 | `theorem` | [id_app'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/id-app.md) | 74 | `result-track:ef93532c1a564e587760a1bf3e200843cfc158f79de65d8f3213a233dc3743c6` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/instance.md) | 77 | `declaration-track:59f9756a5b9506794ae3a2940a833fce1d726eb3595df1d9efb155597405cdfe` |
| 6 | `def` | [vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/vcomp.md) | 88 | `declaration-track:49b77557e7867625c53cc616a3bca54777dcbfe0b757e6020145c8322f5a9339` |
| 7 | `theorem` | [vcomp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/vcomp-app.md) | 94 | `result-track:1900d6946129c82175f3682f958ad85d0c8f2a2da63be2e259d16d8227195ac8` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransAligned.lean/declarations/example.md) | 110 | `declaration-track:7c14560853a709fb9e393598ef2fe4c4c071cc185e386e62ed481991ad4a82a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8d398d00e5a92c46e28c065ba96decd1a2d1588144b831ab11763026535e9db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variant72a34cb0cde66d433b8475abca3398e335705be88ede0771270567016ed0378f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variant72a34cb0cde66d433b8475abca3398e335705be88ede0771270567016ed0378f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
