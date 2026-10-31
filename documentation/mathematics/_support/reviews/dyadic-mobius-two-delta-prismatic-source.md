# Actual signed Möbius dyadic pairs over an integral 2-δ cochain

Local mathematical attribution: grwtsk contributors.

**Scope:** original arithmetic source + exact mod-2 shadow and signed
integer carry + original real geometric weights + finite Frobenius
cochain. Source candidates are NOT Lean compiled or kernel audited.
This does NOT certify a completed prismatic site, cohomology,
cohomology comparison, analytic cancellation or RH.

## Exact original source and geometry

Pinned input math main: a4947765f1608c3eac1d3a430a370fa1c39322c3.
The original source is not a generic Möbius proxy:

- PickupCellQuadratic.lean, blob e57f87c19acc0adb45f740dfee8b3e06e4d5b57c,
  defines moebiusReal, signedMass, weightedMass, squareMoment,
  coefficient0/1/2, crossDensity and proves crossDensity_eq_ordered.
  The original full ordered pair kernel excludes only m=n, retaining
  all unsifted/repeated-prime labels and negative contributions.
- PickupDyadicEndpoint.lean, blob bf1d3ccbbe7a49033fdff0ab11176d589a1a7f31,
  proves exp(dyadicTime j)=2^j, exact closed cutoff 2^j,
  endpoint_dyadic_eq_birthSum, and the conditional full
  all-positive-rate RH return.
- PickupEndpointQuadrature.lean, blob 2606536c56bdcb33d120aeddfbcbeef793e31ba1,
  proves the uniform actual-source endpoint difference at most 1/4
  and the EXACT signed coefficient2 * curvatureMass residual.
- DividedFrobeniusCochain.lean, blob 51a667b5a0aee5224299cb1603cf7748639e13e5,
  supplies p-regular δ axioms and exact Frobenius-twisted
  finiteCoboundary with coefficient-fixity obstruction.
- SharedShadowPullback.lean, blob 3ef32a97bea24e019595a5413baba09da5556303,
  supplies an exact lower-shadow matching subgroup and a full
  lossless reified record. It does not manufacture signed
  arithmetic or a cohomology theorem.
- PickupSignedRotation.lean, blob 7aa4f825a10d2b0d5bd9d57a5f96ccda6fe420d6,
  supplies EXACT dyadic birth-index reflection without a
  claimed additive automorphism.

No above source or toolchain was modified in this increment.

## 1. Pairwise modulo two with an exact signed lift

For the literal integer Möbius coefficient µ(n), set

    r(n) = µ(n) % 2 in {0,1},
    q(n) = µ(n) / 2 by Euclidean integer division.

Then for EVERY integer coefficient, including negative and zero,

    µ(n) = r(n) + 2q(n).

The actual signs therefore have different complete records:

    µ=+1 -> (r,q)=(1,0),
    µ=-1 -> (r,q)=(1,-1),
    µ= 0 -> (r,q)=(0,0).

Modulo two alone does NOT know the sign. At every ORIGINAL
ordered arithmetic pair,

    µ(m)µ(n)
      = r(m)r(n)
      + 2[r(m)q(n)+q(m)r(n)+2q(m)q(n)].

This equality retains EVERY pair and the residual sign.
It is not a positive kernel and neither r nor q has an
independent cancellation theorem.

Define the actual finite dyadic signed cross-density

    X_j(u)=crossDensity(j log 2,u)
      = sum_{m,n=1..2^j,m≠n} µ(m)µ(n)
          pickupResponse(m,u) pickupResponse(n,u).

Keep the EXACT original real response weights in both parts.
The signed pair identity yields

    X_j(u) = S_j(u) + 2 C_j(u)

where S is the digit/digit weighted part and C is the full
signed cross-digit/carry part. The inequality m≠n is retained
in BOTH sums; no hidden diagonal or negative-pair renormalization
is permitted. The formula is exact for all real u and j≥0,
including j=0 (one term, hence empty off-diagonal pair set).

The published pickup integral then returns

    pickupCross(j log 2) =
      integral_0^(j log 2) [S_j(u)+2C_j(u)] du.

The canonical signed endpoint residual is retained further:

    dyadicBirthSum(j) =
      integral_0^(j log 2) [S_j(u)+2C_j(u)] du
      + R_curv(j),

where R_curv is the actual sum over k in range(2^j) of
coefficient2(k+1) * curvatureMass(eventCut_j k,eventCut_j(k+1)).
This is the SAME original five-moment signed coefficient and
exact physical event partition, not a fitted positive PSD curve.
The existing theorem also supplies

    |R_curv(j)| ≤ 1/4

unconditionally. This is solely an approximation allowance;
it does NOT bound the full signed pair integral.

The stated all-positive-rate budget on the complete RIGHT
HAND SIDE is definitionally equivalent to the existing
DyadicBirthBound. The implication to the Mathlib canonical
RiemannHypothesis remains CONDITIONAL on that new arithmetic
estimate. No such estimate has been proved by parity reduction.

## 2. Actual additive common-shadow reification of the signed pair

The original upper source is Z×Z, recording the two integer
Möbius coefficients. The distinct coded upper source is

    ((ZMod 2 × Z) × (ZMod 2 × Z)).

Both have genuine additive homomorphisms to the common lower
shadow (ZMod 2)×(ZMod 2). The shared-shadow pullback therefore
compares two DISTINCT upper types rather than identifying them.
A nonlinear source code

    z ↦ ((z : ZMod 2), z/2)

remembers the parity group label and integer signed carry.
Its decoder is

    (r,q) ↦ (r.val : Z) + 2q.

This decoder returns the original integer, including -1.
The signed source pair m,n maps into the actual matched pullback
by a proof of equality of BOTH parity labels. The coded right
side independently reconstructs (µ(m),µ(n)); the full
SharedShadow reified record also has exact decode_encode.

The real hostile collision (+1,0) versus (-1,0) has the same
lower shadow and DIFFERENT integer carry. There is no
shadow-only decoder. The coefficient/numeric-code map itself
is not claimed to be an additive homomorphism.

## 3. Constructed p=2 δ ring and actual finite arithmetic coboundary

The new finite p=2 coefficient supplier is not a free δ witness.
Over the INTEGERS define

    delta2(x) = (x-x²)/2 in Z.

The numerator is always even. Therefore

    phi(x)=x²+2delta2(x)=x

for every integer, and both δ addition/multiplication identities
follow by exact integer algebra, with multiplication by 2 injective.

This builds a concrete TorsionFreeDeltaStructure 2 Z and proves
its Frobenius lift is identity, without postulating these laws.

For each dyadic stage use the full index Fin(2^j) and ACTUAL
signed Möbius matrix

    M_j(m,n)=
      0 if m=n,
      µ(m+1)µ(n+1) otherwise.

(The Fin indices start at zero; source arithmetic indices
start at one.) The finite coboundary is

    (d_j x)(m) = Σ_n M_j(m,n)x(n).

All signs and both input directions are retained; the
matrix is NOT normalized by a probability or by absolute values.
The integral δ Frobenius commutes with this actual finite
coboundary, because it fixes integer coefficients.
Reduction of the entire matrix/cochain into ZMod2 also commutes,
but its kernel loses the signed carry. A separate proof gives
M_j = digitMatrix_j + 2*carryMatrix_j.

The same coefficient matrix base-changes EXACTLY to ANY
commutative ring A through the canonical integer cast.
If A is additionally supplied with a genuine p=2
TorsionFreeDeltaStructure, Frobenius fixes each integer matrix
coefficient, so the finite cochain commutes with the untwisted
Frobenius also over A. This is an actual source-specific
comparison and not a fabricated prismatic vanishing supplier.

## 4. What is a genuine complete 2-adic prism?

The accepted external mathematics (Bhatt–Scholze,
*Prisms and prismatic cohomology*, Annals 196 (2022)
1135–1275, Definition 2.1 and examples,
DOI https://doi.org/10.4007/annals.2022.196.3.5)
includes the standard crystalline prism

    (A,I) = (Z_2,(2)).

Here Z_2 is the COMPLETE inverse limit of Z/2^k;
the δ formula extends with phi=id, 2 is a nonzerodivisor,
the principal ideal is Cartier, A is derived (2)-complete,
and 2 belongs to I+phi(I)A. This identifies a genuine
mathematical target, not a newly kernel-certified local Lean
construction of PadicInt 2 or a prismatic site.

The newly formalized integral Z coefficient ring is
NOT itself this prism because Z is not 2-adically complete.
The mod-two coefficient field ZMod2 cannot satisfy the
torsion-free p_regular hypothesis at p=2.
The conditional scalar-extension cochain theorems cannot
be displayed as a genuine completed-prism comparison until
the p-adic completion, δ-extension, ideal, derived completeness,
differential-compatible complexes, and return are supplied.

The previous TwoThirdsPrismaticComplexBridge is a degree-zero
cochain interface for the canonical zeta zero divisor; it
does not turn the current signed Möbius cochain into genuine
prismatic cohomology. There is no proven chain map from the
current finite incidence matrix to a prismatic complex,
no comparison quasi-isomorphism, no target vanishing theorem,
and no new zeta analytic bound.

## 4a. Actual completed 2-adic coefficient ring, with precise limit

The subsequent source candidate
GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/
DyadicPadicIntCompletion.lean (Git blob
c81a0d284366fb1e7fd3344ea3d0031e8da579ff)
takes the coefficient ring to ACTUAL Mathlib PadicInt 2.
The source does not define a toy finite 2-adic replacement.
Mathlib's PadicIntegers.lean constructs this ring and
its CompleteSpace instance.

The literal integer-to-PadicInt cast now carries
every signed Möbius coefficient, every ordered
dyadic matrix entry, and every finite integer
coboundary into the complete ring. The exact
mod-two digit-plus-integer-carry identity also
survives in PadicInt 2. The entire source
matrix is equal to its cast, not inferred
from a mod-two image.

The statement padic_signedCoboundary_frobenius_of_delta
requires an ACTUAL TorsionFreeDeltaStructure 2 (PadicInt 2)
as a separate input; it does NOT construct that δ-operator.
The underlying complete ring is now concretely typed,
but complete-space status alone does not discharge the
oriented crystalline prism ideal, derived-completeness
upgrade, full cochain complex or cohomological comparison.

This is the first genuine mathematical passage from
integer Möbius coefficients to the completed 2-adic
source coefficient ring. It is still NOT a proved
prismatic comparison to the canonical zeta trace.
No scalar map from all of PadicInt 2 into real-valued
pickupResponse is invented. The real source is compared
only through the exact integer lift and original
real response weights in DyadicModTwoPairLift.

## 5. Symplectic fiber and lossless coding compatibility

SharedShadowVerticalSymplectic supplies a NONDEGENERATE
alternating form when the two vertical kernel modules have
a PERFECT DUAL PAIRING over a specified shared ring.
The present source uses integer signed carries and F2
shadows; neither an actual perfect pairing of the relevant
cochain kernels nor a compatible Frobenius/symplectic map
has yet been constructed. It must not be inferred from the
Frobenius identity or from digit/carry arithmetic alone.

SharedShadowHuffman combines its full reified mathematical
source record with the original Huffman codec only when a
separate typed complete-byte serialization is supplied.
The current signed source recovery is a mathematical exact
integer round trip; it does not assert byte serialization
of arbitrary real geometric response values.

## 6. Hostile tests, review and arithmetic obligation

- r(+1)=r(-1)=1 but q(+1)=0, q(-1)=-1.
- µ(4)=0 (repeated-prime square) is retained in the
  original full dyadic source and not mistaken for a prime.
- m=n terms remain excluded; m,n and n,m remain separate
  ordered contributions when m≠n.
- The weight pickupResponse is the literal source real
  coefficient, NOT reduced mod2 or treated as p-adic.
- Integer Z is not 2-adically complete and F2 is not
  2-torsion-free; neither can be mislabeled a crystalline prism.
- A vanishing mod2 cohomology class is not evidence that an
  integer signed residual is zero; its carry may be nonzero.
- The arithmetic growth bound for the full signed integrated
  pair + curvature remains OPEN and cannot be supplied by a
  definition of the same bound in another module.

**Independent exact finite diagnostics:** 76,911 integer/rational
checks across all coefficients in -2048..2048, exact δ identities
on sampled pairs, dyadic cutoffs 1..128 and every ordered
signed Möbius pair at those cutoffs. The weight tests include
arbitrary signed rational response fixtures; these are
arithmetical algebra checks, not source-real numerical integration.

**Separate source-weight diagnostic:** 70-digit mpmath checks of
the ACTUAL five-moment polynomial against both the signed
off-diagonal expression and digit+carry reconstruction at
birth N=1,2,3,4,7,8,15,16,31,32,63,64,127. Differences
were below 5×10^-68 at the tested points. These are finite
high-precision diagnostics, NOT rigorous interval enclosures
or a proof of a global bound.

**Source formalization status:** all new Lean files are
SOURCE_PROOF_CANDIDATE; Lean compilation, fresh kernel replay,
expected-type checking and transitive axiom audit are NOT_RUN.
Prior formal source acceptance does not transfer to these new
bytes. Operational programs/outputs remain outside math.

The single next *mathematical* theorem is a source-derived
one-sided all-positive-rate bound on the COMPLETE signed
integrated digit+carry pair plus the exact curvature residual,
or a genuinely different source-faithful supplier composing
to that bound. An independent, true p-adic/prismatic
cohomological comparison remains a separate supplier and
must prove its own coefficient and limit hypotheses.
