# Verification target: Alg Cat Limits Limits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a57e2f5d91cd00cf8a22c26fc9564f8c5e3a2487",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Limits/Variant357906215aad13ce88da05b361ea772e15f06f36ca59d8f4727572f35b6476b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a57e2f5d91cd00cf8a22c26fc9564f8c5e3a2487`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Limits/Variant357906215aad13ce88da05b361ea772e15f06f36ca59d8f4727572f35b6476b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Limits/Variant357906215aad13ce88da05b361ea772e15f06f36ca59d8f4727572f35b6476b6.lean.json)

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
| 1 | `instance` | [semiringObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/semiringobj.md) | 47 | `declaration-track:90099c0e03830190557c07934791abc0e2c66fd581babf90782c8d16921cf119` |
| 2 | `instance` | [algebraObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/algebraobj.md) | 50 | `declaration-track:8279cc9f96ea79f793c0e567cff417f4b2f634b8201f36156b21aee24d2e9faa` |
| 3 | `def` | [sectionsSubalgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/sectionssubalgebra.md) | 56 | `declaration-track:eecc7fb71a2ddf753c2869ec290802d72ceafd7ec13fcd14778712317131a656` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 61 | `declaration-track:a52dc2a1360a51c8cbcb9cf8cadde22232bcc5db6b0e17e867709667dba83900` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 64 | `declaration-track:a71a7448ff4589703e3a383165bbb704dd527adeaafecefe166cde2bb18df876` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/instance.md) | 69 | `declaration-track:24f6cc8c3ede9a72de04b5de230f46b5833304aa35c7b4f76245463c3d424b34` |
| 7 | `instance` | [limitSemiring](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/limitsemiring.md) | 72 | `declaration-track:9c63f2b60e9fa180453e3e5f6acf905c7248d28e720f63c947184c8810970997` |
| 8 | `instance` | [limitAlgebra](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/limitalgebra.md) | 76 | `declaration-track:79395d9d3b5898e41cffd5b3ef565ec7c0ff789c34b76450b781d181527cced4` |
| 9 | `def` | [limitπAlgHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/limit-alghom.md) | 82 | `declaration-track:dc21aed32e679ace1b7b39b082051f99f39ebf7167f776e4e4ed63750f326363` |
| 10 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/limitcone.md) | 106 | `declaration-track:b125e7687660718c5bd252efa4c734db946f68be44430c350694b5439245fb30` |
| 11 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/limitconeislimit.md) | 118 | `declaration-track:7c4b1ae296529a01213488a028a9e3ed2d40fb2793b915f27cf0fa35296f0a34` |
| 12 | `lemma` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/haslimitsofsize.md) | 151 | `result-track:4da9d17d7bd6609ba5c4197eed35c60f0486e1fc114c0072364917dd91dbdd83` |
| 13 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/haslimits.md) | 157 | `declaration-track:939ce567d9397e0285e3761c70d382cabb4af4f7c3f5a6f4515078aa20334300` |
| 14 | `instance` | [forget₂Ring_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-ring-preserveslimitsofsize.md) | 162 | `declaration-track:b8c2966a49dddfb348252af116f362e5b52517b145e1c96bcafede608412a39a` |
| 15 | `instance` | [forget₂Ring_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-ring-preserveslimits.md) | 170 | `declaration-track:a3a9146c697949736578b6b881d28039c0ee03dd744a32a12208e0143318f22e` |
| 16 | `instance` | [forget₂Module_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-module-preserveslimitsofsize.md) | 175 | `declaration-track:0d8f6a7940bc5475c42d69495a37c9f2e222a3a631066048c1db457dd0cdbadd` |
| 17 | `instance` | [forget₂Module_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-module-preserveslimits.md) | 183 | `declaration-track:fd7d67cbe97a49af054fdf2802fb5ed07f4f925b3590e5ba68f34b9a2433cdb8` |
| 18 | `instance` | [forget_preservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimitsofsize.md) | 189 | `declaration-track:15328d9ea03c1750439228d942198ea916aa3756c284c1258d8108077729b2cd` |
| 19 | `instance` | [forget_preservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/AlgCatLimitsLimitsNamespacedPublic.lean/declarations/forget-preserveslimits.md) | 196 | `declaration-track:b7a843f1555cca517e685e3b5949698162d2e7d61308e0e65c8f470c4be66558` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa3be0720191638bac694f7b70cbe40f73ec7cfd7d168bac1c047b88fbf9cdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Limits/Variant357906215aad13ce88da05b361ea772e15f06f36ca59d8f4727572f35b6476b6.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Limits/Variant357906215aad13ce88da05b361ea772e15f06f36ca59d8f4727572f35b6476b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
