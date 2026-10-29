# Verification target: Abelian Comm Sq Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5049fc07a053e3f4b4fe587866c96dd7a273fc79",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5049fc07a053e3f4b4fe587866c96dd7a273fc79`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Refinements` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.CommSq` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [exact_shortComplex](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/declarations/exact-shortcomplex.md) | 45 | `result-track:3767fd16652ceb784a452ecb03888fc39a3676e60da5f3b72c170230e4f4f3d7` |
| 2 | `lemma` | [hom_eq_add_up_to_refinements](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/declarations/hom-eq-add-up-to-refinements.md) | 60 | `result-track:00e2b68e93e2a3ae7fe4319a299cbb937734f73218ae78c43b6a5f4af542d163` |
| 3 | `lemma` | [mono_of_isPullback_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/declarations/mono-of-ispullback-of-mono.md) | 86 | `result-track:a2fa7c775daf7e36799bed5140926eb0d68cf1bf897c50640fb664d6e90a1f47` |
| 4 | `lemma` | [exact_shortComplex'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianCommSqNamespaced.lean/declarations/exact-shortcomplex-source-edition-2.md) | 107 | `result-track:a3b9f7b141c0d050beaf4c4a284b53958662582f0cc3be19f773184a3ffee15e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a50bf6e05050e02e784faa55d058936ab1a99470e1aeb472ecb9fdaf413f114b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant2087ed39860710aad54132272bc72e01110f045290f212329d2cc7767d0d7f35.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
