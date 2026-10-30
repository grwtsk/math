# Common-shift factorization of the pickup additive fourth moment

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

## Exact source

Fix one exact retained finite core interval I and write

  c_n(u)=a_j(n) K_N(n,u) 1_(n in I),

extended by zero outside I. The exact fourth-moment source is

  E4 = integral_0^T integral_0^T
       sum_(a+b=c+d) c_a(u)c_b(v)c_c(u)c_d(v) du dv.

All source masks encoded in I and K_N remain. Top/shared/complement allocations
outside this interval remain separate obligations.

## Common-shift parameterization

For a+c-side ordering a<=c, put r=c-a>=0. The additive relation gives

  b=d+r.

Hence that ordered half of the quartet sum is

  sum_(r>=0)
    [sum_a c_a(u)c_(a+r)(u)]
    [sum_d c_(d+r)(v)c_d(v)],

with zero extension enforcing every endpoint automatically.

Define

  A_r(u)=sum_n c_n(u)c_(n+r)(u).

Then the full ordered additive-energy sum has the exact identity

  sum_(a+b=c+d) c_a(u)c_b(v)c_c(u)c_d(v)
    = A_0(u)A_0(v)
      + 2 sum_(r>=1) A_r(u)A_r(v).

Reason: r=0 is the a=c,b=d diagonal. For every r>0, the a<c and c<a
orientations are disjoint and equal after swapping the two sides.

After integrating u,v independently,

  E4 = D^2 + 2 sum_(r>=1) C_r^2,

where

  D = integral_0^T A_0(u) du
    = integral_0^T sum_n c_n(u)^2 du,

  C_r = integral_0^T A_r(u) du
      = integral_0^T sum_n c_n(u)c_(n+r)(u) du.

This is exactly the Parseval shift identity in a different parameterization.
It shows that the fourth moment is a SUM OF SQUARES of the actual integrated
binary weighted correlations.

## Permutation diagonals

The first permutation diagonal a=c,b=d contributes D^2.

The second permutation diagonal a=d,b=c lies inside the r>0 squares and the
r=0 intersection. It must not be subtracted twice. If one wants a
"genuinely nontrivial quartet" decomposition, the second diagonal has to be
removed from the expanded C_r^2 terms with its intersection at a=b=c=d
restored once.

For the weighted-bad-shift problem, this subtraction is unnecessary: the exact
norm D^2+2 sum C_r^2 is the quantity produced by Parseval and is nonnegative.

## Consequence

The four response factors are NOT intrinsically inseparable. The exact
four-point problem reduces to the L2 norm over shifts of the original binary
weighted correlations C_r.

The remaining arithmetic problem is therefore:

  prove a strong mean-square bound for
    C_r = integral sum_n
      a_j(n)a_j(n+r) K_N(n,u)K_N(n+r,u) du

over the relevant growing shift range.

This is more precise than requiring a general ordinary four-point Chowla
theorem.

## Expansion of the response weight

Expanding the frozen blocks,

  K_N(n,u)K_N(n+r,u)
   = sum_(q,s | Q_j) mu(q)mu(s)
       1_(qn<=N)1_(s(n+r)<=N)
       r_(qn)(u) r_(s(n+r))(u).

Thus

  C_r = sum_(q,s | Q_j) mu(q)mu(s)
          sum_n a_j(n)a_j(n+r) G_T(qn,s(n+r)),

with the literal clipped n-window determined by I, qn<=N and s(n+r)<=N.

For fixed r,q,s the Mobius factors are a binary shifted correlation, but the
weight G_T(qn,s(n+r)) varies with n and the selected divisors q,s. Ordinary
two-point Chowla does not directly consume this weighted growing family.

Finite Abel summation can move variation of the Gram weight onto prefixes of

  sum_(n<=x) a_j(n)a_j(n+r),

but this requires:
- a uniform growing-r bound for those binary prefixes;
- coefficient variation summed over q,s without losing the saving;
- all clipped endpoints;
- shared-prime and squareful masks;
- the complete cofactor/complement allocation.

## Guo connection

Guo's growing-shift logarithmic theorem is closer now because C_r is itself a
binary shifted correlation. However it is logarithmically weighted Liouville,
while C_r uses rough Mobius and the n-dependent response weight above.

A source-preserving Guo transfer would need to show that the response-weighted
correlation can be represented by, or Abel-reduced to, logarithmically weighted
correlations over the required growing shifts without losing the saving.

The existing Guo shift range h<=(log x)^kappa is far smaller than the physical
pickup range r<=N^(3/4+o(1)); therefore that theorem cannot cover the full shift
inventory directly.

## Quantitative target

For a supply-bad set B, the exact bound is

  sum_(r in B)|C_r|
    <= sqrt(#B) * sqrt(sum_r C_r^2).

The fourth-moment identity says

  sum_r C_r^2 = (E4-D^2)/2

for positive nonaliased shifts.

A power improvement therefore requires a mean-square saving for the complete
weighted binary correlations over the physical shift range. Binary fixed-shift
cancellation alone is insufficient because constants and thresholds may depend
on r.

## New obstruction

obstruction_id: weighted-binary-growing-shift-mean-square-v1

The four-point coupling has been removed exactly. The surviving unsupported
arithmetic step is a uniform/mean-square estimate for the ORIGINAL weighted
binary correlations C_r across the growing shift family, after all q,s divisor
weights and endpoint variation are paid.

This is materially narrower than pickup-bad-shift-fourth-moment-v1.

## Complete-source boundary

This exact factorization applies to the selected retained interval. A final
source estimate must still restore low/terminal/top/birth pieces, near/far and
far-only shared corrections, completed cofactor family plus complement, p=q and
repeated-prime corrections, and the every-positive-rate endpoint requirement.

## Evidence

New local mathematics: exact common-shift factorization and sum-of-squares
reduction.
External binary/Guo theorem consumed: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
New complete-source cancellation estimate: none.
RH claim: none.
