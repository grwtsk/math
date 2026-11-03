# Complete proper-divisibility causal Möbius Gram: exact Euler weight and signed remainder

Mathematical source date: 2026-11-01 (America/Los_Angeles). Attribution: grwtsk contributors; independent formalization assistance: OpenAI ChatGPT. Scope: new unconditional *ordinary mathematical* finite identity. It is not RH, not source-free measurement, and not Lean kernel acceptance.

## Source boundaries

Use exactly the original functions in `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`:

- `mu(n) = ArithmeticFunction.moebius n` cast to the real source coefficient.
- `r_n(u)=2*(n^(-1/2)-exp(-u/2))` for `u>=log n`, zero otherwise.
- `K_T(m,n)=integral_0^T r_m(u)*r_n(u) du`; both ordered orientations are included in `pickupCross` for original indices `1<=m,n<=floor(exp T)` with `m!=n`.

No generic positive Gram replacement, changed integer modulus, elliptic trace, observer-sign lookup or normalized endpoint is used.

## Arithmetic-local collapse

For n>=1 define `C(n)=sum_(d|n) mu(d)/sqrt(d)` and `V_n(u)=sum_(d|n)mu(d)r_d(u)`. By the exact Möbius divisor identity `sum_(d|n) mu(d) = 0` for every n>1 and the fact that every positive divisor of n has birth no later than log n,

  V_n(u) = 2*C(n) for every u>=log n, n>1.

This also holds for squareful n: the Möbius function annihilates repeated-factor terms, while all distinct prime factors remain in the divisor product. `C(n)=prod_(p|n)(1-p^(-1/2))` for every n>=1, by the squarefree-divisor Euler product (n=1 gives C(1)=1). The n=1 waveform is not constant: `V_1(u)=r_1(u)=2*(1-exp(-u/2))` for u>=0. All formulas below explicitly exclude n=1 at that step.

Because r_n(u)=0 before log n, the PRODUCT r_n(u)*V_n(u) equals 2*C(n)*r_n(u) for all real u. Finite summation and interval integration give the unconditional exact identity

  sum_(d|n) mu(d) K_T(d,n)
     = 2*C(n) R_n(T),    n>1,

where `R_n(T)=integral_0^T r_n(u)du`. The identity holds for oriented real integration intervals, including T<0, and does not assume PNT or RH.

## Ordered proper-divisor packet and complete signed preservation

Define X_div(T) as the original double sum over m != n with m|n or n|m, retaining both orientations. For m,n>=1, exactly one of m|n and n|m can hold when m!=n. Since the genuine kernel is symmetric, the packet equals

  X_div(T) =
    2 sum_(2<=n<=N_T) mu(n) sum_(d|n,d<n) mu(d) K_T(d,n).

The inner proper-divisor sum is the full divisor Gram minus its *original* d=n term. Hence

  X_div(T) =
    4 sum_(2<=n<=N_T) mu(n) C(n) R_n(T)
      - 2 sum_(2<=n<=N_T) mu(n)^2 K_T(n,n).

Define X_incomp(T)=pickupCross(T)-X_div(T). The complete original signed identity is

  pickupCross(T) = X_div(T) + X_incomp(T).

No rough/mixed/elliptic matching or prime-square zero symbols disappear. The diagonal subtraction is not permitted to be absorbed into a freely chosen remainder. The n=1 original source is still present in all comparable ordered pairs (1,n) and (n,1), but is correctly handled as a proper divisor of n>=2, not as a terminal parent n=1.

For T=log B and 2<=n<=B, the exact response area is
  R_n(log B) =
    2 * [log(B/n)/sqrt(n) - 2*(1/sqrt(n)-1/sqrt(B))].
At B=n, the response is zero at its birth, including the clipped terminal cell.

## Independent numerical check, not a theorem or interval certificate

Using an original-index Möbius sieve, finite moment accumulation for the COMPLETE pickup cross, and an INDEPENDENT direct proper-divisor pair kernel enumeration, the two expressions for X_div agreed within floating roundoff at B=16,64,256,1024,4096 (largest discrepancy under 4e-13). The Euler-product collapsed formula also evaluated at B=2^20. Approximate values:

| B | Original pickupCross | Complete proper-divisor X_div | Original incomparable X_incomp |
|--:|--:|--:|--:|
| 16 | -3.6181072 | -5.4797308 | +1.8616236 |
| 64 | -10.5482011 | -21.7963698 | +11.2481687 |
| 256 | -21.2093439 | -54.0633031 | +32.8539591 |
| 1024 | -35.9648066 | -106.0235463 | +70.0587397 |
| 4096 | -55.0783434 | -180.6245199 | +125.5461765 |
| 1048576 | -177.2369729 | -744.2297805 | +566.9928076 |

These calculations are ordinary double precision diagnostics, not exact arithmetic certificates or global estimates. In particular, the positive incomparable compensation is substantial on these finite fixtures. Bounding the negative divisor sector alone does not establish RH. Original full-gram energy positivity forces appropriate positive compensation, as already identified for prime-dilation stars.

## Unconditional half-rate upper envelope for this entire divisor sector

The divisor sector admits more than an exact re-expression: a noncircular strict-rate absolute envelope, with no PNT or RH assumption. Because each Euler factor satisfies `0 < 1-p^(-1/2) < 1` for prime p>=2, the exact arithmetic weight satisfies `0<C(n)<=1` for n>=1.

For u>=0 the actual positive response mass satisfies

  0 <= sum_(1<=n<=exp u) r_n(u)
       <= 2 sum_(1<=n<=exp u) n^(-1/2)
       <= 4 exp(u/2).

Only indices n<=exp(u) contribute at u. For fixed T>=0, the complete original inventory `n<=N_T` includes every birth before u<=T; finite sum/integral interchange therefore gives

  0 <= sum_(1<=n<=N_T) R_n(T)
       <= integral_0^T 4 exp(u/2) du
       = 8*(exp(T/2)-1).

Combining the exact proper-divisor identity with `|mu(n) C(n)|<=1`, `R_n(T)>=0`, and the PREEXISTING original diagonal upper bound `pickupDiagonal(T)<=2*T^2` gives for EVERY T>=0:

  |X_div(T)| <= 32*(exp(T/2)-1) + 4*T^2.     (A)

This is a mathematical unconditional absolute upper envelope at the **strict fixed exponent 1/2** for the entire ordered comparable-index source. For every delta>1/2 it yields a standard `C_delta exp(delta T)` allowance. It is NOT an all-positive-rate bound (delta may not be <=1/2). In particular, it does not bound the incomparable sector or complete original source.

The exact inequality is recorded as the **UNPROVED LEAN TARGET** `DivisorPacketHalfRateBound`. Its mathematical proof above depends only on elementary sum-integral comparison and the existing published diagonal; the finite Euler-product and ordered-reindexing Lean bridges remain separate. No compiler/kernel assertion is made.

## What this contributes to RH

The entire comparable-index double correlation has been reduced, mathematically, to a SINGLE weighted genuine Möbius series plus a diagonal subtraction already paid by `pickupDiagonal(T)<=2T^2`. It also has the explicit unconditional strict half-rate absolute bound (A). A fixed rate 1/2 is insufficient for the every-positive-rate RH consumer, and its positive/negative compensation with the incomparable sector must not be silently discarded. On a fixed affinely frequent set G, an all-positive-rate upper bound for the *combined* quantity

  4 sum_(2<=n<=N_T) mu(n) C(n) R_n(T)
    + X_incomp(T)

would suffice for the original endpoint/RH chain, since the omitted diagonal is of polynomial size. Conversely the original all-rate cross bound implies such a combined bound after adding the same polynomial diagonal. This is a correct conditional equivalence at the original quantifier scope, NOT a proof of either estimate. Separate sectorwise all-rate estimates are generally not available and should NOT be imposed without evidence.

The pointwise and integrated source identities and the collapsed proper-divisor packet have Lean SOURCE_PROOF_CANDIDATES in `MoebiusDivisorCausalGramCollapse.lean`. The remaining explicit `OriginalOrderedDivisibilityBridge` and `DivisorReciprocalRootEulerProduct` are named Lean Prop TARGETS, not axioms or proved theorems. The finite bijection and arithmetic product are proved above on paper but must still be elaborated against pinned Mathlib.

## Verification holds and control

Current repository toolchain: Lean 4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No local Lean/Lake/elan compiler found. Compilation, expected-type checking, fresh kernel checking, and transitive axiom auditing are NOT_RUN. New-source text should be checked for exact `Nat.divisors` API, real casts, finite integration, `if` proper-divisor exclusion, and the complete old source import closure. Reject `sorryAx`, new research axioms, unsafe/native trust, and any altered original source. No root-import or dependency change and no RH claim.
