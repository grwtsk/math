# Verification target: Compatible Sheafification Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9be1a2a92a20155bb6ecb79425e1c620ac321f15",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9be1a2a92a20155bb6ecb79425e1c620ac321f15`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean.json)

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
| 1 | `def` | [sheafifyCompIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafifycompiso.md) | 52 | `declaration-track:30aec523b94b2cd446249d86b0c35703a9151ea879aff8fa5688cd5d54aee0a0` |
| 2 | `def` | [sheafificationWhiskerLeftIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerleftiso.md) | 57 | `declaration-track:2b8f16569c12b996c7a894762bd9244c7cad573011f04b8ab60d2ba863c4695e` |
| 3 | `theorem` | [sheafificationWhiskerLeftIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerleftiso-hom-app.md) | 70 | `result-track:29e4917be823d1aac09ddc1283f9063dda3743535c980225251bd5fa244718d5` |
| 4 | `theorem` | [sheafificationWhiskerLeftIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerleftiso-inv-app.md) | 81 | `result-track:b686e42aa7b8c1ef0c05af7109b8a30660ed7f1e1d61a8e62348f49c0c192b68` |
| 5 | `def` | [sheafificationWhiskerRightIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerrightiso.md) | 91 | `declaration-track:bd87b3870eb7e90e3716c5a5afe79a81dfab1a6faeee854f708723cb7b7eb06f` |
| 6 | `theorem` | [sheafificationWhiskerRightIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerrightiso-hom-app.md) | 103 | `result-track:063d41965b01f477a4309dd600bbe9df715dec27b7dc706dabce49d2d4505166` |
| 7 | `theorem` | [sheafificationWhiskerRightIso_inv_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafificationwhiskerrightiso-inv-app.md) | 111 | `result-track:9451f65f21b81069594eff59a535d66e275c1b660e61973ee5578bc10830598b` |
| 8 | `theorem` | [whiskerRight_toSheafify_sheafifyCompIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/whiskerright-tosheafify-sheafifycompiso-hom.md) | 119 | `result-track:2d50e912094e54aff739e481a01621e8716ae127925218b9280c945b5e19ce4e` |
| 9 | `theorem` | [toSheafify_comp_sheafifyCompIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/tosheafify-comp-sheafifycompiso-inv.md) | 128 | `result-track:814fe32550edc2dd029df6bf80326bad2041100951f6815c27a0337cc24fdbd6` |
| 10 | `theorem` | [sheafifyCompIso_inv_eq_sheafifyLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CompatibleSheafificationPublic.lean/declarations/sheafifycompiso-inv-eq-sheafifylift.md) | 140 | `result-track:a62ab07c66254ebd47a8e4057edc3e194712245d4c1b9f8192113ab55bc3060b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f08fb64a7037e19b41e879a50ab2b6b23b72abf6a1da4afb31fdce4f23165a61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
