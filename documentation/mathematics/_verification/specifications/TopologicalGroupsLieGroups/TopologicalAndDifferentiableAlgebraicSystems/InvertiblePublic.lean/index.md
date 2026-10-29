# Verification target: Invertible Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9142936943b7be8fe6c55696394a04a0ed4ce2ed",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantc3cd7e58028e30ac04e3473e75e456fbc30207eafe9309f2f96b6ccd708b3d33.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9142936943b7be8fe6c55696394a04a0ed4ce2ed`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantc3cd7e58028e30ac04e3473e75e456fbc30207eafe9309f2f96b6ccd708b3d33.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantc3cd7e58028e30ac04e3473e75e456fbc30207eafe9309f2f96b6ccd708b3d33.lean.json)

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
| 1 | `def` | [IsInvertible](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible.md) | 34 | `declaration-track:63138bf01c6ce3eda940d7fb9a2163f78f94d1714b32960bca84320ab1592127` |
| 2 | `def` | [inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-source-edition-2.md) | 42 | `declaration-track:e2d9fdd93a93251f5952521f4077e476ee456a0d2d9b020ae76b9b638f9239bc` |
| 3 | `lemma` | [isInvertible_equiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-equiv.md) | 45 | `result-track:4cd86e46e11139b9c0f0ebfba2580e4fbe21cc726604ea8079ce3d65998a8f5e` |
| 4 | `theorem` | [inverse_equiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-equiv.md) | 49 | `result-track:8a3002ca16b69820018a2e3369dd4d799ec660a92520d4982e5f4cba8c8aa733` |
| 5 | `lemma` | [inverse_of_not_isInvertible](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-of-not-isinvertible.md) | 53 | `result-track:4f2878460ee6eb6cc2910e65e8d0cefcfbd830ade9ab2f9b2a366baa1ee55fb9` |
| 6 | `lemma` | [IsInvertible.of_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-of-inverse.md) | 57 | `result-track:19c9ee890a802a7d95ce2238c08a122d8c5678e8c7e81f33e1eab838f8c56896` |
| 7 | `lemma` | [inverse_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-eq.md) | 62 | `result-track:2097fd983a554f1445732f3e488801ec532e4b7be9a8cd363e4f1335213d5638` |
| 8 | `theorem` | [isInvertible_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-zero-iff.md) | 69 | `result-track:252b5b7741c1fa7b5ec2c7eb25c609984777050577e79a30ed593243c666ab01` |
| 9 | `theorem` | [inverse_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-zero.md) | 79 | `result-track:71bed4abe3c749a609c53afc8562a507bfcae9647b8701a91695c6ab8978fa01` |
| 10 | `lemma` | [IsInvertible.comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-comp.md) | 85 | `result-track:78586908293e9ee070cbe377abee803f6b9d06d2f3cde620ed0674aa31e4a990` |
| 11 | `lemma` | [IsInvertible.inverse_apply_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-apply-eq.md) | 91 | `result-track:381b4fff7528ac465d5b4cc6d703daa8d28b764b4a941bf2822c7224f543e438` |
| 12 | `lemma` | [isInvertible_equiv_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-equiv-comp.md) | 97 | `result-track:58ad28bc964b0f4211696f0946c7e0fb13cba9517fc7ceeb38d423dc76ec8181` |
| 13 | `lemma` | [isInvertible_comp_equiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-comp-equiv.md) | 107 | `result-track:91d4612541184e2a7dc995de3dfff0bbd464e7c83465734d5739dce1c4b3de50` |
| 14 | `lemma` | [inverse_equiv_comp](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-equiv-comp.md) | 117 | `result-track:5f1882d1831895211df142b86d4850cc85aa8d066a7c437feeeaf684b64612ac` |
| 15 | `lemma` | [inverse_comp_equiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-comp-equiv.md) | 125 | `result-track:fffd26f9b1ecaa5a4d111ea084c3f53414c0850b3e60dd01d8220ef15413a54a` |
| 16 | `lemma` | [IsInvertible.inverse_comp_of_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-comp-of-left.md) | 133 | `result-track:5ab9af367d982dad7196d571dee77ce5f95eef759ea9bbb8cea51def1fd47a24` |
| 17 | `lemma` | [IsInvertible.inverse_comp_apply_of_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-comp-apply-of-left.md) | 138 | `result-track:05e32f9e2c61b569752b17bd90778385196ec3d1ff1a4d00545e6e9eb0acd7d1` |
| 18 | `lemma` | [IsInvertible.inverse_comp_of_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-comp-of-right.md) | 142 | `result-track:24247db29e9e22cafdf425a08c9be5331d305cd6428dc51bc9ada0987a26498e` |
| 19 | `lemma` | [IsInvertible.inverse_comp_apply_of_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-comp-apply-of-right.md) | 147 | `result-track:d60593e60e312b6627594ea45d43bcc7247507bb235c0df0721b1a260f1f5cfc` |
| 20 | `theorem` | [ringInverse_equiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/ringinverse-equiv.md) | 152 | `result-track:b32e54d1348fe49b612697629d6a2a3c6a99a2cc9634d8b1b0cd10c0d306579d` |
| 21 | `theorem` | [inverse_eq_ringInverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-eq-ringinverse.md) | 160 | `result-track:2e73e23854546a5fd576a1c81fb88a769ae4b61823f1581afbfd7edaca99d5b2` |
| 22 | `theorem` | [ringInverse_eq_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/ringinverse-eq-inverse.md) | 177 | `result-track:dbb9f2244b9621b28e6cbf04129c25bc239aaa5f0967a08c8a564c3138a786da` |
| 23 | `theorem` | [inverse_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-id.md) | 181 | `result-track:6adb264c575cffea74396d925af50bd15fcb447e440b786ecf5a2ac8dfaa7286` |
| 24 | `theorem` | [self_comp_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/self-comp-inverse.md) | 190 | `result-track:964567d99f86010052c3d6f8fe19c05e155bd6865109ebb8639e5f15949845f3` |
| 25 | `theorem` | [self_apply_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/self-apply-inverse.md) | 195 | `result-track:3d90e93d94fe2977c6b359564f6d49c2c6e78ebd719b084f0ec25e4ff0ee67b5` |
| 26 | `theorem` | [inverse_comp_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-comp-self.md) | 200 | `result-track:d853b79cf8fe4ab4177982f34f97cd6d98bd44581038034baaf3d766490c0a21` |
| 27 | `theorem` | [inverse_apply_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-apply-self.md) | 205 | `result-track:2c5e33b733ce62542819b32fc402895d3f9aed1550f1881dc7dd075176926bcb` |
| 28 | `theorem` | [bijective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/bijective.md) | 209 | `result-track:82738ccc7e54e8c92e1b9da7754aa4452b5c04c17be66c81e704f86cb53226fd` |
| 29 | `theorem` | [injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/injective.md) | 213 | `result-track:b7c1a6a44753f0e037ce5d3ef9853906c8ad23c44c31646e7a6b1b83b25818e5` |
| 30 | `theorem` | [surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/surjective.md) | 216 | `result-track:15591d22fd9eff1eaa091256c632328ad05904dc2b0428596f23392ec4b9364a` |
| 31 | `theorem` | [inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse.md) | 219 | `result-track:3923883be07fcd020a219231c651244736da311ae0321ad7b87da7f55d5d16b8` |
| 32 | `theorem` | [inverse_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/inverse-inverse.md) | 224 | `result-track:6fa3bdd6aa5ba210e2a6be27c12f61d5c8b4befe1cbf13e35d98498c9cfb8704` |
| 33 | `theorem` | [of_isInvertible_inverse](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/of-isinvertible-inverse.md) | 228 | `result-track:f4dd7fd8f11b8e53c1bfddab9483e138f7a5dbf7536dc85750d0a74b961f6a28` |
| 34 | `theorem` | [isInvertible_inverse_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-inverse-iff.md) | 236 | `result-track:1145dae077e905bc5821b26f167731e882630cb8bd42b5f568fb89c05c98de7e` |
| 35 | `theorem` | [isInvertible_iff_isHomeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InvertiblePublic.lean/declarations/isinvertible-iff-ishomeomorph.md) | 240 | `result-track:43b5f2de8971e0940eb619991eaa4e9d47a707552c1683c8c01ec0ae81e17597` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1cc9c0a2cf669b5bca47220ccd58a1c177d997e2921c4304312c89253f113e66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantc3cd7e58028e30ac04e3473e75e456fbc30207eafe9309f2f96b6ccd708b3d33.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Invertible/Variantc3cd7e58028e30ac04e3473e75e456fbc30207eafe9309f2f96b6ccd708b3d33.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
