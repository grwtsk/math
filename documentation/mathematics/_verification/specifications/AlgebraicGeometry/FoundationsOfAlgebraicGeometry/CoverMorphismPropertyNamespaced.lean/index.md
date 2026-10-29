# Verification target: Cover Morphism Property Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "714c36ff47e5a20cde528e3faa64725d413221d5",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `714c36ff47e5a20cde528e3faa64725d413221d5`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.OpenImmersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover.md) | 58 | `declaration-track:593c2546195f4b68f217fc69d2ccc8af3b70868f16c1f928345655b5de4bb187` |
| 2 | `theorem` | [Cover.iUnion_range](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-iunion-range.md) | 77 | `result-track:975bfeedad30be67255e79ab9adbb9eac60c49993b731aaa3f785c474cba5b45` |
| 3 | `lemma` | [Cover.exists_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-exists-eq.md) | 84 | `result-track:4136833787ae80799e3c3912c00616f1029bb7fcd105948cf7475740bd3e198e` |
| 4 | `instance` | [Cover.nonempty_of_nonempty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-nonempty-of-nonempty.md) | 87 | `declaration-track:9929628105d55c1d7ceb99436adea2dad5910507852b526d2e7cdc961c53476c` |
| 5 | `def` | [Cover.mkOfCovers](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-mkofcovers.md) | 93 | `declaration-track:b6e5631c87ab611b778320996154675eea9fffd59d48516c5925da6299de29ee` |
| 6 | `def` | [Cover.changeProp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-changeprop.md) | 104 | `declaration-track:f4654d81541fa0d23eee8874b11e2f32d6636bfb51dc4a5c78649a6699199d28` |
| 7 | `def` | [Cover.bind](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-bind.md) | 116 | `declaration-track:c6497852d03cc65b5536ef5e705bc95c39936ae8e8d6e3fc16ec866d75ecf4cf` |
| 8 | `def` | [coverOfIsIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/coverofisiso.md) | 133 | `declaration-track:a9655cd20d0e6c8d9e644af3c45b6956d1d10a0edc4836f689a666e4cf7d7f39` |
| 9 | `def` | [Cover.copy](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-copy.md) | 149 | `declaration-track:f8da4a5106783889f1d0a3d4ce648838532f7d4ba6889b37ef8ff43a9d7d762c` |
| 10 | `def` | [Cover.pushforwardIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-pushforwardiso.md) | 166 | `declaration-track:40aaf93451cf1d3a3431b0165be512e3605ac5e834d737a4c46d687463700b87` |
| 11 | `def` | [Cover.add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-add.md) | 175 | `declaration-track:0129d922dad80fa3eed5ef755d5160b4705203533b5fe8431920745b1cfc3015` |
| 12 | `class` | [IsJointlySurjectivePreserving](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/isjointlysurjectivepreserving.md) | 195 | `declaration-track:e09cd6d84bff6a947920defe5296449387ef4b285628cc8f8df84bd180320416` |
| 13 | `lemma` | [IsJointlySurjectivePreserving.exists_preimage_snd_triplet_of_prop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/isjointlysurjectivepreserving-exists-preimage-snd-triplet-of-prop.md) | 200 | `result-track:e53425c702e11d0ac7cdb9ecaefd9068c3300987bcc08cf918825667a3808737` |
| 14 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/instance.md) | 210 | `declaration-track:6a8ad0b99d170cd4c9f35eba3f28b0b97395d01881b0fa04c5ec042e1b08cb0e` |
| 15 | `def` | [Cover.pullbackCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-pullbackcover-source-edition-2.md) | 229 | `declaration-track:b0b96a881ac22e01f16fbbdbc22a106bc63e213f27f1cb98d4faa3480cb99d09` |
| 16 | `def` | [Cover.pullbackHom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-pullbackhom.md) | 242 | `declaration-track:8174fac2496f4ab691d271f4eafa69e55f9f266cc07c7d84871197c444cfe577` |
| 17 | `lemma` | [Cover.pullbackHom_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-pullbackhom-map.md) | 249 | `result-track:f9046c9505c2e8a354ec4597fea0aa535b1d1889baeb1bb3bb242773fa5a7fe5` |
| 18 | `def` | [Cover.pullbackCover'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-pullbackcover.md) | 257 | `declaration-track:2d69ed9d55a8040e1a519469feddcd0bd1cc07807ba1ca3faae73c732f68b62e` |
| 19 | `def` | [Cover.inter](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-inter.md) | 272 | `declaration-track:1fb7def766012626f38689e274244389d01bf22f1a50eb8fce6002e07d21a33a` |
| 20 | `structure` | [AffineCover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/affinecover.md) | 298 | `declaration-track:4ea9ab0f962faf9e4c69ebca87700e1f9e047a93b819a1913092f51e23ca5f20` |
| 21 | `def` | [AffineCover.cover](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/affinecover-cover.md) | 314 | `declaration-track:a5fa185e2d8e1175dc663afebf6c840216966d5f9c56064a3a2e06ab1ff6c842` |
| 22 | `structure` | [Cover.Hom](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-hom.md) | 330 | `declaration-track:f8712930f04df71158a29a62f6b0b48c57745bf9c0eb0b337888d71ed656aed0` |
| 23 | `def` | [Cover.Hom.id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-hom-id.md) | 341 | `declaration-track:49feb9421d567d394d481ef4c28e735743ebcf94f3802ccc70aa931a6f76bdfa` |
| 24 | `def` | [Cover.Hom.comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-hom-comp.md) | 347 | `declaration-track:2d391e146d575d3bc5cfe6d89200364f5e7c5b549d0e1bf7835c7039b18718ec` |
| 25 | `instance` | [Cover.category](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-category.md) | 353 | `declaration-track:54f9b3c49f176da6239ca230106390483fd70494ec1837f6cdc77222350515f7` |
| 26 | `lemma` | [Cover.id_idx_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-id-idx-apply.md) | 361 | `result-track:5ffc0e7b09e1063f6c4d0e130c815db111541b461058efe0726498898bedf506` |
| 27 | `lemma` | [Cover.id_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-id-app.md) | 365 | `result-track:02fb7d275acb46406d359da9d7a4ef1a53c0b8171d0db3c3d93690fbcddddc98` |
| 28 | `lemma` | [Cover.comp_idx_apply](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-comp-idx-apply.md) | 369 | `result-track:397902605ecc94aea54dd7c343225ee15893ae90faa5a865d4ee8054a2c11e6b` |
| 29 | `lemma` | [Cover.comp_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/CoverMorphismPropertyNamespaced.lean/declarations/cover-comp-app.md) | 374 | `result-track:52e61e60e1fafc5b347c973a67515774c6b82763c82cb58b5d75e5716ac05ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dddd2dad0553bc9e88240cd47dcf9078b39640f4646e275bd1df84554263ef0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/MorphismProperty/Variantcc78cd7e34cb99de7c3d4e6c7576eed60ec008bbbc2fb5aabc00d594d1cfec47.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
