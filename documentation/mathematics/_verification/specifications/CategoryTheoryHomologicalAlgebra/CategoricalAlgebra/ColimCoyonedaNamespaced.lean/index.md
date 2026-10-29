# Verification target: Colim Coyoneda Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Subobject` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [g](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/g.md) | 76 | `declaration-track:31ee97ccc23a501a5a17caba34da7dfac8057ae534d8e331c668a0da36a8e174` |
| 2 | `def` | [f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/f-source-edition-2.md) | 84 | `declaration-track:6e8ce9f43c29ffdcdd71bb038f8e1196fc28b80fcbb90b128d3ec9e665c5ca2e` |
| 3 | `lemma` | [hf](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/hf.md) | 87 | `result-track:4091ede75bfe2dcabc2a4c7607d505ae37a1d4b91a7348028453f357566bd177` |
| 4 | `lemma` | [epi_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/epi-f.md) | 93 | `result-track:920e9f2c1cf5255013fb887bf4655e6a30c59fe5cd72fdd29a9e62eb2bb7837b` |
| 5 | `def` | [F](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/f-source-edition-3.md) | 105 | `declaration-track:7fe4a79444a10d533b9dcd9b94a9d0d0022fe9c76055834cc82869998b911925` |
| 6 | `lemma` | [injectivity₀](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/injectivity.md) | 119 | `result-track:ccc463fb8ec4a2bcd7ab2a6b43f54e02a60db49c1794e50601fed201eeea9c3e` |
| 7 | `lemma` | [injectivity](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/injectivity-source-edition-2.md) | 130 | `result-track:eea9a3f3742f3de6d735fa1793580df78ac073b6a1604a8bbedb382e88a36e8a` |
| 8 | `def` | [F](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/f.md) | 163 | `declaration-track:616d7c3a227177396f80c04df9d20839af8403ce6d07c90681103c444e931b6b` |
| 9 | `def` | [f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/f-source-edition-4.md) | 169 | `declaration-track:e8904fc489bcf44b3b41fa92507f1d11bcac1c6d798ebfaa9f59391483470141` |
| 10 | `lemma` | [hf](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/hf-source-edition-2.md) | 173 | `result-track:d135475cd9f3134d7ed6f7e1912009990e3b804dd9e303e2c11e2d7b11c32060` |
| 11 | `lemma` | [isIso_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/isiso-f.md) | 180 | `result-track:f172480ecfc62cbeae262a12a4d0cddacfd3819fd12aa3292e913090f6059261` |
| 12 | `lemma` | [epi_f](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/epi-f-source-edition-2.md) | 197 | `result-track:f69896bea0f108450ff05cbea3adcf59086686552946bf42c88f14690c817b6a` |
| 13 | `lemma` | [surjectivity](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/surjectivity.md) | 205 | `result-track:df1ba74500c38ed136c7d22b2ed03a728c6daac0c95d118c1b101bc65988b9fa` |
| 14 | `lemma` | [preservesColimit_coyoneda_obj_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/ColimCoyonedaNamespaced.lean/declarations/preservescolimit-coyoneda-obj-of-mono.md) | 226 | `result-track:381b3eea149ad11dc580ce075e1def1a21c5c333c2af7688ab0b4580f2dad1ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60755964e24a108aeed7aa4198fff9975276e13543c5b2963b66fcc41a77cf47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
