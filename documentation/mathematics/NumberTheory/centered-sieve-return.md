# Structural centers, changing sieve carriers, and exact arithmetic return

Local mathematical attribution: grwtsk contributors.

Base source: grwtsk/math@d294ca01d06d190b1f07702a546050cc84f1301b.
Lean leanprover/lean4:v4.33.0; Mathlib db584cd6d46c92f209a44c0f1c829460d327499d.
New source scripts: SOURCE_PROOF_CANDIDATE; compilation, fresh kernel replay and transitive axiom auditing NOT_RUN. This does not change the evidence grade of any earlier source-bound result.

## The correction

The retained center is not necessarily a weighted midpoint. Existing source already has Hodge projectors, exact operator defects under changes of space, Schur/Feshbach elimination, anchored difference recovery, gcd-stratum residue reconstruction, and exact-language versus mere-admission distinctions. A static pair selection on a fixed carrier does not exhaust this architecture.

The user's historical two-center Jacobi/Mellin manuscript also separates the affine shell channel from the reciprocal-mass channel. Their values are retained; the remaining test space has both endpoints grounded. That manuscript is a distinct source, not a newly verified local Lean theorem or an excuse to omit its two scalar channels. This increment does not claim to port its analytic high-band estimate.

## 1. Moving operator centers, not density-weighted averages

MovingCenterTransport reuses FramedFiberPort.HodgeProjector and operatorDefect. For a retained operator P, define r_P(x)=x-Px. Reconstruction is P x+r_P(x)=x. If P is idempotent, P r_P(x)=0. For two sources,

x-y=(P x-P y)+(r_P(x)-r_P(y)).

Only a proved equality P x=P y removes the center difference. The two source-specific remainders are not equated or assumed orthogonal. For the existing HodgeProjector, the differential of the retained remainder is exactly delta x-p1(delta x).

A change of topology or coordinate space is represented by a specified linear map U:E->F and the new retained operator Q. The existing defect is

D=U P-Q U.

The new applications calculate

U(Px)=Q(Ux)+D x,
U(r_P(x))=r_Q(Ux)-D x.

Thus for a signed linear observation L,

L(Ux)=L(Q Ux)+L(U r_P(x))+L(D x).

The defect is computed, not freely assigned. It occurs with opposite signs in the two reconstructed channels. Four terms remain in a bilinear observation of two centered sources; norm preservation and Hermitian symmetry are not used to discard any of them.

The concrete spectral-heat application retains EVERY zero-eigenvalue coordinate. harmonicCoordinates_heat applies the pre-existing diagonalHeat_zero_mode theorem. Turning this into the harmonic projection of a particular graph uses the existing source-faithful HodgeSpectralChart; an arbitrary diagonal is not identified with a zeta spectrum.

Graph deletion can change the dimension of the center: the diagnostic uses the actual incidence matrices of the three-vertex path and of its one-edge subgraph. Their harmonic projectors have ranks one and two. Their changing-center defect is retained.

## 2. Exact centered modular return on all residues

For q>0 and a retained center c in ZMod q, let z=x-c, d=gcd(z.val,q), and u=z.val/d. The new chart is

encode(q,c,x)=(d,u),
restore(q,c,(d,u))=c+d*u mod q.

The pre-existing FareyResidueChannelDecomposition theorem supplies d*u=z.val and gcd(u,q/d)=1. Therefore restore(encode(x))=x for EVERY x, including nonunits and the zero stratum. The reduced unit belongs to modulus q/d, not automatically to modulus q.

The actual state carrier is the subtype of canonical records satisfying encode(restore(record))=record. It is explicitly equivalent to ZMod q and has exactly q states. It is not a set of phi(q) survivors. Neither primality of q nor a lower bound for unit density is needed.

Changing the retained center gives an exact equivalence between these carriers. Changing q to a larger r uses the original canonical integer representative, then encodes it in the new carrier. The transition preserves every old representative and every source-labeled edge. It is not claimed to be a bijection between different-size carriers.

The integer range is material: a residue chart reconstructs n only when n<q, unless an additional winding/quotient is retained. In particular 2 and 6 collide modulo 4 although mu(2)=-1 and mu(6)=1. This is why an unrestricted global Mobius function of a residue class is not asserted.

## 3. Exact finite-word content under changing carriers

The graph construction reuses SearchSoficLanguage.WordPath and AcceptsFrom. The transported edge reads the original edge after return. accepts_return_iff proves exact accepted-language equality for the GIVEN finite graph, not just admission of one stream.

For a source edge relation on natural labels, boundedNaturalEdge is its restriction to the actual canonical representatives at a finite stage. growing_edge_iff and growing_wordPath preserve old transitions and complete labeled paths when q<=r, while permitting new states and transitions. natural_path_eventually_presented proves every actual finite source path appears in every sufficiently large stage, with any retained center.

This is completeness of the growing family of finite presentations. It does not assert that the entire infinite Mobius orbit language stabilizes in one finite automaton. Such stabilization, or a separate exact finite sofic presentation, is a different theorem. A one-state full shift that merely admits every sequence is not substituted for exact recognition.

The Chowla application is literal: recover_word reconstructs each integer in a bounded word, and chowla_word_product_return preserves the pre-existing integer-valued wordProduct of actual Mobius labels. This proves no averaged Chowla cancellation, supplies no rate, and transfers no function-field theorem to integers.

## 4. Application to the maintained signed RH source

At outer time T set q(T)=floor(exp T)+1. This is positive and grows monotonically. It is not required to be prime or squarefree. Every member of the original closed integer inventory is strictly below q(T).

MertensCenteredSieve.returnedAtom evaluates the existing signedAtom only AFTER the stratum return. The module proves

returnedCross(T,c)=pickupCross(T),
returnedCredit(T,c,P)=primePairCredit(T,P),
returnedUpper(T,c,P)=signedUpper(T,P).

The two ordered orientations, diagonal deletion, original Gram entry, Mobius signs, and the entire selected and unselected source are unchanged. These are identities, with error ZERO and multiplicative loss ONE. Center changes alone do not improve an arithmetic bound. For P subset Q the old actual improvement still propagates exactly:

returnedUpper(T,d,Q)=returnedUpper(T,c,P)
 -2*sum(new matched ordered pairs)|signedAtom(T,m,n)|.

Only newly certified arithmetic credit supplies this descent. An analytic prime-density or reciprocal-prime-mass hypothesis in a different theorem remains that theorem's hypothesis; no coordinate change changes the number of actual primes. What has been bypassed here is the artificial need to represent every state by a unit of one fixed modulus.

centered_good_scales_implies_RH and centered_finite_cover_implies_RH directly reuse the existing signed-pair and finite good-scale-cover consumers. No analytic RH return, polynomial-growth premise, or new positivity interface is reopened. No all-scale arithmetic supplier or affine-frequency cover is constructed here.

## 5. Ellipsoids and zero locations: exact scope

CompactSourceGramPositiveDefinite already gives strict positive definiteness for the actual compact-profile Gram on finite DISTINCT positive labels and positive radius. In its retained linear coordinates, a positive level set is an ellipsoid. Repeated labels can leave null directions; the finite graph Laplacian has harmonic null directions, requiring a retained center or a nondegenerate quotient. A modular/nonlinear chart must transport the form rather than assume a Euclidean ellipse in its raw pair coordinates.

The signed compensated RH observable is not replaced by a positive norm. Existing SchurFeshbachJet.full_zero_iff_effective_zero supplies equality of finite-pencil zero sets only on the region where the eliminated block is invertible. This does not by itself identify those zeros with zeta zeros, preserve multiplicities across singular boundaries, or compute new zeta heights. Existing actual-source Landau and pickup analytic returns keep their own exact source identities and evidence.

The popcorn/Thomae analogy can organize reduced-denominator support. A denominator-only plot does not retain Mobius sign or all transition labels. The present gcd-stratum return and exact word-product transport are usable finite pieces of that comparison; no all-scale Thomae/Mobius conjugacy is asserted.

## 6. Source correspondence and verification

Exact inspected dependencies at the base include:

- FareyResidueChannelDecomposition.lean: c321bbfa4c107a5025389c465f1f7c6ab832d539.
- ChowlaSoficObservations.lean: 0965c226b69d05f844d47ec0b27d3c7165ef0376.
- SearchSoficLanguage.lean: 4acfdfb09b735a8cfa1ba95a6e2ce527306d84b0.
- FramedFiberPort.lean: 6d05d91f6617b15147c9e24262e676056a420395.
- FiniteHeatRecovery.lean: 002b7d5c2f5530ff61cd5cfaf18f6d5463cf19fc.
- CompactSourceGramPositiveDefinite.lean: dd196b2be4eac37f447b64e3189f94eefd7504d4.
- SchurFeshbachJet.lean: 585c741c6fd85e10028ea4c9bac87cae507738c3.
- MertensSignedPairDescent.lean: 4e6efa850cb824ad3325567831a9cb33717fe1db.

The existing radical-logarithm result is not reopened. It records radical support, not the multiplicities, signs or transition history retained above.

No new external analytic theorem was imported. These are elementary applications of the existing pinned source. The literature ledger is unchanged; the named historical manuscript and the Thomae/B-free context are not claimed as locally kernel-verified imports.

Native compilation, fresh kernel replay and the complete transitive axiom audit are NOT_RUN. The environment has no lean/lake executable on PATH. Diagnostics check actual finite residue and Mobius identities, finite incidence-matrix centers, and separately labeled synthetic rational Gram comparisons. They are not a Lean compiler, an all-scale cancellation estimate, or a zero-height computation. Operational scripts and outputs remain outside this repository. The passive specification and verification issue pin all new declarations and sources.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8697e9c067b721e749cf57977864d1b6312cdbc0f8b943c9fd9e5a1ce562b06b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
