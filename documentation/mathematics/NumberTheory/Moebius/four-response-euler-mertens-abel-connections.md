# Four-response Euler/Riesz states and Mertens--Abel comparison

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections around obstruction
response-weighted-gowers-transient-v1.

## Exact Hilbert-box source retained

The predecessor identifies the literal L2 response vectors

  R_n(u)=a_j(n)K_N(n,u)1_I(n)

and the exact box

  <R_m,R_(m+r)> <R_(m+k),R_(m+k+r)>,

which equals the original four-Mobius coefficient times the two pickup Gram
entries. Expanding the two Gram entries produces selected divisors q,s,q',s'.

## Local sixteen-state algebra

For one selected prime p, its membership in q,s,q',s' is a four-bit state.
There are sixteen states. The local Mobius sign is

  (-1)^(epsilon_q+epsilon_s+epsilon_q'+epsilon_s').

PickupFourResponseEulerConnections.occupancySign_sum_zero proves that if all
sixteen analytic state weights were equal, their signed sum is zero.
occupancyAbs_sum proves that replacing all signs by absolute values gives mass
16.

This is the exact finite algebra behind the proposed Riesz/Euler cancellation.
It is NOT an Euler factor for the actual response yet.

## Why causal factorization is nontrivial

The analytic state weight depends on inequalities such as

  q*m <= exp(u),
  s*(m+r) <= exp(u),
  q'*(m+k) <= exp(v),
  s'*(m+k+r) <= exp(v),

together with the response amplitudes. These are global product cutoffs. The
state weight for a prime p therefore depends on the other selected primes
through q,s,q',s'. It does not automatically factor as a product of independent
local p-weights.

Consequently the identity sum(sign)=0 cannot be multiplied over primes without
a new theorem. FourResponseEulerBridge records the required conditions:
identify the actual local state weights, retain causal cutoffs and collision
classes, prove a genuine local-prime factorization or pay cross-prime
dependence, preserve selected-divisor signs and endpoints, and obtain a
polylogarithmic-or-better total product cost.

This prevents a formal Riesz-product analogy from being mistaken for source
cancellation.

## Collision classes

The predecessor gcd decomposition gives r=g*v, k=g*u, gcd(u,v)=1.
For a selected prime p, the relevant arithmetic collision classes are:
- commonScale: p|g, so all four rectangle vertices coincide mod p;
- horizontal: p|u, p∤v;
- vertical: p|v, p∤u;
- generic: p∤g*u*v.

PrimeCollisionClass records these labels. The next local calculation must use
the actual state weight separately in each class.

## Mertens--Abel connection

Current main commit c34268392ebbda06e0a1f2840b8817c790b66af4 proves

  sampleResidue(N+1)
   = sum_(k<N) M(k+1)
       (1/sqrt(k+1)-1/sqrt(k+2)),

for the canonical sampled pickup. This is an exact signed Abel identity for that
observation.

It is NOT presently an identity for the rough-block Gram box. The two sources
must not be conflated.

MertensAbelGramBoxBridge therefore requires:
- same arithmetic source;
- same frozen horizon;
- recovery of the Gram-box observation;
- all endpoint/birth terms;
- rough selected-prime mask;
- controlled comparison cost;
- applicability of the desired Mertens decay;
- survival of the quantitative saving.

No field is populated.

## Rate comparison, conditional on a future bridge

Suppose a future source comparison produced a multiplicative loss

  exp(C sqrt(log N))

and an applicable Mertens estimate supplied

  exp(-c (log N)^(3/5)/(log log N)^(1/5)).

Then for fixed positive c,C the combined exponent is

  -c (log N)^(3/5)/(log log N)^(1/5)
  +C sqrt(log N),

which tends to minus infinity faster than sqrt(log N). Thus that decay is
asymptotically strong enough to absorb the current transient.

This is only a rate comparison. It does not establish the missing source bridge
or import a Mertens theorem.

By contrast, any fixed inverse logarithmic saving (log N)^(-A) is asymptotically
too weak to absorb exp(C sqrt(log N)).

## Connection to recent higher-uniformity methods

Recent short-interval higher-uniformity/parallelogram methods show that
structured Type I/II/trilinear decompositions can preserve cancellation without
paying every component absolutely. This motivates applying the complete
four-response expansion before norms.

No external higher-uniformity theorem is imported here because the causal
selected-divisor multiplier and growing stage remain outside its stated source.

## Next source-exact calculation

For one selected prime p and one fixed rectangle collision class:
1. condition on all other selected-prime divisors;
2. enumerate the sixteen p-occupancy states;
3. retain their literal causal indicators and response amplitudes;
4. sum the signed p-states before absolute values;
5. determine the residual dependence on the conditioned complementary
   divisors;
6. only then test iteration over p.

If the residual state sum gains a factor O(1/p), O(1/p^(1+eta)), or exact
cancellation in generic classes, the product cost may improve substantially.
If conditioning leaves worst-case state weights unrelated, the local sign-zero
identity supplies no quantitative gain.

## Evidence classification

Local formal proof: sixteen-state sign sum zero and absolute mass sixteen.
Euler/Riesz product for actual response: UNPROVED.
Mertens--Abel c3426839: existing exact source candidate for a distinct
observation.
Mertens--Abel-to-Gram comparison: UNPROVED.
Rate dominance: elementary asymptotic motivation only; no source conclusion.
Recent higher uniformity: literature/method connection only.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
RH claim: none.
