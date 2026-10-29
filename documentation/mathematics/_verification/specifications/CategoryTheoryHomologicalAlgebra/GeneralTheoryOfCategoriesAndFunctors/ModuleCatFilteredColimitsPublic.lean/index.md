# Verification target: Module Cat Filtered Colimits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a054c5f50fbde6e04d0036e5accece2a9ab1a5de",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a054c5f50fbde6e04d0036e5accece2a9ab1a5de`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean.json)

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
| 1 | `def` | [M](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/m.md) | 46 | `declaration-track:ccd6ab8667425a4e7a254154a089d646ff1240e725d8728daa716c5f3a41bbff` |
| 2 | `def` | [M.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/m-mk.md) | 51 | `declaration-track:f2a5eff7d27b5c7fc1d41b9a0865cad4a9dd6c9426b7ed93c855291c805aebd2` |
| 3 | `lemma` | [M.mk_surjective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/m-mk-surjective.md) | 54 | `result-track:b5445a132d739c17ec38d22d14c87b822692472b2c15f415b0a2ad689b485de6` |
| 4 | `theorem` | [M.mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/m-mk-eq.md) | 58 | `result-track:dc30cae90f49b7041ae04ca6f62fd2712bc59f3fb6c56bdbfb4b2462116330d7` |
| 5 | `lemma` | [M.mk_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/m-mk-map.md) | 63 | `result-track:56f436271d7c822b448fdf90eea86220edba2ef101a58b9984a746cc1f4c210f` |
| 6 | `def` | [colimitSMulAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitsmulaux.md) | 68 | `declaration-track:d0d431289fe4b04985e25b3fe1cb39745ace3397de7f4bf04a9e3f0b5359421d` |
| 7 | `theorem` | [colimitSMulAux_eq_of_rel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitsmulaux-eq-of-rel.md) | 72 | `result-track:1aaec337c87892e6f7197af32b475550257fb07e28cf28a48ab2b2d193e7d9c1` |
| 8 | `instance` | [colimitHasSMul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimithassmul.md) | 83 | `declaration-track:a8ac6182d1f0c4cf7214702909894f1bf51cd21f50d295a4abcb7a7f8fb0ea39` |
| 9 | `lemma` | [colimit_zero_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimit-zero-eq.md) | 91 | `result-track:7b28bca56d4b4a00ab24453bddc6163fdd1be3b9cf6c8d3ab254e4b61821a495` |
| 10 | `lemma` | [colimit_add_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimit-add-mk-eq-source-edition-2.md) | 95 | `result-track:bbd27a8263a285c0fdf9e85fdbb70a1b5d80ab193afc76f5f5677eb17532ee61` |
| 11 | `lemma` | [colimit_add_mk_eq'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimit-add-mk-eq.md) | 100 | `result-track:6eae4af043ce26cd24b0a76e9ed2ee1176122167299dd741227ac5f7637a1692` |
| 12 | `theorem` | [colimit_smul_mk_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimit-smul-mk-eq.md) | 105 | `result-track:0c7a819817eb03954493afb43d60d63f8b193a8cbd1cc373b742e136fe58a2be` |
| 13 | `instance` | [colimitMulAction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitmulaction.md) | 109 | `declaration-track:b60d4270bb59f648fb79f65f99626d5822d2bd3b59e9eab3f2d41e2bc7b2d621` |
| 14 | `instance` | [colimitSMulWithZero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitsmulwithzero.md) | 117 | `declaration-track:a11de277864d5f3313260a291a34df29beebf4ee2a602720612eba635fee6dff` |
| 15 | `instance` | [colimitModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitmodule.md) | 125 | `declaration-track:0d9a06a4ffe1e0d29062e54e6da7b998f62c612fbb9d5f54b1d44247382c22ae` |
| 16 | `def` | [colimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimit.md) | 141 | `declaration-track:63f2470f09cbe8818a3d5ca8155ac7ffafba78af2995b114ed7a3fc9bfeb3cda` |
| 17 | `def` | [coconeMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/coconemorphism.md) | 145 | `declaration-track:44e4d92f179388f4ac4c8a4d2cc52887409be3a811b2860735e2e63ea0cf1ed5` |
| 18 | `def` | [colimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitcocone.md) | 153 | `declaration-track:c15a855407fbfbd73250db431e50e578e66225bd188dfa00c548c2a42562f66b` |
| 19 | `def` | [colimitDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitdesc.md) | 166 | `declaration-track:360e5fe8fe54e711d06b044c34f97f52b4cb4d676cf77f5fd049a20a8d40d93c` |
| 20 | `lemma` | [ι_colimitDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitdesc-source-edition-2.md) | 179 | `result-track:f37fbc5bfd8500129826d312a2995c2b996a3466e1232fb4b5f65d865a7fc0ca` |
| 21 | `def` | [colimitCoconeIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/colimitcoconeiscolimit.md) | 185 | `declaration-track:da02870e23cd928712e984eb51f33b1730d74dd5e307d45af75ecf8320695d1c` |
| 22 | `instance` | [forget₂AddCommGroup_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/forget-addcommgroup-preservesfilteredcolimits.md) | 193 | `declaration-track:4fa3119e0c54205fc9258da126224caf108ef9de20c768d01abdc8a8479db115` |
| 23 | `instance` | [forget_preservesFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/forget-preservesfilteredcolimits.md) | 201 | `declaration-track:2b4eb1343b9fc6304245a275eb83f4ff954297efd818cf7b6fe6a4a22dffdfad` |
| 24 | `instance` | [forget_reflectsFilteredColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatFilteredColimitsPublic.lean/declarations/forget-reflectsfilteredcolimits.md) | 205 | `declaration-track:71a5288a01bc3de5c623e7a2ac9f6bc838052e44e6d3f6d6a9d69d46c0e5f172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c51f75964b8202ff9868b582d736bd903260be1fd9d19b47cbfd6a2dc08dd82f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/FilteredColimits/Variante4b7f5ec4e34f0e8042efd3c1ff9d19fab15585237a645be158e64acba6fd005.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
