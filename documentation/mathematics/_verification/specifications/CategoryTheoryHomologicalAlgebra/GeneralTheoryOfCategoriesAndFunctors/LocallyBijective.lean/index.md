# Verification target: Locally Bijective

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "657f29093bfcf4e8ef5d214d3479c0dd7e37817a",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `657f29093bfcf4e8ef5d214d3479c0dd7e37817a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.LocallySurjective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Localization` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallyBijective_iff_isIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/islocallybijective-iff-isiso-source-edition-2.md) | 40 | `result-track:abcd195af5054ec5bb3b37ddf8460a48a8b66210ff36afa863df52ae71f74174` |
| 2 | `lemma` | [isLocallyBijective_iff_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/islocallybijective-iff-isiso.md) | 81 | `result-track:1c975c7c5a6bcbf9b129a06b92a4f69db0c156b21b5ed9a760c836e96e7cbc51` |
| 3 | `class` | [WEqualsLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/wequalslocallybijective.md) | 102 | `declaration-track:3c279395d9414982746648371651e9bd5b8b3c82b4ac4c2669173c4a2c6c708a` |
| 4 | `lemma` | [W_iff_isLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/w-iff-islocallybijective.md) | 111 | `result-track:5ee077036c111c0c1eb3b042432258c18fd1d373f7e78a3b18d631c861ac4928` |
| 5 | `lemma` | [W_of_isLocallyBijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/w-of-islocallybijective.md) | 115 | `result-track:f6fe6dcb76c9c696e5559c0a62c51c2aaaba39933ea88545a4907f151ee92195` |
| 6 | `lemma` | [W.isLocallyInjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/w-islocallyinjective.md) | 122 | `result-track:02cc72076acdfb164bfa16ecbdfbeb5d0da78d3ba2745d6080a498e73d5dfb40` |
| 7 | `lemma` | [W.isLocallySurjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/w-islocallysurjective.md) | 125 | `result-track:be46763c0228e1ea91b1d156955ea3da7b0033f73f71894f7957e512d9f673a8` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/instance-source-edition-4.md) | 130 | `declaration-track:fcacd6fe101b1c54cee60718779ba39ede8f89709c8d59e5ae00890ac4930fa2` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/instance.md) | 133 | `declaration-track:2193df1037ca668847ecaf878ce8607074ef6515334571e7242c5ef4e7acec89` |
| 10 | `lemma` | [WEqualsLocallyBijective.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/wequalslocallybijective-mk.md) | 138 | `result-track:4277895ddae80b98391be179453ebca36b4601136359995c450fcbd1f7d2e933` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/instance-source-edition-3.md) | 150 | `declaration-track:4c39df911f14237740a40da9c4d7b70a59466a03c17b61d5f96aeda7d2a60652` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/instance-source-edition-2.md) | 158 | `declaration-track:373319c46ba09459fbf089ae5e3c8c49e5b6344e3ef2de40088922ec526ae5a4` |
| 13 | `lemma` | [isLocallyInjective_presheafToSheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/islocallyinjective-presheaftosheaf-map-iff.md) | 168 | `result-track:a97d77c0a99e88edde83adf518af166a7639d90afbc1b78ce71ddc4573fb6c5c` |
| 14 | `lemma` | [isLocallySurjective_presheafToSheaf_map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocallyBijective.lean/declarations/islocallysurjective-presheaftosheaf-map-iff.md) | 175 | `result-track:4488c1ca4620873b7d119676c1c65d0a8d4386cc43edef32314535a10cdf644f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d1b4fe5fef4c8e82fc915d365b461413d8c43eeb724c1f74048a225ef7b1e39 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyBijective/Variant18852cfa84b4837107a64f287ed04ff6d4d6651dedd72a2d3114e53e5ea9154d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
