# Dense signed Möbius endpoint complement: exact equivalence and hostile positive fixture

**Byline:** grwtsk contributors. **Date:** October 31, 2026.
**Disposition:** source-exact quantitative *obstruction* to misclassifying a dense-complement estimate as independent arithmetic information. No new all-positive-rate Möbius estimate, Liouville cancellation theorem or Riemann Hypothesis proof.
**Repository source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDenseSignedGapComplementFrontier.lean`.
**Original source:** `MoebiusEndpointSparseGapAllRate.lean` (observed blob `a8216e7e18982dce97bacb8d42d301a022f4f28e`), `MoebiusEndpointGramYoungClosure.lean` (blob `958d4f5a42f318ab5822cc873433590ee5e6e02c`), literal `MertensPrimitive.lean` and `PickupEndpointQuadrature.lean`.
**Formal status:** new Lean scripts are SOURCE_PROOF_CANDIDATES. Compilation, expected-interface checks, fresh kernel replay and transitive axiom audit are all NOT_RUN by user deferral; a script or published file is not a checked theorem.

## 1. Precisely specified admissible schedule

For each real T, define

    A_dyad(T)={2^j : j=0,...,floor(max(T,0))}.

This is fixed BEFORE choosing any positive rate epsilon. For T>=0, all gaps in A_dyad are positive, pairwise distinct, and

    #A_dyad(T)=floor(T)+1<=T+1.

The source candidate `dyadicSparseGapSchedule` uses the image of `Finset.range(floor(max T 0)+1)`; `dyadicSparseGapSchedule_card_le` proves the required bound even without injecting images; `dyadicScheduleSubexponential` is the proposed Lean proof of its every-positive-rate cardinality.

For any delta>0 and T>=0, exp(delta*T)>=1+delta*T and

    T+1 <= (1+1/delta)(1+delta*T)
        <= (1+1/delta) exp(delta*T).

Consequently

    #A_dyad(T)<=(1+1/delta) exp(delta*T).

Thus the precise `SubexponentialGapCardinality` property holds with C_delta=1+1/delta and R_delta=0. The schedule includes gaps growing exponentially in T (largest about 2^T), yet the number of selected gaps is only O(T). It is not a radius cutoff or a rate-dependent family. Gaps larger than the current endpoint cutoff contribute zero to the selected packet but are still conservatively counted in #A.

## 2. Full signed complement and exact quarter-unit allowance

For the unchanged Möbius source, let

    X(T)=pickupCross T,
    S(T)=endpointGapSetCross (A_dyad T) T,
    C(T)=signedGapComplement (A_dyad T) T=X(T)-S(T).

The exact finite identity is X=S+C. The signed complement includes ALL ordered off-diagonal original pairs not selected by the gap set; no sign or coefficient is discarded. The source's quarter-unit quadrature theorem states for all T>=0

    |endpointSum(T)-X(T)|<=1/4.                         (E1)

The earlier Gram-Young and finite-degree result bounds |S(T)| by
2 #A D(T). If the explicitly defined original diagonal supplier
D(T)<=2T² holds, this is <=4 (floor T+1) T². Regardless of the
particular diagonal proof source, the previous all-rate sparse-family
consumer gives the abstract condition

    forall delta>0, exists B_delta,R_delta>=0, forall T>=R_delta,
       |S(T)|<=B_delta exp(delta*T).                    (E2)

Now for all T>=0, the exact equations give

    C(T) <= X(T)+|S(T)|,
    X(T) <= C(T)+|S(T)|,
    X(T) <= endpointSum(T)+1/4,
    endpointSum(T) <= X(T)+1/4.

At each requested epsilon>0, combine the two all-positive-rate
bounds with the SAME epsilon and take the maximum of the two
thresholds and sum of nonnegative constants. The fixed quarter
is bounded by (1/4)exp(epsilon*T), since T>=0.

Therefore under (E2), these three quantified statements are
mathematically equivalent:

    EventualAllRateUpper C
    iff EventualAllRateUpper X
    iff EventualAllRateUpper endpointSum.              (E3)

The mathematical statement is one-sided. Neither C nor X needs to be
nonnegative or individually absolutely bounded. The only absolute
estimate is on the already paid sparse sector. This is a noncircular
*logical equivalence*, but a supplier that simply assumes
`EventualAllRateUpper C` is no easier than the original endpoint
arithmetic target. The new source candidate records
`signedComplement_allRate_iff_pickupCross`,
`endpointSum_allRate_iff_pickupCross` and
`signedComplement_allRate_iff_endpointSum` with precise conditions.

## 3. Independent hostile fixture: all-positive coefficients

To test whether causal geometry, degree counting, or sparse extraction
could force an all-rate signed-complement estimate without arithmetic
cancellation, replace the Möbius coefficients by the completely
multiplicative fixture a(n)=+1. This is NOT actual Möbius or Liouville,
and it is NOT a counterexample to either arithmetic target.

For x=exp u>=16, put M=floor(x/4).
Then M>=3x/16. For every 1<=n<=M, the literal original response obeys

    r_n(u) = 2(n^(-1/2)-exp(-u/2)) >= 2 exp(-u/2).

Therefore its all-positive waveform F_+(u)=sum_{n<=exp u} r_n(u)
satisfies F_+(u)>=3/8 exp(u/2) for all u>=log16.
Its physical-time cumulative energy is consequently

    H_+(T)>=9/64 (exp(T)-16)
          >=9/128 exp(T) for T>=log32.                  (F1)

The unchanged geometric diagonal for coefficients bounded by one is

    D_+(T)=sum_n integral_0^T r_n(u)^2 du
          <=4T+2T²,                                    (F2)

because r_n(u)^2<=4/n on active indices and
sum_{n<=exp u}1/n<=1+u. The complete positive Gram has
X_+(T)=H_+(T)-D_+(T), including both ordered off-diagonal
orientations. Applying the SAME gap-count/Young argument to the
all-positive coefficients gives

    |S_+(T)| <= 2 #A_dyad(T) D_+(T)
              <=2(T+1)(4T+2T²).                       (F3)

Hence its dense complement obeys for T>=log32

    C_+(T) >= 9/128 exp(T) -
               (2T+3)(4T+2T²).                       (F4)

The polynomial term is o(exp T); consequently for all sufficiently
large T, C_+(T)>=9/256 exp(T). In particular C_+ is NOT
EventualAllRateUpper at epsilon=1/2. The fixture is a quantitative
obstruction to a proof from the causal kernel, diagonal bounds and
sparse-degree information alone. It does not rule out independent
Möbius-specific signed cancellation.

## 4. Attempted arithmetic gain and result

The specified schedule A_dyad is a nontrivial, growing, globally
rate-independent sparse family. The exact source computation isolates
the remaining signed dense complement and carries the 1/4 error with
no change. No direct Möbius-specific bilinear estimate for C(T) was
derived. The known fixed-moment, finite-prime sign, proportional-cutoff
and uniform norm-inversion constraints still apply. A theorem with
C(T)<=C_epsilon exp(epsilon*T) would furnish the requested missing
arithmetic contribution only if it were proved by an independent
source-specific mechanism (e.g. weighted Type II covariance, complete
signed Buchstab compensation, or a direct Omega-weighted signed
rectangle average), not by algebraic inversion of (E3).

## 5. Formalization status and one next obligation

The new Lean source provides candidate finite identities,
all-positive-rate transport, exact quarter-unit comparison and the
dyadic schedule. It does not insert an RH research axiom, assume
the complement estimate, alter the root imports or change dependency
pins. Its cardinality proof and pinned Mathlib APIs require native
elaboration; all acceptance checks remain NOT_RUN.

**Single next bounded arithmetic obligation:** Fix dyadic A_dyad(T)
as above and prove, directly from actual Möbius coefficients, a
nontrivial signed covariance saving on a specified subcollection of
the remaining dense gaps whose constants are uniform in the
cutoff T and requested epsilon. Preserve the complete complementary
packet until the independent subpacket's contribution is identified
and the remaining signed terms are priced. Do not replace the task
with the equivalent assumption `EventualAllRateUpper C`.
