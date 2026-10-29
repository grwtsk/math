# Verification target: Complex Determinant Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fddc6e95dec33d8fdf2ce31b66c191b8f5b593e6",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variantfa11c5433e50d39990477e6647e4ab752d189900aeb7a710fedc50d8362a2f6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/ComplexDeterminantNamespaced.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/ComplexDeterminantNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fddc6e95dec33d8fdf2ce31b66c191b8f5b593e6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Determinant/Variantfa11c5433e50d39990477e6647e4ab752d189900aeb7a710fedc50d8362a2f6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Determinant/Variantfa11c5433e50d39990477e6647e4ab752d189900aeb7a710fedc50d8362a2f6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Complex.Module` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_conjAe](../../../../FunctionsOfAComplexVariable/ComplexDeterminantNamespaced.lean/declarations/det-conjae.md) | 30 | `result-track:a460bf38a6341fd249c16712cb400d4cbbe5976eed59b1635bb773045ccfa27d` |
| 2 | `theorem` | [linearEquiv_det_conjAe](../../../../FunctionsOfAComplexVariable/ComplexDeterminantNamespaced.lean/declarations/linearequiv-det-conjae.md) | 36 | `result-track:4ae97215fe157625e78ab06eb0dfd2acc46d5495757bc9683da93822a63a0710` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38fc9c6263eabe2f24f55a03881e5fc2151d7ebda5c2b29edcb9f928816fad4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Determinant/Variantfa11c5433e50d39990477e6647e4ab752d189900aeb7a710fedc50d8362a2f6d.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Determinant/Variantfa11c5433e50d39990477e6647e4ab752d189900aeb7a710fedc50d8362a2f6d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
