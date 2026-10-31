# All-N zero-boundary closure for the original signed Liouville causal double Abel

Local mathematical attribution: grwtsk contributors. Date: 2026-10-31.

Status: SOURCE_PROOF_CANDIDATE; compilation, expected types, fresh kernel
replay, transitive axiom audit and independent complete Lean replay are NOT_RUN.
The source does not claim the Riemann Hypothesis or the missing arithmetic bound.

## Objects and provenance

This is an *additive* proof continuation importing the original signed
Liouville kernel source `LiouvilleDoubleAbelCausalKernel.lean`
(blob `b102b4af07b0a1001424b084101c2cc16077181a`)
through `LiouvilleDoubleAbelAnalyticGates.lean`
(blob `b4bd9a83c83603faa5eff5326d9a99ec35dae2d4`).
The literal response is `CCC.pickupResponse` from
`MertensPrimitive.lean` (blob
`45e06c371d67bcf8c939d20a95fcbc63570546fa`).
The signed coefficients are unchanged from
`LiouvilleCausalEnergyTarget.lean` (blob
`a00aaa07c067b4c88203372870b5d5d151de0de4`).

For positive integer n and real u, the original response is
`r_n(u)=2 max(n^(-1/2)-exp(-u/2),0)`. It is zero for u<log n,
and also zero at u=log n because
`exp(-log(n)/2)=1/sqrt(n)`. Therefore for every positive N,
every n>=N and every 0<=u<=log N, `r_n(u)=0`.
The statement is restricted to positive N: `pickupResponse 0 u`
is not a nonnegative causal positive-part response.

Set `T=log N` and use the existing
`K_T(m,g)=integral_0^T r_m(u)r_(m+g)(u)du`.
If m+g>=N, its second response vanishes even at the boundary
m+g=N. Hence `K_T(m,g)=0` with no arithmetic assumption and
with no positivity requirement on r_m at index zero.

## Complete finite telescope

The existing source defines
`Omega_T(p,q)=K_T(p,q)-K_T(p+1,q)-K_T(p,q+1)+K_T(p+1,q+1)`.
For 1<=m,g<=N, the exact closed-rectangle identity is

`sum_(p=m..N) sum_(q=g..N) Omega_T(p,q)`
`= K_T(m,g)-K_T(N+1,g)-K_T(m,N+1)+K_T(N+1,N+1)`.

Both terminal faces and the common corner vanish by the original response
birth condition. The existing filtered-lattice/closed-interval identity
then gives `KernelTailIdentity N` for N>=1, and the original
finite Fubini theorem gives the exact signed rectangle aggregate.
The continuation proves `KernelTailIdentity N` for all N:
* N=0: the `Finset.Icc 1 0` product lattice is empty, so the
  universal statement holds vacuously; no interpretation of log 0
  as physical time is required.
* N=1: T=log 1=0, all closed-interval integrals vanish; the
  existing positive-N telescope covers the sole (1,1) lattice entry.
* N>=2: the same two-coordinate telescope and both terminal faces
  apply without changing the source or the positive-gap mask.

The new `positiveGapAggregate_eq_rectangles_all_N` has no
`KernelTailIdentity` or arithmetic supplier parameter, and leaves
the original named conditional theorem intact for compatibility.

## Independent hostile boundary

At N=3 and T=log 3, all positive-gap kernels except possibly
`K_T(1,1)` have m+g>=3 and vanish. In particular,
`Omega_T(1,1)=K_T(1,1)-K_T(2,1)-K_T(1,2)+K_T(2,2)=K_T(1,1)`.
A separate source theorem candidate records exactly that corner
identity. It tests the endpoint support but does NOT replace the
general finite-double-telescope proof. Both share the same original
birth rule; it is not an independent proof of the all-N theorem.

## Boundaries and consumer

The useful consumer is the original `positiveGapAggregate` and its
unchanged signed rectangular sum, including the `signedPair`
triangular mask and complete Liouville coefficients. No absolute
values, lost sign channels, substitute kernel, or arithmetic
independence assumption are introduced.

The separate all-height, all-positive-rate upper bound for the
complete signed weighted rectangle average remains OPEN.
A uniform one-sided square-root envelope on every rectangle already
contains RH-strength Liouville summatory estimates through its
p=1 and p=3 rows. This continuation provides only the finite
analytic transport and does not infer the arithmetic bound from
kernel positivity.

The algebraic source proof is an application of classical
two-coordinate finite telescoping, not a claim of a novel analytic
theorem. Its new contribution relative to the pinned published
gate is source coverage of N=0, exact positive birth equality,
full m+g>=N support and the N=3 corner fixture.

## Verification and publication boundary

Original signed kernel and existing analytic-gate blobs are not
modified. This source is an additive, uncompiled proof script.
Lean v4.34.1; Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
When a separately authorized exact-source verifier is available,
check the endpoint `Real.exp_half` rewrite, positive-index
case split, interval-integral congruence, empty Finset product,
N=1 specialization, all imported gate obligations, complete
expected interfaces and transitive axioms. No verification is
dispatched by this publication. No root imports or toolchain
changes are required.
