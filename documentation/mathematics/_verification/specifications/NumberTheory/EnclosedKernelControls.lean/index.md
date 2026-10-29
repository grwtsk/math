# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.EnclosedKernelControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd077dad24f7af608a87ae7586bfdc6eb47774a8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/EnclosedKernelControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/EnclosedKernelControls.lean/index.md) · [Full source](../../../../NumberTheory/EnclosedKernelControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd077dad24f7af608a87ae7586bfdc6eb47774a8`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/EnclosedKernelControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/EnclosedKernelControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.LegendreEnclosedKernel`](../../../../NumberTheory/LegendreEnclosedKernel.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [signed_remainder_retained](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/signed-remainder-retained.md) | 26 | `result-track:c48b4e1bb4a745ad8d00e981af15fce0b5fad2e713266f5067cb9a4743885019` |
| 2 | `theorem` | [omitted_remainder_control](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/omitted-remainder-control.md) | 34 | `result-track:c6646dbc2d83fe97023f51367fe4c81e488f4120dc608cace9220c41dc957824` |
| 3 | `theorem` | [same_real_part_is_not_identity](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/same-real-part-is-not-identity.md) | 39 | `result-track:897e2d490aff0f18ee7733bd05b2f8b08da0480ce3767c74ffcb46096c805511` |
| 4 | `theorem` | [imaginary_defect_cannot_have_zero_error](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/imaginary-defect-cannot-have-zero-error.md) | 44 | `result-track:b4499b5b314d7ae282c5d6b58e5ae7525b2a3b987f83093120a864f70d2124a3` |
| 5 | `theorem` | [charged_imaginary_remainder_control](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/charged-imaginary-remainder-control.md) | 51 | `result-track:4b408c525c9beb2cf10ef8919d22849f9a6f85431423c12eb9e65896cf9b51d4` |
| 6 | `theorem` | [one_sided_does_not_bound_imaginary](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/one-sided-does-not-bound-imaginary.md) | 57 | `result-track:e5c0c23a74448412215e964fc322d7e22d5420858417c5760db4f841d20a03d2` |
| 7 | `theorem` | [empty_included_family](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/empty-included-family.md) | 62 | `result-track:8d3867e6270ef0ccfb87c1e0daeff99985b229f968a5e6444b008ec1d4ed5e4d` |
| 8 | `theorem` | [wrong_multiplicity_control](../../../../NumberTheory/EnclosedKernelControls.lean/declarations/wrong-multiplicity-control.md) | 68 | `result-track:2d71765a8c2c82cfd7eeee93c6bda1bef586567db3db52d49bf017024f77b8ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=40394020e66e12651d72a225744420ae24923ed52ec2d2fedab8976511a26d9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Chebyshev/Checks/EnclosedKernelControls.lean","GRWTSK/_verification/specifications/NumberTheory/Chebyshev/Checks/EnclosedKernelControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
