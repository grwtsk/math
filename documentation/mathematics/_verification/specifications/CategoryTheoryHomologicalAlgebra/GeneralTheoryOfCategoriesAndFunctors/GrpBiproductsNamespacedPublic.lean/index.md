# Verification target: Grp Biproducts Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a73f3ac1578abccd5187399e785393d9fcdf3699",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant166910ecc316e7eda828c0c309380d686c482b2d98398131a23e5489bb806161.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a73f3ac1578abccd5187399e785393d9fcdf3699`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant166910ecc316e7eda828c0c309380d686c482b2d98398131a23e5489bb806161.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant166910ecc316e7eda828c0c309380d686c482b2d98398131a23e5489bb806161.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 35 | `declaration-track:533128e92178edbd385b1a37c086040ce74628e09e7037e89a0117dc8c585f5e` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/instance.md) | 38 | `declaration-track:25239a13a05c68e31906e06c0099a31492d6dab6e5c7e96d7b348c264642e1c3` |
| 3 | `def` | [binaryProductLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/binaryproductlimitcone.md) | 47 | `declaration-track:e2d4519dea8aef1c8ddd722611c34b9e95b1087e8e7c21220e6dedc8588001d0` |
| 4 | `theorem` | [binaryProductLimitCone_cone_π_app_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/binaryproductlimitcone-cone-app-left.md) | 53 | `result-track:a46188c25b8264afa86e8f4fe65aa9a86bc7e271c3cfc6eb60ccd93295f22e76` |
| 5 | `theorem` | [binaryProductLimitCone_cone_π_app_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/binaryproductlimitcone-cone-app-right.md) | 58 | `result-track:f5abeecfdb52ca76809dbe33a163ff9e87b570fb82d4b8cb9553232e7271aeb4` |
| 6 | `def` | [biprodIsoProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biprodisoprod.md) | 65 | `declaration-track:fbbb6fd6304c24e75d517c5c87fe8c13f6c7b1a52697a64729779050fc5f51d8` |
| 7 | `theorem` | [biprodIsoProd_inv_comp_fst](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biprodisoprod-inv-comp-fst.md) | 70 | `result-track:18932039178bd70a3e03c16c5bd91f14d68c32a4356141d5bcae0d3247814a57` |
| 8 | `theorem` | [biprodIsoProd_inv_comp_snd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biprodisoprod-inv-comp-snd.md) | 75 | `result-track:de41a46f4df4ead1947a004ac44eafe360f6ae223bf790faa05544d3e3334724` |
| 9 | `lemma` | [biprodIsoProd_inv_comp_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biprodisoprod-inv-comp-desc.md) | 80 | `result-track:1f376a5ecdc9923237fb260a62f2564ca8ef1b26054b31beb0737a6faf319502` |
| 10 | `def` | [lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/lift.md) | 94 | `declaration-track:21daa5c6bb691de7f47b282db175aa624d4030ddf0940bcbef17164e9b79befc` |
| 11 | `def` | [productLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/productlimitcone.md) | 108 | `declaration-track:02db7e39483e997fc8b02b57f46f80c3e22fa80c37e38e5dae39a84efb901166` |
| 12 | `def` | [biproductIsoPi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biproductisopi.md) | 128 | `declaration-track:f017cbdd322885247314a181b991ae1388d0c6ee6b6c7a1a8f2f245346b7aaae` |
| 13 | `theorem` | [biproductIsoPi_inv_comp_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GrpBiproductsNamespacedPublic.lean/declarations/biproductisopi-inv-comp.md) | 133 | `result-track:929f7b0d7740cb3236ac17136583d7611c2b5fbd2fd73d7823fdf48614b8708b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59d6ece466e26b17e63bac68b77d8aee7e57f9eab5694b484006af4b96b98800 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant166910ecc316e7eda828c0c309380d686c482b2d98398131a23e5489bb806161.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant166910ecc316e7eda828c0c309380d686c482b2d98398131a23e5489bb806161.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
