# Finite adaptive-birth payment: separate the calculus from the telescope

Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Depends additively on main publication 07a29fbbb9bcf07536e9bec38544d05496f7d6a1.

The original signed response at n>=1 is unchanged. The adaptive smoothing
width is h_n=1/(n+1), within the logarithmic birth cell. Define
  e_n(t)=mu(n)(pickupResponse(n,t)-adaptiveResponse(n,t)).
Its positive cell energy is the integral of e_n(t)^2 from log n to log(n+1).

Two exact analytic source obligations (not yet Lean theorems):
  AtomicBirthCellEnvelope:
    forall k>=0,
      integral_[log(k+1),log(k+2)] e_(k+1)(t)^2 dt
       <= 1/[3(k+1)(k+2)^3].
  OriginalErrorCellReturn:
    for every dyadic j, the actual complete adaptiveErrorEnergy j
    is at most the sum of those source cell energies k=0..2^j-1.
The first follows from zero-before/zero-after, 0<=theta<=1, and
  2 n^(-1/2)(1-exp(-s/2)) <= s/sqrt(n)
with s in [0,h_n]. The second follows from disjoint birth support and
the exact complete signed source return. Neither uses Mobius cancellation.

The new file proves as Lean source candidates the remaining *finite algebra*:
  1/[3(k+1)(k+2)^3]
    <= (1/12)[1/(k+1)-1/(k+2)].
Therefore every finite envelope sum is <=1/12, with no limit theorem.
The exact conditional theorem `adaptiveErrorBudget_of_cells` takes
the two named analytical obligations and proves the previous
`AdaptiveErrorBudget`. No missing arithmetic estimate or RH theorem has
been inserted as a theorem/axiom, and no global integrability is assumed
merely from the existence of finite signed coordinates.

Verification: compilation, fresh kernel, transitive axiom/native helper
audit and target import closure are NOT_RUN. Do not treat this source
as certified without successful pinned Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612 replay.
