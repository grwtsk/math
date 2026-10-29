# Verification target: Homology Sequence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c1f7c810ab91d41268aa5c5cf3f498c5215a687",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c1f7c810ab91d41268aa5c5cf3f498c5215a687`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean.json)

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
| 1 | `def` | [opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/opcyclestocycles.md) | 47 | `declaration-track:1fe6eca1155030f4121e589e48b27656960b2c17c2dc66c0d131ff4e2ae75605` |
| 2 | `lemma` | [opcyclesToCycles_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/opcyclestocycles-icycles.md) | 51 | `result-track:a89cfc0488e014ea1759102a03bc44b0dcea598eb7ea7a3ed5b6c03bc68a3a5a` |
| 3 | `lemma` | [pOpcycles_opcyclesToCycles_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/popcycles-opcyclestocycles-icycles.md) | 56 | `result-track:88c34e61db10186a43012f06284554d613a59f8d8f96b1a7beb5ba4c4da73864` |
| 4 | `lemma` | [pOpcycles_opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/popcycles-opcyclestocycles.md) | 61 | `result-track:efe217e798b7f538d2af963c6e55b9e6d99950e42bb30c3981137732ea4f2f17` |
| 5 | `lemma` | [homologyι_opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/homology-opcyclestocycles.md) | 67 | `result-track:26b3f35c6ac13e495384bd2539a9b55d4df7311a71b21ba56033260d1fe918ce` |
| 6 | `lemma` | [opcyclesToCycles_homologyπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/opcyclestocycles-homology.md) | 73 | `result-track:86d47525c7e3ee4c6b8fc5c650b1365bcfc1074dc25e288b076590df7841f2ba` |
| 7 | `lemma` | [opcyclesToCycles_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/opcyclestocycles-naturality.md) | 81 | `result-track:69bde4caab906791c89df27da8117b000185dcd866480dfd855967e2ffe9307e` |
| 8 | `def` | [natTransOpCyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/nattransopcyclestocycles.md) | 93 | `declaration-track:b61cbc153720461b942627f2c594bfc2645887c59d6db1231f552c966c0fcd3f` |
| 9 | `def` | [composableArrows₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/composablearrows.md) | 108 | `declaration-track:6601ebb0af72e79afe434a9a3d4bb836bdd78a5ef620a5289d94808e83f54187` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:5c55e18727e120ba922e0dba4d7c064df972900a3126c484524c7aeec889b8b1` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/instance.md) | 119 | `declaration-track:22f057accc0a4d024ae1294d14fdc4e7f920ea680d1c12958040e35a3cfcd22a` |
| 12 | `lemma` | [composableArrows₃_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/composablearrows-exact.md) | 128 | `result-track:930ad03f36862986bdb378f210d87f57d73ef008904b9c2c17eb24d31591648f` |
| 13 | `def` | [composableArrows₃Functor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/composablearrows-functor.md) | 160 | `declaration-track:3b297d1dbdc430e0219c0a39194faa86a6864142c47c7c9c46981ea68d09019e` |
| 14 | `lemma` | [opcycles_right_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/opcycles-right-exact.md) | 180 | `result-track:927aed76a83994c379747285fab91b98961dde549005eb4f355b6ec11683cfe3` |
| 15 | `lemma` | [cycles_left_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/cycles-left-exact.md) | 203 | `result-track:90e7fc7b88de00418a2824d19fc73dbf2694adbd58765fc5d0646dfd2979d9b7` |
| 16 | `def` | [snakeInput](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/snakeinput.md) | 233 | `declaration-track:6b673aa53d20b8563783eed7b459d899a2727a3352df359a00d016a4990ed543` |
| 17 | `def` | [δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/anonymous.md) | 287 | `declaration-track:6de5eb5193867440e8632382c4a60c79fd531157ea7f8e29baef39878df5f4ce` |
| 18 | `lemma` | [δ_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/comp-source-edition-2.md) | 290 | `result-track:db637777eaed1bb3119c2c6198f60ce2c34c9adeed93c6316e993bb374109f2e` |
| 19 | `lemma` | [comp_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/comp.md) | 294 | `result-track:bcfef9e84f23521d12699d593696dafb2e56e1689c91947f671a6ab75cf08700` |
| 20 | `lemma` | [homology_exact₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/homology-exact-source-edition-2.md) | 298 | `result-track:b51b35488941fcd9d3433aa7473df374e39b5998da8b056072c16824807e77eb` |
| 21 | `lemma` | [homology_exact₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/homology-exact-source-edition-3.md) | 304 | `result-track:b5d548021a6044ed9ace881da5f86b90f0b2cef974081db9d2ddfb222c250b60` |
| 22 | `lemma` | [homology_exact₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/homology-exact.md) | 319 | `result-track:71fd697ed19422e43e5a8d7aad151b12b2c4f4b91f203631bf8ec46973cf08f5` |
| 23 | `lemma` | [δ_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/eq.md) | 322 | `result-track:a5e066172e43bde7855f95c23fe1971e5bf545cacdf9b191a2486712b4d61a76` |
| 24 | `lemma` | [δ_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/eq-source-edition-2.md) | 329 | `result-track:ee1bea616ae08b30763e0bc35a57d869753838adb2f1b01a1069c1cabde3deed` |
| 25 | `theorem` | [mono_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/mono.md) | 348 | `result-track:8786ed54b5abad1b43a8f68366bc432b42fc21803119ba97707709d768a89035` |
| 26 | `theorem` | [epi_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/epi.md) | 351 | `result-track:ce48e50666a5be3373ef6b9c9686cf0249bbd887849b72442758d033ae7b36c4` |
| 27 | `theorem` | [isIso_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/isiso.md) | 354 | `result-track:2be12c275b31233037f5142e9a7202f4c41d267ad2b060762dae6c1ce15209d9` |
| 28 | `def` | [δIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologySequencePublic.lean/declarations/iso.md) | 360 | `declaration-track:2cfa2bee2f70953196d4397fcba24c7aab2a909c1ec58a2d9ab8f360602c951f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc54e6bafd5f8d4075931e6a0feedb6cd49fbf1de65441a81a54ae136a71bbf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant49d0edc13a9ef56524705e572f5e797ba6519325033da78f94fbc8695151439a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
