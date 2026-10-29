# Verification target: Filtered Frobenius

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "260d948ec27de3afc3630eed6fe3b9a5a417b63d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `260d948ec27de3afc3630eed6fe3b9a5a417b63d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Interface` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FrobeniusDatum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/frobeniusdatum.md) | 19 | `declaration-track:789d25a1a6a430008f50a093f76288d2bf2ce2f1b496225ae3e670046ad3c586` |
| 2 | `structure` | [NygaardDatum](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/nygaarddatum.md) | 24 | `declaration-track:03a6483aad92734ec573b35e6e17afaeacc1a520293c4fa2d5e6c50764d1c119` |
| 3 | `theorem` | [transition_refl_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/transition-refl-apply.md) | 47 | `result-track:3acb69355a97601a5ba463aade738ff38f401b6d07ef48de0cdbbc468c38798c` |
| 4 | `structure` | [FilteredFrobeniusComparison](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/filteredfrobeniuscomparison.md) | 63 | `declaration-track:9f9872c6b3eb5504431f0c5fd7515f323209b608bc28c122d635dab4c706ee60` |
| 5 | `def` | [valueMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/valuemap.md) | 106 | `declaration-track:ae86b28c904edeb7cf1963ae75eba55ce5f0109b716c07708bf2b0bee5439b86` |
| 6 | `def` | [IsFiltrationPreserving](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/FilteredFrobenius.lean/declarations/isfiltrationpreserving.md) | 112 | `declaration-track:63185bac8d3d3e154c04c7d208a6323207d51ab7289a5ef28df63910bb4277e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62282c28e0f3b26db8ab3bdf16c44bc07aa2036e741ecd6033b97e6e338cda8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredFrobenius/Variant32aae460ad6c53e5d02ac6485b016568a9803bed8552a7ab393c747a5ebb6988.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
