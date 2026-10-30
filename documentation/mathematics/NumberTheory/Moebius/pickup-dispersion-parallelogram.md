# Exact dispersion parallelogram and gcd grouping

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

## Source

For one exact retained source interval I define

 C_r = sum_(q,s | Q_j) mu(q)mu(s)
         sum_m a_j(m)a_j(m+r) G_T(qm,s(m+r)),

with the literal m-window enforcing I, qm<=N, s(m+r)<=N and all frozen source
endpoints.

The mean square is sum_(1<=r<=H) C_r^2. Expand only after each C_r is complete.

## Full selected-divisor quartet

The exact expansion is

 sum_(r<=H) sum_(q,s,q',s' | Q_j)
   mu(q)mu(s)mu(q')mu(s')
   sum_(m,n in I)
     a_j(m)a_j(m+r)a_j(n)a_j(n+r)
     G_T(qm,s(m+r)) G_T(q'n,s'(n+r)),

where the common literal window is

 m in I,
 m+r in I,
 qm<=N,
 s(m+r)<=N,

and independently

 n in I,
 n+r in I,
 q'n<=N,
 s'(n+r)<=N.

No q,s,q',s' term is discarded before the complete signed quartet is formed.

## Diagonal

For n=m the arithmetic factor is

 a_j(m)^2 a_j(m+r)^2,

and the response factor is the product of the two Gram weights. This is the
positive dispersion diagonal. It must be paid separately and is not
cancellation in the off-diagonal.

## Off-diagonal by k=n-m

For n>m write k=n-m>=1. Then the four arithmetic corners are

 a_j(m) a_j(m+r) a_j(m+k) a_j(m+k+r).

The response factors are

 G_T(qm,s(m+r))
 G_T(q'(m+k),s'(m+k+r)).

The literal common m-window is the intersection of

 m in I,
 m+r in I,
 m+k in I,
 m+k+r in I,
 qm<=N,
 s(m+r)<=N,
 q'(m+k)<=N,
 s'(m+k+r)<=N.

The n<m orientation is retained separately or recovered by the symmetric
ordered-pair factor when justified.

## gcd grouping

Put g=gcd(k,r), k=g*u, r=g*v with gcd(u,v)=1. The arithmetic parallelogram is

 a_j(m)
 a_j(m+g*v)
 a_j(m+g*u)
 a_j(m+g*(u+v)).

This is a primitive affine rectangle at scale g. The roughness/squareful masks
are retained at all four vertices.

For a prime p dividing g, all four vertices are congruent mod p. Therefore if
p is a selected prime <=j, roughness of one vertex forces roughness of every
vertex with respect to p. For p not selected, p may divide all four vertices;
no cancellation is inferred.

For a prime p dividing u but not v, the left/right horizontal pairs coincide
mod p while the vertical shift remains nonzero mod p. For p dividing v but not
u the analogous vertical pairing occurs. Since gcd(u,v)=1 these collision
patterns are disjoint prime-by-prime.

This gcd grouping is exact combinatorial structure. It supplies no sign.

## Relation to current positive-Gram machinery

Current main contains the exact positive-Gram quadratic ellipsoid at commit
5c4efc8e3e66a2ea8a86a6e5c9823531ac183256 and positive Gram split machinery
at 332250ac4b7cb312f0e7abb84879e7eaf0e511af.

Those files explicitly state that they supply no arithmetic source comparison
or RH consequence. They cannot be used to replace the signed parallelogram by a
positive norm. Their correct role here is only potential bookkeeping AFTER an
exact arithmetic-to-Gram map is proved.

## First absolute pricing

The primitive rectangle has no automatic Mobius sign cancellation. Taking
absolute values over m,r,k reconstructs an O(H*N*...) off-diagonal inventory
(up to Gram decay and endpoints), which is too large to improve the retained
source exponent.

The r-average therefore needs a theorem about the signed primitive rectangle

 sum_r sum_m
 a_j(m)a_j(m+r)a_j(m+k)a_j(m+k+r) W_(r,k)(m),

or an exact transformation that reduces it to already controlled binary
objects without losing the q,s,q',s' response variation.

## New precise obstruction

obstruction_id: primitive-mobius-parallelogram-dispersion-v1

The dispersion expansion and gcd grouping do not merely reconstruct an arbitrary
four-point problem. They isolate primitive affine rectangles (u,v)=1 at scale g
with a highly structured response weight.

A power saving now requires one of:
1. signed cancellation of these primitive Mobius parallelograms averaged over
   r (and possibly k);
2. a source-preserving reduction to binary correlations after the gcd grouping;
3. a Fourier/trace theorem for the weighted primitive rectangle.

No such estimate is proved here.

## Complete-source boundary

The dispersion target is one retained source component. The original proof still
must pay the dispersion diagonal, all clipped endpoints, low/terminal/top/birth
terms, near/far and far-only shared corrections, completed cofactor family and
complement, p=q/repeated-prime corrections, and the all-positive-rate endpoint
condition.

## Evidence

New local mathematics: exact q,s,q',s' expansion, literal common window,
off-diagonal k grouping, gcd primitive-rectangle classification.
Positive-Gram files: existing source candidates, explicitly not arithmetic
cancellation suppliers.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
New cancellation estimate: none.
RH claim: none.
