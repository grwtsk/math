# Verification target: Short Complex Exact Functor Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "075258b4ada6cbd98639cbcd8f7b31482ac5296e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `075258b4ada6cbd98639cbcd8f7b31482ac5296e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean.json)

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
| 1 | `lemma` | [preservesFiniteLimits_of_preservesHomology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitelimits-of-preserveshomology.md) | 78 | `result-track:e37ee6fcce11ef18b03b309de60105f6ef6387a030e9e4a1b1ba8073d73fa26d` |
| 2 | `lemma` | [preservesFiniteColimits_of_preservesHomology](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitecolimits-of-preserveshomology.md) | 88 | `result-track:a26c04c4c9e246c21dfd6ef548322b4160c0b721afb1730a57b94d1307f7bb52` |
| 3 | `lemma` | [preservesMonomorphisms_of_preserves_shortExact_left](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesmonomorphisms-of-preserves-shortexact-left.md) | 109 | `result-track:461edf374050143a37f411859929fbee3c52615f6825c0b1aa21bf4b1c0c9941` |
| 4 | `lemma` | [preservesFiniteLimits_tfae](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitelimits-tfae.md) | 123 | `result-track:4f0882809b9eafed7982feadb56da2e1a26a93ec37c033193f879e126bc53067` |
| 5 | `lemma` | [preservesFiniteLimits_iff_forall_exact_map_and_mono](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitelimits-iff-forall-exact-map-and-mono.md) | 158 | `result-track:8d2263e4f1895c4cfb8506c288794f4ffa79b3cc6bf2b5553a9905a405560969` |
| 6 | `lemma` | [preservesEpimorphisms_of_preserves_shortExact_right](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesepimorphisms-of-preserves-shortexact-right.md) | 168 | `result-track:029da527636932cff9ae6b27a35c52ef8d449bf6253f2e7e748316b8813001dc` |
| 7 | `lemma` | [preservesFiniteColimits_tfae](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitecolimits-tfae.md) | 182 | `result-track:02f1cab6689d047f120c67a7fff13b00d88acd842a5d5a6b807d30abdc7a9cf8` |
| 8 | `lemma` | [exact_tfae](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/exact-tfae.md) | 225 | `result-track:6882ae69c542cb490b3843b63776a5381b5c87f4fac652b0253b0db70733c19d` |
| 9 | `lemma` | [preservesFiniteColimits_iff_forall_exact_map_and_epi](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ShortComplexExactFunctorNamespacedPublic.lean/declarations/preservesfinitecolimits-iff-forall-exact-map-and-epi.md) | 255 | `result-track:0e7bb824aa2d324102c6d10e9abccc9ecf15479f83188d5ad4b0a32d292e3a05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe304b1b080c43b15db92168a3a609e632632e4b476d16c8531cd814b7d8030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant37d43b82189a38c70930c5e5b1c9c5223cbdc3a3f9ddd16300ec54d2e28b08b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
