# Verification target: Serre Class Morphism Property Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1c7dda25624468dc040fde38e27bc433f7f1ffe",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1c7dda25624468dc040fde38e27bc433f7f1ffe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean.json)

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
| 1 | `def` | [monoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/monomodserre.md) | 60 | `declaration-track:ebe60e04a9872c48d996c55d18a8ee62494edc3e09a386c65c52619bf0815d25` |
| 2 | `def` | [epiModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/epimodserre.md) | 67 | `declaration-track:7952e8eeb504567db63d4709e41527e4b34da6776fa354f59652bcfaabcd22dc` |
| 3 | `def` | [isoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre.md) | 74 | `declaration-track:27b72bde04b2ef619ac461567ad80a4778dcb80acc1731b2c7729a3cd167a650` |
| 4 | `lemma` | [monoModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/monomodserre-iff.md) | 79 | `result-track:963f70d5b2e151ad24bf4ee55fb8f47b1d9e2c42aab8a86f1d67ba42fe7d4798` |
| 5 | `lemma` | [monomorphisms_le_monoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/monomorphisms-le-monomodserre.md) | 82 | `result-track:fb551259b09c2bb0136bf4cbea2ec0f5e6e671114d0fa7a53b1dd2e633278176` |
| 6 | `lemma` | [monoModSerre_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/monomodserre-of-mono.md) | 85 | `result-track:68f3b4f467b1ab0d051cbae3ef0a5f3a454f3fe8df93d64ecc4fc49cc1a08085` |
| 7 | `lemma` | [epiModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/epimodserre-iff.md) | 89 | `result-track:11b91240b2c16a009225748ace37b4bde54f36e7a82a3c2688814f18a87164bc` |
| 8 | `lemma` | [epimorphisms_le_epiModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/epimorphisms-le-epimodserre.md) | 92 | `result-track:86632cd848993ba982d480b5a532b4cec2c51ed8b9fbe0236eb8047f810d8b15` |
| 9 | `lemma` | [epiModSerre_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/epimodserre-of-epi.md) | 95 | `result-track:f4ebe2ba041442c9f1c11abaf921b18fd2a01ec7a64da6e0a5230d21b172e44c` |
| 10 | `lemma` | [epiModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/epimodserre-zero-iff.md) | 100 | `result-track:c1e5e381b2c9be6e5371b7843d35f07b242cb000b1e62c872f8d2eca7950930e` |
| 11 | `lemma` | [monoModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/monomodserre-zero-iff.md) | 105 | `result-track:1da45b32b0630a02cd68c0b8467a0bafb1b2055fa213123bd50b0be340861a0a` |
| 12 | `lemma` | [isoModSerre_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-iff.md) | 109 | `result-track:fd58e9adf59f5d92c39b0cd65af2c7d92a7ebbbe218c070f3239d317a320729d` |
| 13 | `lemma` | [isoModSerre_iff_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-iff-of-mono.md) | 112 | `result-track:9ea007d60042e468d7e884e8cf0bb623a91723121fb05ec760f504124f861462` |
| 14 | `lemma` | [isoModSerre_iff_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-iff-of-epi.md) | 118 | `result-track:2ce19309aac5d77fb74baa138ee6b4716fb27aa6865ac2e019d63c69c99e0972` |
| 15 | `lemma` | [isoModSerre_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-of-mono.md) | 124 | `result-track:514f9cab2cadbe9d1043b7de1f9c666304a5e304e70851f7f899b573e7584331` |
| 16 | `lemma` | [isoModSerre_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-of-epi.md) | 128 | `result-track:8244e22e77b3edead6c92b73a1d63aec778425e91fdb6faa05cfe8c9be447db5` |
| 17 | `lemma` | [isoModSerre_zero_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-zero-iff.md) | 133 | `result-track:fc6790286447d766c5750ff24ab8b6e76b0c93334cafcb0948249f67590a44d1` |
| 18 | `lemma` | [isomorphisms_le_isoModSerre](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomorphisms-le-isomodserre.md) | 137 | `result-track:6c8ec156b2914fdc543c647d4615bf5c019468e88bab060bfc6d393fea7edf34` |
| 19 | `lemma` | [isoModSerre_of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-of-isiso.md) | 140 | `result-track:c041b4e23fe2fd87c0d93086ab303595ac6dc1e70ee140ed6bd5b2cfb3f3dbec` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 143 | `declaration-track:cc054ab9068757979a6813f356877eeb63856e2a90a0bc96a590fef5ab759bc7` |
| 21 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 148 | `declaration-track:c38a5b759af9a2b9b01d8f9ed85da0d72708b6bb0a586604d81b252f35f3e870` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 153 | `declaration-track:55f8a8f0174d807d110179ac1c4653f06beb2a56d26cfe66509475f6d50fa85a` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 157 | `declaration-track:94b56f8964f4520e593e87664a46e738374c15696afd2831d315248daea5d22d` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 161 | `declaration-track:d439b359b69bf94737ad5e429232176c7063f9c6d5212167ad3f2e6cbf4cff7b` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 165 | `declaration-track:f48071b391b20382ea0fde75fc9332e15d184fe870ef92493757e986a8ca6916` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance.md) | 169 | `declaration-track:085fae59857fb5f17fc9968578c7313aff07b0ac587c2263274e494f29ffa09c` |
| 27 | `lemma` | [le_kernel_of_isoModSerre_isInvertedBy](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/le-kernel-of-isomodserre-isinvertedby.md) | 177 | `result-track:66dce8e4bcd4a7a27788ad9aa004ab028cb1c1448561e1b94d591505aa7fb69e` |
| 28 | `lemma` | [isoModSerre_isInvertedBy_iff](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/isomodserre-isinvertedby-iff.md) | 186 | `result-track:77c9c233cfe128a3206edc56f2609ec63a3d2c6a29a0c163bce7db3d78e951a9` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 198 | `declaration-track:7198581814d72c7be6b3df0c88478b4351edba5fe848464faf6601a1f8cfdaac` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 203 | `declaration-track:6506c6f283efa3f5ea495d0acd0b2ed8b09c514db5c477f61a58a5e24e47e2c5` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:3b0a9dcc9542b45d0bf77f7d4c56e33d1159b0a0b83ebdc0bcbd88718e3febe8` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 212 | `declaration-track:3f06404fc07923f4a402926750742492dca1cc772ce8be50b4d144677144c948` |
| 33 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 217 | `declaration-track:77e21b4163d00394c101f945df7b86dc56cf9795a01aa322ebef994c0e008ea4` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/SerreClassMorphismPropertyNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 222 | `declaration-track:68162ca19e4d6b78d984062e07ae2c2b6fbdffc5c12c6d23915726b4987b06f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6b6434c1321e67ed73f5174e589e82cfedb6e5c7410e036b4e468f9bd7d61d6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/MorphismProperty/Variantea1f24b4103d000ba33bad69e70cd2cd8c8f185240ff06a8ee55ac440f3f45e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
