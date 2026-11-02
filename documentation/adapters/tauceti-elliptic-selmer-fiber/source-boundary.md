# True elliptic Selmer mapping-fiber adapter — Tau Ceti source boundary

Local content attribution: grwtsk contributors. This is a mathematical **source and import boundary**; it is NOT a functioning compiled Tau Ceti dependency, not a verification request, and not an authorization to change the root toolchain.

## Immutable source pin and original licenses

Upstream TauCetiProject/TauCeti commit \`2bdb755239d3bd84760e99bc83166bdf7cc75a6b\` on main, upstream attribution The Tau Ceti contributors, Apache-2.0:
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean\`, Git blob \`9596754d63dfddae05765acc47fab267df58da7e\`. Actual continuous global/local \`C1\`, \`C2\`, \`d0\`, \`d1\`, \`d2\`, \`d1_comp_d0\`, \`d2_comp_d1\`, and \`B1_le_C1\`, \`B2_le_C2\` continuity closure. The raw cochain differentials are additive homomorphisms; their domain/codomain must be restricted to continuous cochains where required.
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean\`, Git blob \`589ba4d163c40ae0b20dc8de1a3911a6a334c530\`. Actual \`cochainsMap1\`, \`cochainsMap2\`, \`explicitMap1\`, \`explicitMap2\` for compatible group/coefficient changes; pullback naturality must be checked for the exact source maps.
- \`TauCeti/RepresentationTheory/Homological/ContCohomology/SelmerStructure.lean\`, blob \`cd7c633795865655521f955a6bd3ba52a6bf30d4\`, defining \`SelmerStructure.localization\`, \`SelmerStructure.localCondition\`, \`SelmerStructure.selmerGroup\` and \`mem_selmerGroup_iff\` at **H¹ level**.
- \`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean\`, blob \`5056b9a9c7fba239f4a1d1395c3a00cbdc94ffa1\`, actual elliptic torsion coefficients \`W.TorsionCoeff m\`, all chosen local field-extension families, \`W.selmerStructure\`, \`W.selmerGroup\`, Kummer injection, Sha exactness and surjectivity.
- Toolchain \`leanprover/lean4:v4.36.0-rc1\`, \`lean-toolchain\` blob \`2afd38716ad6182657562d3dac3c98461c1385f2\`. \`grwtsk/math\` remains Lean \`v4.34.1\` with pinned Mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. No external-source compilation or compatible import is established by this document.

## Actual cohomological instantiation map, not a chosen spectrum

Let E/Q be given by an actual nonsingular Weierstrass curve W. Fix m=p^n with p a genuine prime and its actual Galois representation E[m]. Let \`G = H1 (AbsoluteGaloisGroup Q) (W.TorsionCoeff m)\`, local \`H v = H1 (AbsoluteGaloisGroup Q_v) ...\`, and actual local field-completion embeddings tau_v. Then in
\`GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/EllipticSelmerLocalizationDefect.lean\`:
- \`LocalizedHOne.localization v := (W.selmerStructure tau m).localization v\`.
- \`LocalizedHOne.localCondition v := (W.selmerStructure tau m).localCondition v\`.
- The generic source theorem \`selmer_eq_defect_ker\` specializes literally to \`W.selmerGroup tau m = ker(localizationDefect)\` after proving source type equality. This is an identity of genuine H¹ local conditions, not a regulator or BSD theorem.
No numerical rank or finite Sha bound enters these definitions.

The genuine cochain-level source for Nekovář's mapping fiber is separate: choose the original continuous global cochain complex \`C_G^•= C_cont^•(G_Q,E[m])\`, local complexes \`C_{L,v}^•=C_cont^•(G_{Q_v},E[m])\`, and an actual local-condition complex \`U_v^+\` with a cochain map \`i_v^+:U_v^+→C_{L,v}^•\`. Define \`U^+\` and \`C_L\` as appropriate products over all places, with topology/completions and cohomological finiteness addressed as in Nekovář. Supply true cochain restriction \`res^•:C_G^•→C_L^•\`, not just the descended \`H¹\` map. The exact shifted cone \`Cone(C_G ⊕ U^+ → C_L)[-1]\` is the construction in
\`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SelmerMappingFiberDegreeTwo.lean\` at degrees 0–2, using the real additive homomorphism API.

## New missing genuine source obligation

The inspected Tau Ceti \`SelmerStructure\` supplies **subgroups of local H¹**, not source \`U_v^+\` cochain complexes. The continuous cochain maps and their square-zero proofs exist, but the required \`U_v^+\`, their inclusions and local comparison \`H¹(U_v^+)→H¹(C_{L,v})\` are not established in the inspected files.

A valid provider must separately construct or import cochain-level local conditions, prove these conditions realize Tau Ceti's exact elliptic local Kummer subgroups, prove the global/local restriction and inclusion naturalities and their compatibility under \(p^n\)-level transition maps, and retain nontrivial local H⁰ contributions. Without these conditions, \`H¹(mapping fiber)\` cannot simply be set equal to \`W.selmerGroup\`. For a chosen source meeting these hypotheses, the mapping cone long exact sequence supplies:
  0 -> coker(H⁰(C_G)⊕ H⁰(U)→H⁰(C_L))
    -> H¹(fiber)
    -> ker(H¹(C_G)⊕H¹(U)→H¹(C_L)) -> 0.
A separate injection of H¹(U) into H¹(local), with image the local condition, identifies the right kernel with the actual degree-one Selmer group; vanishing of the H⁰ cokernel is additionally needed before promoting H¹(fiber) to that Selmer group.

## Derived-height and complex-jet gates

Only AFTER constructing the actual compatible source Selmer mapping fiber may a p-adic Iwasawa deformation \(d(t)\) and its first/second Bockstein coefficients be defined from real Galois-cohomological data. Prove its \(d(t)^2=0\) identities, local/global duality and derived pairings at the original coefficient field. The previous \`DerivedBocksteinSelmerBoundary.lean\` is generic module algebra; its corrected source blob \`da3fd136ec954e523556ed066ee67cc219506404\` repairs four sign-orientation typos without asserting this actual deformation.

Nekovář, *Selmer complexes* (Astérisque 310, 2006), https://www.numdam.org/item/AST_2006__310__R1_0/, is the primary mapping-cone and local-duality source. Howard, *Derived p-adic heights and p-adic L-functions*, arXiv:1202.6343 (2012), and Sano, *Derived Bockstein regulators*, arXiv:2308.08875 (2023), concern \(p\)-adic derivative targets, not the genuine complex \(L(E,s)\) Taylor-jet dual. No comparison with complex BSD rank, source Néron–Tate regulator, \(\Sha\), Tamagawa, torsion or period factors is obtained from the mere mapping-fiber construction.

Compilation NOT_RUN, fresh kernel replay NOT_RUN, transitive axiom audit NOT_RUN, external Tau Ceti adapter NOT_COMPILED. No sorry/axiom declaration, no root import or toolchain change. This document is source mathematics only and should be consumed only after a genuine compatible source port is reviewed.


## Finite-level Kummer local cochain condition constructed (2026-11-01)

Mathematical local-condition gap closed at the **fixed finite** \(m=p^n\) level, independently of global BSD: use the ACTUAL elliptic \(G_{K_v}\)-modules \(A_v=E[m](K_v^{sep})\) and \(B_v=E(K_v^{sep})\), the genuine equivariant coefficient inclusion \(j_v:A_v\to B_v\), and define \(U_v^+=\operatorname{Cone}(C^\bullet_{\mathrm{cont}}(G_v,A_v)\to C^\bullet_{\mathrm{cont}}(G_v,B_v))[-1]\). Its degree-one class projection has image \(\ker H^1(j_v)=\operatorname{im}\delta_{v,m}\), the precise local Kummer condition in Tau Ceti \`WeierstrassCurve.selmerStructure_localCondition\`, via the actual \`range_kummerMap\` theorem. It is not generally injective: \(\operatorname{coker}(H^0(A_v)\to H^0(B_v))\) survives in its \(H^1\).

A generic source proof candidate under pinned grwtsk/math Mathlib is \`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerConditionCone.lean\`, blob \`6cc6beef014a7646044555b0b9f0ea10b9da1a39\`, constructing the signed low-degree cone and proving its one-cocycle lift iff coefficient-boundary, including correct coboundary invariance. The **actual source-typed Tau Ceti** adapter is \`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerCone.lean\`, blob \`9cdb5cd999b2723a916146b203ea05ea504fb9a8\`, pinned to TauCetiProject/TauCeti \`2bdb755239d3bd84760e99bc83166bdf7cc75a6b\`, toolchain \`v4.36.0-rc1\`. It constructs \`Uzero\`, \`Uone\`, \`Utwo\`, \`localD0\`, \`localD1\`, source-coefficient squared-zero and local cycle membership, then states/proposes \`cone_cycle_iff_selmerStructure_localCondition\` at every selected place. The full classical mathematical proof and hostile controls are in \`documentation/mathematics/_support/reviews/bsd-actual-elliptic-local-kummer-cone-2026-11-01.md\`, blob \`6ae4d0d5b06dc1e3bfeb2c68963e6d6d60fa7200\`.

**Verification distinction:** the classical local cohomological identity is proved mathematically from the real Kummer long exact sequence. Both NEW Lean source files are UNCOMPILED candidates, with syntax/parsing NOT_RUN, fresh kernel checking NOT_RUN, full transitive axiom audit NOT_RUN, Tau Ceti compatible adapter compilation NOT_RUN. No CI or execution is dispatched by this document; there are no new \`sorry\` or \`axiom\` declarations. Upstream imports remain isolated and no default root imports or dependency pins are changed.

**Unclosed source consumers:** build full \(U_v^+\) continuous cochain complexes in all degrees in a compatible Lean environment and prove \(H^1(i_v^+)\) image correspondence in the kernel; construct restriction maps for the global absolute Galois group to every local \(G_v\) and correctly assemble the place family with archimedean/restricted-product conventions. Passage to \(T_pE\), Bloch–Kato/Greenberg conditions and derived \(p\)-adic Iwasawa Selmer complexes requires independent derived inverse-limit and local-model comparisons. These are not proofs of arbitrary-rank BSD or the complex Hasse–Weil central-jet equality.


## Corrected p-power compatible local point fiber and global Selmer limit (2026-11-01)

The earlier finite-m source \`TauCetiLocalKummerCone.lean\` (blob 9cdb5cd999b2723a916146b203ea05ea504fb9a8) built \`Cone(C(E[m])->C(E))[-1]\`. Its H1 image in H1(E[m]) is indeed the true local Kummer condition, but the cone has an extra coker(H0(E[m])->H0(E)) contribution and is NOT the correct p^n inverse-system object if its whole H1 is intended to be the point quotient.

Use instead the GENUINE rational local point source \`W.toAffine.Point\` and the actual inclusion \`W.basePointCoeff\`: the point-corrected complex is \`U_v,n^+ = Cone(C_cont(G_v,E[p^n]) ⊕ E(Q_v)[0] -> C_cont(G_v,E))[-1]\`, with sign \`j - basePointCoeff\`. Its cochain low-degree differential includes the rational source point, retains local H0=E(Q_v)[p^n] and gives H1=E(Q_v)/p^n E(Q_v) via the actual Kummer triangle. The H1 projection to local Galois torsion cohomology is now injective with image the genuine local Kummer subgroup. This is a mathematical correction in the model, not a claim that the older source was compiled or that its H1 image theorem was wrong.

New standalone GRWTSK algebra source candidates: \`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalPointKummerFiber.lean\` blob \`5fd56d6fc1904c26c951bfcb459b033c86f3a415\`; \`LocalPointKummerTower.lean\` blob \`c006d62ed7b034f43b16364a4fdd9d4a191fb30e\`; \`GlobalKummerPointFiberAssembly.lean\` blob \`df902e143024a36c3916f8d210a31ca00ae7618a\`; \`GlobalSelmerFiberTower.lean\` blob \`9482578feeefaec280babf861dbf74dedf2ab4f6\`; \`GRWTSK/NumberTheory/ArithmeticAlgebraicGeometryDiophantineGeometry/KummerPointResolution.lean\` blob \`3d6723a861ad1c44eaaab3bb9cfff1f299212fe2\`. Exact whole mathematical proof, Milnor derived-limit H0/H1, hostile tests and source comparison: \`documentation/mathematics/_support/reviews/bsd-global-kummer-point-fiber-tower-2026-11-01.md\`, blob \`9362e58810da0c177ff4c96e1c2b3b1fece3a1e2\`.

New isolated source-typed Tau Ceti candidate \`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiPointKummerTower.lean\`, blob \`50f9b9f07822933f9f25751bd22d99eb0afb9a00\`, uses actual W.TorsionCoeff(p^(n+1)), W.PointCoeff, W.toAffine.Point, W.basePointCoeff and basePointEquivInvariants, genuine C_cont cochains and source TateModule/tateModuleTransition. Exact external pin: TauCetiProject/TauCeti \`2bdb755239d3bd84760e99bc83166bdf7cc75a6b\` with Lean v4.36.0-rc1, Apache-2.0 and original Tau Ceti contributor attribution. Tau Ceti/Algebra/Module/Torsion/TateModule.lean blob \`62e7fac1cb918662dde0e644e61060d4428e9942\` is the ACTUAL inverse system p-smul on torsion, and EllipticCurve/TateModule/Basic.lean blob \`65f22a80e553f58ca70469e292697ca20a8da4e9\` defines the genuine geometric T_pE.

The compatible maps multiply by p on geometric torsion/cochain and local rational points, but induce **REDUCTION** on E(Q_v)/p^n E(Q_v); the true Kummer cocycle computation proves the difference. The local derived inverse limit has H0=T_p(E(Q_v)), which is NOT automatically zero at archimedean places, and H1=E(Q_v)^hat_p after checking the finite-torsion and surjective quotient Mittag-Leffler hypotheses. The full global Selmer fiber at finite levels uses these corrected U_v,n^+ and retains all local H0 before canceling its global H0 cokernel by actual isomorphism. No source file claims a completed all-places/restricted-product or archimedean duality proof inside Lean.

No root imports or external dependency changes. The mathematical result is classical; local source compilation NOT_RUN, kernel replay NOT_RUN, axiom audit NOT_RUN, compatible Tau Ceti adapter compilation NOT_RUN. No runner or CI action is inferred or dispatched. General BSD-I/II and the noncircular comparison to complex Hasse-Weil L-jets are still OPEN.


## Genuine finite elliptic GalRep and Weil-to-Tate-dual port (2026-11-02)

New isolated source candidate
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiEllipticTorsionGalRepWeil.lean`
is pinned to the original TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1, original Tau Ceti contributors, Apache-2.0).
It builds the **exact** `GalRep n F` over
`W.TorsionCoeff n=E[n](Fsep)`, using its original `ZMod n` module,
continuous Galois action and separable/algebraic closure comparison.
It applies the upstream `torsionCoeffWeilPairing` (original
`GaloisCohomology/WeilPairing/Basic.lean`, blob
`d54088b59839bf055f1670006127a4d854adaa50`) to construct a
source Galois-equivariant `TopPairing` and its genuine morphism
`E[n] -> tateDual(E[n])`, with the explicit orientation
`a ↦ (b ↦ e_n(a,b))`. The source candidate proves injectivity via
actual upstream Weil nondegeneracy and specializes the **already
existing** pinned local `tateDualityPairing_perfect_mixed` using
the original Brauer-normalized trace. It does NOT prove the Weil
dual morphism surjective or the Kummer subgroups orthogonal.

The source-exact discussion, original blobs and next consumers are
`documentation/mathematics/_support/reviews/bsd-elliptic-finite-galrep-weil-duality-2026-11-02.md`.
Full Weil dual isomorphism, Kummer-orthogonality, p-power transition
duality, reverse away-S unramified comparison, archimedean p=2
correction, actual derived-limit and Poitou--Tate remain OPEN.
The actual untruncated local Kummer cone still has the previously
corrected nonzero higher Weil--Chatelet residue. Its good truncation
must remain source-visible. No BSD-I/II or complex L-jet conclusion.

This is a source-only adapter; **parsing, Lean compilation, compatible
upstream integration, fresh kernel checking and transitive axiom
auditing are NOT_RUN**. No root import/toolchain change, new
axiom/sorry/admit or verification dispatch follows from publication.


## Weil surjectivity established mathematically; local Kummer annihilator adjunction isolated (2026-11-02)

The continuation uses the *same* immutable TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b` with original
contributors/Apache-2.0 and Lean v4.36.0-rc1. No root import
or toolchain pin has been changed.

- The existing isolated `TauCetiEllipticTorsionGalRepWeil.lean`
  is extended additively with `source_geometric_torsion_basis`,
  `source_geometric_torsion_equiv`,
  `ellipticTateDual_natCard_eq`,
  `ellipticWeilToTateDual_bijective`, and the actual
  `ellipticWeilTateDualAddEquiv`/evaluation return.
  This closes the ordinary finite arithmetic surjectivity argument
  using the original `W.TorsionCoeff n`, original Weil
  nondegeneracy, the source geometric torsion-basis theorem,
  `kummerCoeffAddEquivZMod` and pinned
  `AddEquiv.natCard_addMonoidHom_zmod`. It never assigns
  an abstract rank-two proxy or a Galois-equivariant basis.
  Its Lean scripts remain UNCOMPILED source candidates.
- The new `TauCetiLocalKummerOrthogonalityCriterion.lean`
  uses the pinned genuine `W.kummerMap` and
  `W.range_kummerMap` for its H¹ source subgroup/ker return,
  and the pinned `FiniteBilinearModule` orthogonal-cardinality
  theorems for exact equality under separately named source
  pair-vanishing and order premises. These latter arithmetic
  premises have NOT been discharged by the generic finite
  Weil perfectness theorem.
- The new independent GRWTSK
  `LocalKummerAdjointKernel.lean` proves the stronger exact
  algebraic kernel/annihilator reduction for a genuinely
  compatible connecting-map/abelian-Tate diagram:
  `ker q_E = (im delta_Evee)^orth` follows from
  Kummer-to-cup adjunction and the abelian local Tate
  pairing separating `H¹(F,E)[n]`. Those two arithmetic
  inputs must be source-instantiated in the actual continuous
  Galois cochain and local completion category. This is
  not a restatement of the desired equality as an assumption.

The complete proof, source identities, original primary literature,
exact sign convention, finite controls and acceptance distinctions
are in `documentation/mathematics/_support/reviews/bsd-elliptic-weil-surjectivity-local-kummer-orthogonality-2026-11-02.md`.
Keep the previously corrected NONZERO higher
`H²(U_v)=H¹(F,E)` Weil--Chatelet residue and the good
truncation as separate objects. Kummer orthogonality remains
OPEN **as a source-typed Lean arithmetic theorem**, despite
the established classical local abelian duality theorem.
Compilation NOT_RUN, fresh kernel replay NOT_RUN, transitive
axiom audit NOT_RUN, Tau Ceti compatible integration NOT_RUN.
No verification/CI/scheduler dispatch and no BSD-I/II claim.
 

## Canonical H¹ Kummer transport and normalized Weil-cup boundary (2026-11-02)

At pinned TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(original Tau Ceti contributors, Apache-2.0, Lean v4.36.0-rc1)
the amended isolated `TauCetiEllipticTorsionGalRepWeil.lean`
now supplies the actual group/coefficient H¹ equivalences via
`ContCohomology.explicitMap1Equiv` and
`TopRep.explicitH1AddEquivContinuousCohomologyOfDiscrete`.
The source ORIGINAL `W.kummerMap`, `W.kummerClassMap`,
`W.torsionCoeffInclH1`, their source injection/surjection and
`W.exact_kummerClassMap_torsionCoeffInclH1` are transported into the
SAME `continuousCohomology 1 (ellipticTorsionGalRep W n)` used by
local Tate duality. New named `ellipticNormalizedWeilCup` is the
actual `ContinuousCohomology.coeffMap (ellipticWeilToTateDual)`
followed by Tau Ceti's original evaluation cup and Brauer
`h2MuEquivZMod` trace, with the original ordered arguments.

`ellipticKummer_orthogonal_iff_of_localAbelianTate` is now
source-typed on actual `H¹(F,E)[n]`, `E(F)/nE(F)`,
the canonical Kummer image and normalized Weil cup. It
derives exact annihilator membership under two DISTINCT
arithmetic source obligations: an actual local abelian Tate
pairing that separates `H¹(F,E)[n]`, and the signed
Poincare/Kummer connecting-map adjunction (one fixed sign ±1).
Neither obligation is claimed kernel-proved merely by finite
Weil-module Tate perfectness. In particular the full
local Weil–Châtelet H² residue still requires the original
good-truncation separation in the derived tower.

The separate pure GRWTSK algebra source
`KummerExactTransport.lean` proves the exactness-preserving
middle-carrier additive-equivalence transfer without any
arithmetic assumptions beyond the source exact row; it
does not silently import incompatible Tau Ceti modules.

Full source identity, classical Milne ADT I §3 references,
remaining two arithmetic suppliers and NOT_RUN facets are
in `documentation/mathematics/_support/reviews/bsd-canonical-elliptic-kummer-h1-weil-cup-adjunction-2026-11-02.md`.
Root pins/imports unchanged. Compilation NOT_RUN,
fresh kernel replay NOT_RUN, axiom audit NOT_RUN,
upstream compatible adapter NOT_RUN; no CI/runner/Noe job.
No BSD rank, real height-regulator, or COMPLEX L-jet
claim is made.


## Abelian Tate pairing from genuine finite Weil cup: geometric theta/divisor gate (2026-11-02)

This publication continues to use the original immutable
TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1; original Tau Ceti contributors, Apache-2.0),
with the independent grwtsk/math Lean v4.34.1 root unchanged.

- New isolated `TauCetiWeilCupKummerCocycle.lean`,
  blob `6bf0968ea8dcccba01b39ae6491d2daeee976651`,
  exposes the original continuous two-cocycle
  `(σ,τ) ↦ e_n(a_σ, σ(τQ−Q))` for the REAL
  `W.TorsionCoeff n` and `W.kummerCocycle hQ`.
  It consumes upstream `explicitCup11_mk`,
  `cup11_mem_Z2`, `W.kummerMap_eq_H1pi`,
  Weil equivariance and the original
  `H2pi_eq_iff`. Its geometric comparison demands a
  REAL divisor two-cocycle and one CONTINUOUS 1-cochain
  with differential equal to the cocycle difference.
  The actual divisor cocycle/witness is NOT constructed.
- New independent Mathlib source `LocalAbelianTateCupDescent.lean`,
  blob `58f627fb5fd990bb881ab46c7102e26789d1914b`,
  constructs and uniquely characterizes a genuine
  `Q→+P→+Z` quotient pairing from the source finite
  cup `B`, exact original `im δ=ker q`, and the
  independently required Kummer cup isotropy.
  This is a CONSTRUCTION and proof of exact
  `T(qx,P)=B(x,δP)`; it does NOT prove isotropy or
  identify `T` with the original divisor/Poincare
  abelian Tate pairing.
- New independent Mathlib source `ThetaKummerIsotropy.lean`,
  blob `114feb6743fb7caacd26034c3261e510e132156a`,
  proves original Kummer isotropy from two precise
  geometric theta-obstruction identities:
  vanishing of period-index `Δ_n` on `δ(E(F))`,
  and its Weil-cup polarization in the second
  Kummer direction. Neither original theta-group
  construction nor the two geometric identities
  has been kernel established here.
- The previous isolated
  `TauCetiEllipticTorsionGalRepWeil.lean` is
  extended with `ellipticNormalizedWeilCupHom`,
  `OriginalKummerCupIsotropic`,
  `originalThetaPolarization_implies_KummerIsotropy`,
  `quotientKummerCup_isotropic`,
  `ellipticAbelianCupDescent` and
  `ellipticAbelianCupDescent_lift`, all on the
  literal source `H¹(F,E[n])`, `H¹(F,E)[n]` and
  `E(F)/nE(F)`. Actual source isotropy is an
  EXPLICIT geometric premise, not a conclusion
  from finite Weil nondegeneracy alone.

Fisher §2.1, Proposition 2.1
(https://www.dpmms.cam.ac.uk/~taf1000/papers/ctp.pdf)
provides the classical divisor-function compatibility,
where the point/H¹ abelian Tate pairing carries a
minus sign in its divisor evaluation. Clark--Sharif
§2.2 (https://msp.org/ant/2010/4-2/ant-v4-n2-p02-p.pdf)
supplies the classical theta/period-index route to
Kummer isotropy. Both remain UNINSTANTIATED as
original source-typed Lean geometry. The real Weil
skew and degree-(1,1) cup anticommutativity imply
two sign cancellations; source-fixing this in Lean
is separately required. The review
`bsd-local-abelian-tate-weil-cup-descent-theta-certificate-2026-11-02.md`
records exact source identities and acceptance.

**Acceptance:** SOURCE_PROOF_CANDIDATE; parsing NOT_RUN,
compilation NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, compatible Tau Ceti
adapter build NOT_RUN, no native/CI/Noe dispatch.
No new `sorry`, `axiom` or `admit` declaration;
no root or toolchain migration. Do not erase higher
local `H²(U_v)=H¹(F,E)`, claim Kummer orthogonality
already kernel accepted, or treat a cup-descended
pairing as the classically constructed Tate pairing
before a source geometric comparison.
