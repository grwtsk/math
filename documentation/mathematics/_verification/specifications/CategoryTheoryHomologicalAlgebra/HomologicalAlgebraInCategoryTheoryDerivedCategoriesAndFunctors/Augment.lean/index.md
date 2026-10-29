# Verification target: Augment

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8432a21c34af8a156f6d0016481c5c3e1272bc42",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantb264ed33afdbb18f959eb0a72bbf50d5a394b4a387699b35c365d3d6d9c17e43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8432a21c34af8a156f6d0016481c5c3e1272bc42`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantb264ed33afdbb18f959eb0a72bbf50d5a394b4a387699b35c365d3d6d9c17e43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantb264ed33afdbb18f959eb0a72bbf50d5a394b4a387699b35c365d3d6d9c17e43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Single` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncate](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncate.md) | 27 | `declaration-track:29092dac50b9fde506e21a2dd3194592be0f3a9adb4fd9572a9300b3ce9866b2` |
| 2 | `def` | [truncateTo](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateto.md) | 38 | `declaration-track:2d4407a87eff392f0d1ebd3b3253b316ed12512e0a402f597c1fef1266ccb873` |
| 3 | `def` | [augment](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-source-edition-2.md) | 49 | `declaration-track:93c120176d77b11c30e45b269d301606da53f189b879c9c1e2086c31594ff49b` |
| 4 | `theorem` | [augment_X_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-x-zero-source-edition-2.md) | 67 | `result-track:e21abe4ba472ddcc5df8f7db9cb0a2037737d590f72bedaf19793ba3f8da6c53` |
| 5 | `theorem` | [augment_X_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-x-succ.md) | 72 | `result-track:7ea89428cd9d34b0065aa7d1bd0e2829966aea9c9d88edd3783453ac32c11857` |
| 6 | `theorem` | [augment_d_one_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-d-one-zero.md) | 77 | `result-track:2cd684b1945bbfa88530a9f6e46e0e29109343fbc20a7b9f1386a511d9018e8e` |
| 7 | `theorem` | [augment_d_succ_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-d-succ-succ-source-edition-2.md) | 82 | `result-track:acda85ccd6ebc2b2b6b2bdffa9484b46f060fc67101e41df2e2b03d2103da560` |
| 8 | `def` | [truncateAugment](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment-source-edition-2.md) | 89 | `declaration-track:8f1b0709315eca455b9d2ac285ec5600c9cfe99d0991cf2e1578eb0d470a2e33` |
| 9 | `theorem` | [truncateAugment_hom_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment-hom-f.md) | 108 | `result-track:087af4ddc88044bf6b9f2f40bd718fc19563330fef8d75f6765635f40b85eac3` |
| 10 | `theorem` | [truncateAugment_inv_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment-inv-f.md) | 113 | `result-track:817cc69dd14c2d81b24fe2d06f33c8af734cef2981241ae0de6dea2f56533474` |
| 11 | `theorem` | [chainComplex_d_succ_succ_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/chaincomplex-d-succ-succ-zero.md) | 118 | `result-track:969a1dab8e5e8c1c475f721dfd6b985b7ad89c2aefd12392352ea8f89cf31ad6` |
| 12 | `def` | [augmentTruncate](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-source-edition-2.md) | 125 | `declaration-track:c0ddaf8f1f3d0232d48a8e4b2d7302100b6c96c0503c674286aa002e1bc09b36` |
| 13 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-hom-f-zero.md) | 155 | `result-track:6a364fb664df0ffc7ec3ebc66ff4d1026956ac58a277c4db7ecdca8c12bff53f` |
| 14 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-hom-f-succ-source-edition-2.md) | 160 | `result-track:57973d59db640ba54d8b6e8438a3a7852aa20e3536610c496cce5b441ed9ba3c` |
| 15 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-inv-f-zero.md) | 165 | `result-track:00a9d53f602a12117440f2cbf583a985f01ede49b73aaf1215fc681866d14c40` |
| 16 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-inv-f-succ-source-edition-2.md) | 170 | `result-track:60c9948721d75f048ffbe54391d3edf60709e9a360954d11e0372c04647d0eb1` |
| 17 | `def` | [toSingle₀AsComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/tosingle-ascomplex.md) | 179 | `declaration-track:bce6d9344f598b08211b453eeaa8ae4009325d3edc01fed6dada3bc970455e99` |
| 18 | `def` | [truncate](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncate-source-edition-2.md) | 192 | `declaration-track:f85dca4cab542c5a423bb5fa324e39bc6ecb6c2eb908889bc94c02b17f12b764` |
| 19 | `def` | [toTruncate](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/totruncate.md) | 205 | `declaration-track:73521e00f1bca252fd24580623f94b1842f2d1729dcf889996d2ddeaec51c29a` |
| 20 | `def` | [augment](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment.md) | 214 | `declaration-track:4c1415892b3bf4c3cba1552b67487b15d046358dad672a1fff5fbbe32ecd798f` |
| 21 | `theorem` | [augment_X_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-x-zero.md) | 238 | `result-track:28bdfedf92994d4aea03d4790617cf3dad39ebcad75edd214329bbe927389c82` |
| 22 | `theorem` | [augment_X_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-x-succ-source-edition-2.md) | 243 | `result-track:dbc939f2aa62f7e2b9d1ff6ed0b2b023c8392bcd1b848b9e0916afc88c7d1670` |
| 23 | `theorem` | [augment_d_zero_one](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-d-zero-one.md) | 248 | `result-track:4c4ebe8aaac76854f8eefe85536715362c3c385e563619b33816e83bae07be82` |
| 24 | `theorem` | [augment_d_succ_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augment-d-succ-succ.md) | 253 | `result-track:81b8e976164ff29cc464ee714029a0a9689ca69d460ca97c0eda68ee159abd2e` |
| 25 | `def` | [truncateAugment](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment.md) | 260 | `declaration-track:5c706c06e34dac7dc645e8c93e70fa8151ee7a307bbdced87a8e8c434ecf1639` |
| 26 | `theorem` | [truncateAugment_hom_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment-hom-f-source-edition-2.md) | 281 | `result-track:251f1965a35c4d1ca7423672430e80b339b7943d5009f952b6121d1f867933ea` |
| 27 | `theorem` | [truncateAugment_inv_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/truncateaugment-inv-f-source-edition-2.md) | 286 | `result-track:93d953b19343580f09555408298df1fab2bc55a7bce8542bcc16172640fbff06` |
| 28 | `theorem` | [cochainComplex_d_succ_succ_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/cochaincomplex-d-succ-succ-zero.md) | 292 | `result-track:cca85cf5544a1db7b7fc01a349d2805f8956d0de3d3bbbb20c3fe96714aba5cd` |
| 29 | `def` | [augmentTruncate](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate.md) | 300 | `declaration-track:7a89afd0f41c8a928048ae7843ddb09f2606e6d959d824ade4d355ed537c99d4` |
| 30 | `theorem` | [augmentTruncate_hom_f_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-hom-f-zero-source-edition-2.md) | 330 | `result-track:94e5e87bd6c17250d12f8c7f6bfb8532d76c37482c8422dd2b2ebf27157c3811` |
| 31 | `theorem` | [augmentTruncate_hom_f_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-hom-f-succ.md) | 335 | `result-track:51b7ec8bb09491e0613dc943acaeeff59d4c364dac491b43d46a23d0bcc32a1e` |
| 32 | `theorem` | [augmentTruncate_inv_f_zero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-inv-f-zero-source-edition-2.md) | 340 | `result-track:42e46cca344d0b05e48c5d4b30b545139222eb49e160c2c0545972823ca75382` |
| 33 | `theorem` | [augmentTruncate_inv_f_succ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/augmenttruncate-inv-f-succ.md) | 345 | `result-track:60a08886f0c13ba21ccf3376c9ce241e7b9467c56144d7b6453a9ae8e86be710` |
| 34 | `def` | [fromSingle₀AsComplex](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/Augment.lean/declarations/fromsingle-ascomplex.md) | 354 | `declaration-track:99a1bbceaae3a93576a92489dbfff283ec44032accd4812378c11e9cfe179f99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6683d6585e10089594eb1237e3d0cb30de8d960613a21bc6433bf925031aafd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantb264ed33afdbb18f959eb0a72bbf50d5a394b4a387699b35c365d3d6d9c17e43.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Augment/Variantb264ed33afdbb18f959eb0a72bbf50d5a394b4a387699b35c365d3d6d9c17e43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
