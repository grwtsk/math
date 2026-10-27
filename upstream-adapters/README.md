# Upstream-only mathematical adapters

Contribution: grwtsk. Preserve genuine upstream authors and licenses.

The two Lean sources in this directory import OAI declarations. They are maintained source candidates, not part of the local GRWTSK default build and not locally admitted analytic inputs.

Required upstream workspace: openai/math@7ef5c0cc5ca4b0e072b7a050fca09ab24bc6fa3a, Lean leanprover/lean4:v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The local repository remains on Lean v4.33.0 and Mathlib db584cd6d46c92f209a44c0f1c829460d327499d. Do not mix compiled artifacts between these environments or add these imports to the local root.

OpenAITwoPointFiniteFamily.lean retains all fixed-form constants, multiplicativity and nonpretentiousness premises. OpenAISevenEighthsGap.lean derives a consequence of the upstream seven-eighths declaration; it does not prove or locally validate that analytic input.

Verification request: #1392. Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN. Source integration does not change those statuses. No workflow or remote execution is authorized by this README.
