# Original signed energy: direct low-sector reduction

Date: 2026-11-02. Mathematical direction: grwtsk contributors;
formalization assistance: OpenAI.
Status: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

At the original integer dyadic cutoff N=2^j, define the FULL
adaptive smooth source F_sm,j, high-selected source H_B,j and
low-selected source L_B,j in CMAdaptiveHighSmoothAllShell.
They are literally finite sums of the unchanged signed
mu(n)*adaptiveResponse(n,u) over a partition of every integer
n=1,...,2^j. Thus F_sm,j=H_B,j+L_B,j exactly BEFORE squaring:
  F_sm,j^2=H_B,j^2+2 H_B,j L_B,j+L_B,j^2.
No sign, nonunit residue, squareful zero, diagonal, ordered pair
or source born window is omitted.

For any fixed bank B, once the earlier *arithmetic-free*
fixed-bank counting+geometric sum makes |H_B,j(u)|<=K_B
uniform in j,u, the sharp elementary 2-square comparison gives
  F_sm,j(u)^2 <=2 L_B,j(u)^2+2 K_B^2,
  L_B,j(u)^2 <=2 F_sm,j(u)^2+2 K_B^2.
The existing adaptive error identity is F_orig,j=F_sm,j+E_j;
hence with every original mixed term retained in the identity:
  F_orig,j(u)^2 <=4 L_B,j(u)^2+4 K_B^2+2 E_j(u)^2,
  L_B,j(u)^2 <=4 F_orig,j(u)^2+2 K_B^2+4 E_j(u)^2.
New Lean source CMAdaptiveHighSmoothCoherentEnergy contains proof
candidates for ALL four pointwise inequalities and the mixed square.

For T_j=j log2, define H_low(T_j)=integral_0^T_j L_B,j(u)^2 du.
Integrating the previous inequalities, under the already isolated
adaptive defect budget integral_0^T_j E_j^2<=1/12, gives
  H_orig(T_j) <=4 H_low(T_j)+4 K_B^2 T_j+1/6;
  H_low(T_j) <=4 H_orig(T_j)+2 K_B^2 T_j+1/3.
Thus all-positive-rate global pickup energy on the dyadic grid is
EQUIVALENT to the direct low-selected-source energy at every positive
exponential rate. The high sector contributes only a polynomial
time budget, without any high-order Fourier moments. In particular,
the earlier FlexibleSignedTupleMomentProfile is an OPTIONAL sufficient
analytic route, not an unavoidable prerequisite.

A separate arithmetic theorem is STILL REQUIRED to bound the
source-specific low-selected signed energy; this is not inferred from
the small high support, positivity of a Gram, PNT, or classical Mertens.
Native Lean energy-integral transfers, the high source enumeration
and geometric sum, and the adaptive error integral remain unaccepted
or unformalized. Do not claim RH.

Related source: MoebiusHighSmoothCofactorCountProof (genuine
P-smooth divisor high set, not entirely P-smooth n), 
MoebiusHighSmoothAllRateProof (same-shell high-incident, source
candidate), CMAdaptiveHighSmoothAllShell (finite bound and source
partition), CMAdaptiveErrorSupportOrthogonality, and
GoodScaleEnergyCriterion. Preserve the existing exact analytic return.
