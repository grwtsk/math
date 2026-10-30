# Conditioned one-prime four-response state calculation: cutoff debt

Local attribution: grwtsk contributors.

Status: WRITTEN_SOURCE_CANDIDATE / NOT_RUN for this note.

## Setup

Fix one selected prime p and complementary squarefree divisors q0,s0,q0',s0'
not divisible by p. Write

 q=q0 p^eq, s=s0 p^es, q'=q0' p^eq', s'=s0' p^es'

with four occupancy bits. At fixed rectangle m,m+r,m+k,m+k+r and physical
times u,v, the signed local contribution is the alternating fourfold difference

 Delta_p =
   sum_(eq,es,eq',es' in {0,1})
     (-1)^(eq+es+eq'+es')
     A(q0 p^eq, s0 p^es; m,m+r,u)
     B(q0' p^eq', s0' p^es'; m+k,m+k+r,v),

where A and B are the literal causal response-pair integrands.

Because the first Gram integrand depends only on (eq,es) and the second only on
(eq',es') AFTER all complementary divisors and times are fixed, the sixteen
state sum factors exactly at this conditioned point:

 Delta_p = delta_p A * delta_p B,

with

 delta_p A = A(q0,s0)-A(p q0,s0)-A(q0,p s0)+A(p q0,p s0)

and analogously for B.

This is a finite-difference factorization, not an Euler product across distinct
primes.

## One-response finite difference

For the elementary causal response

 h_x(u)=2(x^(-1/2)-exp(-u/2)) 1_(log x <= u),

the prime-dilation difference is

 h_x(u)-h_(p x)(u).

There are three exact regions:

1. u < log x: both responses are zero, difference 0.

2. log x <= u < log(p x): the p-dilated response is unborn, so

   h_x(u)-h_(p x)(u)=h_x(u).

   This is the cutoff/birth debt. There is no p^(-1/2) attenuation here.

3. u >= log(p x): both are active and

   h_x(u)-h_(p x)(u)
    = 2 x^(-1/2)(1-p^(-1/2)).

   The exp(-u/2) terms cancel exactly.

Thus a uniform pointwise estimate of the form
|h_x-h_(px)| <= C p^(-eta)|h_x| cannot hold across the birth strip: just before
log(px), the difference equals the entire older response.

## Pair finite difference

At fixed complementary q0,s0, the two-bit alternating pair is

 delta_p A
 = [h_(q0 m)-h_(p q0 m)]
   [h_(s0(m+r))-h_(p s0(m+r))].

This follows by direct expansion. Hence the conditioned sixteen-state sum is

 Delta_p =
 D_p(q0 m;u) D_p(s0(m+r);u)
 D_p(q0'(m+k);v) D_p(s0'(m+k+r);v),

where D_p(x;t)=h_x(t)-h_(p x)(t).

This is the exact local signed gain.

## Consequence by regions

If all four p-dilated births have occurred, Delta_p carries the amplitude factor

 (1-p^(-1/2))^4

times the four undilated square-root amplitudes. This factor tends to 1, not to
0. It is NOT a local p^(-eta) saving.

If any corner lies in its birth strip, its D_p equals the full older response
there, again with no p-small factor.

Therefore the hoped-for uniform local gain O(1/p) or O(p^(-1/2)) is false at
the level of the conditioned response integrand.

The alternating sum is still useful: it removes all common exp(-t/2) tails once
both births are active. But its completed local factor is of size roughly
(1-p^(-1/2)) per response, not a small factor.

## Relation to checked cutoff hostile control

Commit 99daaaffc6b090a3dc855a9f6853f61e2593229f independently proves for the
actual finite cutoff Dirichlet inventory that

 (1-exp(-s log 2))(1-exp(-s log 3))
   = D_3(s)+exp(-s log 6),

and hence the raw finite Euler product is false for every complex s. The unborn
product 6 is the exact finite-cutoff debt.

The birth-strip calculation above is the response-level analogue: local prime
differences cannot be iterated as an independent Euler product without carrying
the missing/unborn product states.

## Collision classes

The identities above hold in all four gcd collision classes. The collision
class changes the arithmetic roughness masks of the four core vertices, but it
does not create a p-small response finite difference:
- p|g: all four vertices coincide mod p;
- p|u: horizontal pairs collide mod p;
- p|v: vertical pairs collide mod p;
- generic: no rectangle-edge collision mod p.

For selected p<=j, the rough coefficient may zero entire classes when a vertex
is divisible by p. That is arithmetic support deletion, not response
attenuation. It must be combined with the core Mobius source before assigning
credit.

## Quantitative disposition

The four-response local Euler/Riesz route does NOT reduce the response transient
by a uniform p-dependent local factor. The exact conditioned local difference
has no p^(-eta) gain.

Potential surviving use:
1. exploit cancellation of the birth debts jointly across complementary
   divisors rather than prime-by-prime;
2. combine selected-prime roughness deletion with the response finite
   difference before summing the core;
3. seek a global Abel/Mertens representation of the completed divisor
   difference.

The third route is consistent with the separate Mertens-Abel source, but no
Gram-box comparison is yet proved.

## New obstruction

obstruction_id: causal-birth-debt-blocks-local-euler-gain-v1

The precise obstruction is the interval log x <= u < log(px), where the
p-dilated response is unborn and the local finite difference equals the full
older response. Above both births the difference has factor
1-p^(-1/2), which tends to one. Therefore no uniform local p-small factor can
be iterated to collapse exp(O(sqrt(j))).

This closes the naive local-Euler-factor version of the response-transient
route. It does not close global signed divisor cancellation or the
Mertens-Abel comparison route.

## Verification

This note is a written derivation. The cited cutoff hostile control at
99daaaff... had its own fresh selected-module closure and standard-axiom audit
according to that commit's recorded evidence. No such native verification is
transferred to this new derivation.

No RH claim.
