# Verification target: Homological Complex Biprod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edbe44580e65b9ece80de9251fd6f3fa5c522201",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edbe44580e65b9ece80de9251fd6f3fa5c522201`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomologicalComplexLimits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Additive` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/instance-source-edition-3.md) | 32 | `declaration-track:3b29a5b0ebb1f7f3145db87ff7b789d7c0db0ed63a9652479f54f8bbcf204085` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/instance.md) | 36 | `declaration-track:19b2c52185aa6668375d071ebc5ecf9b1c1335467e45707a610ac0cb91b12753` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/instance-source-edition-5.md) | 40 | `declaration-track:e11450c1697620036fb6af011be645ab4a774cedd980569afb022f9590f78ddc` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/instance-source-edition-4.md) | 44 | `declaration-track:6a9b90dad7e7b971131541df7de892fb3fae81f818812823f982cf39e8381255` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:30f7ab666e9fc6973bf9ece6f648b64ee5c9a25828f2d6226d889311b12f4bcd` |
| 6 | `def` | [biprodXIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprodxiso.md) | 50 | `declaration-track:c5b3eb9ba4c642b50af1659418f08eddaca87930b9b942362aae65a07ce61db6` |
| 7 | `lemma` | [inl_biprodXIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/inl-biprodxiso-inv.md) | 54 | `result-track:f435fa250aa7562235e73c5965c22381c84390d6b482f4d734dbbbbfa4fb9f12` |
| 8 | `lemma` | [inr_biprodXIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/inr-biprodxiso-inv.md) | 59 | `result-track:bb178bf1c69ab81ef8fd94d8f5e908687ae68106003fd911b98f4512249a0b85` |
| 9 | `lemma` | [biprodXIso_hom_fst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprodxiso-hom-fst.md) | 64 | `result-track:ad69f1903206125f9cc0c1a1a5692495fa78f2f8a431aa746125c03a585560ac` |
| 10 | `lemma` | [biprodXIso_hom_snd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprodxiso-hom-snd.md) | 69 | `result-track:193f0698c523c1b473f0af3e7be79e512a1c2b1d531ccd5ff289f3a752e63f88` |
| 11 | `lemma` | [biprod_inl_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inl-fst-f.md) | 74 | `result-track:d8096cc6873a75dbbb4013c8c95bd6cd266d8e88c3c8b315c479e211aa5b2491` |
| 12 | `lemma` | [biprod_inl_snd_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inl-snd-f.md) | 79 | `result-track:d193b6ba5447102577a67a97951f42e20af74295640c774b8df633f5325ee459` |
| 13 | `lemma` | [biprod_inr_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inr-fst-f.md) | 84 | `result-track:d22743110f4a24b540704df247ab4f139729e6f2bf324b13b9811ef7a81ca312` |
| 14 | `lemma` | [biprod_inr_snd_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inr-snd-f.md) | 89 | `result-track:7f25763a787f4179871c4051539f63c83b258ff65f5fe51608d752cbf76df481` |
| 15 | `lemma` | [biprod_inl_desc_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inl-desc-f.md) | 97 | `result-track:2892590453a1b2acbdc49631b2a2c15430ebb12293762d596401ab225a91481e` |
| 16 | `lemma` | [biprod_inr_desc_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-inr-desc-f.md) | 102 | `result-track:0a2068aafb68e57363c20452716b4aac6e1b8edd06beeb517189e480b1ad099b` |
| 17 | `lemma` | [biprod_lift_fst_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-lift-fst-f.md) | 107 | `result-track:8176f6e2dd1fefe9291a078fd757e540ac59f39027611ceeed3baedda0c77a6e` |
| 18 | `lemma` | [biprod_lift_snd_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/HomologicalComplexBiprodNamespaced.lean/declarations/biprod-lift-snd-f.md) | 112 | `result-track:c593d83c179c776bd59e46317d99a814ccad3494d76156439d18327bde2ea145` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a1457b0fbffcfb53c02309111912798c8c5016e128e293c13fb969c433a34c54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomologicalComplexBiprod/Variantaf7ac02da12f15c7b22eab8624e964b542dfe9491705eb9aa3dab121a5b83652.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
