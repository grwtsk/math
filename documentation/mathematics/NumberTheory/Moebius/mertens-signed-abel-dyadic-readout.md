# GRWTSK dyadic signed-readout neighborhood

Contribution: grwtsk.
Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

Reviewed baseline: `grwtsk/math@f231fb54bc413556aa8f79adb1a00079cff7688e`.
Exact four-source delta tree: `0057a0b28ca37c1f39eb717ca297366fe0fcc513`.
Integration commit: UNASSIGNED. This tree is not a commit or a full repository tree.
Do not repoint main to it. No existing mathematical source, root import or dependency pin was changed.

## Reused source, not a parallel arithmetic model

The increment consumes the maintained `DyadicVariance.pair_centered_split`,
`DyadicBlockSquareMaximal.finitePrefixSum` and `shiftedSequence`, the actual
`MertensSignedAbelFiniteRows.signedRow` and its reconstruction theorem, the
positive-index bijection in `MertensSignedAbelRowAbel`, and the already retained
bulk/head/triple and two-unit boundary identities. The three arithmetic rows
are combined before any dyadic transformation or absolute bound.

The optional existing maximal comparison paid a level-count factor and used
an unnormalised sum of block squares. The NEW statement concerns a different
quantity: an exact signed row pairing and orthogonal child-sum contrasts.
There is no claim that the previous inequality is false or that the new bound
dominates it for every source. The old maximal theorem is not overwritten.

## Exact finite identity

On Y=2^(j+1) positive coordinates, let ell(a) be the actual combined row
w1(a)-w2(a)-w3(a). For any dyadic node I, let c_I(f) be the sum on its left
half minus the sum on its right half. Its denominator is the PARENT length.

For every real input f:

    sum_(a=1..Y) ell(a) f(a)
      = [sum ell * sum f]/Y + sum_I c_I(ell)c_I(f)/|I|.

This is an equality containing every internal node, the original signed
input, and its actual mean. No periodic extension, independence, or zero-mean
hypothesis appears. Polarisation of the repository's two-cell variance
identity supplies each split; recursion composes the full tree.

For any selected node set S, retain the root and the selected products:

    L_S(f) = [sum ell * sum f]/Y + sum_(I in S) c_I(ell)c_I(f)/|I|,
    R_S(f) = sum_(I not in S) c_I(ell)c_I(f)/|I|.

The actual response is exactly L_S(f)+R_S(f). Selection need not be a subtree
and can differ by scale. Those freedoms do not provide a size or complexity
bound on the selected family.

## Omitted energies and the row-only certificate

Define E_S(f)=sum_(I not in S)c_I(f)^2/|I|. Then

    R_S(f)^2 <= E_S(ell) E_S(f),
    sum f^2 = (sum f)^2/Y + retained_detail_energy(f) + E_S(f).

There is NO additional factor counting levels. Both tail energies are
nonnegative, and their values remain explicit. For actual Mobius input:

    E_S(mu) = sum_(1<=n<=Y) mu(n)^2 - M(Y)^2/Y - retained_detail_energy(mu)
             <= Y.

The last inequality is only the trivial one-bounded-input allowance, not an
RH-strength energy estimate. Therefore the omitted response of ANY input
one-bounded on the finite source satisfies

    R_S(f)^2 <= Y E_S(ell).

A certificate Y E_S(ell)<=epsilon^2 is entirely about the actual coefficient
row. It supplies approximation error <=epsilon uniformly in such f. It does
NOT bound the retained model or prove that a small useful selection exists.

## Original packet and the correct one-sided sign

The unchanged bulk has B_j=H_j-L_j(mu)/6. H_j still contains the signed
unsifted, one-prime, and two-prime contributions. With

    Model_S = H_j-L_S(mu)/6,

we have B_j-Model_S=-R_S(mu)/6. The inherited full-packet boundary comparison
therefore yields

    |P_j-Model_S| <= 2+epsilon/6  if |R_S(mu)|<=epsilon,
    P_j <= Model_S+2+epsilon/6   if R_S(mu)>=-epsilon.

The lower bound on R, not an upper bound, is the relevant one-sided supplier.
For a proposed head H0, the joint error is

    J = H_j-H0-R_S(mu)/6,
    B_j = [H0-L_S(mu)/6]+J.

The conditional RH endpoint consumes all-positive-exponent upper budgets for
that model and that JOINT signed error. It does not demand separate absolute
head and triple errors. Neither budget is supplied here. Boundary loss stays
two and is not multiplied by the number of retained nodes.

## Ordinary-prefix and local block estimates feed the same quantity

For the zero-based positive input f(n+1), ordinary prefix S_f(N), and a node
[o,o+2H), the exact contrast is

    c_I(f) = 2 S_f(o+H)-S_f(o)-S_f(o+2H).

A supplied prefix envelope A pays the literal allowance
2 A(o+H)+A(o)+A(o+2H). Alternatively, estimates for the two child interval
sums can be combined directly. The recursive `ContrastBound` requires these
bounds ONLY at the actual omitted nodes of the finite source tree.

The complete optional allowance is

    sum_(I not in S) |c_I(ell)| E_I/|I|.

The existing signed row is formed first. A maximal-prefix estimate or an
all-shift uniform bound is not mandatory. None of these arithmetic prefix or
interval estimates is proved small in this increment.

## A formal obstruction to naive feature selection

With f=(1,-1,1,-1), g=(1,-1,-1,1), the complete pairing is zero. The root-only
model is also zero. The left and right length-two detail products are +2
and -2. Retaining only the left product gives model 2 and omitted error -2.
Thus MORE retained features can INCREASE absolute scalar error, despite
monotone DECREASE of omitted nonnegative energy. The source proves both
energy monotonicity and this counterexample. It is not a Mobius counterexample.

This warns against assuming that greedy energy capture necessarily improves
an already cancelling scalar approximation. The exact signed remainder is
preferred whenever it can be estimated directly.

## What has and has not been formalized

Four sources contain 15 definitions, 45 public theorem scripts and one private
helper (61 lexical declaration commands, 60 public). They include exact tree
splitting, source-specific composition, finite error inequalities, and explicit
negative controls. No native Lean command has been run.

No new OAI theorem, Fourier inversion candidate, entropy-decrement theorem,
prime-distribution estimate, source comparison to pickupCross, or analytic
all-scale cancellation is imported. In particular, the previous detached
Mathlib Fourier sources are NOT dependencies of these modules. A comparison
between omitted Fourier and dyadic features remains separate work.

The existing radical-logarithm identity is not duplicated. It remains a finite
normalisation invariant, not a supplier of the required signed cancellation.

The next arithmetic task is to choose source-relevant nodes, prove their row
energy or signed omitted-pairing bound, and estimate the retained signed model
with the root mean and full head still present. Merely choosing all nodes
sets the remainder to zero but just restates the original hard expression.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=452cffcfe96a909fca2fc0c844f6f1bf6560b740b4620ed4aadaf09231e8a5a5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
