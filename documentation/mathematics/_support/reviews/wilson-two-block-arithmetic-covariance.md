# Two separated Wilson blocks and explicit arithmetic marking

Local attribution: grwtsk contributors.

The source constructs e_p(U)=1-ReTr(U_p)/2 and E_B=sum(p in B)e_p under
FiniteSU2Wilson.wilsonMeasure, the actual normalized finite SU2 Wilson measure.
It proves continuity, gauge invariance and L2 membership for block energy and
writes covariance both as a centered integral and as E[E_B E_C]-E[E_B]E[E_C].
The exact pair expansion is C_W(B,C)=sum(p in B,q in C)Cov_W(e_p,e_q).

Separation refers to disjoint inventories of the four actual links used by each
plaquette, including shifted links. This is stronger than merely different
plaquette labels and does not imply independence in the coupled Wilson law.
A concrete pair is given on (Z/8Z)^4: both plaquettes have directions 0,1;
one is based at zero and the other at coordinate-2 displacement three.
The source defines their covariance. It does not evaluate the Haar integral
numerically or establish a correlation length.

For an explicit positive plaquette labeling ell choose arithmetic observable
A_B(U)=sum(p in B)mu(ell(p))*e_p(U), using the genuine integer Mobius function
cast to the reals. The provided default labeling is positive and injective, but
is a finite enumeration, not a geometry-preserving arithmetic correspondence.
Different labelings can change A_B and its covariance. Squareful labels retain
zero coefficients and negative coefficients remain negative.

Bilinearity supplies the exact comparison

    C_W(B,C)-Cov_W(A_B,A_C)
      = sum(p in B,q in C)(1-mu(ell(p))*mu(ell(q)))*Cov_W(e_p,e_q).

This holds for all finite blocks, including the separated example. It discards
no pair and assumes no smallness for the right side. For singleton blocks with
opposite nonzero signs the marked covariance is minus the ordinary covariance;
with a squareful mark it is zero. Those boundaries prevent inferring equality
or a small error merely from a marking.

The arithmetic observables here are explicitly Mobius-marked WILSON energies.
They are not claimed equal in distribution to the original RH pickupResponse
process, nor to arithmetic covariance under a different probability law. This
is a concrete exact comparison and a possible observable for further tests,
not yet an analytic RH-to-Wilson bridge. Bounding the residual by assuming the
original unknown Wilson correlation estimate would be circular.

The next nontrivial bridge requires an independent estimate on the complete
marked covariance and residual, retaining geometric separation and uniformity
in intended beta,L,a limits. It must also compare to the original signed RH
causal response with exact normalization, weights, endpoints and a proved
RH-to-estimate direction; the inspected local dyadic theorem only runs from
its arithmetic bound to RH. No such estimates or reverse implication are
supplied by the present finite covariance algebra.

Even exponential decay for this block-energy observable alone must be extended
to the appropriate observable class and transported through a nontrivial
continuum construction and applicable physical reconstruction.

Source baseline: b5abd65bee2b72f8a14f26744ceec1a9fe232254.
Source: WilsonBlockArithmeticCovariance.lean in the canonical 81T25 folder.
The static source target pins the blob, SHA256 and declaration inventory.
All new declarations are SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel,
transitive axioms and expected interface are NOT_RUN. No new external paper is
formalized, no verification receipt is implied and the recurring schedule stays
paused. Concurrent repository/index changes are preserved.
