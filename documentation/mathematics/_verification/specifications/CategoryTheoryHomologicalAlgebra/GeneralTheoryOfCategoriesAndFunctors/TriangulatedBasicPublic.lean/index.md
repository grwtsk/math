# Verification target: Triangulated Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "09288978b7be53504d510d0c56592ec8c5e5f440",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `09288978b7be53504d510d0c56592ec8c5e5f440`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean.json)

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
| 1 | `structure` | [Triangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle.md) | 44 | `declaration-track:13521d056b22e416f2b46d0a979c8cf733376e2583bbc1cc9b045815b3033bca` |
| 2 | `def` | [Triangle.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-mk.md) | 64 | `declaration-track:62e025999d2fa608471609a7502841290302a4edde3a3d7e7e3fa95b400df232` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-8.md) | 78 | `declaration-track:8d5c3e8bd37ddf5eeedded14166e6b2c3aebd98eac501320427c0271cdb02acd` |
| 4 | `def` | [contractibleTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/contractibletriangle.md) | 84 | `declaration-track:68b060466c52b8ecb108c6e910411e3131ae3d2f0871d42ecf5067713589c240` |
| 5 | `structure` | [TriangleMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/trianglemorphism.md) | 104 | `declaration-track:27d8b6bfcb6779fc5f029d4ad79d8892b94c7bb74d5e0d66abec87fe5209d9db` |
| 6 | `def` | [triangleMorphismId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/trianglemorphismid.md) | 124 | `declaration-track:9b07d3c5aeddf55ab42049ef3ba3c2b7a0e8377323194331ea6f641b04d40c6d` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-10.md) | 129 | `declaration-track:a20877d80646319adebaca0376c5a92d7ffc5c9118f1ca46a5eb9e40c206e4a9` |
| 8 | `def` | [TriangleMorphism.comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/trianglemorphism-comp.md) | 137 | `declaration-track:e7e5ff0b29c4bf38e326ecd5b4f64a11c945f64eadaae36753982858c860f3ea` |
| 9 | `instance` | [triangleCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/trianglecategory.md) | 146 | `declaration-track:d147a299c1883597c3cf51e241e62d0fb0176d505e6ea967fa87d28ab568ccac` |
| 10 | `lemma` | [Triangle.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-hom-ext.md) | 152 | `result-track:127d553e185912b0f58e96ea6ff7f8e3dbf85096dc3c3f2514da4d7b82571066` |
| 11 | `lemma` | [id_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/id-hom-source-edition-2.md) | 156 | `result-track:7377823a061329c99ba059cfd6b651d2220913ef1dd32bb4eb7f0fec1d515a93` |
| 12 | `lemma` | [id_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/id-hom.md) | 157 | `result-track:427d1378d0a267a17479890fc17ab6921ad8c170e9a7b31fe508ad91084be830` |
| 13 | `lemma` | [id_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/id-hom-source-edition-3.md) | 158 | `result-track:9438ba7a7654efd9356ee380c7f620087baa2f0981b75832609241049a3c77dd` |
| 14 | `lemma` | [comp_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/comp-hom-source-edition-3.md) | 161 | `result-track:e901e3817bf12f1f80d7893d23a2732f09c16bbcaef405d66909aad30dbc5d22` |
| 15 | `lemma` | [comp_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/comp-hom-source-edition-2.md) | 164 | `result-track:8ab98c9c490514711a730720278a7b137c8f4071f730c904a0ffcb70b860d4a5` |
| 16 | `lemma` | [comp_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/comp-hom.md) | 167 | `result-track:2381d73da0c1eafea629ebaa375cd46c265e81dae71e63ef85893ba3e1863a95` |
| 17 | `def` | [Triangle.homMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-hommk.md) | 172 | `declaration-track:8d32570ebb33005be27e6e6a59dd118e24b124ee3f014cbdfb009e635201c7c6` |
| 18 | `def` | [Triangle.isoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-isomk.md) | 187 | `declaration-track:e80f3b9d570103a1e8dca86a09dd678455948c33f769c50722c248174507a362` |
| 19 | `lemma` | [Triangle.isIso_of_isIsos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-isiso-of-isisos.md) | 202 | `result-track:41044d591fce0a81adf52d9b86ec235bd6518c23dae319d098932f18b9881047` |
| 20 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom.md) | 209 | `result-track:348b77b134022ab669f3c3423e0a29f05feebcc5ba0068fc361db35853482699` |
| 21 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom-source-edition-3.md) | 212 | `result-track:c6abee6973a8e87cc50135bacdaedc2cb4c02d58b88c13c8c15c9568521275bc` |
| 22 | `lemma` | [_root_.CategoryTheory.Iso.hom_inv_id_triangle_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-hom-inv-id-triangle-hom-source-edition-2.md) | 215 | `result-track:3ede44f7e51b130e434509682bbd97d3c0be970aea790958f9dcfcd6bf71c88f` |
| 23 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom-source-edition-2.md) | 219 | `result-track:32261863ef8b63ebbc020a6a0ce4ed878036eafe2dcf9643a5e366173701aeab` |
| 24 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom-source-edition-3.md) | 222 | `result-track:bb70aadc4eb2e008450bfe6c8a02b6fc0ccdcc689c50fba31a4322d4ed14f6d6` |
| 25 | `lemma` | [_root_.CategoryTheory.Iso.inv_hom_id_triangle_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/root-categorytheory-iso-inv-hom-id-triangle-hom.md) | 225 | `result-track:02d1daea74a629a7a2b8a7ad1a5ef621c8c622673bb6ee64c7425238a15bdd14` |
| 26 | `lemma` | [Triangle.eqToHom_hom₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-eqtohom-hom-source-edition-3.md) | 228 | `result-track:ca7aba8ea9cdf6efafca8b75cb03043c7a69ef5441f27781cb9dfc0c60a18740` |
| 27 | `lemma` | [Triangle.eqToHom_hom₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-eqtohom-hom-source-edition-2.md) | 230 | `result-track:8ccd2c696344941fc440daffb5db27ceff3e1441f4234f497f8a346890ce1a96` |
| 28 | `lemma` | [Triangle.eqToHom_hom₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/triangle-eqtohom-hom.md) | 232 | `result-track:35889c02c5bffbfb86ec80ad84b12785ed5f07558c9feca2f94f90c11806a8e8` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-9.md) | 242 | `declaration-track:9016a4cd3f6ce29cd8ba659c032837ff619cb73abf82710d133bc7929fc6e931` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-14.md) | 249 | `declaration-track:f6e39c36e49956308bbe0e1b88c0431517917cc124b61ae37c1565921069f7e3` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-13.md) | 256 | `declaration-track:f68ff01444878f3a8f8278388a1c79b26147a05304db206382cebadbf5d0dcbc` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-3.md) | 263 | `declaration-track:239c0e278893e8d1647980172a0c4d2e1e6395eb9bcf3aa4153a29e5d8d8f529` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance.md) | 275 | `declaration-track:01e7f14db9e0a0c1867b26f3328719f4da6f284ea915a236205d5c016d57911f` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-6.md) | 285 | `declaration-track:4477e9e854a396502be578f32fedb84f9503102f84219329cf5f7f2613ddf6e1` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-5.md) | 298 | `declaration-track:3256e0dd5e5c08ae4bdb88665d166af25e85e6908b2694d4476855e1d321e228` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-2.md) | 309 | `declaration-track:154f3a9fc817881d8638bed1aa85ae7a4b48879128ae75fc79c17f93b14a544b` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-7.md) | 317 | `declaration-track:5da986c5ffc3df604fe5861b7bc0882e9237c9613fa90f2fc24d7c8bf72e7ccc` |
| 38 | `def` | [binaryBiproductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/binarybiproducttriangle.md) | 325 | `declaration-track:897ed36a65083250d1033b7287ba7158ad28c0c28b8f6fba7404484941300487` |
| 39 | `def` | [binaryProductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/binaryproducttriangle.md) | 331 | `declaration-track:0de015b525867be264318b51d7de4fa3fb058bbc4c77f8d87ad318a7a2e3f17d` |
| 40 | `def` | [binaryProductTriangleIsoBinaryBiproductTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/binaryproducttriangleisobinarybiproducttriangle.md) | 339 | `declaration-track:a101d40e2b1962ba5517bd9d42db7d24f6152f833bd87997b3c088ec2540b9c0` |
| 41 | `def` | [productTriangle](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle-source-edition-2.md) | 353 | `declaration-track:9c95c9f5617305de01e26679e6dba507cd9e5fa3d8ca454770c7644540bebe31` |
| 42 | `def` | [productTriangle.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle.md) | 361 | `declaration-track:75e788d71d2e2f2761977cef1fec52670ab8d381840b1694e7faefd002c12332` |
| 43 | `def` | [productTriangle.fan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle-fan.md) | 369 | `declaration-track:7152f298e441931bc3e2b81cddca3acc7002e04bfbbaa20c1d7e694e5a6e95db` |
| 44 | `def` | [productTriangle.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle-lift.md) | 374 | `declaration-track:76c5c7ed41e8c370de9dc09ed8c5b00eb2d39b2739637b60dc5ca5b635898661` |
| 45 | `def` | [productTriangle.isLimitFan](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle-islimitfan.md) | 387 | `declaration-track:28eb95ca969ad087aa6c84a82529842305715701d2bd7f010154a8fe9bcf6b96` |
| 46 | `lemma` | [productTriangle.zero₃₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/producttriangle-zero.md) | 395 | `result-track:f279e3c3e73873ea8e14fa24894dd5922cace5539b18f19f5012af6abb52af03` |
| 47 | `def` | [contractibleTriangleFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/contractibletrianglefunctor.md) | 413 | `declaration-track:98cac5c7ebd3ae749de9611333ca1e8adf288c5e6a1cc8b990a5589ea2274675` |
| 48 | `def` | [π₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/anonymous-source-edition-3.md) | 424 | `declaration-track:b79083a6529ccaac5c3e64a0903251768ad87331cb7bcae2f48f6f68dd342310` |
| 49 | `def` | [π₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/anonymous-source-edition-2.md) | 430 | `declaration-track:aae4611965efb39195c536604db238146c78889a0e4ec459dc02f9c05fcae757` |
| 50 | `def` | [π₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/anonymous.md) | 436 | `declaration-track:0e0bac3295d41bc05de07ab4f2fa917740a2768a64e9b0f42a43db15c4dd1417` |
| 51 | `def` | [π₁Toπ₂](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/to-source-edition-2.md) | 443 | `declaration-track:1fabb68b4da27cd0b57839a81e142a01a59e421407fe838970a4c4061629b6d6` |
| 52 | `def` | [π₂Toπ₃](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/to.md) | 449 | `declaration-track:17de79c67474e7e200360c1049e2e76bcca847736de2e4bf0e87e6b05a70ca7d` |
| 53 | `def` | [π₃Toπ₁](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/to-source-edition-3.md) | 456 | `declaration-track:4fffbc417aae8daf19be60bd07e8c22540a65924780db0839e0fa4aa5f4556ab` |
| 54 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-12.md) | 463 | `declaration-track:f517f027d963ef3d01ad072953dfd0ec3e7f7c8a0e48a1fdbe3bdf9933cb52c9` |
| 55 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-4.md) | 464 | `declaration-track:2f4840949f7f12aeff672daac1f382aac5d4b3e25dea0844ffcf99e605093534` |
| 56 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/instance-source-edition-11.md) | 465 | `declaration-track:d638ed104ac2a030b4e2ad7ca083f0aab7757d00ddfd3031d5b7c6d742c3d4b8` |
| 57 | `def` | [functorMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/functormk.md) | 477 | `declaration-track:c93d1c83dda1f353ffc3da50adfdb172efc3be3173f379df372703cfd6859c3c` |
| 58 | `def` | [functorHomMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/functorhommk.md) | 489 | `declaration-track:425fc436201ecbeb0cb2313d2fd5bae5b8e5b15b7c6b0e32cc86f9de58b098ff` |
| 59 | `def` | [functorHomMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/functorhommk-source-edition-2.md) | 511 | `declaration-track:c4299f7e61c4f6d8be6853222383f3f5a1d1457e5fe0ce33aa67a032b3be2ebf` |
| 60 | `def` | [functorIsoMk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/functorisomk-source-edition-2.md) | 528 | `declaration-track:f712f7f58fd1a958b67df4393c1fa22f2967c1b7a69ee1418e54ea3765895960` |
| 61 | `def` | [functorIsoMk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TriangulatedBasicPublic.lean/declarations/functorisomk.md) | 548 | `declaration-track:8a92d4dcb91b03c269f534748eb68795aabee14938c45d4a8de5a3cbaff6802d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=900c92696d8ef05b11c51eb098f2db722da245e2fcfbf3bf7c3039e565c6eebf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean","GRWTSK/_verification/specifications/Geometry/ClassicalGeometry/EuclideanGeometry/Basic/Variantc6e5ae14cf558f0540fafa061abc999cd65f4cab48f01ffe2e1585dd31b26aaf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
