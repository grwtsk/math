# Verification target: Sequential Product Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de188f2d7bc1e11cbde59ef4c99f0171a296ca1b",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de188f2d7bc1e11cbde59ef4c99f0171a296ca1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean.json)

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
| 1 | `lemma` | [functorObj_eq_pos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functorobj-eq-pos.md) | 35 | `result-track:b0a8efb733ca4b7bce8a9b39dfc7586651588c29f81997ba0a4695c0500ec002` |
| 2 | `lemma` | [functorObj_eq_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functorobj-eq-neg.md) | 38 | `result-track:0fca8fe014f715319a94c97d52ff2407f302c801267e17009fa490c86686fbc8` |
| 3 | `def` | [functorObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functorobj.md) | 45 | `declaration-track:f2e21c833407a7c66e6385aa7d6f6680b1a964a588c473029872b5527179c4dd` |
| 4 | `def` | [functorObjProj_pos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functorobjproj-pos.md) | 49 | `declaration-track:6ee283f1591330c97afc0ca2fd5b8d80f14ffb6157ed82b8f621da572b914fa8` |
| 5 | `def` | [functorObjProj_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functorobjproj-neg.md) | 54 | `declaration-track:802a51115b60ebb9b50cb1e3b0e99799f7df8626dc61e1a2d5c97ce1165a3c69` |
| 6 | `def` | [functorMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functormap.md) | 59 | `declaration-track:6b32bb1fa17085f88f9827a6f001e83755ea7d2f0941a4d42fd1c03e17feda00` |
| 7 | `lemma` | [functorMap_commSq_succ](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functormap-commsq-succ.md) | 67 | `result-track:b4f5805088b98a51912de421f1cbe0fc282da75cae3e83d21f1ab334e610031d` |
| 8 | `lemma` | [functorMap_commSq_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functormap-commsq-aux.md) | 75 | `result-track:8b647910120f7406371144ac9b47136913aa0191c648de36cbddc2f72afd4fc1` |
| 9 | `lemma` | [functorMap_commSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functormap-commsq.md) | 95 | `result-track:aa9bb6675756818ce573ea466444d84cbe2de8e1b63bf242b08f061a42c07a33` |
| 10 | `def` | [cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/cone.md) | 126 | `declaration-track:bcf513beeab5b4f3bfd1dfdafbc6e80c0e906678160beb6355e6610f25b23406` |
| 11 | `lemma` | [cone_π_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/cone-app.md) | 142 | `result-track:a58e8771ce454ac5344937039bf3546af6fe5a43b54759b3a0ca4d4729aceea9` |
| 12 | `lemma` | [cone_π_app_comp_Pi_π_pos](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/cone-app-comp-pi-pos.md) | 149 | `result-track:37b44b155e46d456dee118205d6250ddf56d38cac0e1a05043b59f2182e97110` |
| 13 | `lemma` | [cone_π_app_comp_Pi_π_neg](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/cone-app-comp-pi-neg.md) | 157 | `result-track:504635ca3d80cf6f9db42c70d4fa2eaa3e4ea0ad95455051c9e7896d14b43734` |
| 14 | `def` | [isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/islimit.md) | 169 | `declaration-track:5ed23b35d30b25d76a4c97ee4663705df901b62dd48be97ee56befa6aecf7e90` |
| 15 | `lemma` | [functorMap_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SequentialProductPublic.lean/declarations/functormap-epi.md) | 223 | `result-track:c8eb7a1af94cbc1287e498c48ad48c29a611e1de48354196150fbc7f67cbc987` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f575f54051f7db26ec64891cde1f886ff1ad2ab4f4a537e58b7a1a7a3a6a339 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
