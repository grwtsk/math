# RH-facing adaptive dyadic windows with original signed endpoint and physical defects

Local attribution: **grwtsk contributors**. Date: 2026-11-02.

**Source-level mathematical and Lean proof candidates only.** No Lean compilation,
Meta execution, fresh kernel checking, transitive axiom audit or assertion of
canonical RH was observed. The submitted mathematical premise is open.

## 1. Source scope and exact intended consequence

The independently supplied research review `Review RH Proof Paths.txt` described
an RH completion target at historical `grwtsk/math@7a6f1142dfe6ee66bfd79600158695c00b7a4fc6`.
Current MSC-path sources were inspected on `grwtsk/math@498998b4bb6e65bc90459843016d8fbc0395806e`.
The old `GRWTSK/NumberTheory/Moebius/...` paths were reorganized into
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/...`.
Namespaces remain stable. Neither source commit is a native verification receipt.

The exact imported RH-facing sources are:

| Source file (under current MSC tree) | Git blob | Role |
| --- | --- | --- |
| `PickupDyadicEndpoint.lean` | `bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31` | Original signed dyadic `dyadicBirthSum`, `DyadicBirthBound` and conditional RH return |
| `PickupEndpointQuadrature.lean` | `2606536c56bdcb33d120aeddfbcbeef793e31ba1` | Exact original signed source, endpoint sum, `|endpointSum-pickupCross|≤1/4` |
| `GoodScaleEnergyCriterion.lean` | `ca3ae4975b20cf796a167308a9e87546c6001c41` | Actual nonnegative monotone `pickupEnergy` and diagonal subexponential growth |
| `EnergyAbscissa.lean` | `c1f86b43daefd7fbb8cfc4254d6888c410d051d9` | Cumulative energy, weighted integrability and canonical RH return |
| `PickupOptimizationGap.lean` | `814665d04fa3e7ea23c4e85977a17f0c3108d447` | A different finite spin optimum, actual source comparison, not graph path optimization |
| `ArithmeticGridSubexponential.lean` | `fb5f8510af5d66ea490f31f05302c0f7153d1a66` | Exact next dyadic sample and time control |
| `PolynomialSubexponential.lean` | `c488224fc6f14dfc478d7b7bc3c5bd32f6d8f65c` | Every-positive-rate upper class |
| `PhysicalMoebiusBitGramReturn.lean` | original exact source read at pinned commit | Actual physical packet plus full signed readout defect |
| `MoebiusSoficDefectLanguage.lean` | `25ddd6ab70d5e41da0334752431998b7dfd7ef18` | Certified chart shift, source-anchored signed packet and initial-error allowance |

**Original objects are not changed.** Let `E(T)` be exactly
`PickupEndpointQuadrature.endpointSum`, `X(T)` exactly the full ordered signed
`pickupCross T`, `D(T)` exactly `pickupDiagonal T` and `H(T)` exactly
`pickupEnergy T`, so `H=D+X`, `D≥0` and `|E-X|≤1/4` at nonnegative horizons.
This review does not replace any original coefficient or sign by a surrogate.

## 2. New arithmetic input: one favorable index per requested window

The previous source asks for all-rate upper growth at **every** dyadic index:

  forall delta>0, exists C_delta>=0, forall j, E(j log 2) <= C_delta exp(delta*j log 2).

The new explicit proposition `DyadicWindowBirthBound` is

  forall epsilon>0, exists C_epsilon>=0, forall j in Nat,
    exists k in Nat, j<=k<=2*j+1 and
    dyadicBirthSum k <= C_epsilon*exp(epsilon*dyadicTime j).

The favorable k may change with j and epsilon; no universal good-scale subset
is asserted or required. `dyadicWindow_of_all_dyadic` shows the established
all-index target implies this criterion by taking k=j. This is genuinely less
restrictive as a condition on arbitrary signed sequences: for example an
abstract sequence that vanishes on even indices but grows as exp(j^2) at odd
indices satisfies the zero-window bound and fails all-index subexponential
growth. **That abstract example is not the original Mobius endpoint sum** and
supplies no arithmetic witness for it.

`AdaptiveEndpointWindow b` is the continuous-time expression: for each
requested rate epsilon>0, every sufficiently large T has some S with
T<=S<=2*T+b and E(S)<=C_epsilon*exp(epsilon*T). Fixed b, not a varying
uncertified modulus, and all positive rates remain quantified.

The arithmetic-grid theorem `next_time` supplies j=floor(T/log2)+1, so
T<=dyadicTime(j)<=T+log2. For k in [j,2*j+1],

  T<=dyadicTime(k)<=2*T+3*log2.

The bound at j costs the fixed multiplicative `exp(epsilon*log2)` in C.
This establishes the source-level theorem candidate
`adaptiveEndpointWindow_of_dyadicWindow`, with b=3 log2.

## 3. Exact energy and RH return, including every paid error

A generic `AdaptiveFutureUpper f` requires, for each rate epsilon, a later
witness S>=T where `f(S)<=C exp(epsilon*T)`; the witness and its location may
depend on epsilon and T. The theorem
`subexponentialUpper_of_adaptiveFutureUpper` uses **monotonicity of f** to
recover a global `SubexponentialUpper f`, absorbing the initial interval with
`max(0,f(R))`. This lemma is applied only to nonnegative-time monotone energy,
NEVER to the potentially nonmonotone signed cross or endpoint sum.

For the source arithmetic criterion, fix a desired energy exponent epsilon>0
and take the endpoint arithmetic premise at delta=epsilon/2. The existing
polynomial diagonal result supplies an independent global estimate
`D(S)<=D_delta exp(delta*S)`. Since S<=2*T+b,

  exp(delta*S) <= exp(delta*b)*exp(epsilon*T).

The signed curvature inequality supplies `X(S)<=E(S)+1/4` and the actual
Gram identity supplies

  H(S) <= E(S)+1/4+D(S).

Because `T>=0`, `exp(delta*T)<=exp(epsilon*T)` and
`1/4 <= (1/4)*exp(epsilon*T)`. Consequently

  H(T) <= H(S) <=
    [C_delta+1/4+D_delta exp(delta*b)] exp(epsilon*T).

A finite initial interval is handled by the generic monotone theorem, with
no hidden bound on the signed cross. Existing `riemannHypothesis_of_pickupEnergySubexp`
then yields the canonical `_root_.RiemannHypothesis` **conditional on the new
unproved arithmetic window criterion**. The parallel theorem
`energyAbscissa_zero_of_dyadicWindowBirthBound` returns the existing energy
abscissa zero, without asserting integrability at sigma=0.

## 4. Additional source-bound arithmetic routes (no automatic promotion)

`DyadicWindowUpper U` expresses the same favorable original time window for
an arbitrary proposed upper certificate U. `riemannHypothesis_of_sourceUpper_windows`
requires independently `endpointSum T <= U T` for every nonnegative T.
A source ranking, arbitrary graph path or unproved representation cannot be
inserted as U. This interface admits source-faithful analytic/graph/sieve/
interpolation upper certificates when their original-source comparison is proved.

`DyadicSpinGapWindowBound` is a direct specialization using
`U(T)=PickupOptimizationGap.optimalityGap T+1/4`. The source theorem
`cross_gap_bounds` shows `pickupCross<=optimalityGap` because the finite
spin optimum is nonpositive; the quarter accounts for the endpoint.
The spin optimum is **not** the sofic shortest-path budget. No polynomial
algorithm or quantum approximation factor supplies the missing all-rate
arithmetic bound by this equivalence alone.

The second new module, `PickupPhysicalSoficWindowRH.lean`, uses the ACTUAL
`PhysicalBitGramReturn.pickupCross_eq_observed_add_defect` and the prior
certified `mobiusShiftSystem`/`pickupCross_source_return` to prove

  E(T) <= observedPacket(target,T)
          + |signedReadoutDefect(initial physical stream,T)|
          + transportAllowance + 1/4.

The stream may have missing or mislabeled source bits. The signed defect is
never silently declared zero. A `PhysicalWindowCertificate p` permits a
possibly different genuinely certified chart-shift word and physical stream
at each favorable dyadic index, but requires the full nonnegative expense on
the right to grow at EVERY positive rate. The resulting RH theorem remains
conditional. Certified chart shifts already have zero transport allowance;
**that zero is NOT the initial physical readout defect**. An ideal symbolic
encoding can re-express the same arithmetic target but does not prove its
cancellation.

## 5. Independence, hostile checks, and unresolved premises

The argument does not use a new zero-free strip, fixed-height zero inventory,
probabilistic independence of Mobius signs, a surrogate spin Hamiltonian,
a spectral positivity assertion or a solver runtime claim. Classical
Vinogradov-Korobov/Walfisz-type Mertens estimates in
`MoebiusQuantitativeMertensAbsoluteAbel.lean` are explicitly source-conditional
and supply only a weaker rate-one energy envelope; they are not enough for RH.
The PR103 fixed-power sources keep the external analytic and Perron hypotheses
explicit and give a strictly positive square-energy abscissa ceiling, not zero.

The prior historical Landau lower-bound route remains logically separate.
Neither it nor the previously authored radical-log identity is reopened.
No assumption of RH is used in the *formal statement* of the window criterion;
proving that criterion for the actual endpoint sum is the outstanding analytic
mathematical task. No claim of source novelty relative to primary literature or
of historical mathematical priority is made for elementary window arguments.

The finite reference runner `reference/test_rh_window_reference.py` passed
123,690 tests covering exact signed readout defects, quarter-unit errors,
positive diagonal/source energy bookkeeping, the dyadic-index window, hostile
missing-defect examples and a synthetic sparse sequence. These are
**independent finite symbolic checks**, not Lean parser/compiler/kernel
execution, a refinement certificate or an asymptotic Mobius bound.

## 6. Exact verification gate

At publication, pin each final file's Git blob, complete math commit/tree,
Lean toolchain and package lock. Then the Noe-managed source-bound checker
must inspect the expected theorem interfaces, complete compiled import
closure, actual Lean compilation, fresh kernel replay and declaration-scoped
transitive axiom audit, rejecting `sorryAx`, unauthorized axioms, unsafe/native
trust and missing generated/private dependencies. A failed elaboration must be
repaired at new source hashes, not glossed as `NOT_RUN` success.

The previous endpoint, current dyadic and energy source candidates are also
NOT_RUN for their current exact bytes; no historical receipt at a different
commit proves a new source has been accepted. No verification worker, CI job,
resource lock or dispatch is implied by publishing this mathematical review.

**Next single mathematical obligation:** give an explicit, independently
justified all-positive-rate upper certificate for the **actual signed**
`dyadicBirthSum k` at one k in [j,2*j+1] for each j, or a source-faithful
upper bound that entails it. The favorable k may depend on epsilon. This is
strictly an arithmetic supplier, not an additional normalization step.
