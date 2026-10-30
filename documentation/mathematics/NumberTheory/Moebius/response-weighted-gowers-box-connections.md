# Response-weighted Gowers/box-norm connections

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections around obstruction
primitive-mobius-parallelogram-dispersion-v1.

## Exact primitive rectangle

The predecessor dispersion source gives

 a_j(m) a_j(m+g v) a_j(m+g u) a_j(m+g(u+v)),  gcd(u,v)=1,

multiplied by the complete q,s,q',s' response weight and literal clipped
source window.

This is the scalar four-corner pattern underlying a U2/box observation.

## Local finite box object

PickupResponseBoxNorm defines, for a real Hilbert-valued sequence F,

 boxTerm F m r k
   = <F(m),F(m+r)> * <F(m+k),F(m+k+r)>,

and sums it over finite base/edge sets.

For F(n)=a(n) v with a fixed Hilbert vector v, boxTerm_smul proves exactly

 a(m)a(m+r)a(m+k)a(m+k+r) ||v||^4.

This is only the scalar fixed-vector specialization. The actual pickup response
requires a nonconstant response vector whose inner products recover the frozen
Gram. GramHilbertRealization types that requirement; no realization is supplied
by this module.

## Recent higher-uniformity connection

Kaisa Matomäki, Joni Teräväinen, and collaborators' October 2026 work on higher
order uniformity in shorter intervals is a literature/method connection. The
reported theorem reaches every interval at the X^(3/5+epsilon) scale and
develops parallelogram-type mean-value estimates. The physical pickup scale
N^(3/4) is longer.

This does NOT instantiate the pickup source:
- the local coefficient is rough Mobius a_j, not bare Mobius/Liouville alone;
- F(n) contains the complete response block K_N(n,·);
- selected-divisor signs must remain combined;
- gcd collision patterns and clipped endpoints must survive;
- the relevant affine coefficients g u, g v grow with N;
- any theorem whose constants depend on a fixed coefficient-height bound does
  not automatically give one constant for this growing family.

The recent theorem is therefore recorded as a method connection, not imported
mathematics.

## Tao--Teräväinen quantitative Gowers uniformity connection

Quantitative Gowers-uniformity results for Mobius show that unweighted Mobius
has small fixed-order Gowers norms with logarithmic quantitative decay. This
supports the interpretation that the bare scalar rectangle is not itself the
main unresolved object.

No theorem is imported here. The missing step is a multiplier theorem for the
source-derived response map

  a_j(n) -> a_j(n) K_N(n,·)

in a finite Hilbert-valued box/Gowers norm, with growing selected-divisor stage
and source endpoints controlled.

## Exact transfer contract

ResponseWeightedGowersBridge records the required conditions:
1. an exact Hilbert realization of the response Gram;
2. scalar Mobius uniformity at the required scale;
3. control of multiplication by the response;
4. selected-divisor signs retained before norms;
5. gcd collision inventory retained;
6. rough masks and clipped endpoints retained;
7. dispersion diagonal paid separately;
8. complete source complement restored;
9. growing coefficient uniformity;
10. a quantitative saving after every cost.

No field is populated.

## Relation to current positive-Gram ellipsoid

Current main commit 5c4efc8e3e66a2ea8a86a6e5c9823531ac183256 constructs an exact
positive quadratic form for a three-phase geometric source. Its own scope says
it supplies no arithmetic source comparison or RH consequence.

That result cannot instantiate GramHilbertRealization for the pickup response
without an explicit equality to the actual K_N Gram. It is therefore not used
as a cancellation supplier here.

## Next source-exact test

The natural Hilbert space for the literal response is L2([0,T]) with

 R_n(u)=a_j(n) K_N(n,u) 1_I(n).

Then

 <R_m,R_n> = a_j(m)a_j(n) G_j(m,n).

For this choice the box term is

 a_j(m)a_j(m+r)a_j(m+k)a_j(m+k+r)
 G_j(m,m+r) G_j(m+k,m+k+r),

which is exactly the unexpanded response-weighted dispersion rectangle on the
retained interval.

This identity should be formalized next using the repository's actual response
definitions. It does not yet prove that scalar Mobius U2 control survives
multiplication by R_n.

## Evidence classification

Local proof candidate: finite Hilbert box object and fixed-vector scalar
specialization.
Recent short-interval higher uniformity: literature/method connection only.
Tao--Teräväinen Gowers uniformity: literature connection only.
Positive-Gram ellipsoid: existing local geometry, no pickup source comparison.
New arithmetic cancellation: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
External theorem acceptance: NOT_CLAIMED.
RH claim: none.
