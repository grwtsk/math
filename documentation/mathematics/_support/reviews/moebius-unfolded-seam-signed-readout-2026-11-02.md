# The unfolded Möbius seam and the sign-blind arithmetic detector: a precise bridge boundary

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors.
Source review: grwtsk/math commit 478cc699d90c09c9a64ca779741c5a786a3949a3.
Status: source-level mathematical argument and Lean proof candidates, NOT_RUN Lean compilation, NOT_RUN kernel replay, NOT_RUN transitive axiom audit. Classical RH estimate remains OPEN.

## Mathematical object and exact statements

Let w : {0,...,n-1} -> Z/2 be the original orientation transition list of an abstract finite cyclic loop. Put g_0=0 and g_i=sum_{k<i} w_k. Changing local vertex frames gives w^g_i=w_i+g_i-g_(i+1), exactly as defined in MoebiusBandGaugePacking.lean. Then:

  w^g_i=0 for every i,
  g_n-g_0=sum_{i<n}w_i.

Thus every orientation transition can be trivialized on the opened interval, but an odd loop retains a nonzero seam discrepancy. The unfolded gauge descends to a closed loop if and only if its original mod-two holonomy vanishes. The existing orientation-double-cover monodromy adds the same holonomy to the two-valued sheet state, and its square is the identity. This is the elementary finite cellular interpretation of a Möbius half-twist. The topological construction of the actual manifold orientation double cover and w_1 remains a DIFFERENT, unproved formalization target.

New Lean source: GRWTSK/AlgebraicTopology/MoebiusBandUnfoldedSeamGauge.lean, blob 7462648d1e51dee506857a8aa0a33fdd3dacd88b. Specific declarations: unfoldedFrame, unfolded_transport_zero, unfolded_seam_eq_holonomy, unfolded_closed_iff_zero_holonomy, odd_unfolded_seam_not_closed, odd_seam_two_lap_return.

## Why this topological invariant is not arithmetic cancellation

The repository's orientationSectorGauge d frame multiplies the original complex residue-sector packet by modulus-one phases. Its contragredient detector removes those same phases and gives the ORIGINAL complete signed Möbius waveform, before squaring. Source: CMKaehlerZQGaugeFullReturn.compensated_original, and MoebiusBandParitySignedWaveGauge.original_signed_wave_under_parity_gauge.

Choose evenLoop(i)=0 and oddLoop(i)=1, with n=1. They have unequal mod-two holonomy and cannot be related by a CLOSED orientation gauge. Nevertheless, both give the same detector readout at every real time and for all j,d with NeZero d. This explicitly disproves the idea that the compensator by itself observes the topological orientation obstruction. A new coupling from manifold w_1 to an arithmetic source observation would be needed before topological packing results could affect the signed Möbius energy.

New Lean source: GRWTSK/AlgebraicTopology/MoebiusBandSignedMagnitudeNoGo.lean, blob 85bb9d362161f2cc8f97d85590bd239159e800e3. Declarations: odd_even_no_closed_gauge, signedWaveReadout_original, signedWaveReadout_frame_independent, inequivalent_orientation_same_signed_wave.

## Independent hostile comparison: two equal magnitudes, different signed Grams

For two exactly labeled amplitudes, a=(1,1) and b=(1,-1), all coordinate absolute values agree. But the complete ordered off-diagonal Gram is

  G(v)=(sum_i v_i)^2 - sum_i v_i^2.

Exact calculation gives G(a)=+2 and G(b)=-2. This is source-structured: BOTH pair orientations are present, the diagonal is subtracted exactly, and signs are not discarded. It establishes that a modulus-only observation cannot determine the ordered signed cross term uniformly over sign patterns. These two vectors are a counterexample to a *sign-uniform* inference; they are not a replacement for the actual number-theoretic coefficients mu(n).

The pinned openai/math source 4eaee87548250b2682affda7d05d947c05554bae, lean/OAI/MeasureTheory/Kakeya/Definitions.lean, defines kakeyaMaximal through lintegrals of the pointwise ENorm of f. Its maximal operator is therefore insensitive to an arbitrary pointwise sign change. No openai/math module is silently imported into the local root build: its version, build scope and trust boundary remain separate.

## Original arithmetic source and unchanged consumer

The original source is the real causal response r_n(u) multiplied by the original arithmetic function mu(n); the fixed dyadic endpoint sum E(j log 2) has the original quarter-unit error relative to the complete ordered signed cross term. Existing source: PickupDyadicEndpoint.lean, PickupEndpointQuadrature.lean, PhysicalMoebiusBitGramReturn.lean, and MoebiusEllipticFiberKernelComparison.lean.

The exact source decomposition is

  pickupCross(T) = matchedEllipticPacket(B,T) + fullSignedResidual(B,T).

The preexisting MoebiusBandPhysicalEllipticEndpointCriterion.lean relates its ideal two-bit physical Gram, complete elliptic packet + FULL residual, and the exact dyadic endpoint/birth bounds. It has a conditional canonical RH consumer, but its all-positive-rate input has NOT been supplied.

This source review establishes no improvement in the exponent. The concrete remaining analytic target is:

  forall epsilon>0, exists C_epsilon>=0, forall j in Nat,
    E(j log 2) <= C_epsilon * 2^(epsilon*j).

The topological packing prohibition on uncountably many disjoint bands gives no upper bound on finite packings at dyadic scale. The modulus-only Kakeya estimate likewise cannot supply original signed cancellation without a separate source-specific comparison. The sign-uniform hostile example above identifies why.

## Proof comparison and evidence

- Primary argument: exact finite orientation prefix telescope, and exact compensated detector readout from the original source.
- Known mathematical prior art: the finite telescope is the standard cohomological coboundary calculation on a cycle; Frolkina/Melikhov supply the much deeper wild-embedding packing theorem, not claimed as reproduced here.
- Distinct hostile check: the two-point absolute-value/signed-Gram counterexample.
- Novelty assessment: useful typed integration and explicit negative transfer boundary in grwtsk/math, not a novel theorem about RH or Frolkina packing.
- Formal check: both files published and read back at commit 478cc699d90c09c9a64ca779741c5a786a3949a3; no Lean/Lake toolchain was available in the execution container; no fresh kernel result is recorded.
- Sources remain conditional where stated. No new axiom, sorry or independent arithmetic estimate is introduced in the new files.
- Rejected premature claim: topological half-twist parity, U(1) phase transport, geometric Möbius reindexing and signed arithmetic Möbius cancellation are different structures. Combining their pictures does not prove an estimate for mu(n).

The previous executable verification script at scripts/verify-moebius-band-bridges.sh was removed from grwtsk/math because the repository reserves verification runners for grwtsk/noeaaeue. A static source-bound verification target is retained under documentation/mathematics/_verification/targets/.
