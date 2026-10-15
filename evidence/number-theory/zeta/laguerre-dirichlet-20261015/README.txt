Prime-discrepancy moments and the retained Dirichlet phase pairing
===============================================================
Direction: grwtsk contributors. Derivation/implementation: OpenAI ChatGPT. MIT.
Source base: d1ae4ef6c9fd5a246f1a9fbff56097a498366fd8.

This additive continuation supplies a literal Fourier/Cayley representation of
the preceding Laguerre discrepancy moments by a finite Dirichlet polynomial
WITH its continuum and discrepancy endpoint. A complete two-frequency kernel
retains every cross term. Separate rational budgets pay the infinite prime-label
and Mellin-frequency tails; the resulting finite-domain signed-head upper bound
remains the missing all-depth arithmetic estimate. Normalized prime shells meet
the coefficient constraint of Guth--Maynard, but their residual and weighted
joint correlation are not covered by that theorem merely by identification.

The coefficient producer cancels gamma analytically before computation. It uses
1/(s-1)+zeta'/zeta at the safe germ s=3/2, then the uniformly conditioned inverse
of -(3I+S)/2. It does not invert the full Xi quotient. It generates 128 actual
zero-heat discrepancy moments at 1024 and 1152 working bits, retaining the complex
Euler--Maclaurin remainder and outward rounding to a 160-bit output grid.
The finite certificate D_128<5/24 gives D_N<5/24 for all 1<=N<=128 by monotonicity;
no bound at higher depth follows. A separate literal prime-power calculation
assembles eight finite-head moments at X=64. The theoretical cutoffs 2^(16N)
and 2^(10N) are NOT enumerated or integrated by this numerical calculation.

From the repository root, with the recorded test dependencies available:

  python3 -B scripts/verify_laguerre_dirichlet.py --mode both

The runner pins its inputs and itself, invokes 137 tests per mode (including
three inherited numerical diagnostics), regenerates both profiles in each mode,
checks the energy enclosures and strict bound, and compares all 256 p/u boxes
across precision. The predecessor's 24-test inactive candidate is executed
byte-for-byte without changing its historical UNEXECUTED header or receipt.
The earlier 85-test suites are replayed; their large Hankel profiles are not.
The mathematical output rejects new RH, all-depth, zero-free or Lean claims.

replay.json.xz contains all subprocess stdout/stderr, including all generated
moment boxes. Python lzma or xz -dc restores the complete JSON. attempt-01.json.xz
retains the initial source/test files and three failed regression assertions;
its failure is not rewritten into success. execution-history.json.xz separately
retains two host-timeout interruptions, a rejected streaming launch, and the
successful pre-refinement replay. Repeated producer stdout bodies reference their
identical final-replay bodies by hash; the original report bytes were reconstructed
and checked exactly. Integer-input hardening and an explicit Hardy
space justification were followed by the final fresh replay. Results and source/input hashes are recorded separately. Hashes establish identity, not analytic correctness.

The first failure required an exact zero-length integral branch. Two others
were unsimplified but equivalent symbolic rational expressions; the final
tests reduce their differences without weakening the identities. No original
source PDF, existing theorem, compiler pin, active Lean import, workflow,
canonical guide or historical receipt is changed. Direct Git access failed
DNS, so a complete checkout and whole-repository conformance are unavailable.
Native Lean and owned-declaration audits are NOT_RUN. Written continuum proofs
and finite rational tests remain distinct from kernel admission and the open
all-depth arithmetic bound.
