# Verification target: Feshbach Hermitian Audit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78875f95d634b590745c6cccd031072c3bf0b8fa",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78875f95d634b590745c6cccd031072c3bf0b8fa`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.FeshbachHermitian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Star.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coupled_completion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/coupled-completion.md) | 24 | `result-track:66be7cfafb0c3748b32b6d320a33f5da7e3a5d92a7074304c5b43dd6e3a30f6d` |
| 2 | `theorem` | [coupled_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/coupled-possemidef.md) | 39 | `result-track:9e823f3628aaba11d1f75d142f760a215c78184d3157899d725d65f44f3ad4ea` |
| 3 | `def` | [imaginaryCoupling](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/imaginarycoupling.md) | 61 | `declaration-track:6821dee19e236b910b89e02cd8f840431bb848c26c32d069409960a6f4f79687` |
| 4 | `theorem` | [imaginary_center](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/imaginary-center.md) | 64 | `result-track:599390f4512ebbd2a5917d1905c74b7b6b21d32d65d2adb5787f01244595a267` |
| 5 | `theorem` | [imaginary_packet_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/imaginary-packet-possemidef.md) | 77 | `result-track:74ffbfaf2a3a38dea3ef16867b0d802c8f42995f55e39b0ad86eff4398e67e45` |
| 6 | `def` | [positiveDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/positivediagonal.md) | 85 | `declaration-track:e2a9a5c379ecd07ed386f0a091aa52321d39c93140f4f783cf19307fefe15178` |
| 7 | `def` | [indefiniteDiagonal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/indefinitediagonal.md) | 88 | `declaration-track:abc6b11f2139e97eddc778f23ab730fffd8b838babd980c5a5a567be65198481` |
| 8 | `theorem` | [same_kernel_different_sign](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeshbachHermitianAudit.lean/declarations/same-kernel-different-sign.md) | 93 | `result-track:78a78dcc3d05f59384e97974f85dd5712519d744aa8043a873fe88c3915427ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c095d1db20d4961bc7e79944699aa3cba5137f7b2800d84d837d1574ab04da0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Ec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecddFeshbachHermitia/Variantec2c937473dd1f3e5b7f3273bb98da6ec9bb03302a2c4a2402cf4e9fbf89ecdd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
