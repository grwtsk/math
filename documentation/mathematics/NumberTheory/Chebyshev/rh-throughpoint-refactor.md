# RH as an intermediate theorem: source-first refactor

Local mathematical attribution: grwtsk contributors.

Mathematical source commit: `d483c8e4d60c7c5166771d81349ae60c8d389ff3`.
Complete source tree: `278044898d4db62c63478e0d86d984148471bc73`.
Parent: `5a3de451ddbabaf9dfa7349ae9f20302936a0bb8`.
Source classification: SOURCE_PROOF_CANDIDATE.
Compilation, fresh kernel replay and transitive axiom auditing: NOT_RUN.

## Scope and preserved public interface

This change refactors the recent short-interval subsystem and composes its
established pickup interfaces. It is not a repository-wide hypothesis audit.
Four source modules are added, three are changed. All fourteen old public
names and statement signatures in RHShortIntervalCount are preserved as
compatibility adapters (textual comparison; elaboration not executed).
All original ShortIntervalPrimeCount declaration bodies remain unchanged;
its new signed identities are additive. All SharpShortIntervalCount declaration
bodies remain unchanged; its import is redirected to TentPrimeConsequences.
No source arithmetic definition, root import, dependency pin, or old receipt
is replaced. Older acceptance remains bound to its original bytes.

## Source graph

    actual endpoint / dyadic / optimizer-gap estimate
      -> existing canonical analytic return -> RH
      -> canonical upper-half-plane bound
      -> complete source head/tail estimate
      -> signed tent allowance
      -> actual short-interval prime count

The canonical density criterion has a proved reverse arrow at source level:

    CriticalDensityGrowth <-> canonical upper-half-plane bound <-> RH.

The unweighted prime-count conclusion has no asserted reverse arrow.
A function or proposition being defined without an RH argument does not make
its every-scale bound unconditionally proved. In particular the spectral
envelope and critical-density growth are RH-equivalent, not weaker assumptions.

## Exact signed arithmetic observation

ShortIntervalPrimeCount defines the source-derived signed loss

    D_tent(x,h) = Re Z(x,h) - rationalTentCorrection(x,h)
                  + properPowerTent(x,h).

For h>0 and x-h>1, the existing canonical explicit formula and prime/power
partition give primeTent(x,h) = h - D_tent(x,h). Consequently,
D_tent(x,h)<=U iff h-U<=primeTent(x,h). This equivalence is at the weighted
prime observation, not at its weaker cardinality bound.

TentPrimeConsequences consumes one combined upper allowance

    D_tent(exp(t)^2+h,h) <= K*t*exp(t)+1

for all t>=1, h>=1, 2h<=exp(t)^2. It constructs B=K+4 and an eventual
real endpoint threshold, then obtains more than sqrt(x) actual primes in
(x,x+B*sqrt(x)*log(x)]. Norm estimates are optional sufficient suppliers.
The existing unconditional proper-power constant constructs the conversion
from a zero-norm allowance K to the signed coefficient K+2C.

## Reversible source-density proof

Use the actual IntervalMellinKernel.density, not a replacement spectral model.
For every complex z and real t,

    norm(density z (exp t)) = exp((Re z - 1)*t).

CriticalDensityGrowth quantifies over every canonical nontrivial zero z and
every epsilon>0, then chooses nonnegative C,R before requiring
norm(density z (exp t)) <= C*exp((-1/2+epsilon)*t) for every t>=R.
C,R may depend on z and epsilon. The forward proof under the upper-half-plane
bound constructs C=1,R=0. Conversely, if beta=Re z>1/2, take
 epsilon=(beta-1/2)/2 and t=R+1+(C+1)/epsilon.
After cancellation the growth premise says exp(epsilon*t)<=C, contradicting
1+epsilon*t<=exp(epsilon*t). Reflection of the same canonical zero then gives
Re z>=1/2 as well. All trivial-zero and pole exclusions are retained.
This proves an equivalence, not a witness of CriticalDensityGrowth.

## Existing inputs and backward obstruction

RHThroughpoint has entries for DyadicBirthBound, affinely frequent endpoint
bounds, and the existing all-positive-rate finite-optimizer gap. Each returns
RH, a signed tent allowance and the prime-window conclusion. None adds an
independent RH hypothesis at the programme entry. The established analytic
return and quarter-unit quadrature error are not reopened.

DyadicGrowthObstruction is precisely:

    exists delta>0, for every C>=0 and every J,
    exists j>=J, C*2^(delta*j) < dyadicBirthSum(j).

The existing eventual-to-all-index theorem proves that this is equivalent
to not DyadicBirthBound. An off-line canonical zero, failure of RH, or failure
of the downstream prime-window conclusion propagates backward to that same
obstruction by contraposition. The proof does NOT assert the converse from
a positive prime-window result to RH, nor that an arithmetic obstruction has
been excluded. The target remains the original signed source and rate order.

## Files and source names

- Chebyshev/ShortIntervalPrimeCount.lean: exact signed source identities.
- Chebyshev/TentPrimeConsequences.lean: RH-free signed/norm consumers, real
  and dyadic endpoint conversion, prime witnesses and successive-prime gaps.
- Chebyshev/TentZeroEstimates.lean: source-envelope head/tail estimates and
  allowance-based log-window geometry.
- Zeta/Riemann/CriticalDensityCriterion.lean: canonical density equivalence.
- Chebyshev/RHThroughpoint.lean: compositions and backward quantifiers.
- Chebyshev/RHShortIntervalCount.lean: preserved public compatibility names.
- Chebyshev/SharpShortIntervalCount.lean: existing sharp consumers detached
  from the RH adapter; SharpRHAnalyticReturn remains an unproved proposition.

All paths are relative to GRWTSK/NumberTheory. The passive manifest enumerates
all 84 source identifiers, actual namespaces, blobs and SHA-256 hashes.
Of these identifiers, some are moved/generalized names or compatibility
adapters; they are not 84 independently new mathematical results.

## Provenance and unresolved work

No new external paper result is imported in this increment. The moved tent
and prime-interval argument retains the existing Dudek correspondence in
`docs/reference/literature/reading-background/rh-short-interval-provenance.md`
at blob `4054da68a139fab13636418426cf391ade4fb129`. The inherited pending
central-ledger cross-reference is not claimed completed. New density and
contraposition proofs are elementary compositions of the cited source APIs.

Imported mathematics: the existing canonical zeros/reflection, tent formula,
complete tail/count, Mathlib proper-power bound and pickup analytic return.
Kernel-verified new bridges: none claimed. Source proof candidates: all moved,
changed and newly assembled declarations. Conditional interfaces: the actual
signed/norm/envelope growth inputs remain visible. Finite evidence: exact
rational fixtures and lexical preservation checks only. Unresolved: arithmetic
witness for the original dyadic bound, source-specific quantitative comparison
when any alternative supplier is used, the separate sharp sinc/zero-count
return, elaboration and complete kernel/axiom closure.

## Verification boundary

The passive manifest and issue provide exact native commands and expected
checks. The downloaded external Audit.lean prints types and axioms for all
84 identifiers; this is not a substitute for enumerating/checking the complete
imported, private, generated and opaque logical closure. No remote build or
workflow was dispatched. Operational diagnostic scripts and outputs are kept
outside math, and no durable Noeaaeue execution receipt is claimed.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=96d56a8f0a1bc9aa1c85d6fb0b150b46e6ad5eb229d94b6143dff59a7bb8b50e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
