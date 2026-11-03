# Genuine Weierstrass unit-sign variable change: certified all-prime fiber port

Local mathematical attribution: grwtsk contributors. Research date: 2026-11-01.
Classification: complete elementary arithmetic-geometric argument and Lean SOURCE_PROOF_CANDIDATE. Compilation, expected types, fresh kernel and transitive axiom audit remain NOT_RUN. No general unit change, analytic L-function equality, RH or BSD is claimed.

## 1. Source inspection and nonduplication

The requested historical source is grwtsk/math@4ecb4e571664b05e4b5f032dc71e22dd668cdcee, which constructs a genuine affine fiber equivalence from five coefficient congruences. Concurrent main commit b0c774242e5c8bc4847f13c151e4603f2d08012b independently constructed the entire samplewise local certificate transport, direct Euler coefficient invariance, signed kernel comparison, and finite-prime a6-deformation obstruction in EllipticPrimeResidueSamplewiseTransport.lean, blob c080735838e2b4872755cd1409d4f8460b7e3f70. A separately prepared similar candidate was NOT applied to main, because it would duplicate that result. This increment instead advances the distinct next missing geometric supplier named in the concurrent review.

Pinned Mathlib source Mathlib/AlgebraicGeometry/EllipticCurve/VariableChange.lean (revision d13f23b723b8a846827a245b89c10fc7d3f11612, Git blob 9ae1871e4ed729cefa7c5b7a68a60cf52c580a3a) provides the actual WeierstrassCurve.VariableChange structure, its group action, and variableChange_Δ: Δ(C•W)=C.u⁻¹^12 Δ(W). The original integral model/finite-count definitions remain in EllipticFiniteEulerWindow.lean, blob 48e14ca731bd9b13f8373eea7521e746cb3eab93. The genuine target ChannelPort and indexed BoundedSample are in EllipticPrimeResidueFiberPorts.lean, blob e7f5901f929bf999d15772f1b92cf3460023623d; its full signed packet consumer is EllipticPrimeResidueFiberCounting.lean, blob 70c96ac0ebabe429e129ea549e151e575d30593d. Toolchain Lean v4.34.1; no Mathlib pin change.

## 2. Exact nontrivial integral admissible variable change

For an actual five-coefficient integral Weierstrass model W, define

    W^− = (−a1(W), a2(W), −a3(W), a4(W), a6(W)).

This is not generally coefficient-congruent to W at odd primes. Take Mathlib's actual admissible variable change C=(u,r,s,t)=(-1,0,0,0); u=-1 is a unit in ℤ. Its source-defined coordinate action is (X,Y) -> (u²X+r, u³Y+u²sX+t)=(X,-Y). The source change-of-variables coefficients show C•W=W^− exactly, in all five integer coordinates. The true Mathlib discriminant law gives

    Δ(W^−)=u^(-12)Δ(W)=Δ(W).

Thus at EVERY positive prime, W has good reduction exactly when W^− does. This is stronger than a finite-support coefficient congruence, but only for this particular genuine unit change.

## 3. Actual geometric affine equivalence and complete certificate

At any prime p, the ORIGINAL affine equation for W is

    y²+a1 xy+a3 y=x³+a2 x²+a4 x+a6.

For W^− and (x,-y), its left side is

    (-y)²+(-a1)x(-y)+(-a3)(-y)
      =y²+a1 xy+a3 y,

with identical right side. This polynomial equality is valid over ZMod p, including characteristic 2. The source map

    Φp : AffinePointFiber W p -> AffinePointFiber W^− p,
    (x,y) |-> (x,-y)

is therefore well defined. It is its own inverse since -(-y)=y; consequently it is an ACTUAL bijection on original solution fibers, not just an equality of their cardinalities. The exact original count adds one infinity point on either side, so

    integralModelCount W p = integralModelCount W^− p.

Starting from ANY genuine GoodPointCountCertificate for W at p, the new source builds the certificate for W^− with (a) exactly the same prime proof, (b) good reduction proved by the actual discriminant identity, (c) the same count, and (d) count_eq proved by Φp. The complete dependent residue and prime-power exponent remain unchanged.

Unlike the finite-support samplewise congruence result, this produces a GENUINE global ChannelPort (fun _ => True) W W^−: all certified good primes are covered by the same independent source construction. The chosen trivial curve-class predicate True is deliberate; no CM, Selmer, isogeny or unrelated curve-class property is inferred. Every source-actual local Frobenius trace, entire direct Euler coefficient recurrence, finite reciprocal Euler polynomial and complete signed ordered trace packet is preserved by the existing PortFiber/ChannelPort theorems. No new free count or invented prime-power coefficient is introduced.

## 4. Independent hostile evidence and scope

Concrete original integral models W=(1,0,1,1,1) and W^−=(-1,0,-1,1,1) are distinct integral coefficient records. At prime p=7 their a1 and a3 residues DIFFER, so the earlier same-coordinate congruence producer cannot apply; nevertheless the genuine Φ7 carries the complete original affine solution set to the target. The discriminant is -755 and reduces to nonzero 1 modulo 7; both certified counts are 8. Thus this is a true good-prime geometric comparison outside the identity-coordinate case, not a degenerate bad-reduction fixture. In characteristic 2, the sign map becomes the identity, and the mathematical equivalence still holds without division by 2.

An independent reference script ran exact finite checks on 243 different five-coefficient integral models and all eight primes {2,3,5,7,11,13,17,19}, totaling 1,944 prime-model cases. It verified the equality of original integer discriminants, the complete explicit fiber bijection (x,y)->(x,-y), the exact count, good-reduction equivalence, trace, and every direct recurrence coefficient up to degree 11. There were 1,481 good-prime cases. The separate non-congruent good-prime example was also checked. Command: python /mnt/data/elliptic_y_sign_change_reference.py. Result: 25,334 exact integer assertions PASS, exit 0; SHA256 d342ca9b3d940ea827363d6ec83d83c62ef50220577bdc9dbca5d04ec611f5c1. These are bounded finite diagnostics, not Lean compilation, kernel checking, axioms or all-model proof acceptance.

This result MUST NOT be promoted to a theorem for arbitrary residue-field unit u or general (r,s,t). For those changes the coordinate map is (u²X+r,u³Y+u²sX+t), with full inverse and source equation compatibility still to be proved. An arbitrary unit in ZMod p need not lift to an integral unit in ℤ. The finite-field scaling can change a reduced model without producing equality of original integer coefficient tuples. The characteristic-polynomial, local minimal model and bad Euler factors must remain source-specific.

## 5. Formal acceptance and downstream consumer

The single new Lean subject file contains source proof candidates reverseYModel, ySignVariableChange, reverseYModel_eq_variableChange, reverseYModel_discriminant, originalAffineEquation_reverseY_iff, reverseYAffineEquiv, reverseYGeometricPort, reverseY_pointCount_eq, reverseYCertificate, reverseYChannelAt, reverseYChannelPort, reverseY_localDirectCoeff, reverseY_orderedTrace and reverseY_localReciprocal. The finite mathematical proof above is unconditional for this exact u=-1 case. Compilation, expected types, fresh kernel and transitive axiom audit of these exact bytes and dependencies are still NOT_RUN; code was not tested in native Lean because lean/lake/elan is unavailable. No remote runner, CI, scheduler or controller was dispatched.

The next mathematically distinct bridge is to generalize the geometric correspondence to a genuine arbitrary unit C.u in the residue field, with the full translated/sheared variables and the canonical integral local-minimal model certificate comparison. This directly targets the existing EllipticPowerSeriesLocalFactor source's minimal-model transport seam. Beyond local good Euler factors, BSD requires genuine analytic continuation/conductor/zero order and rational Mordell-Weil/descent. The independently published concurrent RH source `MoebiusEllipticFiberKernelComparison.lean` (blob `df9ded979964790b92f3053efc3aedeb6e2dfa78`) and its record-7/19 certificate bank (blob `b33d580f9d62d3dbe6b43a98af988a95674fb885`), on main at `3689f993057bd4e26e6786c525cafe9ad77f1738`, now construct a source-exact PARTIAL routing of every original Möbius endpoint integer: unmatched/rough and mixed terms are retained, and matched pairs carry the complete original-minus-elliptic SIGNED kernel defect. The ordinary finite identity is
    pickupCross(T) = matchedEllipticPacket(B,T) + fullSignedResidual(B,T).
The original endpoint correction `endpointSum(T)-pickupCross(T)`, including its previously proved quarter-unit bound at nonnegative T, remains separate. This is substantially more than a visual comparison, but it is an identity, NOT a noncircular upper bound: for the squareful source index 49, `mu(49)=0` while its assigned 7-fiber trace is -5, making its ordered cross with index 7 contribute -25 to the literal defect per orientation. Suppressing that residual would invalidate the RH return.

The new sign-change port preserves actual elliptic local counts and trace products on each genuine certified channel; it does not remove the existing signed Möbius defect, unmatched sectors or possible quadratic-size trace packet. Consequently the sole arithmetic supplier still missing on this route is an independently proved all-positive-rate one-sided bound on the COMPLETE signed `matchedEllipticPacket + fullSignedResidual` (or original endpointSum) at controlled-cover heights. The original RH zeta-zero carrier and analytic multiplicities remain unchanged.

Status: FINITE_MATHEMATICAL_ARGUMENT_COMPLETE; SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; GLOBAL_ELLIPTIC_ANALYTIC_RETURN_OPEN; RH_OPEN; BSD_OPEN.
