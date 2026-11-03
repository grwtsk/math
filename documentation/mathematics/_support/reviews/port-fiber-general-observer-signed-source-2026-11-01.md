# Generalizing the typed observer: dependent fibers, partial coverage and complete signed source return

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01.
Mathematical scope: complete elementary mathematical derivation of source-preserving partial observation accounting for arbitrary typed port-fiber systems. Lean SOURCE_PROOF_CANDIDATE; compilation / fresh kernel / axiom audit NOT_RUN. No new analytic RH or BSD estimate.

## Abstract

The current repository already has a canonical dependent GRWTSK.Topology.PortFiber type, an elliptic finite-field specialized ChannelPort implementation, and an exact Möbius/elliptic source-to-trace comparison. The narrower elliptic observer does not need to be the universal carrier.

This increment generalizes the observer without weakening the source. For any existing PortFiber P, retain its actual base object and dependent fiber in the sigma type Σ A:P.Obj, P.Fiber A. A readout is a function from each real fiber to a common declared value type V. A source occurrence inventory I may route each original index to an Option of such a sigma fiber, preserving NONE for unmatched occurrences. An observer relay consists of actual existing P.Port maps for each base object and uses P.map, P.identity, P.comp and their laws. Readout invariance and object-class inheritance are independent PROPOSITIONS to prove, not fields granting an unsupported theorem.

For any original signed source kernel S(i,j), observer readout O, modeled kernel K on V, and any finite ORIGINAL occurrence inventory F, every ordered off-diagonal source term decomposes into exactly five complete sectors:

1. both routes available: observed model term K;
2. both available: ACTUAL signed defect S-K;
3. neither available: original S (rough/rough);
4. first available, second unavailable: original S (forward mixed);
5. first unavailable, second available: original S (reverse mixed).

Thus the full original signed packet equals the sum of the five original indexed packets. A different observer/model cannot replace the source: its matched model plus signed defect is exactly invariant under ANY observer change over the same route. Even after a real typed-port relay changes fibers and observed values, the matched total and both source-preserving mixed/rough packets remain unchanged because the relay preserves SOME/NONE coverage. No positivity, invertibility, analytic growth bound, or RH conclusion is assumed.

The original Möbius endpoint/elliptic finite bank is implemented as a concrete client of this GENERAL observer, proving equality with the actual previous elliptic kernel and a five-sector return to the untouched pickupCross. This is a true reuse of the existing mathematical sources, not a new zero–prime identification.

## 1. Exact theorem and mathematical argument

Let P=(Obj,Fiber,Port,identity,comp,map,identity law,composition law) be the EXISTING GRWTSK.Topology.PortFiber object. Define:

  TotalFiber(P)=Σ A:Obj, Fiber(A).

For a chosen output type V, a Readout(P,V) is O_A:Fiber(A)→V for every A. A PartialSample(P,I) contains an exact function r:I→Option(TotalFiber P). It does not contain a fake object or a zero-valued readout for missing observations. The model kernel for an original pair (i,j) is

  M(i,j) = K(O(x_i),O(x_j)) if r(i)=some x_i AND r(j)=some x_j,
         = 0 otherwise.

The exact signed matched defect is

  D(i,j) = S(i,j)-K(O(x_i),O(x_j)) if both are SOME,
         = 0 otherwise.

The rough and two mixed terms are the original S(i,j) precisely when (r(i),r(j)) is respectively (none,none), (some,none), or (none,some), and zero otherwise. Then

  S(i,j) = M(i,j)+D(i,j)+R(i,j)+F(i,j)+B(i,j)

for ALL i,j: prove this by the four cases of the pair of Options, with no hypothesis about S, K or positivity. The original ordered-pair packet is

  Packet(F,S) = Σ_(i,j∈F, i≠j) S(i,j),

with BOTH orientations retained. Finite distributivity proves the five-sector identity for Packet(F,S). Even if r(i)=r(j) as observer values for i≠j, their source pair is NOT collapsed, as F remains an index population, not a set of observed values.

The matched model+defect is either the original S(i,j) on some/some or zero otherwise. It therefore does not depend on the type V, readout O or modeled kernel K, for a fixed r. Replacing O,K by O',K' preserves the combined packet without requiring any observer-losslessness premise. This is the observer-change conservation theorem.

A Relay(P) assigns a target object f(A) and a genuine existing typed port p_A:Port A (f A). Its action on the sigma fiber is (A,x)→(f A,map p_A x). Identity and composition follow by the P laws. Its optional sample maps NONE→NONE and SOME→SOME, so rough and both mixed original source sectors are invariant. Changing the observer, its kernel and the typed relay simultaneously still preserves the combined matched model+signed defect. The relay has NO rule granting equality of the two modeled kernels alone; that stronger result requires an actual readout-preservation proof.

Object-class predicate inheritance is C(A) on the original sigma object's actual A. A relay carries it only if independently furnished with ∀A,C(A)→C(f A). A declared CM, Selmer, torsion, geometric observer normalization or prime class does not become true because of a label. This is the precise mathematical implementation of the previous idea that classes belong to the fibers while ports carry them under proved maps.

## 2. Existing PortFiber and geometric boundaries

The canonical typed port producer is GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PortFiberBasic.lean, Git blob e51c1b52fede0d883b147ffd196c0efe184a87d8, namespace GRWTSK.Topology.PortFiber. It already provides SourceIdentity, SourceBoundPort, SameSource and a checked-at-source expected-head portability interface. The new Readout is not a new category or independently authoritative source store. SourceBoundReadout carries exactly its original declared repository, revision, path and invalidation key; MatchesPort requires equality of repository and revision. These declared strings are NOT Git verification receipts and do NOT prove readout invariance or physical/source identity.

Prior genuine geometric curve source is GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticPrimeResidueFiberPorts.lean blob e7f5901f929bf999d15772f1b92cf3460023623d. Its source-specific ChannelPort C W V preserves prime, point count, residue-key, exponent and an explicitly proved class arrow; it is not a universal morphism between every two curves. Its GeometricFiberPort is an actual equivalence of finite affine ZMod p solution sets, not an analytic equivalence of L-functions.

The Gödel observer GodelObserverMetricVorticity.lean blob f5d8a65fd1e4e59e97e139b3fc63829028c3c662 is a different MATHEMATICAL domain: it is a unit timelike tangent frame in a Lorentzian model with projected vorticity. The universal typed observer may read an actual chart/tangent fiber when a source-preserving port model is constructed, but it does not itself prove the Lorentz normalization, identify curvature or vorticity with prime residues, or supply a zero/prime correspondence. No illicit equivalence with elliptic torsion or prismatic torsion is declared.

## 3. Hostile checks: information loss and nonzero signed defects

The new BooleanFiberSystem is the preexisting PortFiber.ofFunctions applied to the constant Bool fiber over Unit. Its lawful BooleanCollapse relay sends every bit to false. The BooleanReadout actually reads the bit. Thus, for x=true, O(map collapse x)=false≠true=O(x). The Lean source contains boolean_collapse_not_preserving, a concrete negative instance: an admissible typed port does NOT automatically preserve readout. This independently demonstrates why the separate Readout.Preserves predicate is necessary.

For a four-occurrence numerical fixture take I={0,1,2,3}, with some readouts at 0→1 and 2→-2, and original 1 and 3 unmatched. Let S(i,j)=i-2j (including both ordered orientations) and K(a,b)=2a-3b (asymmetric, intentionally hostile). Over all i≠j, the original packet is -18. The five actual signed parts are modeled 1, matched defect -3, rough/rough -4, forward mixed -12, reverse mixed 0. They sum to exactly -18. The example also tests asymmetric mixed directions: one cannot replace two ordered sectors by twice one sector unless source symmetry is proved. This is exact finite INTEGER arithmetic, not a Lean kernel receipt or actual Möbius Gram evaluation.

The empty observation route returns the complete original packet as rough/rough, rather than a zero or fictional certificate. If the readout collapses all actual observation values, the modeled kernel alone may change; its exact signed matched defect changes by the opposite amount. The universal accounting identity therefore preserves the original signed source even when observer information is lost.

## 4. Actual RH/elliptic observer specialization

The new GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGeneralizedFiberObserver.lean uses the existing elliptic PrimeResidueFiberPort.system with a neutral True class predicate. Its readout is the actual certified Frobenius trace of each CurveFiber W, cast to ℝ. For a real GoodPrimeBank W, the original integer sample is n→Option.map (fun x=>Sigma.mk W x) (B.route n), preserving the original Nat.find first-selected-prime and its exact p-free cofactor residue and exponent.

The modeled pair kernel is ordinary multiplication of those certified real traces. The new theorem generalized_kernel_eq_original identifies this general observer model with the PREVIOUS exact ellipticKernel B m n for every actual source integer pair. The original source packet is shown equal to the unchanged GRWTSK.RiemannHypothesis.CCC.pickupCross T by unfolding the same original integer support and m≠n test. Thus pickupCross_eq_general_observer_ledger specializes the five-sector accounting theorem to the genuine original signed Möbius response Gram and the actual existing elliptic port system. No new readout field asserts equality to pickupCross; the equality is proved by the literal source definition and finite Option case split.

A separate source-specific theorem elliptic_trace_readout_preserved consumes the PREVIOUS ChannelPort.trace_eq source and proves observer invariance across such certified elliptic ChannelPorts. There is no corresponding invariance theorem for arbitrary ports or for real zeros of zeta.

The concrete RH signed all-positive-rate open problem is untouched. The previously published all-rate Putnam sparse-gap proof applies to short-distance ORIGINAL Möbius pairs, and the complete long-gap squarefree source remains at RH strength. Generalizing an observer changes the representation and what can be measured, not the algebraic sign correlations of the unobserved long-distance source. No claim of RH, BSD or global zero–prime correspondence is made.

## 5. New declarations and verification

1. GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PortFiberGeneralObserver.lean, namespace GRWTSK.Topology.PortFiber: TotalFiber, Readout, Readout.total, Relay, Relay.identity, Relay.comp, Relay.mapTotal, Relay.mapTotal_identity, Relay.mapTotal_comp, PartialSample, PartialSample.empty, PartialSample.relay, relay_none_iff, relay_preserves_coverage, Inherits, ClassPreserving, inherited_of_classPreserving, Readout.Preserves, Readout.preserves_identity, Readout.preserves_comp, PartialSample.read_relay_of_preserves, SourceBoundReadout, SourceBoundReadout.MatchesPort, BooleanFiberSystem, booleanCollapse and boolean_collapse_not_preserving.
2. GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PortFiberSignedObserver.lean, namespace GRWTSK.Topology.PortFiber.SignedObserver: modelKernel, matchedDefectKernel, roughKernel, forwardMixedKernel, reverseMixedKernel, pointwise_complete, orderedPacket, orderedPacket_add, orderedPacket_complete, model_add_defect_pointwise, observer_change_preserves_matched_packet, relay_change_preserves_matched_ledger, roughKernel_relay, forwardMixedKernel_relay, reverseMixedKernel_relay, relay_change_preserves_matched_packet and empty_observer_preserves_source.
3. GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusGeneralizedFiberObserver.lean, namespace GRWTSK.NumberTheory.Moebius.GeneralizedFiberObserver: EllipticObserverSystem, ellipticTraceReadout, originalIntegerSample, ellipticProductKernel, generalized_kernel_eq_original, source_packet_eq_pickupCross, pickupCross_eq_general_observer_ledger and elliptic_trace_readout_preserved.

Source author and mathematical review attribution: grwtsk contributors. Current Lean toolchain v4.34.1 and pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. All existing mathematical and analytic sources were left unchanged. Files and exact Git blob SHA pins are in the separate static verification target after source publishing.

Mathematical status: the complete finite signed observer ledger and the port-relay correspondence are proved in elementary case analysis at the paper level, with an exact hostile finite example. Formal status: newly authored Lean source proof candidates; compilation NOT_RUN; expected-type elaboration NOT_RUN; fresh independent kernel replay NOT_RUN; transitive axiom audit NOT_RUN. No new axiom or sorry was intentionally authored, but source scans are not a proof of a transitive audit. No native verifier, scheduler, CI bypass, force push, foreign repository mutation or root import promotion.

A legitimate next theorem is a certified observer carrying a nontrivial new ARITHMETIC correlation observable for the dense original Möbius long-gap packet, with a proved signed comparison strong enough to improve its existing bound. The universal observer by itself supplies neither that observable nor RH.
