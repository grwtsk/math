# Fourth-moment, additive-energy, and growing-shift Chowla connections

Local attribution: grwtsk contributors.

Status: SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.

This note formalizes connections around obstruction pickup-bad-shift-fourth-moment-v1.
It extends, rather than duplicates, the existing MertensSignedAbelFourthMoment
infrastructure and the exact source reduction at commit
74c17cbe48a0ffd32af668d0f1bcb3ef8fe63b75.

## Exact local source

For c_n(u)=a_j(n)K_N(n,u) on an exact retained interval, the predecessor proves
that the weighted bad-shift problem is controlled by the additive fourth moment

  sum_(n1+n2=n3+n4) integral integral
    c_n1(u)c_n2(v)c_n3(u)c_n4(v) du dv.

This is the object to be compared with external methods. No external theorem is
allowed to replace it without a proved source map.

## Connection 1: growing-shift logarithmic Chowla fourth moments

Jizhou Guo, *Quantitative Logarithmic Chowla Correlations Uniformly over Growing
Shifts*, arXiv:2608.23500, 2026. The theorem gives logarithmically weighted
Liouville two-point cancellation uniformly for 1<=h<=(log x)^kappa for fixed
kappa<1/700. The paper states that the key quantitative step is a
scale-flexible fourth-moment uncentring argument: dilation by h preserves the
relevant fourth moment while short sums cost h^(1/5).

This is a close METHOD connection, not an imported theorem for the pickup
source. The pickup coefficients contain:
- rough Mobius a_j rather than bare Liouville;
- the complete selected-divisor response K_N(n,u);
- physical-time integration;
- an exact two-time fourth moment;
- frozen endpoints, masks and growing stage.

GrowingShiftFourthMomentBridge records the missing comparisons. In particular,
logarithmicWeightCompatibility and twoTimeIntegralCompatibility are not assumed.

## Connection 2: ordinary binary Chowla and nontrivial additive quadruples

OpenAI, *Ordinary two-point correlations of multiplicative functions*,
24 September 2026, fixed nonproportional affine forms. Its Lean scope exports
binary ordinary correlation cancellation, not a general four-point theorem.

The local exact additive relation can be split into:
- permutation diagonals (n1,n2)=(n3,n4) or (n4,n3);
- genuinely nontrivial additive quadruples.

PickupFourthMomentConnections.additive_quadruple_diagonal_or_nontrivial
formalizes this exhaustive logical split.

For a<=c, the relation a+b=c+d rewrites exactly as

  b = d + (c-a).

The theorem additive_quadruple_shift_rewrite scripts this elementary common-shift
identity. It does NOT turn the weighted four-point sum into a binary Chowla
correlation: c-a varies across the quadruples and the response weights couple all
four indices and both times.

BinaryCorrelationFourthMomentBridge records the exact missing conditions:
cover every nontrivial quartet, pay both permutation diagonals, preserve response
weights, rough masks, endpoints, selected-divisor signs and shared-prime terms,
retain the complete complement, and obtain one estimate uniform in the growing
shift family.

## Connection 3: additive energy

The fourth moment is an additive-energy quantity. Classical additive
combinatorics interprets a large positive fourth moment as additive structure.
For the pickup source the coefficients are signed and time-dependent. No
Balog--Szemeredi--Gowers or Freiman theorem is imported, and no inference from
unsigned structural energy to signed Mobius cancellation is claimed.

A potentially useful route would prove that any structured component supporting
a large fourth moment is incompatible with the rough Mobius/response source.
That incompatibility is presently unproved.

## Connection 4: geometric / trace treatment

Finite-field Mobius correlations show that complete signed higher correlations
can sometimes be encoded by trace functions and controlled by weights/monodromy.
AdditiveEnergyTraceBridge records the required integer-source bridge:
recover the additive constraint and signed four-point observation, preserve
response weights, control growing geometric complexity, pay exceptional fibers,
and obtain a quantitative saving. No trace theorem is imported.

## Existing formalized neighborhood

The repository already contains:
- GRWTSK.Analysis.FiniteSums.WeightedFourthMoment;
- GRWTSK.NumberTheory.Moebius.MertensSignedAbelFourthMoment;
- PrimeQuotientAffineWindow;
- fixed-family cancellation infrastructure.

Those files formalize finite fourth expansions and source-matched consumers for a
different signed-Abel packet. They are not identified with the present pickup
fourth moment without an explicit source comparison.

OpenAI family 007 also contains a formalized finite minor-arc fourth expansion
and bilinear window machinery. Its analytic bilinear sieve remains an external
prospective supplier; the local repository has already recorded that distinction.

## Precise live tests

Test A: Guo transfer.
Construct a literal map from the pickup fourth moment to the fourth-moment
uncentring variables. Price the logarithmic weighting, K_N response, two-time
integral, selected-divisor expansion, rough mask and growing stage. Stop if any
comparison costs more than the prospective saving.

Test B: binary reduction.
Subtract the two permutation diagonals exactly. Parameterize the remaining
quadruples by a common shift. Group BEFORE absolute values. Test whether the
result is a finite/growing family of weighted binary correlations satisfying the
ordinary two-point theorem's hypotheses with uniform constants. A shiftwise
application with constants depending arbitrarily on the shift is insufficient.

## Evidence classification

Local source proofs: additive quadruple split and shift rewrite.
Existing local fourth-moment infrastructure: source candidates, verification
statuses retained at their original pins.
Guo 2026: literature/method connection only.
OpenAI ordinary two-point theorem: fixed-form external/formalized neighbor only.
Additive combinatorics: structural analogy only.
Trace-function route: analogy only.
New cancellation estimate: none.
Compilation: NOT_RUN.
Fresh kernel replay: NOT_RUN.
Transitive axiom audit: NOT_RUN.
RH claim: none.
