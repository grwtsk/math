# Verification target: Homology Homology Sequence Homology Sequence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "764470e3859e1d1ea2ff137c810ff3c1dbfc6885",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `764470e3859e1d1ea2ff137c810ff3c1dbfc6885`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.SnakeLemma` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/opcyclestocycles.md) | 43 | `declaration-track:fbc9025285a72af65c9f255816831686ce7f4f9402f7a75a61abaa3d7022aba2` |
| 2 | `lemma` | [opcyclesToCycles_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/opcyclestocycles-icycles.md) | 48 | `result-track:958d2bf547251c9697d3d4a58c8d34663d66328e9e9c96d77749eb7fd06d3bdf` |
| 3 | `lemma` | [pOpcycles_opcyclesToCycles_iCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/popcycles-opcyclestocycles-icycles.md) | 53 | `result-track:42965b914da640b9b15a7bf41ae1ed5296477ef1caa349c708ad0acf641b2198` |
| 4 | `lemma` | [pOpcycles_opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/popcycles-opcyclestocycles.md) | 58 | `result-track:39a279cd22b7e5d4d9f69dcfca5c7dd21e620667b1efb2f405983b3d39e5252f` |
| 5 | `lemma` | [homologyι_opcyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/homology-opcyclestocycles.md) | 64 | `result-track:d6097aacb4c40fd844b6328b371f78f6abe5a29f0afc9175c807af6e6af2d1a7` |
| 6 | `lemma` | [opcyclesToCycles_homologyπ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/opcyclestocycles-homology.md) | 70 | `result-track:b635e123d0f6bebb47b73edfce94e8160ec087c6a393f70ac65840ff053fb951` |
| 7 | `lemma` | [opcyclesToCycles_naturality](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/opcyclestocycles-naturality.md) | 78 | `result-track:bad57a2ca2b1a3b57f565bde6de6198667465302fa922e07eff57641c74d0e9b` |
| 8 | `def` | [natTransOpCyclesToCycles](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/nattransopcyclestocycles.md) | 89 | `declaration-track:4b785ad985b195309d484442d6ea519a588394f9f0fe9943a1e631f1f26d30a1` |
| 9 | `def` | [composableArrows₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/composablearrows.md) | 104 | `declaration-track:8decc14aa625a3a3b7493101d25aeb8d7ecfc0dc36d00a1262fd93ceca294b74` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/instance.md) | 108 | `declaration-track:beb144fe017d0b95f3a2ce7d930458a79a64213d9ad4d78501b3be43f2aa68d0` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:fe08c61075e4ba465e89c23916552ea327bc0c4eb5a53f412c225a97a3df92cf` |
| 12 | `lemma` | [composableArrows₃_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/composablearrows-exact.md) | 127 | `result-track:83bb242692f0e5d14ed9b292adc77f3b3df5574bdcb90f9de3c99a303f7ff2bc` |
| 13 | `def` | [composableArrows₃Functor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/composablearrows-functor.md) | 164 | `declaration-track:eec6bcd0172cd802b2012266fca590b70cfaa28d9581b90fdcbc7795abf633cc` |
| 14 | `lemma` | [opcycles_right_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/opcycles-right-exact.md) | 182 | `result-track:84da91cfd8b1455286385a16ee3e335d7921d33f75e29512954a5cbcc710afc9` |
| 15 | `lemma` | [cycles_left_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/cycles-left-exact.md) | 204 | `result-track:757bcbf01ee525624f987c5e59768d0f0ddb29e4a3541aa246ed896360389402` |
| 16 | `def` | [snakeInput](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/snakeinput.md) | 233 | `declaration-track:4ca9ef0832e6ea4682cbc8defd62c030bde2e27ec0b3cdc21dc2321050269c82` |
| 17 | `def` | [δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/anonymous.md) | 287 | `declaration-track:e6487aec14cc346e5b97bc6ca3825ce2cdcfdd54a2b8d4ca205615d670322c6e` |
| 18 | `lemma` | [δ_comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/comp.md) | 290 | `result-track:22d722b09ce1391d9a6c8a71de882b90cb72c8d31b162011269ec84f83a5bdac` |
| 19 | `lemma` | [comp_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/comp-source-edition-2.md) | 294 | `result-track:947f5e148fed96e79eef03da2f9f56de1c64e4f9621639172bceba30a2f4e155` |
| 20 | `lemma` | [homology_exact₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/homology-exact.md) | 298 | `result-track:157da4cde75bbcbe40e5beae0c484765bc35d5556c2cfd5014833e74eaac1e30` |
| 21 | `lemma` | [homology_exact₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/homology-exact-source-edition-2.md) | 303 | `result-track:4d7a02d3c482c1f9bf0f210b9ab3ef14ff6ee55f980826bf4d05631368c81ce6` |
| 22 | `lemma` | [homology_exact₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/homology-exact-source-edition-3.md) | 318 | `result-track:dc14270903e04a72bc13f63ee5dc5a39502f49e43a03b0d47a783bdcddd8e9f6` |
| 23 | `lemma` | [δ_eq'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/eq-source-edition-2.md) | 321 | `result-track:86c52891b8920eb674a765f4b930da6f3ae5e9b4d73427a2ae3b07db8ffc8fe3` |
| 24 | `lemma` | [δ_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologyHomologySequenceHomologySequence.lean/declarations/eq.md) | 328 | `result-track:1074ff7a42ffccae8863f9f5bb055924ee042bbce457eac3c531081102fa63c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2caa550bd3e258a99c4fa4ece5ae0b8624aa0a6a2dbb80332d1f380824788933 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologySequence/Variant18580c8082b5cf02606e1751891c254807bb60cc70a8c7273c2d85e6b98e3a0b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
