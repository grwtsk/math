# Verification target: Representability Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b974c2b544e1ec61ad486907a02c3418ca6eeee",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b974c2b544e1ec61ad486907a02c3418ca6eeee`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Representable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Sites.BigZariski` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.GluingOneHypercover` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.LocallyBijective` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Iso` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [glueData](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/gluedata.md) | 73 | `declaration-track:583d4a987be1bc4a46a2f860a9dbe78de93feb2840a43d0f850acb3cc5fef8be` |
| 2 | `def` | [toGlued](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/toglued.md) | 92 | `declaration-track:a178c068dec57caa8af8d6418b6a9c2ffdf91f90d2baaf7ae8bfd0db3a17acd2` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/instance-source-edition-3.md) | 95 | `declaration-track:d478d03445bb8293938e8a8a6d39285f1a172df67724a44d74a567485be55500` |
| 4 | `def` | [yonedaGluedToSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/yonedagluedtosheaf.md) | 99 | `declaration-track:6a6eaa5d9b9bc883cd0f49a92bde12fbc07b68afce6fa0829115a30b25128e9d` |
| 5 | `lemma` | [yoneda_toGlued_yonedaGluedToSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/yoneda-toglued-yonedagluedtosheaf.md) | 114 | `result-track:90e69c4ee056d64b6320658227d7a596eafd73415491a6c542caafad8c47e856` |
| 6 | `lemma` | [yonedaGluedToSheaf_app_toGlued](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/yonedagluedtosheaf-app-toglued.md) | 122 | `result-track:649fcdc0aef0c6c3b64b39bd2b5692ac0b1ab9ea3d4e58fd2d649f23ad99230f` |
| 7 | `lemma` | [yonedaGluedToSheaf_app_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/yonedagluedtosheaf-app-comp.md) | 128 | `result-track:4b2b4ecddd379a22297680b2fe21a57cda22c0e279d881974d881dc34affc924` |
| 8 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/instance-source-edition-2.md) | 133 | `declaration-track:b6de0ee2ed5cc814dbb4462e27ecf8723fd60c2ef0b1920fee8f086f119a62aa` |
| 9 | `lemma` | [comp_toGlued_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/comp-toglued-eq.md) | 139 | `result-track:6d400b0ad95ee4887fda849714cf321eecac61b1b9724015f8ab4afa1a04f56c` |
| 10 | `lemma` | [glueData_openCover_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/gluedata-opencover-map.md) | 148 | `result-track:4bf20f965792be1b663fe0b86ab1ca9fae9a041bc1732f8fbf2939ce8b261f76` |
| 11 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/instance.md) | 150 | `declaration-track:5a0dc75293a9bc96bbae301c278588bdbdf3a39a1ed8aa442f087b890cc6110a` |
| 12 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/instance-source-edition-4.md) | 168 | `declaration-track:ebea8a3d89a71fa9f2385f0e2fc42a3067e353285832a5153360b909191ac91e` |
| 13 | `def` | [yonedaIsoSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/yonedaisosheaf.md) | 175 | `declaration-track:db7a105534785739cd8cd6615f9c01bbc37d470597ffc2dbb82bc52b6d5c8142` |
| 14 | `def` | [representableBy](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/representableby.md) | 189 | `declaration-track:2147130c2c488fd97ac8b3eec5eed48cf0367cd5f56f1f0724fcfa9282614e6f` |
| 15 | `theorem` | [isRepresentable](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/RepresentabilityNamespaced.lean/declarations/isrepresentable.md) | 204 | `result-track:2ed21f6d9929774018dfee577519c146bfc1471f9dd67318f068b9c63efe79d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32b48a035cd8ff02b862c2b7f91e6f4aa3d9446bd02a2c00d382bf7aaea30372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variant06e4663a69fc76572d1b9f74f145b728f3eb2848d316b30a14d8e1badd07051f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
