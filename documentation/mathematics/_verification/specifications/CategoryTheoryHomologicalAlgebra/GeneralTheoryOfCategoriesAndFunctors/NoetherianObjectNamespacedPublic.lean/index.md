# Verification target: Noetherian Object Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3794b8f9b9f5bf9e4c198b68dbda64ad78d384a4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3794b8f9b9f5bf9e4c198b68dbda64ad78d384a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean.json)

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
| 1 | `def` | [isNoetherianObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject.md) | 55 | `declaration-track:510fd17c1e9ca5953259f5060fa919c73676bfd3c25f33e33c5a8496c0007701` |
| 2 | `abbrev` | [IsNoetherianObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-source-edition-2.md) | 63 | `declaration-track:d72fb15da58124248a178bede1eb439d2f78173a49c1d20daae10e3ac6ba5b53` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/instance.md) | 65 | `declaration-track:a9383f3fe319873d1bb29623397b1aa51604639809c6b1d0ad71dad5790a154f` |
| 4 | `lemma` | [isNoetherianObject_iff_monotone_chain_condition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-iff-monotone-chain-condition.md) | 68 | `result-track:2ff3b7ed09180d5cfb70a1aac7572442259690c532a8cb87180f881527ac94d3` |
| 5 | `lemma` | [monotone_chain_condition_of_isNoetherianObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/monotone-chain-condition-of-isnoetherianobject.md) | 76 | `result-track:2c088c73c5eed5a4350657ed9852892dbce70473c186060de6e8d3042feb434c` |
| 6 | `lemma` | [isNoetherianObject_iff_not_strictMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-iff-not-strictmono.md) | 81 | `result-track:c6b68f7831e149a1ceb346fb7c18cbc2617c29a3b3555040c4fe1b2f43c3c8ca` |
| 7 | `lemma` | [not_strictMono_of_isNoetherianObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/not-strictmono-of-isnoetherianobject.md) | 90 | `result-track:615b3a354da3ebb701b595e3adb792ac6d20d31acc5594b6959bfb3312cd5041` |
| 8 | `lemma` | [isNoetherianObject_iff_isEventuallyConstant](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-iff-iseventuallyconstant.md) | 96 | `result-track:d17aa7c03279800a336210b6f200a367f73a3c2e977624a3d1137acc6e7c0da4` |
| 9 | `lemma` | [isEventuallyConstant_of_isNoetherianObject](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/iseventuallyconstant-of-isnoetherianobject.md) | 111 | `result-track:a478894304a810da83e545991cc04252fdd7cdac0f3e235f8d0df525ba3e1511` |
| 10 | `lemma` | [isNoetherianObject_of_isZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-of-iszero.md) | 117 | `result-track:a14e6e33cce3b269525552e2750babfd2278853b30da49bc7a7a733d6bd866e1` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 123 | `declaration-track:e1681bbc34724a3c885852557a56e28f8419f4f8abbf1a0c7b41b342746c84f7` |
| 12 | `lemma` | [isNoetherianObject_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/isnoetherianobject-of-mono.md) | 128 | `result-track:111ae588354db1d5b7c0b8d6dc933333a97710941ee30f4740d142fb8efa0a0f` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NoetherianObjectNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 136 | `declaration-track:d521504ce6a62a27d7e6a5c8d200684ada48aecfa263360d81726c9af35173ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3abc8c919cb8a95cd1cad947421096096066904d70a9b9107cbd3d64d870ce67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/NoetherianObject/Variant1fb21182a2576c6ea46a86de7247a595903be2adfa2378163bbb962a0a72c9c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
