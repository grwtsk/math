# Verification target: Basis Bilinear Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd7a2b441c2ccf6ca9ba106c29bb816789a7aefe",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd7a2b441c2ccf6ca9ba106c29bb816789a7aefe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bilinear/Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e.lean.json)

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
| 1 | `theorem` | [ext_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/declarations/ext-basis.md) | 47 | `result-track:d8fdd7ca8bc522d0a50df65079f54be2ae3cb541578f615f16051845f5dd8583` |
| 2 | `lemma` | [ext_iff_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/declarations/ext-iff-basis.md) | 51 | `result-track:a4f6d05856ad0a137d4963e9e3633f54e80178c6433503ad13727e88f4c99944` |
| 3 | `lemma` | [BilinForm.ext_iff_basis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/declarations/bilinform-ext-iff-basis.md) | 55 | `result-track:fe4ae8c379d64014b3990849537a61090f3f7df96028fa6576d59d65b127496d` |
| 4 | `theorem` | [sum_repr_mul_repr_mulₛₗ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/declarations/sum-repr-mul-repr-mul-source-edition-2.md) | 62 | `result-track:95c0dd1b4e1f95b3299a6c64564a14b4dc717c874968a40c0993baa2560cfe1b` |
| 5 | `theorem` | [sum_repr_mul_repr_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/BasisBilinearNamespacedPublic.lean/declarations/sum-repr-mul-repr-mul.md) | 71 | `result-track:12aa7557ca9dd6a4ff688ecfe19bcde3b6dddef3f00a5b905d0e3768ebf6124f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5d72b2bb4cff6d5d036566d984984f65dc6739c39fba25dd53dac833198bba8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bilinear/Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bilinear/Variant189a116d9fbbfc8fe4516c84536ebbc841fd70f28b816964f6aac7fa4ea0fc8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
