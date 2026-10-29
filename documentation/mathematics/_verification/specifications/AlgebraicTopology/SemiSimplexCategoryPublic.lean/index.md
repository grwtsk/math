# Verification target: Semi Simplex Category Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3225b3698150b35a68ab6fad2599daa5e7b4abf1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3225b3698150b35a68ab6fad2599daa5e7b4abf1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SemiSimplexCategory](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/semisimplexcategory.md) | 31 | `declaration-track:28c079f1d6ed2d22bb0b95b6e1fe43f4c6ef3b2682f408a695453cf73422ed28` |
| 2 | `def` | [Hom](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/hom.md) | 45 | `declaration-track:345771b59796293fefc30fe277d038de379a077a70865db97cea6023a485ce32` |
| 3 | `instance` | [smallCategory](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/smallcategory.md) | 47 | `declaration-track:894e8444e1378298493d4e77b5c14c0f2f7d182a83022b1f01a73e3a26096fba` |
| 4 | `def` | [homEquiv](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/homequiv.md) | 54 | `declaration-track:e13cfbb00cfdeb90d696a90a0399719c2b8d93cc359e8246d38a9d74ade6dd0f` |
| 5 | `lemma` | [homEquiv_id](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/homequiv-id.md) | 59 | `result-track:a7a26dfad67e9791a105103796e9f99c0ce2843ee345235ddd8756d6b2129939` |
| 6 | `lemma` | [homEquiv_comp](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/homequiv-comp.md) | 63 | `result-track:dde5595d4270475d99d86035a6677fb940631e61b62d0c1f606f2651dfc205e9` |
| 7 | `theorem` | [hom_ext](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/hom-ext.md) | 69 | `result-track:a198e029da7628bf7a18556ed771134a86ae5afac515544ec3b05becb0edf836` |
| 8 | `def` | [toSimplexCategory](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/tosimplexcategory.md) | 74 | `declaration-track:c5c654d91c6552c273890aeb95ab1bfc219e22ebb3cadf8ee7f1a19ea56f7378` |
| 9 | `lemma` | [toSimplexCategory_obj](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/tosimplexcategory-obj.md) | 79 | `result-track:bdbb6cc17ec7c23533fa05dc215d8311593479c661c0e09103d8b32e0a06b891` |
| 10 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/instance-source-edition-2.md) | 82 | `declaration-track:6d7657277299f0a095bb3f2d369932a3415ab1a6f35c42cf79d1b2f0eb79c3d7` |
| 11 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/instance.md) | 87 | `declaration-track:29cc46bf0bbdc87138c6f6d3c1f5eb89f30a9883f60e5a0668a9fbc009b88f57` |
| 12 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/instance-source-edition-3.md) | 91 | `declaration-track:f11c3cbb503dd0daa9b3491218cc142e47f943d8e3cadf2ca94446bf354307e1` |
| 13 | `def` | [homOfMono](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/homofmono.md) | 98 | `declaration-track:68a42bec906a958307360ec6f314f8e953ebaaefbff04f86a51a6a88110de4bf` |
| 14 | `lemma` | [toSimplexCategory_map_homOfMono](../../../../AlgebraicTopology/SemiSimplexCategoryPublic.lean/declarations/tosimplexcategory-map-homofmono.md) | 105 | `result-track:dbe1d15556ee4f983a723ddf35101078125f818d0b6fdfd59d9d69614a3d1e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28982d2bbef739018ffed70ae3e4aabb3055337ff8a8973e4924555ede9fe866 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SemiSimplexCategory/Variantd83431814b02e0b164dd838f511b68249aaa9f2752b9261f4488bdfa46f2ae4a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
