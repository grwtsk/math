# Verification target: Lasker Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1b367b6f511819633bbbda18166404bcac7ac60",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1b367b6f511819633bbbda18166404bcac7ac60`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean.json)

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
| 1 | `def` | [IsLasker](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/islasker-source-edition-2.md) | 47 | `declaration-track:ba1bd186ba2e4ffbbbc55ceac9befbdfeccbc85fd312560184fe91e55842c326` |
| 2 | `lemma` | [decomposition_erase_inf](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/decomposition-erase-inf.md) | 54 | `result-track:0f1f6eec5c1b69fd57f3f52977cf04d98fe5ff6f381cb71151dbf831b9ec5ea1` |
| 3 | `lemma` | [isPrimary_decomposition_pairwise_ne_radical](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/isprimary-decomposition-pairwise-ne-radical.md) | 70 | `result-track:57ba3c58df76b955843310a667d08e5e605a578a79a4fe661ca73b79d2f9462f` |
| 4 | `lemma` | [exists_minimal_isPrimary_decomposition_of_isPrimary_decomposition](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/exists-minimal-isprimary-decomposition-of-isprimary-decomposition.md) | 99 | `result-track:662f6208019139035715dbc62f57b85c8f2e531bf61f534a745ca65c6b115509` |
| 5 | `structure` | [IsMinimalPrimaryDecomposition](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/isminimalprimarydecomposition.md) | 111 | `declaration-track:8fd89597c9a23beb58f24bd43c3360c43e86ba7b5d44d21b98f36dd35de8d5f7` |
| 6 | `lemma` | [IsLasker.exists_isMinimalPrimaryDecomposition](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/islasker-exists-isminimalprimarydecomposition.md) | 118 | `result-track:8b341c494af479273212272db366afab721615f4b419eef85bd50301105264ea` |
| 7 | `lemma` | [injOn](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/injon.md) | 128 | `result-track:6f17978874862f9a93ffdbef925287c59c32de8fc80f8c99b2364042aa62ea86` |
| 8 | `lemma` | [image_radical_eq_associated_primes](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/image-radical-eq-associated-primes.md) | 136 | `result-track:a4ee7c479d204b8917ddf2cf1a61071d3f01ab3e233c87c02fca855e126aeb86` |
| 9 | `lemma` | [mem_associatedPrimes](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/mem-associatedprimes.md) | 159 | `result-track:1fdb5ee3c66801eae635e2740703e5475ec3b10e8ec0f04dd514f06a5ae6e721` |
| 10 | `lemma` | [comap_localized₀_eq_ite](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/comap-localized-eq-ite.md) | 170 | `result-track:8a1ba9bc6faa5480c73c3bee0f42f8323f144e24d6d8cf1575407f2d5ba3f065` |
| 11 | `lemma` | [comap_localized₀_eq_iInf](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/comap-localized-eq-iinf.md) | 206 | `result-track:eaaec5932388a720bcd24d26295c2ec65bbc28f26f1da4368673002334f0776b` |
| 12 | `lemma` | [Ideal.IsMinimalPrimaryDecomposition.minimalPrimes_subset_image_radical](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/ideal-isminimalprimarydecomposition-minimalprimes-subset-image-radical.md) | 230 | `result-track:5b6f88ccea5e47bcf5d9323eb0bfce9623314cf36f253d0d75ce20eac2fb3037` |
| 13 | `lemma` | [Lasker Namespaced Public](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/isprimary.md) | 253 | `result-track:3451557044f03b9eb58261500191fd3bf16da96634e8cb60d91bd45955245782` |
| 14 | `lemma` | [isLasker](../../../../CommutativeAlgebra/LaskerNamespacedPublic.lean/declarations/islasker.md) | 283 | `result-track:4833ec62ff05e97bf1f2a29cf1cbfbd2e8ab8343c2a3de8b32dc5b27f803be7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9bd2d7edd1036ba234c11e3cf0d1b44d93eb0fff2aa654af585b417ea8bfb586 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lasker/Variant3d080abdb6149917128376478f881b96a24ce21748bb28366e12d35ba3142662.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
