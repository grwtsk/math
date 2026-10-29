# Verification target: Free Coherence Namespaced Inclusion Obj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8fc111bf3247f42fb4a61e9743ab48d86538c3c4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantedfc02b8061a7faa3f9150d340578e1c2bb2d011fdc112e145a0d134a144944a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8fc111bf3247f42fb4a61e9743ab48d86538c3c4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantedfc02b8061a7faa3f9150d340578e1c2bb2d011fdc112e145a0d134a144944a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantedfc02b8061a7faa3f9150d340578e1c2bb2d011fdc112e145a0d134a144944a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Free.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NormalMonoidalObject](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalmonoidalobject.md) | 61 | `declaration-track:e487bc4eecc01742664f0f19f4c6e8cf1ad720cd66f911e415ab62c4249c9bb5` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/instance.md) | 74 | `declaration-track:62d2a3cc9d2f8d38ea69d95d7aacb4ec323c8f19d9779c63908d413855fabf5f` |
| 3 | `def` | [inclusionObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/inclusionobj.md) | 78 | `declaration-track:b4d326dfaafb4077293aabc3fec7af67ed7de0642e06e35548ba9940907df2c9` |
| 4 | `def` | [inclusion](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/inclusion.md) | 83 | `declaration-track:3b2921811b6fd055afe5aa0cea6d901fca3b4d7fec0ad06eff8866368236615f` |
| 5 | `theorem` | [inclusion_obj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/inclusion-obj.md) | 87 | `result-track:d9dbde017e819d58b6e87cfd19411b6c2cd0595c7b3b8d9c660e18a93e778cc7` |
| 6 | `theorem` | [inclusion_map](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/inclusion-map.md) | 92 | `result-track:237b9e6ccbf488d77c718a7be8515135b341ae478c7c32dbdf23240d95f7823c` |
| 7 | `def` | [normalizeObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeobj.md) | 99 | `declaration-track:1423c8ee1abbe104c676d1dd5da38d0a08ca163eaa1f5f33eeb444a07d9e0827` |
| 8 | `theorem` | [normalizeObj_unitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeobj-unitor.md) | 105 | `result-track:0858a0af71ebc3781ebed1d462cb3a8142e186f5654614454918aa9ac4fdc35e` |
| 9 | `theorem` | [normalizeObj_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeobj-tensor.md) | 109 | `result-track:db04e4ac92bf4ba851d8fba1d4051ec9dec4ca3e6013361cdc3779c4dbf2e8ae` |
| 10 | `def` | [normalizeObj'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeobj-source-edition-2.md) | 114 | `declaration-track:f1a46e66645eb4ca26a59f57e817c700c281ba9fa586b7984f4ea78d2d784f4b` |
| 11 | `def` | [normalizeMapAux](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizemapaux.md) | 123 | `declaration-track:d7baeaa9c52297f08a8f886567263f2821857aed66d6b8987ae6e7ffef88ae54` |
| 12 | `def` | [normalize](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalize.md) | 150 | `declaration-track:c09f01d4d3485f87ef3496a52678edd4c350fff399d7a94f29106035873a2703` |
| 13 | `def` | [normalize'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalize-source-edition-2.md) | 158 | `declaration-track:f08cde67eea39651d0b1de8babfe8e0d2209b8969cd1c7ed1d4041b7883ea3e6` |
| 14 | `def` | [fullNormalize](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/fullnormalize.md) | 162 | `declaration-track:0e7f74ca0146504658d0e827b8b5646b11e1b41f4bc313653249b35bfc9c130d` |
| 15 | `def` | [tensorFunc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/tensorfunc.md) | 169 | `declaration-track:4ede20c3f94a52b74eae333f548d19a9568766ddeb7e1d70b6662ef64e04fb97` |
| 16 | `theorem` | [tensorFunc_map_app](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/tensorfunc-map-app.md) | 173 | `result-track:e47acf7b78d8e5a3cdd322dca551c78178dc3b361df7dd08fe3b173dabc428d4` |
| 17 | `theorem` | [tensorFunc_obj_map](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/tensorfunc-obj-map.md) | 176 | `result-track:ae161eff9661b113aa599bbaa8ca94518a0f35e62c1c260e0a5a73c31ca0407a` |
| 18 | `def` | [normalizeIsoApp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoapp-source-edition-2.md) | 188 | `declaration-track:951f3ab92c5e935973c1c793ef048d7d7ee69b9d25b6cd5755085694ca9f4d36` |
| 19 | `def` | [normalizeIsoApp'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoapp.md) | 198 | `declaration-track:6197da7a1457f4e1aa55326f4e04da8b2e87a2cd316c231744efd44a1751c473` |
| 20 | `theorem` | [normalizeIsoApp_eq](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoapp-eq.md) | 205 | `result-track:a8e0382152462bc4c7ba9ee64bed3c2fb3a48fdaab2ce5e3038120d7404e5a45` |
| 21 | `theorem` | [normalizeIsoApp_tensor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoapp-tensor.md) | 216 | `result-track:b5028111807106d5a1c925812875f4630769a1833d28d3aa32b06801e3dd2988` |
| 22 | `theorem` | [normalizeIsoApp_unitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoapp-unitor.md) | 222 | `result-track:d7cf6e0e82d2840dc2503bb481331a8a8a5b2bcd9be04caba91891cb16992655` |
| 23 | `def` | [normalizeIsoAux](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeisoaux.md) | 227 | `declaration-track:dc3a47731c5acbff68d0cc8653de6624834a95a0ca0e925465dcbc4b51f48b59` |
| 24 | `theorem` | [normalizeObj_congr](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeobj-congr.md) | 241 | `result-track:b518c6ca665fd5bd0eef3c31e2a4c7fd5cc294399e05932477070902180247ab` |
| 25 | `theorem` | [normalize_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalize-naturality.md) | 255 | `result-track:0b395df63a0da541c4fe49bb71ace62bfb86f08a20238f848998092731ade98e` |
| 26 | `def` | [normalizeIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/normalizeiso.md) | 282 | `declaration-track:8a3a17d303de869aa06c27b7c5b90793e366ecd58d795babe312e09c99a27019` |
| 27 | `def` | [fullNormalizeIso](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/fullnormalizeiso.md) | 291 | `declaration-track:7d4f1570143b5b2cd39f9a4c046b4fbcafe09edf62ae536f1caaf77313b57006` |
| 28 | `instance` | [subsingleton_hom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/subsingleton-hom.md) | 305 | `declaration-track:2b17fda19ebca6a4d6b0ac96e49b07c475d06c6f54b06fab206c38bd5a612f98` |
| 29 | `def` | [inverseAux](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/inverseaux.md) | 320 | `declaration-track:3dd2c199b2cdf41a1c0b56029fb89963839c74434b5e00e70fa173c1c46cc2df` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/FreeCoherenceNamespacedInclusionObj.lean/declarations/instance-source-edition-2.md) | 335 | `declaration-track:7aceedf4f0e7118480f2354fd082b3a879ef3da8c71f0999a21862b3cb9ad989` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a35f474e4510478431f8a09de9b047f354a2e498619481993e1357a7f574cd73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantedfc02b8061a7faa3f9150d340578e1c2bb2d011fdc112e145a0d134a144944a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Coherence/Variantedfc02b8061a7faa3f9150d340578e1c2bb2d011fdc112e145a0d134a144944a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
