# Ordinary-Chowla prime-supply depletion on the growing pickup source

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

## Primary source inspected

OpenAI, *Ordinary two-point correlations of multiplicative functions*, 24 September 2026.
Primary repository source:
https://github.com/openai/math/blob/main/preprints/Ordinary-two-point-correlations-of-multiplicative-functions-September-24-2026/build/quantitative/01-setup.tex
inspected blob 0a4b3fab1f06706cc4a10db00d0317bdef84d03e.

The quantitative proof fixes h,l before X. Its centered prime supplies are
P_i={p: p=1 mod 5, Y_(i-1)<=log p<Y_i, p does not divide l h}
and Q likewise excludes prime divisors of l h. The prime-number-theorem error,
threshold and implied constant are explicitly allowed to depend on fixed h,l.
The retained reciprocal mass W<=V_i<=2W is therefore not a theorem uniform in
growing h,l.

## Exact depletion functional

Before deleting divisors of a shift r, let P_i^0 be one centered supply and
V_i^0=sum_(p in P_i^0) 1/p. Define

Loss_i(r)=sum_(p in P_i^0, p divides r) 1/p.

The usable mass is V_i(r)=V_i^0-Loss_i(r), apart from any independent modulus
deletion.

A single growing shift can delete the complete supply: take r divisible by the
product of all primes in P_i^0. This is compatible with r being much smaller
than X at the OpenAI parameter scale, because log of that product is of order
the Chebyshev mass of primes with log p <= L, while L=(log X)^(1/A), A>=1000.
Thus fixed-form prime supply cannot be promoted to uniform growing-shift supply.

## Averaged repair

For any H>=1, finite double counting gives

sum_(1<=r<=H) Loss_i(r)
 = sum_(p in P_i^0) floor(H/p)/p
 <= H sum_(p in P_i^0) 1/p^2.

Every p in P_i^0 is at least H0=exp(L^(1-delta)). Therefore

sum_(1<=r<=H) Loss_i(r) <= H V_i^0/H0.

For epsilon>0, let
Bad_i(epsilon,H)={1<=r<=H: Loss_i(r)>epsilon V_i^0}.
Then

#Bad_i(epsilon,H) <= H/(epsilon H0).

For J supplies, the union bound gives

# union_i Bad_i(epsilon,H) <= J H/(epsilon H0).

This is an exact finite averaging statement. It does not yet estimate the
pickup source because the pickup shifts carry Gram weights, rough masks,
endpoint multiplicities and complement allocations.

## Consequence for the transfer

The fixed-form theorem cannot be applied uniformly shift-by-shift. A possible
source-preserving repair is instead:

1. retain the original signed sum over shifts;
2. partition shifts into supply-good and supply-bad sets using the displayed
   Loss_i;
3. run the centered-prime/forest/spectral argument only on supply-good shifts;
4. bound the original weighted contribution of supply-bad shifts with the
   actual Gram, masks and endpoints;
5. retain the complete small-cofactor family and its disjoint complement.

The decisive missing estimate is therefore a weighted exceptional-shift bound,
not merely fixed-form Chowla:

sum_(r in Bad) |original pickup contribution at shift r|

must be smaller than the desired complete-source allowance. Cardinality alone
does not prove this because the original contribution need not be uniformly
distributed over shifts.

## Parameter-cost warning

H0=exp(L^(1-delta)) with L=(log X)^(1/A). Hence H0 grows faster than powers of
log log X but slower than every positive power of X. The exceptional-shift
density H0^(-1) is therefore subpower, not an N^(-delta) saving. By itself it
cannot produce the fixed exponent reduction previously sought, and still less
the every-positive-rate RH endpoint bound.

The potential value is structural: it removes the worst-case supply-depletion
obstruction for almost all shifts without changing the source. Further power
saving must come from the graph/spectral cancellation on good shifts and a
source-weighted treatment of the bad shifts.

## Evidence classification

Imported mathematics: only the inspected fixed-form OpenAI source statement and
its explicit prime-supply definitions.
New local mathematics: finite supply-depletion double count and exceptional
shift cardinality.
Kernel-verified bridge: none.
Ordinary-Chowla growing-family adapter: not constructed.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
RH claim: none.
