# Verification target: Preserves Presheaf Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "279c7c6e5dfa696ff836d456006bcdcd2b414de7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `279c7c6e5dfa696ff836d456006bcdcd2b414de7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean.json)

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
| 1 | `theorem` | [isFiltered_costructuredArrow_yoneda_of_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/isfiltered-costructuredarrow-yoneda-of-preservesfinitelimits.md) | 69 | `result-track:cb16d803e45c605e3f325f0cd972386239d434caf2806bc8f86fc62f914f0319` |
| 2 | `def` | [functorToInterchange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/functortointerchange.md) | 88 | `declaration-track:e1bf15f7bdd02bce824abea8700cfea8711525313ff334488eda98c2c5d8c675` |
| 3 | `def` | [functorToInterchangeIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/functortointerchangeiso.md) | 93 | `declaration-track:fd309d7516edad09c0c5bd0f5bd54a2baa978c473c549593c4574bd180cf0e4b` |
| 4 | `def` | [flipFunctorToInterchange](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/flipfunctortointerchange.md) | 105 | `declaration-track:7904e7f4993608d7ffdd38168d8c9ee7319157b3c0ed358b80f585d514646d82` |
| 5 | `def` | [isoAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/isoaux.md) | 111 | `declaration-track:27735bfb018e798a3e22581aad6491d90bfcdff622559e1541c1773dec83f88d` |
| 6 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/iso.md) | 118 | `declaration-track:7e13c3b59a1a101f21c047e1e62d85e227d0529e1567b53e9f1f1b52f0306782` |
| 7 | `theorem` | [iso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/iso-hom.md) | 147 | `result-track:d17e7089d74b91912b006d9e1fce01d60775559df60bc5526793553eacba5ff8` |
| 8 | `theorem` | [isIso_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/isiso-post.md) | 178 | `result-track:a8466c7d120c679f8e1b84300dda5c82a7c298288c50de3d37a58d54362659fb` |
| 9 | `lemma` | [preservesFiniteLimits_of_isFiltered_costructuredArrow_yoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/preservesfinitelimits-of-isfiltered-costructuredarrow-yoneda.md) | 190 | `result-track:175dee576603c52f5e9aa07df4de8f3c0ab4825d42f542eee1ca143456bdc054` |
| 10 | `theorem` | [isFiltered_costructuredArrow_yoneda_iff_nonempty_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesPresheafNamespacedPublic.lean/declarations/isfiltered-costructuredarrow-yoneda-iff-nonempty-preservesfinitelimits.md) | 199 | `result-track:4305735233c0f21d25591f70177ec08ad5b129a96f156b55c6e6aa6c94762ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c87549c05c956fa4fcafbf2d3f15996b5c228aa312600a6d7286459e8bf34847 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant93b28f4628f9e56ebb190bd437b0e4e2e436b1956690a9caaf1f97e89ed59a01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
