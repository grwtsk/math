# Verification target: Monoidal Braided Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aceb3d30763231cd7773fc7656ba257be0a0e0c8",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aceb3d30763231cd7773fc7656ba257be0a0e0c8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/instance.md) | 37 | `declaration-track:054701788bd749e9dbc7248b511fd30d216b37e3072b7712c38a5217e75e7e71` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/instance-source-edition-5.md) | 43 | `declaration-track:bb823511aac3f288b77446a92ec19fea99fa9fd23e4be390658adda3b51d1e5d` |
| 3 | `def` | [braidingNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/braidingnatiso.md) | 49 | `declaration-track:41f1dc61404e30f969408af58303f29bef4c8d358f70e10408a62dc5ade2fddd` |
| 4 | `lemma` | [braidingNatIso_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/braidingnatiso-hom-app.md) | 57 | `result-track:39b3b938594372edb7744e5321820190cc560213a3d489b05e870908ca7877ca` |
| 5 | `lemma` | [braidingNatIso_hom_app_naturality_μ_left](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/braidingnatiso-hom-app-naturality-left.md) | 69 | `result-track:a6654ad1d74f6612254614a4df1432982a857bc4a0fb635e54c52478bcf8063d` |
| 6 | `lemma` | [braidingNatIso_hom_app_naturality_μ_right](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/braidingnatiso-hom-app-naturality-right.md) | 80 | `result-track:1097cc6ff131a565436a7fd1e2f0f882afaabe5d1bb9ed63c9b8a1a3b0f4b598` |
| 7 | `lemma` | [map_hexagon_forward](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/map-hexagon-forward.md) | 89 | `result-track:a8b2cfabb43007ec1c581baaf8ed1c08a18b17c540b63d05833b52616ce3693a` |
| 8 | `lemma` | [map_hexagon_reverse](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/map-hexagon-reverse.md) | 106 | `result-track:32abfeda61d514324bd3e04f91b74c8eb2ff24e564b764dc105f07a83d43a433` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/instance-source-edition-4.md) | 122 | `declaration-track:b657da80abbd16afe895a54fecb459aa70f45a40596804f96d3180be98d4786e` |
| 10 | `lemma` | [β_hom_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/hom-app.md) | 129 | `result-track:45c52a5f8c428df56914e96c1cf912b2f0259f098f8f3c06756640b73921bc0b` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/instance-source-edition-2.md) | 136 | `declaration-track:79fab2b7d60e1f71cb2f46cecc16cd11788871ed5e5aa30dc8689a3f01d21a9a` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/MonoidalBraidedPublic.lean/declarations/instance-source-edition-3.md) | 146 | `declaration-track:a47de7499322819bc866d3b44d888dda3676922d89f88e2fc0a61637a05e28ad` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf2e879ecaa63fee0926e62547af551ee0217e0f46ca8267ecfdf40c728e9f8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Braided/Variantf092aee581d001c6fb1501c940474efdf5eac29618b3ddfd4d6a4fd3421f071d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
