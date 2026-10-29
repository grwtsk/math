# Weighted quotient Abel summation and an independently signed prime layer

Attribution: grwtsk contributors.

Mathematical source: ab8a078d7a9bce12d67ad5fd91b9959aa8193c3a.
Tree: 8b16e8c86a100ec99b21a822b7d3162ed95ee031.
Parent: 112c806978c3a96ff1f947f4f86a6c0b5e6740bb.
Initial reconciliation: a7188ebd557dce3afc608d2b1a9da85655172bc2.
Compilation, fresh kernel replay, transitive axiom audit: NOT_RUN.

## 1. Reconciliation, not duplicate publication

Current main already includes mathematical source
8da6790cf5e26fbee7b9063746606303fcb14923 and documentation
1cf8b385f8797c4c9d1032c0eca900f50bc271ce, as well as the seven Lean modules
from ff7fbe1a6a5603f83ad6319cca7119096b244908. The earlier local files
PickupRoughPrefixAlgebra.lean and PickupSharedPrimeTail.lean are NOT added.
They are superseded for integration by the existing public declarations below.

| Local proposal | Existing declaration on main | Exact scope difference |
|---|---|---|
| PickupRoughPrefixAlgebra.correlation_of_right_le_left | PickupRoughPrefixIdentity.correlation_of_Y_le_X | Local prefixes use Icc 1 t and require X,Y<=N; main clips both at the frozen N. They agree on the requested source domain. |
| PickupRoughPrefixAlgebra.correlation_of_left_lt_right | PickupRoughPrefixIdentity.correlation_of_X_lt_Y | Same source identity and arithmetic diagonal; no new cancellation is present in either. |
| PickupSharedPrimeTail.shared_reindex/shared_abs_le | PickupRoughSharedPrime.sharedSlice_reindex/sharedPart_abs_le | Main uses 4*K*N/Z; the local triangle refinement had 2*K*N/Z. These are not byte-identical or equal constants. Keep main unchanged. |
| Local shared_prefix_sqrt_bound/dyadic_shared_five_eighths | PickupRoughSharedPrime.sharedPrefix_long_bound/orderedShared_five_eighths | Main uses 8*sqrt(N) and 1024*exp(64/log2)*N^(5/8), not the local 4 and 512. |
| Local long quotient/unit partition | PickupRoughLongPrime.quotient_lt_long_prime, correctedQuotient_long, omega_long_product, unitSlice_eq, four_sector_partition | Main also proves the count insertion and preserves the stronger paid quarter-threshold sector. Reuse it. |

The main prefix identities are exactly

  X>=Y: B(X,Y)=(V(Y)-S(Y)^2)/2,
  X<Y:  B(X,Y)=-S(X)S(Y)+(S(X)^2+V(X))/2.

They still require genuine signed S control for a full BIL estimate.
The generic starting Abel theorem is reused from PrimeBlockKernel.abel in the
seven-file bundle, not rebuilt under a parallel prefix API. Existing two-prime,
negative-channel, discrepancy, mass interfaces and verification scopes stay intact.
Only concurrent DirectedGraph/LeastDependencyClosure changes occurred while
this increment was prepared. They were preserved in the new parent.

## 2. Freeze the source and derive the exact quotient window

Fix j, T=j*log(2), N=2^j, L=floor(sqrt N), P=P_j={primes<=j}.
Let a(n)=rough(P,n), Q={primes j<p<=N}, w(n)=#{p in Q:p|n}.
The block K_(P,N) and Gram G(m,n)=integral_0^T K(m,u)K(n,u)du never change
with a quotient, an auxiliary prefix, or a partial summation.

For a long prime p>L, the existing theorem gives q<p for 1<=q<=N/p.
It proves p does not divide q before removing the repeated-prime term.
The exact insertion theorem then gives w(pq)=1+w(q) on THAT range only.

Define the actual raw weighted coefficient and prefix

  alpha_(j,p)(q)=a(q)/w(pq),
  A_(j,p)(t)=sum_(1<=q<=t) alpha_(j,p)(q).

The implemented definition retains p and frozen N. For t<=N/p the existing
count theorem proves the bridge

  A_(j,p)(t)=sum_(q<=t) a(q)/(1+w(q)).

It is still a weighted prefix, not the ordinary Mobius sum, and it is not
replaced by S(t)=sum_(L<n<=t) a(n)/sqrt(n).

For a fixed smaller index m>L with p not dividing m and m<=min(X,N), put

  a0=max(1,floor(m/p)+1),    b=floor(min(N,Y)/p),
  g(q)=G(m,pq).

The exact set equality is

  {q:1<=q<=floor(N/p), pq<=Y, m<pq} = [a0,b] intersect the integers.

The row is zero when a0>b. The condition a0=1 is equivalent to m<p;
only those rows include q=1. No artificial zero is assigned to the unit.

## 3. Both endpoint terms and the actual first coefficient

For a nonempty row, finite summation by parts yields

  sum_(q=a0)^b alpha(q)g(q)
    = A(b)g(b)-A(a0-1)g(a0)
      +sum_(q=a0)^(b-1) A(q)[g(q)-g(q+1)].                 (Q1)

Equivalently, allowing even the adjacent empty window a0=b+1,

  sum_(q=a0)^b alpha(q)g(q)
    = A(b)g(b+1)-A(a0-1)g(a0)
      +sum_(q=a0)^b A(q)[g(q)-g(q+1)].                   (Q2)

Proof: subtract the existing closed-prefix Abel formula at a0-1 from the
one at b; split the resulting finite variation sum. Moving the last
variation term gives Q1. The lower term cannot be dropped.
For a0=b the formulas give [A(a0)-A(a0-1)]g(a0)=alpha(a0)g(a0), as required.

At the FULL endpoint Y=N, p*(floor(N/p)+1)>N. The actual frozen block is
zero at that index, so g(b+1)=0. This proves the upper successor endpoint
zero; it does NOT set g(b) or the lower endpoint to zero. For Y<N even the
successor can lie inside N and its term remains in Q2.

Using the actual local anchor, Q2 can also be written

  sum_(q=a0)^b alpha(q)g(q)
    = [A(b)-A(a0-1)]g(b+1)
      +sum_(q=a0)^b [A(q)-A(a0-1)] [g(q)-g(q+1)].        (Q3)

The finite telescope justifies this change; the anchor is not free data.
For full Y=N the first term vanishes by the same support theorem. All
unit/nonunit interaction remains in the anchored prefixes.

The Lean scripts supply the natural-window equality, both Q1/Q2 forms,
Q3, their actual weighted source specialization, and the full-horizon
support argument. They assume no sign of the blocks or their differences.

## 4. The entire signed source after q-Abel

For full prefixes retain the existing shortPart (p<=L) with its FULL
correctedQuotient a(q)-1_(p|q)a(q). Retain sharedPart (p>L,p|m) unchanged.
Define the following literal, signed source sums over p in Q, p>L and
L<m<=N with p not dividing m:

  B_lower = sum a(m) A_(j,p)(a0-1) G(m,p*a0),
  V_q = sum a(m) sum_(q=a0)^floor(N/p)
                  A_(j,p)(q)[G(m,pq)-G(m,p(q+1))].

The new source identity, without estimates, is

  C_unit+C_nonunit = V_q-B_lower,
  R = R_lo-2*C_short-2*C_shared+2*B_lower-2*V_q.          (R)

Both ordered orientations are the factors two. Neither a diagonal decrement
nor an already paid same-core overlap is introduced. Positive, negative,
and mixed block channels are all present inside the ACTUAL G.

Using existing main's constants, E0=exp(64/log2),

  |R_lo|<=512*E0*N^(7/8),
  |-2*C_shared|<=1024*E0*N^(5/8).

Thus a sufficient full-source statement would be

  exists C0>=0, forall j: 2*(B_lower-V_q-C_short)<=C0*N^(7/8).  (UNPAID)

No proof of UNPAID is supplied, no new Prop packages it as a witness, and no
RH or fixed-exponent consumer is added. The stronger existing paid threshold
Z_j=2^ceil(j/4) is preserved; it can also pay the shared part inside p<=L.
This does not permit the long-prime denominator simplification at p<=L.

## 5. A genuinely signed independent estimate on a growing q range

If 1<q<=j^2 and q is composite, its least prime factor r satisfies
r^2<=q<=j^2, hence r<=j. That r belongs to P_j, so a(q)=0.
For a prime q, the exact rough coefficient is zero for q<=j and -1 for q>j.

Therefore, throughout 1<=q<=min(j^2,floor(N/p)) for a long fresh p,

  alpha_(j,p)(q)=1_(q=1)-(1/2)*1_(q prime and q>j).       (P1)

The denominator two at a nonunit prime follows from the proved count insertion;
it is not replaced by one. At the unit the denominator is exactly one.

For ANY 1<=a0 and b<=min(j^2,floor(N/p)), including empty intervals,

  sum_(q=a0)^b alpha(q)
    = 1_(a0=1 and b>=1)
      -(1/2)*#{q prime:a0<=q<=b, q>j}.                  (P2)

Consequently the actual interval sum is at most its permitted unit contribution.
It is nonpositive when a0>1. In particular

  A_(j,p)(t)=1-(1/2)*#{q prime:j<q<=t}<=1

for 1<=t<=min(j^2,N/p). This is a SIGNED upper bound with constant one,
proved independently of S, the block energy, a mass ratio, or a growth premise.
It is not an absolute bound: the prefix can be substantially negative.

The whole source row in this range is computed as

  sum_(q=a0)^b alpha(q)G(m,pq)
    =1_(a0=1)G(m,p)
      -(1/2)*sum_(q prime, max(a0,j+1)<=q<=b)G(m,pq).    (P3)

For example j=8,N=256,p=17,t=13 gives A(t)=1-1/2-1/2=0,
from the unit and q=11,13. Removing the unit gives -1; removing the divisor
weight gives -1 as well, neither of which is this source.

The proof scripts implement P1, P2, the two signed inequalities, and P3.
They do not assume prime density or use a discrepancy schedule for 4^|P_j|.

## 6. Why this does NOT yet prove a full exponent improvement

The factor a(m)[G(m,pq)-G(m,p(q+1))] in R has no fixed sign. It is invalid
to insert A(q)<=1 into every term as a same-direction inequality. Outside
q<=j^2, P1/P2 no longer give the prefix. The full q>j^2 range, the lower
endpoint, and the complete short-prime sector remain. No separately small
bound on a negative channel or absolute variation discharges UNPAID.

The new result is an exact weighted q-return PLUS an independent signed
low-quotient estimate. It is NOT the requested bound for the entire signed
combination. No smaller exponent for full R or H, no all-positive-rate bound,
no source-only mass witness, and no RH proof is claimed. The earlier analytic
Euler-product/Laplace obstruction retains its written scope.

## 7. Acceptance and provenance

Two new files only; no duplicated local rough-prefix/shared-prime alternatives.
No existing Lean body, root import, toolchain or dependency pin is replaced.
The new source has 8 definitions and 29 theorem scripts, 37 textual identifiers,
533 lines. These are not an elaborated declaration count.

Local diagnostics exercise finite exact rational arithmetic, source masks,
actual rational divisor weights, both endpoint identities, the unit and repeated
prime controls, and signed rational model kernels with frozen support. The model
kernels are not rigorous enclosures of the irrational analytic Gram. Neither those
tests nor source review supplies native acceptance or an asymptotic theorem.
No remote execution or workflow was dispatched. Operational diagnostics and
Audit.lean remain outside the mathematical repository; only the static request
and mathematical note are checked in.

## Concrete next mathematical execution instruction

Split the anchored q-window at j^2, substitute P3 on its low segment, then expand
the mixed second moment of the remaining q>j^2 contribution TOGETHER WITH
shortPart; group the two quotient indices by their gcd while retaining the
1/w(pq) factors, strict m<pq windows, and matching boundary at j^2.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c5bbeb78a7d2899178fdd0b29cf7c13a0064247be85672e8b174e7bc34fb19a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
