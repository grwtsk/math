# Verification target: Mayer Vietoris Square

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3302e424376100639903431669120916ca3655a0",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3302e424376100639903431669120916ca3655a0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Adjunctions` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Square` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Square` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Adjunction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Sheaf.isPullback_square_op_map_yoneda_presheafToSheaf_yoneda_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/sheaf-ispullback-square-op-map-yoneda-presheaftosheaf-yoneda-iff.md) | 62 | `result-track:1248fa0a6107e282ecb1adfe3bfdefd2a4177743df4095e27607c303a11e5797` |
| 2 | `structure` | [MayerVietorisSquare](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/mayervietorissquare.md) | 87 | `declaration-track:42120df589e3849b3bc10008ab3167945421e73d47d34772aa8120a05c1bd71b` |
| 3 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/mk.md) | 106 | `declaration-track:1c9f155c4ecc5753e9958b027928f2c3ccd28e545e35b49be8ca38b105d43af3` |
| 4 | `def` | [mk_of_isPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/mk-of-ispullback.md) | 119 | `declaration-track:57e9981f4578539263ed0485e755f2530783ab25b62244229f0abb01e9fdf0fa` |
| 5 | `lemma` | [isPushoutAddCommGrpFreeSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/ispushoutaddcommgrpfreesheaf.md) | 149 | `result-track:48a35a80f15048b49b0646bd61237a7bc9b1a0b196a0603b3d1459b432b1e9e6` |
| 6 | `def` | [SheafCondition](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/sheafcondition.md) | 159 | `declaration-track:0d17f5e5cd2c7fcaa878ec76b27d0e556199d67d21b1acf4613ceaaa2f293864` |
| 7 | `lemma` | [sheafCondition_iff_comp_coyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/sheafcondition-iff-comp-coyoneda.md) | 162 | `result-track:ef32676cfaea79a2689c54f37db5b91a102193e9523eb94888f084e784227942` |
| 8 | `abbrev` | [toPullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/topullbackobj.md) | 169 | `declaration-track:06f723198ea837e5c5c79b3f27179a472207c38343aac9dd79cefb1c5d3c35c4` |
| 9 | `lemma` | [sheafCondition_iff_bijective_toPullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/sheafcondition-iff-bijective-topullbackobj.md) | 173 | `result-track:1470c44e1117c10a9e2e9f5e75ae91dcdcc903ba5d50f9df3edea0cba240ad9f` |
| 10 | `lemma` | [bijective_toPullbackObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/bijective-topullbackobj.md) | 184 | `result-track:de05bc09f7cd9c2633fcd830c730329bb940bdf0732d9d091a4d22cee797cdd1` |
| 11 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/ext.md) | 187 | `result-track:a5f4564fdc8937e561e68a4042f0732e31a9a1cc6f2e5138dcbbffab82572fd5` |
| 12 | `def` | [glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/glue.md) | 199 | `declaration-track:761cb166eddcc9b13b3ded07a1c78aca23162328d7db15f3d21bfcfd848efc8c` |
| 13 | `lemma` | [map_f₂₄_op_glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/map-f-op-glue-source-edition-2.md) | 203 | `result-track:3068a44bad2645eab0d3a184e277d390d447c63dad467809412e14483ed5f756` |
| 14 | `lemma` | [map_f₃₄_op_glue](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/map-f-op-glue.md) | 207 | `result-track:0c3ac8aa81cd6365db22a9107b96adecc8e27ef34741893f0f21dcc86fa68d37` |
| 15 | `lemma` | [sheafCondition_of_sheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/sheafcondition-of-sheaf.md) | 212 | `result-track:5c5acbc29862b1da3040b44e0a05b3b9f7e16f6de4afb4a2e4f23456241e5173` |
| 16 | `def` | [shortComplex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/shortcomplex.md) | 229 | `declaration-track:e5cf5f2cc06363c0a82ae6ab41e7017a5dc1163782f780a5fa3f33e219bc3e44` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/instance-source-edition-2.md) | 246 | `declaration-track:6f2808d62061cf99013d221aa3a9a35e17fa687f8d039f54adf41bd16b73eb4a` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/instance.md) | 253 | `declaration-track:3acc8ad73546e626ba7c2f20a14011a1beff977b1d957f09a1d76a514c744263` |
| 19 | `lemma` | [shortComplex_exact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/shortcomplex-exact.md) | 257 | `result-track:c0f36c37c1861af8a3d584b6507c0bd94419dbc101da8352e49815309fe29ab7` |
| 20 | `lemma` | [shortComplex_shortExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MayerVietorisSquare.lean/declarations/shortcomplex-shortexact.md) | 261 | `result-track:f6b8e834e751caba47ec2f5f80047c77b244e09b415d85df279834f5f1f56342` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50478434722283b93085236df637844cfbfe179b1cf0d88598253dc2fa7005fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/MayerVietorisSquare/Variant4feca5f3115207eea686e2ca25686d0e58d9eb9cfef2bf4461b80127c2de56e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
