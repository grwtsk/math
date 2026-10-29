# Verification target: Left Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c7c97a260cd0c7a44526512b7724c257cd104bc",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c7c97a260cd0c7a44526512b7724c257cd104bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [counitCoequalises](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/counitcoequalises.md) | 89 | `declaration-track:2cdb010b8633dbe64687d100a44ddfcd44a0030ca765d914a80fd76c5ef1adc4` |
| 2 | `def` | [otherMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/othermap.md) | 113 | `declaration-track:3a5b8335d63c105b66e826315256ba489ad5e8ad1853bcf7f30aaeb2676b8216` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/instance.md) | 120 | `declaration-track:c96d81b76c7a335deace9abd40c9f03031b8e84a84d756cad02bbf4cb80a80c9` |
| 4 | `def` | [constructLeftAdjointObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/constructleftadjointobj.md) | 136 | `declaration-track:2d2d93374923fdc208e04d95f852766a66ecedddad0282312e64ae051e1658d8` |
| 5 | `def` | [constructLeftAdjointEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/constructleftadjointequiv.md) | 144 | `declaration-track:46741c416cb02f1739fc00c81a02839d8fa163ae7bf4dde34a9eedcb69a7042f` |
| 6 | `def` | [constructLeftAdjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/constructleftadjoint.md) | 175 | `declaration-track:a7f2a4f6d6c72d5944ab4982706d53b2927cfba60130f21d1d729686642a92cb` |
| 7 | `lemma` | [isRightAdjoint_triangle_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/isrightadjoint-triangle-lift.md) | 197 | `result-track:92358d33cdf2d6d2312fd662563e16afb3e061d35656f4807f2a18335db262fd` |
| 8 | `lemma` | [isRightAdjoint_triangle_lift_monadic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/isrightadjoint-triangle-lift-monadic.md) | 208 | `result-track:eaa85e5d3913b0e8f66275627fa3dd67f7432f3410bf6836ffc78c9b6fcd5f63` |
| 9 | `lemma` | [isRightAdjoint_square_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/isrightadjoint-square-lift.md) | 245 | `result-track:741f1285357c9a469e62bf48fbed08ee201a9fae22060ae5feb3118e690c4f88` |
| 10 | `lemma` | [isRightAdjoint_square_lift_monadic](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LeftNamespacedPublic.lean/declarations/isrightadjoint-square-lift-monadic.md) | 268 | `result-track:a17c1dac7d358cfdd736089f2f785b20283fb27b053ecea145e54b28479e6852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d55284fe70e1028ae1f066b6d27fa619c0827dc215767327cdeb28b8069e3880 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Left/Variant9f36c7efb516a32da70b3b9ede11a94a987998eaa45a7de9893abf242e858910.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
