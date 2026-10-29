# Complex argument supplier for polar disk surjectivity

Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.

Pinned parent PR #1012 head `abe111452a3c63a0a5d4cc49880f395d793988b8`.

The source proposes z=‖z‖exp(i arg z) for nonzero complex z, normalizes θ=arg(z)/(2π), and consumes this phase witness in the conditional surjectivity theorem from the parent. The exact pinned Mathlib Complex.norm_mul_exp_arg_mul_I API and coercions remain to be checked. No continuous global argument or logarithm is claimed. No homeomorphism has been Lean elaborated. Next: exact-head proof repair/audit, then compact-to-Hausdorff homeomorphism and transport to the authentic polygon cone.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cae3cefb637c8485070e787499267ac0882546b7652ea0fdaa536de588901028 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
