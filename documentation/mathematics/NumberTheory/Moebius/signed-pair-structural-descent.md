# Source-bound signed-pair descent, without a Hermitian surrogate

Local mathematical attribution: grwtsk contributors.

## Starting checkpoint and actual target

Base: grwtsk/math@79f3fe495b1a7dcb33bcb0dd0919f3fdc6af09e2. The target here is exactly CCC.pickupCross(T), the complete ordered off-diagonal sum over 1 <= m,n <= floor(exp(T)). The source Gram, Mobius coefficients, closed endpoints and both orders are unchanged. A useful descent is a proved decrease of an upper certificate for this same scalar source, not a decrease of an unrelated norm or a change of representation alone.

The existing HermitianCounterexamples.hermitian_does_not_imply_positive_semidefinite already blocks Hermitian => nonnegative. NegativePrimeCorrelation supplies an actual prime-cascade negative-correlation result. Neither is reopened. The new entrywise positivity below concerns only individual causal pickup responses, not compact-profile correlations or prime cascades. The original reflected-source E_A=Re<F_A,G_A>-Delta_A-M_A and its independent main term retain their separate source identifications and analytic consumers.

## 1. General signed selection

For finite S, B subset S, and actual real summands f(i)<=0 on B, define credit(B)=sum_B |f| and remainder(B)=sum_(S minus B) f. The new SignedSelection source proves

    sum_S f = remainder(B)-credit(B),
    sum_S f <= U_B := sum_S |f|-2 credit(B),
    U_B-sum_S f = sum_(S minus B)(|f|-f).

No matrix positivity, norm bound, orthogonality or spectral hypothesis occurs. The signed remainder stays available; the absolute envelope is an optional stronger certificate, not a compulsory target.

For B subset C, the exact certificate change is

    U_C = U_B - 2 sum_(C minus B)|f| <= U_B.

Selection is by a Finset of source atoms, not a multiset of witnesses. Overlapping selection rules cannot double-count an atom. Finite steps telescope with their signs, rather than being charged by total variation.

## 2. An actual arithmetic sign supplier

For the existing causal source,

    r_n(u)=2(1/sqrt(n)-exp(-u/2)) if log(n)<=u, and zero otherwise;
    G_T(m,n)=integral_0^T r_m(u)r_n(u) du;
    f_T(m,n)=mu(m)mu(n)G_T(m,n) for m!=n, and zero on the diagonal.

The source proves r_n>=0 for n>=1 from the actual exponential formula and records genuine product integrability. Hence G_T(m,n)>=0 for T>=0. This sign is not inferred from positive semidefiniteness. Symmetry is separately proved from the integral and used only to combine the two original orders.

For a prime p and m>=1 with p not dividing m, actual Mobius multiplicativity gives

    mu(pm)=-mu(m),
    f_T(m,pm)=-mu(m)^2 G_T(m,pm),
    f_T(m,pm)+f_T(pm,m)=-2 mu(m)^2 G_T(m,pm).

The repeated-prime guard is essential: mu(4)=0 but -mu(2)=1. No unguarded prime-multiple sign rule is used.

For a finite prime set P, matchedPairs filters the original ordered source inventory for (m,pm) and (pm,m), retaining the guard. Every unselected pair stays in unpairedCross. The new exact identities are

    pickupCross(T)=unpairedCross(T,P)-primePairCredit(T,P),
    pickupCross(T)<=signedUpper(T,P)
      :=absoluteCross(T)-2 primePairCredit(T,P).

P={2} already instantiates the source theorem. No prime-distribution hypothesis or nonemptiness premise is needed. For P subset Q,

    signedUpper(T,Q)=signedUpper(T,P)
      -2 sum_(matchedPairs(T,Q) minus matchedPairs(T,P)) |f_T|.

The upper certificate strictly decreases whenever the newly selected credit is positive. A single unordered prime-multiple pair contributes 2 mu(m)^2 G_T(m,pm) to the credit and removes 4 mu(m)^2 G_T(m,pm) from the wholly unsigned allowance. The factor four accounts for both orders and for replacing positive absolute mass by its actual negative value.

## 3. Common core and two actual remainders

Specializing the existing FiniteWaveformOverlap to scalar ordered-pair atoms, arithmetic support S and geometric support S minus matchedPairs gives

    commonCore=unpairedCross,
    geometryRemainder=0,
    arithmeticRemainder=-primePairCredit.

The zero geometric remainder is proved from literal support inclusion, not assumed. No residual is freely assigned. For arbitrary geometric reference atoms, the pre-existing two residuals stay separate. The new certificate-slack theorems prove

    geometricSum+D-arithmeticSum=D-(R_A-R_G),
    change of complete upper certificate=change of this residual overpayment.

Thus decreasing only a geometric model cannot be counted as proof progress when its exact residual rises by the same amount. Exact reconstruction is invariant; a smaller proved residual allowance is a real improvement. The prime selection above removes an explicitly priced unsigned overpayment.

## 4. Concrete theorem diffusion

| Consumer | Application | Quantitative change and retained condition |
| --- | --- | --- |
| FiniteWaveformOverlap | selection_overlap | Exact complement and both residuals; no transport error. |
| Actual CCC.pickupCross | sum_signedAtom_eq_cross; cross_eq_unpaired_sub_credit | Same closed source and complete ordered terms; no new reconstruction assumption. |
| Absolute finite allowance | cross_le_signedUpper; signedUpper_step | Twice the full selected negative mass is removed; new credit cannot increase the certificate. |
| GoodScaleEnergyCriterion | signedUpper_good_scales_implies_RH | Independent subexponential joint bound and affine outer-time coverage remain required. No PacketModel on this region. |
| Signed complement | signed_complement_good_scales_implies_RH | Retains unpairedCross-credit without separate absolute requirements. |
| Existing waveform region | signedUpper_or_waveform_packet_implies_RH | Arithmetic and geometric regions combine by union. All original geometric height, source-return, mixed-defect and joint-budget assumptions remain. |
| Fixed finite portfolio | signedUpper_finite_cover_implies_RH | Different selections on different regions; constants/thresholds combine by finite maxima, and only the union needs coverage. |

cross_on_of_signedUpper produces the same SubexponentialOn pickupCross predicate already consumed elsewhere. The existing cumulative-energy gap-filling and analytic RH return are reused, not postulated afresh. Neither signed cross energy nor its upper certificate is assumed monotone in time. No polynomial P04/HSS or zero-damping integrability follows merely from the subexponential premise.

## 5. Research frontier and scope control

This supplies actual arithmetic signs and a constructive finite upper-certificate refinement. It does not supply a new all-scale growth estimate. Prime-multiple pairs are only a selected portion of the cross graph. Other negative terms and all positive terms remain in the explicit complement. The absolute envelope may remain too costly. The primary signed option is unpairedCross-credit, not a demand that the stronger absolute envelope must be subexponential.

Next bound a remaining signed block using its actual source, or combine it with another already controlled region. Every additional selection must supply a valid sign or joint one-sided estimate. Hermitian symmetry, an auxiliary norm contraction, isospectrality or a coordinate change supplies none of those estimates by itself. No exponent improvement is inferred just from adding selectors.

The distinct reflected compact-source route is not identified with this causal source. The already supplied radical-log theorem is not reopened and is not used as cancellation input. This is a bounded inspected-and-applied source neighborhood, not a claim of exhaustive recovery of every historical or unpublished proof.

## 6. Source correspondence and verification scope

At the base commit the inspected suppliers are:

- MertensPrimitive.lean, blob 45e06c371d67bcf8c939d20a95fcbc63570546fa: exact source, diagonal and ordered cross sum.
- FiniteResponseSum.lean, blob 5e6c4b01e48f5cf6e779023aac9098fc0801127d: causal exponential/logarithmic response identities and regularity closure.
- FiniteWaveformOverlap.lean, blob 8dad0d5a26d8146e2bfeae75b35dd56bffd999cf: literal overlap and signed readout.
- ResponseWaveformComparison.lean, blob d8ee3c434c9017449d8489521d9138c77278eb1c: existing geometric regional comparison, with its original premises.
- GoodScaleEnergyCriterion.lean, blob a39d24a540a86918ab4f2a8130a86895424dc317: cumulative-energy gap filling and canonical RH consumer.
- HermitianCounterexamples.lean, blob ed8ed304faed66fbdb005dae65e62c991f6dbc7b, and NegativePrimeCorrelation.lean, blob f3e314f6323bf623e11acf62d28597feede00b6f: existing sign obstructions, not replaced or reclassified.

Pinned Mathlib db584cd6d46c92f209a44c0f1c829460d327499d supplies Mobius multiplicativity and Nat.Prime.coprime_iff_not_dvd. No new external paper theorem is imported; no new paper result is claimed in the literature ledger. Local proofs are elementary applications of the named existing sources.

All new declarations are SOURCE_PROOF_CANDIDATE. Compilation, fresh independent kernel replay and full transitive axiom audit are NOT_RUN. This neither erases old evidence nor transfers old acceptance to the new closure. Exact pins, declarations and passive checks are recorded in the verification specification and issue. Operational diagnostics and logs remain outside math.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=755c668cd6700c4ebbe107e1ab0702620f2a4eeee09378926f7a6cb05c25d21b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
