# Verification target: Grassmannian Namespaced Alternative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5265ed3c5047303360d7c3ad8fb9389fc865ab0",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5265ed3c5047303360d7c3ad8fb9389fc865ab0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [involutionCompressionGram](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/involutioncompressiongram.md) | 35 | `declaration-track:586f476739ee74ab67c6820151cc66950f5a31db335313286f560cf522a1fe19` |
| 2 | `theorem` | [involutionCompressionGram_transpose](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/involutioncompressiongram-transpose.md) | 42 | `result-track:60b8c659a3a7ea93e1cf2808549c9a5b229b15e3cea1f4b0d809e4fd12c62fa6` |
| 3 | `theorem` | [involutionCompressionGram_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/involutioncompressiongram-mul-left.md) | 55 | `result-track:1189969f6d78419958b1aa661f5df8d6a4c818c4671d6246179766a541e5fd9e` |
| 4 | `theorem` | [det_involutionCompressionGram_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/det-involutioncompressiongram-mul-left.md) | 68 | `result-track:e98c197a64bfbcf7c036a0fc0e30066d914f23813727e6ef7d57b1f1deaa03f3` |
| 5 | `theorem` | [involutionCompressionGram_nonnegative_iff_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/involutioncompressiongram-nonnegative-iff-mul-left.md) | 82 | `result-track:9899e4b79f26801935cd84b72f360cb2e38bc4c5fc18d66fbdb8bfe5848fdac0` |
| 6 | `def` | [normalizedInvolutionCompression](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/normalizedinvolutioncompression.md) | 95 | `declaration-track:a6bf63997164eb085d08ba8d4db6131ec84663ff1fd6f896b6a46f5584eeb58b` |
| 7 | `theorem` | [det_frameGram_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/det-framegram-mul-left.md) | 104 | `result-track:c1a25ad073849ca8ccc34d33841596e91c1d91e64fc1c88e91caadcad3933107` |
| 8 | `theorem` | [normalizedInvolutionCompression_mul_left](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/normalizedinvolutioncompression-mul-left.md) | 118 | `result-track:75d1b63b3ecaf342ad1a06dd7acb74f3c4b8804b85fd9b28ddaa0ee137af18e9` |
| 9 | `theorem` | [normalizedInvolutionCompression_eq_det_of_gram_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/normalizedinvolutioncompression-eq-det-of-gram-one.md) | 133 | `result-track:7c6b919c2d27900700b79046c95b0d517ae25455760ac866912a66c630a3a78e` |
| 10 | `theorem` | [involutionCompressionGram_nonnegative_iff_of_rowSpace_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/GrassmannianNamespacedAlternative.lean/declarations/involutioncompressiongram-nonnegative-iff-of-rowspace-eq.md) | 146 | `result-track:bac349493817f9936db865d5a00c98f7db96cb9f81f8187b17eb69946a91afb1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4e46136446fd70903dccd8edba47e05deacd1728e6d21185532956c057eca27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Grassmannian/Variant19a0dee46be277a0721259ae5a1ca3b888521d50adecbed99ddabf996d38d165.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
