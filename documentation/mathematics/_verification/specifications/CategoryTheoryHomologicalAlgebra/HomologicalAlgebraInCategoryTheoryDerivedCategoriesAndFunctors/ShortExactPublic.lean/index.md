# Verification target: Short Exact Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df0067c451cbd224e3d0597f0954b00159088c2b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variantad9bdd7f644b1091728aace8f4bcbf26e495de1e7fa60194dd7424f9cb8b15b6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df0067c451cbd224e3d0597f0954b00159088c2b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variantad9bdd7f644b1091728aace8f4bcbf26e495de1e7fa60194dd7424f9cb8b15b6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variantad9bdd7f644b1091728aace8f4bcbf26e495de1e7fa60194dd7424f9cb8b15b6.lean.json)

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
| 1 | `structure` | [ShortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-source-edition-2.md) | 35 | `declaration-track:a7f9175cae42f9db78c8da1838fb50a684769f6340c51a275033319769ef1e0f` |
| 2 | `lemma` | [ShortExact.mk'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-mk.md) | 42 | `result-track:0ef8152e593888766ef26d235dfd9af4b2053100ec86626a71b95019a65f61cb` |
| 3 | `lemma` | [shortExact_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-of-iso.md) | 45 | `result-track:a378e9574b33be9c2e19b75b1d50dcdec53b40abfda39064c7c95b9a6f26ef2a` |
| 4 | `lemma` | [shortExact_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-iff-of-iso.md) | 60 | `result-track:1ec69f532ed747d4261cd369e56287bbb08ad2b73aebadf96708c4b60183c33e` |
| 5 | `lemma` | [ShortExact.op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-op.md) | 66 | `result-track:c96913be3af29944d06421ebeb8179ee0fbd12ae42fa1c19c6cb426da507f910` |
| 6 | `lemma` | [ShortExact.unop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-unop.md) | 78 | `result-track:2e5687f6e992a3dede660ee060e78508067ef4208790557f6abb96e6d0a5068f` |
| 7 | `lemma` | [shortExact_iff_op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-iff-op.md) | 91 | `result-track:8213079c382081cbe8761302bad51094f7a4b5e00901f25518527eefdea692b1` |
| 8 | `lemma` | [shortExact_iff_unop](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-iff-unop.md) | 94 | `result-track:c18a511b4a9c20fbffca77960cda8113dceed8ebee8792662b10aabbf3214272` |
| 9 | `lemma` | [ShortExact.map](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-map.md) | 99 | `result-track:416470e8a722881054ca878e51d619e83792fbfd0d6a89d68b8a4892de43715f` |
| 10 | `lemma` | [ShortExact.map_of_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-map-of-exact.md) | 107 | `result-track:ebe54406cca485b7ecd9b3b91b72557ee2d8363ebb82be668560711762d34917` |
| 11 | `lemma` | [ShortExact.isIso_f_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-isiso-f-iff.md) | 120 | `result-track:d08b51a5e731e5949877d0dc8441bbe25d94931c343dd1b46ca13b873211723b` |
| 12 | `lemma` | [ShortExact.isIso_g_iff](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-isiso-g-iff.md) | 133 | `result-track:4ce51c60796f4457cdc95da20593fbc9e62c3292215737dbea99f7c2736efaff` |
| 13 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/isiso-of-shortexact-of-isiso.md) | 146 | `result-track:0f7422ecaa0604c5435fcc085fe929c4ccebd7480160b381a0f0bad0dfff8f9e` |
| 14 | `lemma` | [isIso₂_of_shortExact_of_isIso₁₃'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/isiso-of-shortexact-of-isiso-source-edition-2.md) | 156 | `result-track:6f6fbf759ec58c9cdf818f1c4c06e2abdae8a8f9c4356050d4eaf922a473e1eb` |
| 15 | `def` | [ShortExact.fIsKernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-fiskernel.md) | 162 | `declaration-track:23509918b0f5dacd107c179aecea8234828a27cbfe0af7c6003aa37e944303e8` |
| 16 | `def` | [ShortExact.gIsCokernel](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact-giscokernel.md) | 169 | `declaration-track:14078130c0c436109b3a30d44287a19cd71b0f4a10eb213f1ce706579cec0f7d` |
| 17 | `lemma` | [Exact.shortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/exact-shortexact.md) | 176 | `result-track:09360878151cd721373c4ee8a12b7b67158eb6c0c40ab1cfd06d3149d4d19840` |
| 18 | `lemma` | [Splitting.shortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/splitting-shortexact.md) | 195 | `result-track:e3c8354704feb2eb5e21c0e6016eee16355d05f09cad5f7726857453467a0e16` |
| 19 | `def` | [splittingOfInjective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/splittingofinjective.md) | 205 | `declaration-track:6cedb9f935159bf8acf8a1300a67ec35fb4efd3b927a9975e1c59dab3447e207` |
| 20 | `def` | [splittingOfProjective](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/splittingofprojective.md) | 213 | `declaration-track:f9cabf0f24c9b4ace39133ef76a3e08dfcf07f1c1d210350433a9748d30ac428` |
| 21 | `abbrev` | [shortExact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexact.md) | 224 | `declaration-track:45ef1b491b5539198e7dac353b91fa100fd962d0573804817c60faff24bd2b44` |
| 22 | `abbrev` | [ShortExactSequence](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortExactPublic.lean/declarations/shortexactsequence.md) | 231 | `declaration-track:242a205523118ff2bd60afc1441b17ba9862fa764939800b0527bccab49910b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa0693142e79710e24b4b2ce2f0b4876d68a41e506a9cc7de8640882f4af0365 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variantad9bdd7f644b1091728aace8f4bcbf26e495de1e7fa60194dd7424f9cb8b15b6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ShortExact/Variantad9bdd7f644b1091728aace8f4bcbf26e495de1e7fa60194dd7424f9cb8b15b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
