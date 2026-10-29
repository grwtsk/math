# Verification target: Bicategory Locally Discrete

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "546f2eafbc9601f81cdd3197833ed0664afbc579",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variantdf00001cc539cf2d648b0cae6a0965fa9aa20cedb368139882078df2f3b35a81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `546f2eafbc9601f81cdd3197833ed0664afbc579`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variantdf00001cc539cf2d648b0cae6a0965fa9aa20cedb368139882078df2f3b35a81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variantdf00001cc539cf2d648b0cae6a0965fa9aa20cedb368139882078df2f3b35a81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Discrete.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Strict` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LocallyDiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/locallydiscrete.md) | 34 | `declaration-track:0c33a0c7e12854eb44460f6f8194d326ba867d45dd4d4c434ef0ecfdb189c7c5` |
| 2 | `theorem` | [mk_as](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/mk-as.md) | 43 | `result-track:c04bfad1eec1b2b919f5521d093ff02ea0eb9edc4365326b7e1be317e4c823f5` |
| 3 | `def` | [locallyDiscreteEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/locallydiscreteequiv.md) | 47 | `declaration-track:531eab432c65ee4c87390396a84f66caca997dab3814cb188d88138021ccc661` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:76845949bfe159d7f4b17a090b49979515ecb7633e74a9dd5c642fb2d22b3619` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/instance-source-edition-4.md) | 56 | `declaration-track:ac3f84479d123954a657f1bb3761e4b16571ff2e5b9d54530b3e2f0c3c48cbf4` |
| 6 | `instance` | [categoryStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/categorystruct.md) | 59 | `declaration-track:033a69902d12e178de53e46150073a6fff760f117d4ad3d4defefab55eda5453` |
| 7 | `lemma` | [id_as](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/id-as.md) | 67 | `result-track:d0116909bb2ddbfeef5c1fd8dae873fd3f39433a8384dc5e91a971b21d0c759e` |
| 8 | `lemma` | [comp_as](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/comp-as.md) | 71 | `result-track:05d2b869ee9e9ba82136dbde3c0d8343a5b4d3e1ea809f8203949c869a0d3bbb` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/instance-source-edition-3.md) | 74 | `declaration-track:7e280152f92d6058fa42d8b3f36d7968ff58ed961f97dec5aee99df46499d1a2` |
| 10 | `instance` | [subsingleton2Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/subsingleton2hom.md) | 78 | `declaration-track:fcd7024e779245afb29caa6f380378da533982803714e9fe8f9e72be70e94329` |
| 11 | `theorem` | [eq_of_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/eq-of-hom.md) | 82 | `result-track:fb22fe8012ec581c730f9802cb33913f288e55c36b23653e88e1ea3ff58630d2` |
| 12 | `instance` | [locallyDiscreteBicategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/locallydiscretebicategory.md) | 94 | `declaration-track:851dcf72d4ea580c8b4a7b2ff69b94d58d076bd3845ea696562359ffea07be4c` |
| 13 | `instance` | [locallyDiscreteBicategory.strict](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/locallydiscretebicategory-strict.md) | 102 | `declaration-track:e614c2064e7be7b2c8f7ba542f763e57d7b9e657b95e7fe24b1642c0d9637bd2` |
| 14 | `lemma` | [PrelaxFunctor.map₂_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/prelaxfunctor-map-eqtohom.md) | 114 | `result-track:68f89bf782ad3ac557d6a7f1b89efdd0c3fe66bf84d363dce4275ad3133b78f4` |
| 15 | `abbrev` | [IsLocallyDiscrete](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/islocallydiscrete.md) | 123 | `declaration-track:1d5582d3f9c9e1e64e4422cf50dacc22cf5e456a70f1ddd9ff3d05f21bba4124` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/instance.md) | 125 | `declaration-track:39d1412e0a6106bb293b3ac6e108b4b3617a0ba59362a9ddbb426a510406c530` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/instance-source-edition-5.md) | 128 | `declaration-track:cfdef6392ca0639504013f20536b4bf00d40d8c2aafffb341c492cfbc0a85ae6` |
| 18 | `def` | [toLoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/toloc.md) | 149 | `declaration-track:5884d7bd3a5e0ca599e3d913e6884ffdf1be281b8ca301264c5ba4cbdba81fcc` |
| 19 | `lemma` | [id_toLoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/id-toloc.md) | 153 | `result-track:4c7c0a1721716094823ee3c454ac4fbc82729c7121700814237e135d8d75ea71` |
| 20 | `lemma` | [comp_toLoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/comp-toloc.md) | 157 | `result-track:a68f021b0d541726765ea786222e8daf290c2b0cfe470074d362bc083a1cc707` |
| 21 | `lemma` | [CategoryTheory.LocallyDiscrete.eqToHom_toLoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/BicategoryLocallyDiscrete.lean/declarations/categorytheory-locallydiscrete-eqtohom-toloc.md) | 163 | `result-track:e47ae60e697b667d50c73e046cc6c68a420cc4bdf195e1681ce60bbc84ea5174` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1eea1005ce22e9c7c12c654e2b6199330b37c3bb6498b3416a4af34ba51d8a15 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variantdf00001cc539cf2d648b0cae6a0965fa9aa20cedb368139882078df2f3b35a81.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variantdf00001cc539cf2d648b0cae6a0965fa9aa20cedb368139882078df2f3b35a81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
