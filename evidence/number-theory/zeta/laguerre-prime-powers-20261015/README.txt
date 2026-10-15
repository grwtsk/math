Proper-prime-power separation in the unchanged Laguerre source
=============================================================
Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
Preparation base: 46902124f25fe3a8a2b903865830845f9bd2cdc8.

The exact discrepancy Delta=psi-x+1 is written as H+R, with
 H=theta-x+sqrt(x), R=psi-theta-sqrt(x)+1.
All prime powers are retained; this is a reconstruction identity, not removal
of their coefficients from the original source. The critical carrier
 kappa_k=(-1)^k-(2/3)(-1/3)^k
is not in l2. Proper-prime-power moments equal kappa plus the actual remainder
r. The new written estimate sum_k |r_k|^2<2000 imports Johnston--Yang's explicit
unconditional PNT bound for theta (Corollary 1.2, arXiv:2204.01980v2, first
Table 1 row). Neither that external proof nor its numerical inputs were rebuilt.

The same derivation proves that proper-power coefficient energy divided by N
tends to 1. This is a component asymptotic, not an asymptotic for full D_N.
For the original D_N and the compensated-primary-prime energy V_N,
 |sqrt(D_N)-sqrt(V_N)|<sqrt(2000).
Their complete mixed energy remains, and an all-depth subexponential bound
for V_N remains the missing arithmetic estimate.

Without the external PNT input, elementary Chebyshev estimates already prove
square contribution <=36N and exponent-at-least-three contribution <81 in
coefficient energy. The reusable bounded-input Laguerre estimate is written
separately under evidence/analysis/orthogonal-polynomials. Its degree-N outgoing
Jacobi row is included. The input may be bounded without being in L2.

A uniform-in-depth correction-tail schedule is explicit. At theoretical
cutoffs X=2^3072 and 2^12288 the squared l2 remainder errors are below 10^-6
and 10^-25, respectively. No such prime inventories are enumerated. This is
an approximation of R, not of the unresolved compensated-prime source H.

Run from the repository root with requirements-tests.txt available:

 python3 -B scripts/verify_laguerre_prime_power_split.py --mode both

The runner verifies 32 new polynomial/source tests, 12 new corrupted-receipt
checks, 30 existing source tests and 38 existing energy tests in each mode.
Three inherited tests are numerical diagnostics, not certificate acceptance.
It regenerates all nine finite channels at N=16, X=1024 and 4096, with both
192- and 256-bit working precision and an outward 160-bit output grid. The
complete inventory, prime-power exponents, continuum endpoint, touching labels,
source comparison and signed mixed term remain. The existing 128-moment source
profiles and the unrelated concurrent packages are not rerun or superseded.

results.json records actual completion and all scope restrictions. The full
stdout/stderr replay and the interrupted first outer-timeout attempt are
retained as lossless compressed JSON, with decoded/stored hashes. The replay
is stored in six ordered parts listed in replay-parts.json; concatenate them
to obtain replay.json.xz. history.json.xz references two initial producer bodies
that were reproduced byte for byte in the complete replay. A historical partial
attempt does not become successful because a subsequent replay passes.
No decompression is required for a fresh replay. To inspect the stored replay:

 dir=evidence/number-theory/zeta/laguerre-prime-powers-20261015
 cat "$dir"/replay.json.xz.part-00[0-5] | xz -dc

Check the joined SHA-256 in replay-parts.json before relying on stored bytes.

No active Lean, compiler pin, existing source, canonical guide, workflow,
source PDF or historical receipt is modified. This is a source-bound partial
runtime snapshot and an additive Git-data publication, not a full repository
build. Native Lean, axiom audit, whole-repository conformance and independent
external theorem replay remain NOT_RUN. There is no new zero-free region or
proof of RH, and no all-depth compensated-primary-prime bound is asserted.
