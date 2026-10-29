# Verification target: Alg Cat Limits Limits Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598e166676c10376677dd781f3bab97762e07eff",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Limits/Variantd645eb24606445d621bb8f3cf5f9fb4662ea939d258c059985b540fa15d83686.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598e166676c10376677dd781f3bab97762e07eff`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Limits/Variantd645eb24606445d621bb8f3cf5f9fb4662ea939d258c059985b540fa15d83686.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Limits/Variantd645eb24606445d621bb8f3cf5f9fb4662ea939d258c059985b540fa15d83686.lean.json)

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
| 1 | `instance` | [semiringObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/semiringobj.md) | 39 | `declaration-track:705a337ed5b1a4336d0a094dd790ecde40f0af0850e9999a32064234ebdbaf36` |
| 2 | `instance` | [algebraObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/algebraobj.md) | 42 | `declaration-track:13749d8b4380e3d0f8be59e720dce5b6caa9bb48fb07c65a00de94ee0bae7b68` |
| 3 | `def` | [sectionsSubalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/sectionssubalgebra.md) | 48 | `declaration-track:f15d1f375075b95d9798641ce9906e8fd5696d0ab6d82b7fd14b7f29c9183247` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:2dc68558582e8859d51ccac770527f8774c69bffd75dd0843dbdfe9287633792` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/instance.md) | 56 | `declaration-track:1b1d10006155ddcf4a9e26a3372a4af82e13613a0bbf0f2d833cea18e93879d6` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/instance-source-edition-3.md) | 61 | `declaration-track:be704a797cf5c7561f48eda2f78e932b82e9367a46e246d8a19d0ea0e63e15b6` |
| 7 | `instance` | [limitSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/limitsemiring.md) | 64 | `declaration-track:664c5ac7dd5b59344af1076558604a856c562a165b929bc056f0c75b0633d0f7` |
| 8 | `instance` | [limitAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/limitalgebra.md) | 68 | `declaration-track:a4914f7ad7a60fc2f9310aea6944ff1180528ff2feae51cf8d17eb7c6ffaae29` |
| 9 | `def` | [limitπAlgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/limit-alghom.md) | 74 | `declaration-track:a273bce7fc90a8b355fbc390f8a6654065bf9d2699ffe6db7ff3628b5c2bcc6f` |
| 10 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/limitcone.md) | 98 | `declaration-track:81c8f0b80e20265156feb1b9019715ce7f6acb28c5d03ce84ef82d8f3851d897` |
| 11 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/limitconeislimit.md) | 110 | `declaration-track:d16e99a84faf92ff75ab1d7c8832111f87640b1377ca4209934eeaf3cb2a49c0` |
| 12 | `lemma` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/haslimitsofsize.md) | 143 | `result-track:26d73e89f60d5ee37a74a9810ab44cf722e511f59c65c5c7a4f686e7d235e169` |
| 13 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/haslimits.md) | 149 | `declaration-track:9c0f771b7212e85e7d41abf45df911867c7f41fff0d0709577ddb1834c0d34ec` |
| 14 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-ring-preserveslimitsofsize.md) | 154 | `declaration-track:0ea9352af3fa91ef9474afcd615e0e303f3a7d437d2a4096540b4519c766710a` |
| 15 | `instance` | [forget₂Ring_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-ring-preserveslimits.md) | 162 | `declaration-track:091d65c562663a9f3cede173b6fc3b31190225ab36558a63b4a1dfaa9b6e8e66` |
| 16 | `instance` | [forget₂Module_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-module-preserveslimitsofsize.md) | 167 | `declaration-track:67b08ca5c2bbdfc3a9b612d8918f8c74de55b788138fb8b2409093f46bfececb` |
| 17 | `instance` | [forget₂Module_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-module-preserveslimits.md) | 175 | `declaration-track:64bd03433752e4f5d721ffd953aa19d5140cb2afe1096c8c247bc5e25c6a3553` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-preserveslimitsofsize.md) | 181 | `declaration-track:960a29b39284021303a7acf7d5858f27dd4d39d4a5f873fb8d47e7bfdd23c277` |
| 19 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsPublic.lean/declarations/forget-preserveslimits.md) | 188 | `declaration-track:3a4a1524f8630cd2229db9656f1e41cae4f3e71b01221c618263802c25b1114f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59d0cde79ce8403e63eda8c794df8087ca1164ef9f4d98fae838061e1249414f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Limits/Variantd645eb24606445d621bb8f3cf5f9fb4662ea939d258c059985b540fa15d83686.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Limits/Variantd645eb24606445d621bb8f3cf5f9fb4662ea939d258c059985b540fa15d83686.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
