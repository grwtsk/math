# Verification target: Nat Trans Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42b05c4ea213d990c03fe990d35160d263d3fefb",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantbda7bc0adb3c4894f89a0a727803f27533280d5944b33bb4ed3ad1446c00ed44.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42b05c4ea213d990c03fe990d35160d263d3fefb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantbda7bc0adb3c4894f89a0a727803f27533280d5944b33bb4ed3ad1446c00ed44.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantbda7bc0adb3c4894f89a0a727803f27533280d5944b33bb4ed3ad1446c00ed44.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.Reassoc` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/nattrans.md) | 54 | `declaration-track:8406f229dcc719ef929473db25adec2561440a1d1e0c42191532c305974a6698` |
| 2 | `theorem` | [congr_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/congr-app.md) | 64 | `result-track:f2dffaa772380348dd3a6b8c8d5529857a9eb46fea9fe3e4b54673e83f66fef6` |
| 3 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/id.md) | 70 | `declaration-track:a0815281e2b97e1b06deb2ed4ae1cfca248b7e8951b21065a0b9b73802323915` |
| 4 | `theorem` | [id_app'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/id-app.md) | 73 | `result-track:93b1bb61a43c3167bc3c101fbd18a903b368034dcedb9d9813a7f6e95838dd86` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/instance.md) | 75 | `declaration-track:cb2308e6e7e3bd803617e2cc94b6eb96aba2b43a8634fc9ab1c44c3d1ea2b5b1` |
| 6 | `def` | [vcomp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/vcomp.md) | 86 | `declaration-track:7b0a554d95b3bbddaf9dd6f6a273254b2383d0fbbc3691b025ffa2d3533e1532` |
| 7 | `theorem` | [vcomp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/vcomp-app.md) | 91 | `result-track:68d640c24140bcd6f84d346ae1f746c53747573fe643c984d9fb7d9e9795d365` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NatTransNamespaced.lean/declarations/example.md) | 106 | `declaration-track:3ba4c85e62ef1f9aad968685d6725d460943dd6abac5a7a95e2dc0b2b34d9827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da0c248086c484f9a23d1bbca3b752e608d40941f9122ab63e4123187c9800a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantbda7bc0adb3c4894f89a0a727803f27533280d5944b33bb4ed3ad1446c00ed44.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NatTrans/Variantbda7bc0adb3c4894f89a0a727803f27533280d5944b33bb4ed3ad1446c00ed44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
