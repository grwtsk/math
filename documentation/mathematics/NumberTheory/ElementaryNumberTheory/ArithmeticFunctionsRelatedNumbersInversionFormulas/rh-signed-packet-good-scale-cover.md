# Signed packet budgets on a finite cover of good scales

Local mathematical attribution: grwtsk contributors.

## Existing mathematics applied, rather than reconstructed

Base: grwtsk/math@461301204eff611f6cdf1012df3f9ee6cbc364de.

The preceding reconciliation discharged an already-proved analytic implication in the older P04 packet route. This increment propagates another existing supplier: the actual cumulative-energy subexponential/good-scale criterion. It does not port or identify the distinct reflected-source Landau family. Historical verification grades and outstanding source matches retain their previous scopes.

At the base, the exact suppliers are:

- `HSSCP04.CCCAdapter.cross_eq`, in `GRWTSK/NumberTheory/Moebius/ResponseBudgetIdentification.lean`, identifies native `pickupCross` with literal `PPNCP04.crossEnergy` for nonnegative real time. Base blob: `52d30b016948a0f7d3809f9479df1f1a343b598d`.
- `EulerP04RH.ExactDecomposition.sourceIdentity` and `signedSettlement`, in `GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean`. Blob: `09c7901370857dc6f95e1f3e81fa7416ab56c1cb`.
- `EulerP04RH.WeightedGram.synthesis_of_weighted_gram_rows`, in `GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean`. Blob: `28e803e649a93dccf50e3d95711b88c7db126c1e`.
- The unchanged `EulerP04RH.PacketClosure.PacketModel`, `coefficientBudget` and `SignedPacketReturn`, in `GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean`. Blob: `5d06250307b20e2128de77d7c864657ce4054ee8`.
- `GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion.energyAbscissa_zero_of_cross_good_scales` and `riemannHypothesis_of_cross_good_scales`. Blob: `a39d24a540a86918ab4f2a8130a86895424dc317`.
- `GRWTSK.RiemannHypothesis.CCC.riemannHypothesis_of_pickupEnergyAbscissa_zero`, in `GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean`. Blob: `9453ab6fc629611fa19362b56eb223fabd14bc0a`.

These are exact source applications. This increment imports no new paper or analytic theorem. Existing upstream attribution in the supplier modules is retained; historical receipt status is not reset and is not transferred to changed current bytes.

## 1. Keep the signed upper expression intact

For the unchanged packet model, write

A(T) = sum_i ||a_i(T)||^2,
G(T) = model.gramConstant(T),
q(T) = D.tail(height(T),T),
e(T) = model.error(T).

The existing weighted Gram estimate and source-return inequality give

signedSettlement(T) <= G(T) A(T) + e(T).

The exact source decomposition and native-source identity therefore give

pickupCross(T) <= U(T),
U(T) = q(T) + G(T) A(T) + e(T).

The new `packetJointUpper` is this literal expression. `cross_le_packetJointUpper` proves the comparison at each nonnegative time with a valid internal height and the actual source return. It introduces no arithmetic growth premise.

Neither q nor e is replaced by an absolute value. The product G*A is not split into independently controlled factors. Cancellation already present in this complete upper expression is retained. A negative error is usable only with the source-return proof; it cannot be assigned to manufacture the desired bound. The existing empty-packet/tautological-decomposition audit remains applicable.

## 2. Weaker sufficient growth and coverage requirements

The old packet consumer required separate polynomial budgets on G, A, e and the absolute tail, at every nonnegative time. Those old declarations and their proofs remain unchanged.

The new consumer needs, for a named set of good OUTER times Omega,

for every delta>0, some C_delta>=0 and R_delta>=0 satisfy
U(T) <= C_delta exp(delta*T) for T in Omega and T>=R_delta.

The set Omega must satisfy the existing affine-coverage condition: some fixed a>=1, b>=0 and T0>=0 have, for every T>=T0, a good S with

T <= S <= a*T+b.

Internal transform height is not this outer time. A selected block length, infinitely many isolated samples, or cofinality alone does not establish the coverage hypothesis.

The proof transfers the upper budget to the complete native cross sum; the existing diagonal estimate then pays total cumulative square energy at good times. Only this actual nonnegative cumulative energy is monotone and used to fill gaps. Neither the signed cross sum nor U is assumed monotone.

The conclusions are exact energy abscissa zero and canonical RH. Subexponential growth is NOT promoted to polynomial P04, polynomial HSS, or integrability at zero damping. No witness of the new growth or coverage hypotheses is constructed here.

## 3. Different methods may cover different regions

A fixed finite collection of methods may use different Hilbert spaces, packet models, decompositions and internal heights. Each decomposition must identify the same complete PPNCP04 source, and each source return must hold on its own region. Only the union of those regions needs affine coverage.

The finite-cover theorem first derives a bound for the same native cross function on each region, then combines those bounds. At one positive rate, constants and starting times combine by maxima, not by summing the source or treating every region as a global estimate. Empty regions are allowed; the actual union coverage must still be proved. This theorem does not handle an uncontrolled infinite/growing collection or rate-dependent replacement of the chosen regions.

For a target global rate epsilon and union coverage slope a, use delta=epsilon/a. If regional constants and thresholds are C_i(delta), R_i(delta), let C*=max_i C_i and R*=max(T0,max_i R_i). The quadratic diagonal has a supplied subexponential constant C_diag(delta). One sufficient global energy constant is

max(0,pickupEnergy(R*)) + (C*+C_diag(delta))*exp(delta*b).

This is the existing gap-filling calculation after the finite-max rule. The finite-prefix energy is not silently set to zero. For the inherited polynomial-to-exponential diagonal proof one may use C_diag(delta)=4*exp(delta)/delta^2. These formulae do not supply any regional arithmetic constant.

## New declarations

In `GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential`:

- subexponentialOn_mono
- subexponentialOn_union
- subexponentialOn_finite_cover

In `HSSCP04.CCCAdapter`:

- packetJointUpper (definition)
- cross_le_packetJointUpper
- cross_subexponentialOn_of_packet_budget
- packet_good_scales_energyAbscissa_zero
- packet_good_scales_implies_literal_RH
- packet_joint_subexponential_implies_literal_RH
- packet_finite_good_scale_cover_implies_literal_RH

## Scope and next mathematical application

The new connection changes which inputs the existing packet route can consume. It does not prove a small Gram constant, construct a packet for an unidentified source, settle the original compensated first-prime integral, or claim that every possible method must be solved. The next application is an actual selected region/method with its source return and joint signed upper estimate, followed by coverage and constant propagation.

The separate radical-logarithm target is not duplicated. No public-root imports, dependency pins, historical proof statements or prior proof bodies are changed. The only new import in the existing response-identification leaf is GoodScaleEnergyCriterion.

## Verification boundary

New compilation, fresh independent kernel replay and complete transitive axiom auditing: NOT_RUN. No Lean/lake executable was available on PATH; no remote runner was dispatched. The two base files were reconstructed and rehashed against their exact Git blobs. Removing precisely the added blocks/import/audit commands recovers both original files byte-for-byte. Static direct-dependency inspection is not a complete elaborated import audit.

Finite synthetic rational Gram and signed-sum checks exercise the inequality and finite-max arithmetic; they do not evaluate the actual Mobius source, establish an asymptotic rate, or check Lean proof terms. Native checks must cover the complete imported closure and all new declaration types. Operational runners and receipts stay outside math. The passive source inventory records exact resulting blobs and required commands.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ebdc60d7703258cacc93a94083b2b6addae378a8f49d8d88121aeff2ed4eea1a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SignedEnergyDecomposition.lean","GRWTSK/Analysis/InnerProductSpace/SignedSynthesisEnergyBounds.lean","GRWTSK/Analysis/InnerProductSpace/WeightedSchurBounds.lean","GRWTSK/NumberTheory/Moebius/EnergyAbscissa.lean","GRWTSK/NumberTheory/Moebius/ResponseBudgetIdentification.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
