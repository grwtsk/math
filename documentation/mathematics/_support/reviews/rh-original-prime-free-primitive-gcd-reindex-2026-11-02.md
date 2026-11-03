# Original Möbius prime-free low-gcd core: finite ordered gcd reindex

Date: 2026-11-02. Original mathematical direction: grwtsk contributors.
Source-proof-candidate integration assistance: OpenAI.
Status: mathematical derivation, deterministic finite reference checks,
Lean SOURCE_PROOF_CANDIDATES. COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No RH/GRH proof.

## 1. Exact source statement

The current GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
MoebiusLowGcdPrimeFreePrimitiveBridge.lean defines the full original
prime-free low-gcd pair mask:
  IsOtherLowGcdPair Q T m n =
    not IsPrimeDilation m n
    AND gcd(m,n)<=fixedGcdCutoff T
    AND m!=n AND Nat.dist m n not in Q
    AND no q in Q has n=q*m or m=q*n.

All summands use the original sourceKernel T m n =
  mu(m)*mu(n)*pickupResponseGram T m n.
The exact positive source endpoint inventory is
  I_T={1,...,floor(exp T)}.
otherLowGcdCross Q T sums over the COMPLETE ordered pair
inventory I_T x I_T. The old named
ExactPrimeFreeTripleReindexTarget : Prop was OPEN.

## 2. Generic pure finite ordered-pair/triple bijection

For any N>=0 and any F:ℕ→ℕ→ℝ:
  sum_(m,n in I_N) F(m,n)
    = sum_(g,a,b in I_N; gcd(a,b)=1; ga,gb in I_N) F(ga,gb).

The exact forward map is
  (m,n) -> (gcd(m,n),m/gcd(m,n),n/gcd(m,n)).
The reverse map is (g,a,b) -> (ga,gb).
For m,n>=1 the normalized gcd and both quotients are positive,
and gcd(m/g,n/g)=1. Conversely gcd(ga,gb)=g*gcd(a,b)=g
for gcd(a,b)=1, and the quotient recovers a,b exactly.

This preserves BOTH ordered pair orientations and even
nonsymmetric masks and coefficients. Crucially, the pure
bijection does NOT impose coprime(g,a) or coprime(g,b):
doing so would delete actual squareful integer labels from
the original positive inventory.

New Mathlib-only Lean candidate:
  MoebiusPrimitiveGcdFiniteBijection.lean.
It uses the pinned Finset.sum_bij and Nat gcd identities,
without RH or Möbius imports.

## 3. The original Möbius zeros justify the extra primitive guards

If coprime(g,a) is false, then ga is not squarefree, by
Nat.coprime_of_squarefree_mul contraposition. Hence mu(ga)=0
under the pinned genuine ArithmeticFunction theorem.
Similarly, not coprime(g,b) implies mu(gb)=0. These are literal
zeros of the existing original sourceKernel, not a
cancellation assumption, sign model or positivity trick.

For coprime(g,a) and coprime(g,b), the existing exact original
causal identity gives
  sourceKernel(T,ga,gb)
    = g^(-1)*mu(g)^2*mu(a)*mu(b)*
       pickupResponseGram(T-log(g),a,b).

Importantly, the original pair mask stays evaluated at
IsOtherLowGcdPair Q T (ga) (gb). Its Q, fixedGcdCutoff T,
endpoint and physical birth times do NOT become functions
of T-log(g). Only the original response Gram receives the
true causal time shift, as proved by its upstream source.

Combining finite bijection, squareful-zero guard, and exact
causal Gram transport gives the SOURCE mathematical identity:
  otherLowGcdCross Q T
    = primitivePrimeFreeTripleCross Q T.
No missing ordered orientation, nonunit residue, squareful-zero
or source diagonal is removed. This is true for any original Q,
and in particular the named old target T>=0.

New Lean SOURCE candidate:
  MoebiusPrimitiveGcdSourceReindex.lean.
Its candidate exactPrimeFreeTripleReindexTarget_proof inhabits
the old SAME named ExactPrimeFreeTripleReindexTarget.
No new axiom was added.

## 4. Independent exact arithmetic reference checks

The underlying signed ordered-pair/triple combinatorial
identity was separately checked for EVERY finite cutoff
N=1,...,64 using exact rational Fraction arithmetic and the
true integer Möbius function. The intentionally NONSYMMETRIC
mask was
  m!=n,
  (m+2n) mod7 not in {1,3},
  |m-n| mod11 not in {1,4},
and the nonsymmetric rational test kernel was
  K(m,n)=((3m+5n) mod13 -6)/(1+m+n).

The direct original sum of mu(m)mu(n)K(m,n) agreed exactly
with the primitive triple sum of
mu(g)^2 mu(a)mu(b)K(ga,gb)
subject to coprime(a,b),coprime(g,a),coprime(g,b)
and the SAME original mask, at all 64 cutoffs.
This tests the squarefree zero gate and both orientations;
it does not test the causal integral or Lean compilation.
Finite checks are NOT proof or kernel evidence.

## 5. Updated RH frontier

The old primitive good-scale conditional consumer required:
1. AffineFrequent G for ONE fixed physical-time set G;
2. ExactPrimeFreeTripleReindexTarget;
3. PrimitivePrimeFreeEveryRateOn G.

The second is a pure finite arithmetic/source transport
identity. At the mathematical level it is established here;
at the Lean level it remains a SOURCE PROOF CANDIDATE,
subject to actual native replay.

The final conditional theorem
riemannHypothesis_of_primitivePrimeFree_without_reindex_premise
retains (1) and (3) explicitly. In particular the standalone
still-open arithmetic statement is, for ALL eps>0, one fixed
G and sufficiently large T in G:
  primitivePrimeFreeTripleCross
    (putnamRateGapSet (eps/2) T) T
    <= C_eps * exp(eps*T).

It is not derived from gcd reindex, nonpositive prime
dilations, Putnam short-gap payment, high-gcd bounds,
the moving prime high sector, Fourier-average orthogonality,
Gaussian heat, physical codecs, graph ranks, or an RH premise.
No unconditional RH conclusion is claimed.

## 6. Source pins and native acceptance boundaries

Exact prepublication dependencies:
- MoebiusLowGcdPrimeFreePrimitiveBridge.lean
  blob 74a6def7792b1688c7cbf4292ff32cf1280ed21f
- MoebiusLowGcdPrimeDilationNegative.lean
  blob e7abaa44008b76aaeb2a6a7ee69e0b5602787014
- MoebiusCausalGcdTimeShift.lean
  blob db0052901eca3050ed0ce812d3e0e7675c8fab05

Pinned Lean 4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
The generic finite lemma is isolated from all GRWTSK imports;
the source bridge imports only the exact previous arithmetic
definitions and real time-shift provider.

No lean/lake executable was available in the current
conversation runtime. New theorem bodies, complete imported
closure, expected types, fresh kernel replay, and transitive
axiom/native-helper audit remain NOT_RUN. A passive #check /
#print axioms file is not an acceptance receipt.
No oracle, sorry, new axiom, root import, scheduler, CI,
dependency pin or original coefficient was changed.

The finite reindex is no longer an independent mathematical
obstacle, but remains a formal verification obligation until
an actual clean pinned kernel receipt exists. The shifted
primitive signed bilinear all-rate supplier remains OPEN.
