# Verification target: Sigma Basic Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "128ed4c2e8ffbb1bb686c00010cc18236ee93685",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdb13168c4b5d59c0bae32ed83b040f89925fddf77659ab2eb2f91bee0a0a7f3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `128ed4c2e8ffbb1bb686c00010cc18236ee93685`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdb13168c4b5d59c0bae32ed83b040f89925fddf77659ab2eb2f91bee0a0a7f3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdb13168c4b5d59c0bae32ed83b040f89925fddf77659ab2eb2f91bee0a0a7f3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Whiskering` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.NatIso` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SigmaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/sigmahom.md) | 30 | `declaration-track:566d580c4cfb5d1ad46b58cd1c0e48644f26ac960f62809e47d48da440c3b34f` |
| 2 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/id.md) | 37 | `declaration-track:353e51e3283ea977e6e3888866656b1974c81425bb9c29563e52007142dc0b6e` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/instance.md) | 42 | `declaration-track:0124cdc61850bb8d92e659a6232a748baef77bc5217f5dbbc96df2ba9b1784b4` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/comp.md) | 46 | `declaration-track:c387d5e17fa1d6c966a9a2f55117b2d86404461745d619c6ae797987d1e4b0c5` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/instance-source-edition-4.md) | 51 | `declaration-track:ed803eab6b8519cda1f94fb7411efd5a20f9d9be849c8dd7e0ee57fc81fdc436` |
| 6 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/comp-def.md) | 57 | `result-track:abf2587d6ddaf0937e9db27851b71c0484293d80a7ee9eec5b837f5f0648212b` |
| 7 | `lemma` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/assoc.md) | 61 | `result-track:e573df00f56cd0997fb3336162794b8f70dda5cdc9ed2826223ae91b8894e14d` |
| 8 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/id-comp.md) | 66 | `result-track:5f8d5a67bf88e68b0c228d8508a5d676eca4cdfaaa581b77835650049abc2e88` |
| 9 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/comp-id.md) | 70 | `result-track:9fa92e2ca6d2a818a16770a926d6e799f3b172ed364caa7afcf7d6671ea8c13a` |
| 10 | `instance` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/sigma.md) | 76 | `declaration-track:0f37fdb0aa8945571bc9286c3f5e09feb3092304d09672395ae463084f6f9440` |
| 11 | `def` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/incl.md) | 84 | `declaration-track:4589403d3c889d308b01c6278e679680955d7918859924317e551c2e6a6caab1` |
| 12 | `lemma` | [incl_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/incl-obj.md) | 90 | `result-track:0b3687bd66772a401de0f5e3010c674fd5e1b0d77c952a749dde3a20c980c569` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:2e24a0a8514d954b12c6d3c89f61b7c943272d01bea4635aaff7725a8ca1f705` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/instance-source-edition-3.md) | 98 | `declaration-track:aabb7204df86af470e9caaae6a6a0bf3525e21f51f3b919e0a5cf8ef0cd4d6d2` |
| 15 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/nattrans.md) | 110 | `declaration-track:49eed9c1319a5a92d6b9166c857323c7cbcd1adf699af17371b4176ba056b76d` |
| 16 | `lemma` | [natTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/nattrans-app.md) | 118 | `result-track:59ad36ecd49edd0d66281ddbea073158491c009843e1120142b2f42ddf90778e` |
| 17 | `def` | [descMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/descmap.md) | 124 | `declaration-track:1eb55b545367cdb360563c7992d672b8829ce2a5fae6b31b121f90e2fa2d97a8` |
| 18 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/desc.md) | 138 | `declaration-track:15927004360ddeb14ce87c7fb97885eb2338dcaa9fe738e1607fcc65f5fd7c23` |
| 19 | `lemma` | [desc_map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/desc-map-mk.md) | 150 | `result-track:93a8226535da24ae93b165eb017939e1967bd77ad2bd81bd691562f5947b59f1` |
| 20 | `def` | [inclDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/incldesc.md) | 158 | `declaration-track:5e77cc9a68f2bcff7106efac8334775f352888b46d9961add19a998ab6ef7f09` |
| 21 | `lemma` | [inclDesc_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/incldesc-hom-app.md) | 163 | `result-track:89af50509238036113142c327b6996470056bbb872bb2803bc4a4d69163de0d8` |
| 22 | `lemma` | [inclDesc_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/incldesc-inv-app.md) | 168 | `result-track:6a40cd9dc937c7db91612e4e8c432f441dea090124341e962abf528b12f5c835` |
| 23 | `def` | [descUniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/descuniq.md) | 175 | `declaration-track:d08a196f0f1a540f91a7a5e0029e2bcc3e8181bc9e38a4f8b3f02a0f6b55a1a5` |
| 24 | `lemma` | [descUniq_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/descuniq-hom-app.md) | 182 | `result-track:ec4897b2f49ab703c36119d5110c28fbd802d3baaf8bc062dd102d6920a1e2a5` |
| 25 | `lemma` | [descUniq_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/descuniq-inv-app.md) | 188 | `result-track:914d92c9d30eedac224cc03ee1e64fd8ab95b51069674f7cfd1a73dce9c50b59` |
| 26 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/natiso.md) | 197 | `declaration-track:90770e7dce3a9ad09f51363b9753d7355775710158b72c6c3715fcb2d38e544d` |
| 27 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/map.md) | 209 | `declaration-track:7aaf04986930dc3703747d5b3647fac37f0b867a53b4b7a8b1a29f1197af7328` |
| 28 | `lemma` | [map_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/map-obj.md) | 214 | `result-track:465b856e83981c2d24afb4f8805ca1be5306eb45cf0100a92aaa9c8d1fa38132` |
| 29 | `lemma` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/map-map.md) | 219 | `result-track:a0910d6c97fac73cf8680dbc8ba0418c3b2d66d861d5da7230b87407c5a17b5a` |
| 30 | `def` | [inclCompMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/inclcompmap.md) | 227 | `declaration-track:c0bc40a74c4ae541bf23dfbb31da27a87461a7e22108bba3990287969a5c9660` |
| 31 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/mapid.md) | 235 | `declaration-track:ce2d9c54183d58af127be191d1aea99e29722a874dc808573939a8456055d76b` |
| 32 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/mapcomp.md) | 245 | `declaration-track:3cb2be88ba06108a8560e2579a8215d883d1613f4d0947c4d0941d24b8c516d0` |
| 33 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/sigma-source-edition-3.md) | 260 | `declaration-track:959581fc790180e03ab9239621bd8150509fe88ae30f58cd81931c0c4aa3b55e` |
| 34 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasicAligned.lean/declarations/sigma-source-edition-2.md) | 274 | `declaration-track:243eb1bb394e041129faaec5d471a4e33ce791e9880e4f4c272cf3a9aa24863e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ab5847d72f34846d2803f779f78244a8aaf29b83a62295128d1e428b4c499d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdb13168c4b5d59c0bae32ed83b040f89925fddf77659ab2eb2f91bee0a0a7f3f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantdb13168c4b5d59c0bae32ed83b040f89925fddf77659ab2eb2f91bee0a0a7f3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
