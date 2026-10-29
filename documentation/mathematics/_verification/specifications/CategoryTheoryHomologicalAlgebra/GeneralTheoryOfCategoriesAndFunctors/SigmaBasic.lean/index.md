# Verification target: Sigma Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22116197c9977ddbc6a2ec8e1ffa519428f792ca",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22116197c9977ddbc6a2ec8e1ffa519428f792ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean.json)

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
| 1 | `inductive` | [SigmaHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/sigmahom.md) | 28 | `declaration-track:9d493c94231abf23f2fcd6148718b8c1cc14d1dbe6d139cec76ebddfc2f0f56b` |
| 2 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/id.md) | 34 | `declaration-track:a58e7a00b49022938a6c9329d32b339f184569236c02cf2ac6bf236f62f94d06` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/instance-source-edition-4.md) | 38 | `declaration-track:dbbd3bbb3ff8b1200925c58061a5a63e5718510737033453c14549b5a4fb10ad` |
| 4 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/comp.md) | 42 | `declaration-track:c78b847cf92a848440961cb70717075864254c753953f732b062b0ff386f1023` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:888b37868e9f18e8d51076b0a76c5c9298da38580e004769a3332666b6fe58cb` |
| 6 | `lemma` | [comp_def](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/comp-def.md) | 52 | `result-track:b0a1197a1a1dde35c9e911312b46fd29f7bdf4ea90feeb5ff0f2b8fad331ac1d` |
| 7 | `lemma` | [assoc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/assoc.md) | 55 | `result-track:5702c605d402f328f3d6a95c5b5d895aefbd01cb5c3dfead9b89b197bb54304f` |
| 8 | `lemma` | [id_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/id-comp.md) | 58 | `result-track:956bb7250951fa054a145a48b0e8c1c2609280be198800c262d7e9648803ebd3` |
| 9 | `lemma` | [comp_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/comp-id.md) | 61 | `result-track:2c68183e974df8eab7a2ac1d4cec18a9336e7e42f3fedd9ae84a7f4920fb99ee` |
| 10 | `instance` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/sigma.md) | 66 | `declaration-track:a223dcdb9ba95239e097e520ccb275fc7b5de04eb70076900d5fafa63937a81c` |
| 11 | `def` | [incl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/incl.md) | 73 | `declaration-track:446ca1c9e1e11fd4650709c2c213130acc1034e42bd657717db2aefa78bef770` |
| 12 | `lemma` | [incl_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/incl-obj.md) | 78 | `result-track:c801edbd03a3664265c232e056b2bb72f1b13cd259842a012daa2ef516e138b1` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/instance-source-edition-3.md) | 81 | `declaration-track:d5db9cca0c08498c9ec93149c195b3cffdafeb7ac75d07fdcf31a7ef16e78bbb` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/instance.md) | 84 | `declaration-track:73f539c6c18ec2aa981deb620e398b8fc8f51194554133a78debeea9374c0c21` |
| 15 | `def` | [natTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/nattrans.md) | 95 | `declaration-track:a5b9710f9b6b1268fa4fc57fdfae4b9b9118a00887a0e92b35c7b6ce917a14a2` |
| 16 | `lemma` | [natTrans_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/nattrans-app.md) | 102 | `result-track:0a24b408d266c5b9713b5ac011e6f67d233e78f38b6f279b64f32c533765e681` |
| 17 | `def` | [descMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/descmap.md) | 107 | `declaration-track:adbe24abfedb54848e4b8a0149f2d83764de5122ee6e4b7adfabb297e64450a1` |
| 18 | `def` | [desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/desc.md) | 120 | `declaration-track:8561cf1b6ad690cec0aff6b046b6bcbeb98d53b88f51ef5fd83eb19ac3d53659` |
| 19 | `lemma` | [desc_map_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/desc-map-mk.md) | 131 | `result-track:e319efb30fd42cc08e0374d1814cd94c17a3bfeb3a5fabd7667d5c526dcbef92` |
| 20 | `def` | [inclDesc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/incldesc.md) | 138 | `declaration-track:53b2066af94651f472e3f1b84b3b62c1ce34fc713f50a2ae5c539d03c7f134d4` |
| 21 | `lemma` | [inclDesc_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/incldesc-hom-app.md) | 142 | `result-track:9a87c2400ebb29730b8652b8c56f6575d9fcd4e1c51dcdbec372c5ded9e85dea` |
| 22 | `lemma` | [inclDesc_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/incldesc-inv-app.md) | 146 | `result-track:dfff67fd1f620a62a0fe35cb70672d4588599d20bc379119d5313ee01fa71d35` |
| 23 | `def` | [descUniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/descuniq.md) | 152 | `declaration-track:a9974ec27d0f9d80aee836cad2f2a70a07ad53983271006ef03c59fc4143d532` |
| 24 | `lemma` | [descUniq_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/descuniq-hom-app.md) | 158 | `result-track:89537d836b0848fc193dad59064c57d6fe315dbc3229446096ce67017fd34e49` |
| 25 | `lemma` | [descUniq_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/descuniq-inv-app.md) | 163 | `result-track:4049762547975a15d7edf8cd784fa647a18ba4f2ed897456545db746842926bf` |
| 26 | `def` | [natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/natiso.md) | 171 | `declaration-track:0105c3887d1ef87b6816d290cd4b735fd3f649bc647e6e717bbd152035eb04bd` |
| 27 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/map.md) | 182 | `declaration-track:8690e7d5a7a89327e617de4ef86e25dd6b74f49d6f59505498f604a3364cf4dd` |
| 28 | `lemma` | [map_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/map-obj.md) | 186 | `result-track:1583240e6cb78db101e44e912e1cd8e8ce5d712ee1dd8260ec5437bf51b02719` |
| 29 | `lemma` | [map_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/map-map.md) | 190 | `result-track:2f0761179ea6a2ff75f476d81cf042f792b2fb6780a031bd68803423b5c6221e` |
| 30 | `def` | [inclCompMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/inclcompmap.md) | 197 | `declaration-track:d94420e74b142d34061fb4544dfcc98337af8ebffb32b32939a641a3ed590513` |
| 31 | `def` | [mapId](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/mapid.md) | 204 | `declaration-track:d5b32542d21c9ad589d40aa5240bb8f52b580277405947a0d97f7952e0d8056f` |
| 32 | `def` | [mapComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/mapcomp.md) | 213 | `declaration-track:9f06e587006d13958cd12bd2971be890c86cfd4af358f2295acebb81ead8e82f` |
| 33 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/sigma-source-edition-2.md) | 226 | `declaration-track:da81c3d5b3f5fb7c0af062421d9b8c517019948f465fcdab4f34959bd94c8797` |
| 34 | `def` | [sigma](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/SigmaBasic.lean/declarations/sigma-source-edition-3.md) | 238 | `declaration-track:ec4821cb076fcbd1af9e7acfe46fc3e814b827fb7b95747034c5ec89a34a864c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=332071d88cbd1ea5f803c14598118eb720876fca121ff34b715364b02a904d34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantabf63b892ee0cece67bd09089a154d18420e6dd7b372e0580d5be4d968064fcd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
