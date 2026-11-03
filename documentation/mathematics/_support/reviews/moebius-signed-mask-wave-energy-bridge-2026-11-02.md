# Original signed dyadic Möbius masks differ from physical wave energy by O(1+|A|)

Research date: 2026-11-02. Local mathematical authorship: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

**Trust status:** independent ordinary mathematical argument and new Lean SOURCE_PROOF_CANDIDATE, **NOT** a compiler-checked or kernel-certified proof. Lean compilation, expected types, fresh replay and transitive axiom/private/opaque/unsafe audit remain NOT_RUN. No new axiom or sorry is claimed. Global cross-shell and all-positive-rate signed low-wave ENERGY upper and canonical RH remain OPEN.

## A. Existing source definitions and numerical quantifiers preserved exactly

The pinned underlying source is:

- `MoebiusBalancedTwoSidedPNTDense.lean` (Git blob `8abba800d86af6cee6065b11dfff52713ae85785`): literal original `taggedMoebius P a n`, original `balancedBlock X T`, original `taggedDenseRectangle P a b A X X T`, original `originalDenseRectangle A X X T`, and original signed coefficients with squareful zeros.
- `MoebiusHighSmoothDensePairs.lean` (`cef7c06a794cec1cef423c2ebfa3b6d0221087ad`): genuine `highSmoothBlock` and complementary `lowSmoothBlock` filters of the exact source indices; exact `maskedTaggedBlock`.
- `MoebiusDyadicBirthHighLowLongGap.lean` (`b327c384f1228b0a5faeeabafa99c42bc1bd93d2`): source-clipped dyadic shell membership, actual physical early silence at log X, and original real integral upper `0<=pickupResponseGram T m n <= 4 log(2)/X` for all m,n in the original shell at T=log(2X).
- `MoebiusEndpointPutnamSparseGapYoung.lean` (`6a424d78ae93cc82e35fae3bb3d20a5a3616c7b2`): `gap_neighbor_card_le A S m`, proving an ACTUAL integer n at a fixed excluded additive distance d contributes at most the true two neighbors m±d, for every finite mask A.
- `LiouvilleCausalPhysicalGramIntegrability.lean` (`e23f62fc60ce5867e4c183117162c59ff4989b6f`): literal original positive-index `pickupResponse_product_intervalIntegrable`. The original `pickupResponseGram T m n` remains an integral of actual `pickupResponse m u * pickupResponse n u`, not a replacement kernel.
- `MoebiusDyadicBirthHighLowLongGap.emptyPrimeBand` and `emptyBank_rough_eq_original`: the genuine empty prime bank's rough tag is EXACTLY the original signed Möbius coefficient, including squareful zeros.

The source's prime bank B, arbitrary ordered Bool tags a,b, source sets I,J, arbitrary finite additive gap mask A and exact real physical terminal T=log(2X) are preserved. Neither m=n nor an excluded distance may be dropped or double counted, **including when 0 belongs to A**.

## B. New finite physical wave / complete unmasked Gram identity

For ANY finite original source index inventories I,J with strictly positive original labels, define

  W_(P,a,I)(u) = sum_(m in I) taggedMoebius(P,a,m) * pickupResponse(m,u),

with the ACTUAL original signs retained inside the finite sum.

The new `unmaskedTaggedRectangle P a b I J T` is

  F_(a,b)(I,J;T) =
      sum_(m in I) sum_(n in J)
        taggedMoebius(P,a,m)*taggedMoebius(P,b,n)*
          pickupResponseGram(T,m,n).

The new Lean source supplies `unmasked_eq_integral_two_tagged_waves`, the literal physical-time identity

  F_(a,b)(I,J;T) =
      integral_(u=0..T) W_(P,a,I)(u) W_(P,b,J)(u)du.        (1)

The proof is finite distributivity `Finset.sum_mul_sum`, original individual positive-index interval integrability, the pinned `intervalIntegral.integral_finsetSum` twice, and extraction of the two ORIGINAL constant signed coefficients from each integral. It does not require L² estimates, Möbius cancellation, Fubini over an infinite series, positivity of a masked Gram or an RH-equivalent premise.

For I=J and a=b, equation (1) becomes the original one-dimensional signed wave's genuinely NONNEGATIVE energy for T>=0:

  E_(P,a,I)(T) =
    integral_(0..T) [W_(P,a,I)(u)]² du >=0.                 (2)

Its kernel is the FULL ORIGINAL unmasked causal Gram; signs are NOT discarded before squaring. No claim is made that the diagonal-removed, distance-masked matrix itself is positive semidefinite.

## C. Exact mask defect and cardinality at most (1+2|A|) per original row

The original mask keeps precisely pairs with

  m != n AND Nat.dist m n NOT IN A.

Define the complementary, source-exact predicate

  excludedPair A m n :=
     (m=n) OR (m!=n AND Nat.dist m n IN A).

This partitions EVERY ordered pair into exactly one of the original kept and excluded summands, regardless of A containing 0. The finite signed `maskedPairDefect` sums the original coefficients and original physical Gram only over the excluded pairs.

The new `masked_plus_defect_eq_unmasked` establishes EXACTLY

  maskedTaggedBlock P a b A I J T
  + maskedPairDefect P a b A I J T
  = unmaskedTaggedRectangle P a b I J T.                  (3)

For any fixed m and arbitrary J, the excluded set is a subset of

  {m} union {n in J: m != n AND Nat.dist m n in A}.

The pinned original `gap_neighbor_card_le A J m` proves the second set contains at most 2|A| elements. Hence

  #excludedNeighbors A J m <=1+2|A|.                    (4)

The new Lean source theorem `excludedNeighbors_card_le` proves (4) using the existing genuine finite relation, not an artificial relation with a different distance. The diagonal is counted once, not once per occurrence of 0 in the mask.

## D. Literal dyadic birth window converts the sparse mask into a scale-independent error

Take X>=1 and the exact terminal T=log(2X). If I,J are any subsets of the original `balancedBlock X T`, then #I<=X (the source shell contains at most X natural integers), while the independently published true response bounds give for ALL original source indices m,n

  |taggedMoebius(P,a,m)*taggedMoebius(P,b,n)*
       pickupResponseGram(T,m,n)| <=4 log(2)/X.           (5)

The new `maskedPairDefect_abs_le_uniform` uses the exact cardinality (4), full finite nested triangle and (5), to show

  |maskedPairDefect(P,a,b,A,I,J,T)|
     <= #I*(1+2|A|)*(4 log(2)/X)
     <=4 log(2)*(1+2|A|).                                (6)

The right side is independent of shell X, finite true-prime bank P, every original source Möbius sign, both ordered tag orientations a,b, and the original source subset choices I,J. This is a **constant only for a fixed-size finite mask A**; if A grows with scale, its entire |A| cost remains visible and must be separately controlled.

Combining (1),(3),(6), the new `masked_minus_wave_bilinear_abs_le` proves the source candidate

  |maskedTaggedBlock(P,a,b,A,I,J,T)
       - integral_(0..T) W_(P,a,I)(u)*W_(P,b,J)(u)du|
     <= C_A := 4 log(2)*(1+2|A|).                         (7)

This handles both mixed ordered rough/matched orientations, without assuming their bilinear wave product is positive. It also handles any of the full, low, high, low/high and high/low ORIGINAL source subsets.

## E. Actual low/low wave-energy equivalence, not assumed cancellation

Set I=J=L=lowSmoothBlock B X T and a=b, with T=log(2X). Equations (2),(7) yield the genuine mathematical result

  |D_(LL,aa)(A;X,T) - E_(L,a)(T)| <= C_A.                 (8)

The new `original_low_low_mask_energy_distance` is a source candidate proving exactly (8); `lowLow_mask_abs_le_of_wave_energy` and `lowWave_energy_le_of_lowLow_mask_abs` establish both inequalities

  |D_(LL,aa)| <= E_(L,a) + C_A,
  E_(L,a) <= |D_(LL,aa)| + C_A.                           (9)

Thus, for fixed A, all-positive-rate control of the original signed LL packet is **equivalent up to the explicit bounded additive correction** to all-positive-rate control of a one-dimensional original signed physical wave energy. No theorem bounds that low-wave energy at the needed rate. It is the very arithmetic obstacle being exposed, not a new freely true hypothesis.

The same argument works with arbitrary I=J and true same-tag coefficients. The new `original_same_tag_masked_ge_negative_mask_budget` shows the unconditional original source-literal LOWER bound

  maskedTaggedBlock(P,a,a,A,I,I,T) >= -C_A.              (10)

Taking the *actual original empty-bank rough tag* `taggedMoebius ∅ true n=moebiusReal n`, the exact full source `originalDenseRectangle` satisfies the sharper source-candidate consequence for EVERY X>=1:

  originalDenseRectangle(A,X,X,log(2X)) >= -C_A.          (11)

This bound is on the signed original diagonal-excluded packet, not on a surrogate or an assumed positivity of its masked Gram. It is a **lower bound only** and cannot be used to claim the required RH-scale upper estimate.

The original rough/matched four-sector decomposition remains exact. In particular, at Q_X>=1, the empty bank's high sector vanishes and its low sector is the whole original source, so (8) is genuinely an RH-strength arithmetic energy question in that hostile case.

## F. Independent numerical and exact-index stress audit

The new local reference script `/mnt/data/moebius_signed_mask_wave_energy_preflight.py` was actually executed using exact-integer Möbius coefficients (including squareful zeros), the exact seven genuine-prime banks (including empty), the original smooth-divisor high/low source partition and five masks including {}, {0} and {0,1} on all shells X=1..96.

The original `pickupResponseGram` was evaluated by closed-form integration of the original positive-part physical response. For a separate subset of 180 fixtures, independent piecewise 14-point Gauss–Legendre quadrature of the ORIGINAL signed one-dimensional waveform agreed with the complete unmasked Gram-square energy to maximum absolute discrepancy ~3.43e-15.

**PASS: 894,436 recorded assertions**: 299,536 original Gram/window evaluations; 325,920 excluded-neighbor cardinality checks; 134,400 complete source-exact signed mask/defect/reconstruction and absolute-budget tests; 134,400 two-way same-tag energy comparisons; 180 independent piecewise integral checks. Maximum tested |defect|/C_A approximately 0.00417, zero observed source rectangle-to-energy algebraic reconstruction discrepancies outside floating precision, and the empty-bank original source and zero-gap adversarial cases passed. This is **not interval certified**; numerical roundoff, finite range and an approximate piecewise integral do not establish the infinite theorem or verify the Lean source.

Script SHA256 `f13e905eb2897ebe21ceb09984f8bb91499f28a3e81124bc18449b772b3e2298`. JSON result `/mnt/data/moebius_signed_mask_wave_energy_preflight_result.json` SHA256 `c8bfb035d3ac9d0fdcb350f2b93cd2e40e59e6f8b2a557200d0af2432394075d`.

## G. Remaining mathematical and verification obligations

- Run pinned Lean v4.34.1 / Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612` parsing and full transitive compilation, expected exact declaration types, independent fresh kernel replay and full transitive `sorryAx`/axiom/private/opaque/unsafe audit; source no-sorry scans are not sufficient.
- Check especially `unmasked_eq_integral_two_tagged_waves` with `intervalIntegral.integral_finsetSum`, `excludedNeighbors_card_le` with the pinned original `gap_neighbor_card_le`, `maskedPairDefect_abs_le_uniform` and real-case arithmetic in the mask defect correction.
- Further formalize finite real Young/Cauchy over the *literal* wave product to reduce both remaining matched high/low ordered packets to high/low ONE-DIMENSIONAL wave energies and the known high-support positive count; the current module proves the exact bilinear identity and universal additive defect but does not yet formalize this energy cross-term inequality.
- A genuinely NEW noncircular signed arithmetic theorem controlling the low original wave energy `E_(L,a)(T)` for both source tags at every positive exponential rate on one appropriate fixed scale-covering family remains OPEN. Classical Mertens logarithmic-power bounds do not directly supply RH-strength all-rate causal energy decay.
- The mixed-sector signed all-rate, cross-shell shell-packing, global physical energy return and canonical RH remain OPEN. The new estimate is at most an additive finite-mask comparison and does not change the global arithmetic strength of the original RH target.

**Status:** ORDINARY_SOURCE_MATH_COMPLETE / NEW_LEAN_SOURCE_PROOF_CANDIDATE / FINITE_MASK_ERROR_EXACT / SIGNED_WAVE_ENERGY_REDUCTION / SIGNED_UPPER_ALL_RATE_OPEN / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / RH_OPEN.
