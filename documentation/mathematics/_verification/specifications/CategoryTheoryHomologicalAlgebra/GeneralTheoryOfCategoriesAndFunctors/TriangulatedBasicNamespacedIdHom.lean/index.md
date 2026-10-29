# Verification target: Triangulated Basic Namespaced Id Hom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a9a241743823006fe0b6e753b2705fa9aa9cb83",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a9a241743823006fe0b6e753b2705fa9aa9cb83`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryBiproducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle.md) | 47 | `declaration-track:e69cce7d9273dccfca492805a15a7f5dd474e18dcdf18f738277f99c34257a5e` |
| 2 | `def` | [Triangle.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-mk.md) | 67 | `declaration-track:2e97602ff99a64cd9126cb4a93c50b60e69c1e1120d480394bb201e6af250c75` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/instance-source-edition-5.md) | 81 | `declaration-track:f6657856032dc5695cf2a2c9676b561c027195484a03868f26c8a6fbe0086479` |
| 4 | `def` | [contractibleTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/contractibletriangle.md) | 87 | `declaration-track:fda8468f015965b9250026f947dbd5bd122c5e3a0764f10b3fd7fb4d6b3a0033` |
| 5 | `structure` | [TriangleMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/trianglemorphism.md) | 107 | `declaration-track:c0d4ec96d1f7a6c01862a79eec1c8064481e0ede9bc46776c93f78074c124f05` |
| 6 | `def` | [triangleMorphismId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/trianglemorphismid.md) | 127 | `declaration-track:2c5d3254c3a6627f63d9afbccd46deb4a8ab4f076dab462f88cf0093e7cf98d1` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/instance-source-edition-4.md) | 132 | `declaration-track:cd3ff32baf76aa2c6efdb9385a8fa7bb673a9279b35a7d39d2862f545bed2488` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/trianglemorphism-comp.md) | 140 | `declaration-track:66fa8919068cacac76a554be7c04935577d962ddd6799540473956ee005e5e88` |
| 9 | `instance` | [triangleCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/trianglecategory.md) | 149 | `declaration-track:e888c3f15ea4a9b292bc05c811ba6c627880d4b300e0897f2173df117850ce9b` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-hom-ext.md) | 155 | `result-track:db06e8ff6c236bae32f0f5a8c3fefb4e8dd6bc53a8ce8d6e197d182d5fc2997c` |
| 11 | `lemma` | [id_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/id-hom.md) | 160 | `result-track:3740a9dc7856e7f7368f176bf86e64a28a0bc1e417c649f6f03a8770774d3c12` |
| 12 | `lemma` | [id_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/id-hom-source-edition-2.md) | 162 | `result-track:3e457dafc5d104365010fa1398e72973a48f0344b411145e0c64d099f5711aee` |
| 13 | `lemma` | [id_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/id-hom-source-edition-3.md) | 164 | `result-track:8f7e9e378ee2da62f04630515fe2e75be88e8d2e2f6f386aaa82c435e46f53a1` |
| 14 | `lemma` | [comp_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/comp-hom.md) | 167 | `result-track:363346941f00f6c7a8f791ce3459d24b6d06e72f528b967fcf60929bbad587a0` |
| 15 | `lemma` | [comp_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/comp-hom-source-edition-2.md) | 170 | `result-track:44ebd278fd164189b70f74c29d61899b4edc2ce1e09e509bf12e89992538d381` |
| 16 | `lemma` | [comp_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/comp-hom-source-edition-3.md) | 173 | `result-track:7d31f3cb8c00fa23f1a2301d561f86c53d3fad96946a21e9018cd79575aa4e33` |
| 17 | `def` | [Triangle.homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-hommk.md) | 178 | `declaration-track:f40bdebaaca270c138519f45f2a8dc01924b24970dd0a0842ae8409faf53f887` |
| 18 | `def` | [Triangle.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-isomk.md) | 193 | `declaration-track:5d70516444c99b37fc7d0efca8e5c5c5dcfa07816866eb311e00e4d18ed4e54f` |
| 19 | `lemma` | [Triangle.isIso_of_isIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-isiso-of-isisos.md) | 208 | `result-track:b4c498e6d8e57be3452bf2c6997604dd2d42d7791af0872f5abe6f21205309be` |
| 20 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian.md) | 215 | `result-track:4ce49775bdf549951c5319278aa62fe2544bbf412eacd68443eaa5c19aacf09a` |
| 21 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian-source-edition-4.md) | 218 | `result-track:d0ad2bd117e9d803d98e0b8c972e293a2a7e27e139d6c25de6f4c691e277001e` |
| 22 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian-source-edition-6.md) | 221 | `result-track:f861a532a6e0cf20084a645e27e659b150a1e9780b96d37bae10524b4f7ce89d` |
| 23 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian-source-edition-2.md) | 225 | `result-track:8acca373e16e029ffbbf624780af49b57c3828755e38e3477822040ab1c6023a` |
| 24 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian-source-edition-3.md) | 228 | `result-track:b4b39f4faef6c8a050ebf9ff4049f44b468732de4f3f9b57168e1a3f5a35b686` |
| 25 | `lemma` | [Triangulated Basic Namespaced Id Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/root-grwtsk-geometry-classicalgeometry-euclideangeometry-triangle-varian-source-edition-5.md) | 231 | `result-track:d8abfac7ab4969fe0da82fd729ea7bb89d85d4fddec477b715f9c6df2c110bca` |
| 26 | `lemma` | [Triangle.eqToHom_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-eqtohom-hom.md) | 234 | `result-track:0133ee6236b8f373f9177a461642658fe2fc7b96676f1c218dd3ede33822dacf` |
| 27 | `lemma` | [Triangle.eqToHom_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-eqtohom-hom-source-edition-3.md) | 236 | `result-track:f5c74f16a4b941547df56a239a6acd5300854464e08caa5c5864dc2cc17ad6de` |
| 28 | `lemma` | [Triangle.eqToHom_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/triangle-eqtohom-hom-source-edition-2.md) | 238 | `result-track:284c8cb2ddae0a27ddf80ca0ce944cf6f92c79d40071ad95701d22fcaf4c96bc` |
| 29 | `def` | [binaryBiproductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/binarybiproducttriangle.md) | 243 | `declaration-track:412c70898aeff6627a635e954a6bacc50d3fbc142964d29370f45d5fe87eb3b1` |
| 30 | `def` | [binaryProductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/binaryproducttriangle.md) | 249 | `declaration-track:cadf991414a4e0fb38bdf44680ed2cc4a93981d4dea9279a74768d785d455803` |
| 31 | `def` | [binaryProductTriangleIsoBinaryBiproductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/binaryproducttriangleisobinarybiproducttriangle.md) | 256 | `declaration-track:8a2e3944ea4279b1036ae11c1d3dd8f49ec33f9470b2ee13b410ae2542b31ee2` |
| 32 | `def` | [productTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle.md) | 270 | `declaration-track:1c03b5e651358fb89a7d98302e576d0b0ca891c3b8d613efa3504da2a76afce4` |
| 33 | `def` | [productTriangle.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle-source-edition-2.md) | 277 | `declaration-track:33cb02247ed998891a6078623e5f695d0125cc6a221027545b05ab970c0cbfec` |
| 34 | `def` | [productTriangle.fan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle-fan.md) | 289 | `declaration-track:79f6ff0dd857135ddcd1d0f19c3ac8d3c2394204547c07f0228a942845ccb9ef` |
| 35 | `def` | [productTriangle.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle-lift.md) | 293 | `declaration-track:afdb49c36d560a1dc2c19ab81df322e901f241b498570447001f72b5d217cd9a` |
| 36 | `def` | [productTriangle.isLimitFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle-islimitfan.md) | 305 | `declaration-track:ff0d027de79717de9708812e76c2aee076fa0f4c02c66e56e96881303b61250a` |
| 37 | `lemma` | [productTriangle.zero₃₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/producttriangle-zero.md) | 312 | `result-track:64f69da4cc564e4806f3b627e7b7306ac4cd3c7b4cc219630f97e2e546f84de9` |
| 38 | `def` | [contractibleTriangleFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/contractibletrianglefunctor.md) | 331 | `declaration-track:85167db5d47ecaa439ec0f95e359f3bc6bb0331677ab72ea96fe3c089a8cb9ee` |
| 39 | `def` | [π₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/anonymous.md) | 342 | `declaration-track:1f5748efba0b37d3619031c0ed9b564d8e3c14c0b76d1d4a01da74cd1d394463` |
| 40 | `def` | [π₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/anonymous-source-edition-2.md) | 348 | `declaration-track:2b38d0be260c084e2ece0d2acaa0c1b974f10cc72150c1d77787473e3e14eade` |
| 41 | `def` | [π₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/anonymous-source-edition-3.md) | 354 | `declaration-track:49fc55653e196bdb6f4a08bc12fabed186fb6c2fd1d1774fd365d220217970a3` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/instance.md) | 362 | `declaration-track:5b11e72cef4f84ce89368eb81bc15c0254d7f5adb5525ca857625fb478aff7e1` |
| 43 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/instance-source-edition-2.md) | 363 | `declaration-track:6289016cfa3c91956c005a759541f08e1fa0f66f453fef97b2e26409f52347b4` |
| 44 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicNamespacedIdHom.lean/declarations/instance-source-edition-3.md) | 364 | `declaration-track:9175ec74290e9beec2cb1e5f7b3c5ff20bdf46368eb9bea77b9147149acde142` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e76e80de19c745db5bdd2dd1a90b3e496bfe28c69895ed3cdcd78ac0817bff58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantef3e4661e61cd873db6265de24a3670a9dba64ce59b23464e21a145464b0968f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
