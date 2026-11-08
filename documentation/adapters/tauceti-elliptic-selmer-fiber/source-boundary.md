# True elliptic Selmer mapping-fiber adapter — Tau Ceti source boundary

[Adapter index](../README.md) · [MSC2020 source layout](../../taxonomy/msc2020/README.md).
This source-boundary document retains its original pins and evidence limits;
navigation does not establish that an isolated build or upstream import exists.

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

 
## Actual elliptic theta function group, strict Kummer vanishing and polarization (2026-11-02)

At the SAME immutable original TauCetiProject/TauCeti pin
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1, original contributors, Apache-2.0),
the newly isolated
`TauCetiGeometricThetaKummerBoundary.lean`
constructs a genuine function-field theta lift `(T,f)` with
`div f = n([T]-[O])` using the source actual
`W.exists_principal_eq_zsmul_ofPoint_sub_infinity`,
`W.translation`, original point-place and original
`Divisor.principal_eq_zero_iff`. The geometric product
is `(T,f)(S,g)=(T+S,f*tau_-T g)`; its commutator has
zero divisor and is therefore an ACTUAL nonzero
field constant, not a chosen Gram pairing.

The **actual original** `W.divisorSum_eq_zero_iff`
supplies a genuine nonzero elliptic rational function
`h_Q` with
`div h_Q = n[Q]-[P]-(n-1)[O]`
whenever `P=nQ` is rational. The source candidate
constructs `u_sigma=tau_Q*(sigma h_Q/h_Q)`,
proves its divisor is `n([sigma Q-Q]-[O])`,
and derives the STRICT crossed identity
`u_sigma * tau_-(sigma Q-Q)(sigma u_tau) = u_(sigma*tau)`
from the original Galois/translation interchange.
It thus gives the actual geometric theta-valued
Kummer lift underlying the classical vanishing
`Delta_n(delta P)=0`, including even n without
halving. The Lean proof script is **NOT COMPILED**,
so kernel-level obstruction vanishing is NOT_CLOSED.

For an arbitrary original E[n]-valued continuous
1-cocycle, the same candidate constructs the
**raw** nonabelian theta scalar obstruction
`f_a(sigma)*tau_-a_sigma(sigma f_a(tau))/
 f_a(sigma*tau)`, and proves its zero principal
divisor. A second independent native Mathlib
source candidate `ThetaCentralPolarization.lean`
proves the exact noncommutative group-word identity
for polarized scalar defects using REVERSED
sum-lift order, which yields the geometric theta
commutator `C(a_sigma,sigma b_tau)`. The mathematical
theta boundary polarization is thus explicit;
the source Lean continuous H2 cocycle/class,
section independence and the exact original
`W.torsionCoeffWeilPairing` sign/commutator
comparison remain OPEN. No full original Weil
polarization or Kummer orthogonality is declared
kernel-accepted.

Source details and primary mathematical references:
`documentation/mathematics/_support/reviews/bsd-geometric-theta-obstruction-kummer-vanishing-polarization-2026-11-02.md`.
All original source blobs and the nonzero full local
`H²(U_v)=H¹(F,E)` Weil–Châtelet residue remain
preserved. Real p=2 Tate, compact Rlim,
restricted products, Poitou–Tate, genuine regulator
and COMPLEX Hasse–Weil central jets remain OPEN.

**Acceptance:** source proof candidate, source identities
inspected; parsing NOT_RUN, elaboration NOT_RUN,
compilation NOT_RUN, fresh independent kernel NOT_RUN,
transitive axiom audit NOT_RUN, Tau Ceti-compatible
import closure NOT_RUN. No new axiom/sorry/admit,
native CI/Noe execution, source root import/toolchain
or dependency pin migration. No BSD-I/II proof claim.


## ORIGINAL geometric theta group and strict Kummer nonabelian trivialization (2026-11-02)

New pinned isolated `TauCetiOriginalGeometricTheta.lean` and
`TauCetiOriginalGeometricThetaGalois.lean` use only the ORIGINAL
elliptic divisor, translation and Galois suppliers of
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1, original contributors, Apache-2.0).
The root grwtsk/math Lean v4.34.1 import boundary remains unchanged.
The isolated Galois module imports the first from the SAME
adapter directory; it needs an explicit compatible Lean search path.

The REAL theta lift is a point T in E[n](Fsep) and a nonzero
elliptic rational function `f_T` with
`div(f_T)=n((T)-(O))`, constructed using original
`exists_principal_eq_zsmul_ofPoint_sub_infinity`.
Multiplication is the genuine function action
`(T,f)(S,g)=(T+S,f tau_-T^*g)`. The candidate proves
closure, associativity, inverse, scalar identity fibre
and centrality with the ORIGINAL function field's
`Divisor.principal_eq_zero_iff`. Its commutator is
the ACTUAL ratio `f_T tau_-T^*f_S /(f_S tau_-S^*f_T)`;
the source shows it is a nonzero constant, not a
guessed symplectic Gram entry.

For rational P=nQ, original elliptic divisor-sum
provides `h_Q` with
`div(h_Q)=n(Q)-(P)-(n-1)(O)`.
The explicit lift `f_sigma=tau_Q^*(sigma h_Q/h_Q)`
has the original n-torsion divisor and obeys STRICT
`f_sigma tau_(-sigma Q+Q)^*(sigma f_tau)=f_(sigma tau)`.
Hence the Kummer-specific nonabelian theta boundary
function is LITERALLY 1. For arbitrary original E[n]
cocycles, the REAL quotient of function lifts
has divisor zero and is therefore a scalar cochain
`thetaObstructionScalar`. Continuity, independence of
arbitrary lift choices and the full H²/Brauer class
are still NOT kernel-proved.

New independent Mathlib-only `ThetaCentralBoundaryPolarization.lean`
calculates the true factor-set cross term, with central
scalar kernel:
`b_(uv)(sigma,tau)=[v_sigma,sigma(u_tau)] b_u b_v`.
A separate original geometric theorem is still required
to identify this scalar commutator with precisely
`W.torsionCoeffWeilPairing n hn` (or its correctly
oriented inverse), using the source
`TauCeti.Isogeny.algebraMap_weilPairing` and Weil
reciprocity. Without that source identity and the
continuous cochain-class construction, the FULL
O'Neil theta polarization and
`Delta_n(delta_n(P))=0` in continuous Brauer H²
remain OPEN as formally verified theorems.

Detailed proof mathematics, immutable source blobs,
the 1,751 exact finite Heisenberg algebra checks and
NOT_RUN facets:
`documentation/mathematics/_support/reviews/bsd-original-geometric-theta-obstruction-kummer-vanishing-polarization-2026-11-02.md`.
This is real geometric progress, not a license to
skip the remaining original source Weil comparison.
No native Noe/CI/scheduler job, new axiom/sorry/admit,
toolchain change or root imports. Preserve full
Weil–Chatelet H² residue, all H⁰ and good-truncation
conditions, real p=2 and noncircular BSD-I/II frontier.


## Theta sign-convention optimization and source-central commutators (2026-11-02)

Two parallel original geometric theta source candidates are currently
present in this adapter:
`TauCetiOriginalGeometricTheta.lean` with
`TauCetiOriginalGeometricThetaGalois.lean` (split, actual
theta `Group` instance), and
`TauCetiGeometricThetaKummerBoundary.lean` (self-contained
theta/Kummer candidate). Both are pinned to ORIGINAL
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Lean v4.36.0-rc1, original Tau Ceti contributors/Apache-2.0.
They share original source mathematics, and NEITHER is
compiled or fresh-kernel accepted. Preserve both as
reviewed candidates until actual source-bound verification;
do not equate two scripts with two independent proofs.

The split source `TauCetiOriginalGeometricTheta.lean`
has been strengthened at blob
`ca46ecb8ec53822df2abb094d99161b146d31c3a`:
its original group-law projection now shows that every
theta-group commutator projects to the identity elliptic
n-torsion point. The pinned ORIGINAL divisor-constant
theorem and the existing scalarLift-centrality then show
the commutator is a genuine central constant function.
This is the specific scalar-kernel hypothesis needed
in both group-theoretic polarization candidates,
without replacing the original Weil pairing by
an abstract symplectic matrix.

The new native Mathlib-only `ThetaSectionOrderCoboundary.lean`
blob `ca27696f48789c448cfee282fc902141fcf791fa`
proves the exact one-cochain
`c_sigma=[u_sigma,v_sigma]` between the forward
`u_sigma v_sigma` and reversed `v_sigma u_sigma`
theta sum lifts. Their actual nonabelian boundaries
differ by `c_sigma sigma(c_tau)c_(sigma*tau)^(-1)`,
the original scalar two-coboundary once the source
Galois action and continuity are supplied. It also
proves invariance of a commutator under independent
central rescaling of its theta lifts.

Use **reversed** `v_sigma u_sigma` as the canonical
consumer of the original ordered
`e_n(a_sigma,sigma b_tau)` continuous cup.
The older forward-order file stays as an explicit
opposite-section consistency check, NOT a rival
Weil-sign theorem. Full comparison and exact
nontrivial-Galois finite Heisenberg diagnostics:
`documentation/mathematics/_support/reviews/bsd-theta-section-order-optimization-2026-11-02.md`.

This optimizes the section-algebra and scalar-choice
frontier ONLY. A continuous original
`Delta_n:H¹(F,E[n])→Br(F)[n]`, the genuine
theta commutator = original Tau Ceti
`W.torsionCoeffWeilPairing` (with source orientation),
and full local Kummer-annihilator duality are still
OPEN as source-typed Lean theorems. The root math
toolchain v4.34.1, original level maps, signed
differentials, full untruncated H² Weil–Châtelet
residue, local good truncation, real p=2, derived
Rlim and global Poitou–Tate remain unchanged.

Parsing NOT_RUN; Lean compilation NOT_RUN; fresh
kernel replay NOT_RUN; full transitive axiom
audit NOT_RUN; isolated upstream adapter build
NOT_RUN. No new axiom/sorry/admit, root imports,
toolchain migration, native Noe/CI or automated
proof acceptance. Git source publication/readback
is separate evidence.


## Genuine theta scalar-to-Brauer H² and local Selmer consumer connection (2026-11-02)

This increment is pinned to ORIGINAL
TauCetiProject/TauCeti `2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
original Tau Ceti contributors, Apache-2.0, Lean v4.36.0-rc1,
while the independent grwtsk/math root remains Lean v4.34.1.
Source review:
`documentation/mathematics/_support/reviews/bsd-theta-brauer-h2-genuine-selmer-connection-audit-2026-11-02.md`.

**One exact reused original coefficient:** Tau Ceti ALREADY defines
`UnitsCoeff F = Additive (SeparableClosure F)ˣ` with a continuous
absolute-Galois action in
`TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean`,
and its `BrauerTorsion.lean` already proves the
original `h2KummerToUnits` injection and exact n-torsion image.
Its `MuNRep.lean` already supplies `muNRepH2Equiv`;
`Brauer/RootsOfUnity.lean` supplies the original
normalized `h2MuEquivZMod`. Therefore the period-index
obstruction does NOT require an invented or parallel
Brauer coefficient type.

NEW native `ThetaCentralFactorCocycle.lean`,
blob `ed190a13bdd48641fcc9a5d72b21ad58df69b89b`,
proves directly from the genuine central extension's group
multiplication that its scalar boundary
`c(σ,τ)` obeys
`c(σ,τ)c(στ,ρ)=σ(c(τ,ρ))c(σ,τρ)`.
The centrality and scalar inclusion are the actual
group-theoretic conditions; no cohomology cocycle law
is assumed as a data field. A strict crossed Kummer
lift forces scalar boundary 1. The existing original
`TauCetiOriginalGeometricTheta.lean` now also defines
`scalarLiftHom` and `scalarLiftHom_injective`,
blob `15b6c7b50ec2b2d5db64693fe596da0effe938c9`,
using actual elliptic rational-function constants.

NEW isolated `TauCetiThetaBrauerH2Transport.lean`,
blob `dd92b230866dc7a4da35ac2313738a1a02d862a6`,
returns the raw ORIGINAL
`thetaObstructionScalar` in the ACTUAL source
`UnitsCoeff F`, and proves its
`Z2`/explicit `H2`/canonical `continuousCohomology 2`
transport under separately named original scalar
**continuity** and **multiplicative cocycle law**.
The file also returns equality of H² classes from the exact
source `d1` and a CONTINUOUS scalar section-change
one-cochain. If the genuine theta Brauer class is killed
by n, its UNIQUE source `H²(mu_n)` preimage follows
from original Tau Ceti `h2KummerToUnits_range`
and `h2KummerToUnits_injective`, and the original
`muNRepH2Equiv`/ `h2MuEquivZMod` yield the
genuine normalized `ZMod n` residue, including
local residue characteristic dividing n. That
n-torsion input has **not** been proved for the
geometric theta class.

NEW native `ThetaToKummerLocalDuality.lean`,
blob `24773e443dc382b3bbab65e263f51f1687d04647`,
composes previously separate
`ThetaKummerIsotropy`,
`LocalAbelianTateCupDescent` and
`LocalKummerAdjointKernel`. It proves the unique
original abelian cup-descended pairing, exact Kummer
connecting-map adjunction and the Kummer image's
exact cup annihilator when the independently required
source theta vanishing/polarization, Kummer exactness,
and abelian Tate **separation** hold. The actual
pinned (E[n]), Weil cup, (H¹(F,E)[n]),
(E(F)/nE(F)) must be used at instantiation.

**True unresolved arithmetic work:** give original
Galois `MulDistribMulAction` on the geometric
function-field theta group and identify its
`FactorData.factor` with the original
`thetaObstructionScalar`; prove the
theta scalar cochain CONTINUOUS and its raw
source action law, full continuous H² independence
of representative, and theta class killed by n;
prove the ORIGINAL geometric theta commutator
equals the original `Isogeny.weilPairing`
(or its correctly oriented inverse); prove
the local abelian duality pairing separates the
real Weil–Châtelet torsion. No source script,
finite Heisenberg test, or synthetic coefficient
substitutes for these geometric and arithmetic inputs.

**Downstream limits:** the genuine original full
local point-cone higher `H²(U_v)=H¹(F,E)` residue
is distinct from the Brauer cohomological H² above.
Only the good truncation feeds local Selmer
conditions. Original p-power transition
compatibility, real p=2 Tate modifications,
outside-S reverse Kummer/unramified equality,
restricted products, global Poitou–Tate,
derived Rlim, regulator to original Néron–Tate
and COMPLEX Hasse–Weil central jet remain OPEN.
Independent exact finite Heisenberg diagnostics:
144,000 scalar factor 2-cocycle equations plus
12,000 strict crossed lifts, seed `20261102`;
not an elliptic or Lean proof.

**Verification:** source proof candidates only.
Parsing NOT_RUN, compilation NOT_RUN, fresh
kernel replay NOT_RUN, axiom audit NOT_RUN,
compatible upstream build NOT_RUN. No new
`sorry`, `axiom`, `admit`; no native
Noe/CI dispatch, root import or toolchain changes.


## Source-exact Mumford theta GroupExtension and genuine Galois scalar factor (2026-11-02)

Pinned source remains The Tau Ceti contributors' immutable
`TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
Apache-2.0, Lean v4.36.0-rc1. Native grwtsk/math
Lean v4.34.1 and umbrella imports remain unchanged.
New detailed review:
`documentation/mathematics/_support/reviews/bsd-original-theta-galois-action-factor-set-2026-11-02.md`.

The actual original elliptic rational-function theta group
`ThetaLift (E/Fsep,n)` has now been strengthened with
`ThetaLift.mul_inv_function_of_point_eq`, showing
`(x*y^-1).function=x.function/y.function`
when `x.point=y.point`, and
`ThetaLift.existsUnique_scalar_mul_eq_of_point_eq`,
showing its true fibre over one n-torsion point is
a torsor under the ORIGINAL constants `Fsepˣ`.
The source `TauCetiOriginalGeometricTheta.lean`
blob is `74c12f32bed4567731183736a0f2b748e86ddecc`.
No arbitrary scalar/Weil pairing is supplied.

New `TauCetiThetaGroupExtension.lean`, blob
`98e1b2047b82fa2970d315a2f520675f3a654456`,
packages the ACTUAL geometric theta group as
`GroupExtension (Fsepˣ) Theta (Multiplicative E[n])`.
The original rational functions prove faithful scalar
kernel, exactness and projection surjectivity.
The pinned Tau Ceti `GroupExtension.factorSet`,
`factorSetToGroupExtensionEquiv`,
`normalizeSection`,
`isMulCocycle₂_factorSetFun`,
`cohomologyClass_factorSet_eq`, and
`trivialMulDistribMulAction` then supply
an internal normalized original theta factor set,
its 2-cocycle and independence of normalized sections.
This is an H² of **the point group E[n]**, not
the original Galois/Brauer H² of F.

New `TauCetiThetaGaloisGroupAction.lean`, blob
`1e0c4c0eac356a0ef4103f1c5711f41ae57d063c`,
gives the actual Galois action on the real theta
group preserving its multiplication, identity
and composition. It uses exact original Tau Ceti
point and function field Galois actions and
`functionFieldGaloisAction_translation` with
the original minus-translation convention.
The scalar inclusion is proved equivariant with
the true action on `(Fsep)ˣ`, not a proxy.

New `TauCetiThetaGaloisScalarFactor.lean`, blob
`327d67868b3ce312dc480987856b16385431dc80`,
proves source-candidate equality of the PREVIOUS real
`thetaObstructionScalar a σ τ`, chosen from its
elliptic rational-function quotient, with the
actual original theta Galois group boundary
`uσ (σuτ) uστ^-1`. Faithful source scalar
inclusion makes this factor UNIQUE; the group
action and centrality derive its multiplicative
2-cocycle law WITHOUT assuming a scalar factor
law as a separate arithmetic source. Consequently
the amended `TauCetiThetaBrauerH2Transport.lean`,
blob `4457197b2c590dc8c296f7714d718d53a7c72fae`,
now has `originalThetaBrauerH2_of_continuous`.
Its ORIGINAL `UnitsCoeff F` canonical H²
requires the source genuine theta scalar
CONTINUITY only. Its normalized `ZMod n`
return still requires n-torsion of this
actual Brauer class (via pinned
`h2KummerToUnits_range` and
`muNRepH2Equiv` / `h2MuEquivZMod`).

**Unclosed arithmetic:** prove continuity/finite
Galois descent of the theta scalar cochain
and its scalar section-change 1-cochain,
cohomological independence of representatives
in GALOIS H², n-torsion of the REAL theta
Brauer class, and the original geometric theta
commutator equal to pinned
`Isogeny.weilPairing` with correct sign.
Do NOT identify internal point-group H²
with Galois Brauer H². Completing those
does NOT automatically prove local abelian
Tate separation, good truncation/p-power
Selmer duality, real p=2 corrections,
global Poitou–Tate, Néron–Tate regulators
or a COMPLEX Hasse–Weil central leading jet.
The full untruncated local point Kummer
cone retains the true nonzero higher
`H²(U_v)=H¹(F,E)` Weil–Châtelet residue.

**All new Lean scripts remain source proof candidates:**
parsing NOT_RUN, compilation NOT_RUN, fresh
kernel replay NOT_RUN, full transitive axiom
audit NOT_RUN, compatible Tau Ceti adapter
build NOT_RUN. Original source theorem
reuse is not a local kernel receipt.
No `sorry`, `admit`, new `axiom`, root
import/toolchain migration or native Noe/CI dispatch.
Independent exact synthetic C₂-Heisenberg checks
covered 160,000 2-cocycle triples and 40,000
scalar-fibre instances; these validate the
group identities only, not actual elliptic
Galois geometry or Lean proofs.


## Finite selected-theta-function Galois continuity instead of assumed scalar cochain continuity (2026-11-02)

Pinned original Tau Ceti source:
`TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b`;
original Tau Ceti contributors, Apache-2.0,
Lean v4.36.0-rc1. Native math Lean v4.34.1 and
root imports/pins remain unchanged.

The previous source `TauCetiThetaBrauerH2Transport.lean`
already obtains the ACTUAL theta scalar Galois
2-cocycle law from `TauCetiThetaGaloisScalarFactor.lean`,
using the original elliptic rational-function theta
group and faithful original constant field.
It still asks for `ThetaScalarContinuous W n a`
before that raw scalar becomes a genuine
`Z2(G_F,UnitsCoeff F)` class.

NEW native pure Mathlib
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/CentralScalarFiniteOrbitContinuity.lean`,
blob `9d74a4739947905598596fb079a6d5f872a05123`,
proves that the raw factor scalar
`c(σ,τ)` is continuous as soon as
(a) the original discrete E[n]-cochain a is continuous,
(b) the selected theta lifts `s(t)` have continuous
individual Galois orbit maps, and (c) their true
central scalar inclusion is injective and satisfies
the exact original group-boundary equation.
It proves joint continuity for a family indexed
by a DISCRETE coefficient set (no global continuous
theta group action is required), then reflects
continuity through the faithful discrete scalar
inclusion. This is PURE topology and source
group algebra, not elliptic finite descent.

NEW isolated original Tau Ceti-version
`TauCetiThetaFiniteOrbitTopology.lean`,
blob `bd082f21655bc66ba35fc1260e785b28100a7145`,
has a separate compatible Mathlib source edition
of the SAME pure topology proof, without importing
the native v4.34.1 GRWTSK file or claiming a
second independent mathematical argument.
NEW isolated source-specific
`TauCetiThetaSelectedLiftContinuity.lean`,
blob `660f1f8c0564b98ae4474c204f28ac64a1a4a9b2`,
uses original `W.TorsionCoeff n`,
`W.geometricLift`, original
`scalarLift_originalThetaObstruction_eq_groupBoundary`,
the original `mem_Z1_iff` and
`W.PointCoeff.instContinuousSMul` to derive
`ThetaScalarContinuous W n a` from the
ORIGINAL selected theta function orbit
condition. Because E[n] is finite for n≠0,
that condition is a FINITE collection of
real elliptic rational-function Galois
orbit continuity facts.

The source further reduces the selected
theta lift orbit condition to the original
FUNCTION-field orbit
`σ↦W.functionFieldGaloisAction σ f_t`;
the point coordinate is automatically
continuous from pinned Tau Ceti E[n] theory.
The target `originalThetaBrauerH2_of_selectedLiftOrbits`
then constructs the original UnitsCoeff H²,
and `originalThetaNormalizedInvariant_of_functionOrbits`
returns the actual local ZMod n invariant
under separately proved Brauer n-torsion.

**Precise LAST finite-descent Lean supplier:**
For any selected actual rational function
`f_t ∈ Fsep(E)ˣ`, prove its Galois orbit
is continuous with the DISCRETE topology.
The mathematical proof uses the original
Weierstrass `{1,y}` basis over `Fsep(x)`
(`FunctionField/Basis.lean`, blob
`8b3b13b8dc9ed5cfa1bb065a41844cdb39339314`),
original `functionFieldGaloisAction_basis_repr`
(`FunctionField/Galois/FixedField.lean`,
blob `e355d98d7f0bf6b5adecefbc4b1b94398d362cae`),
original RatFunc numerator/denominator coefficient
Galois transport (`RatFunc/Galois.lean`,
blob `57f4515fca9fc79e977f188f21c0a3370ee0f816`),
and `IsIntegral.isLocallyConstant_apply` of
`FieldTheory/KrullTopology.lean`, blob
`59ffeadd7b64177629d97dcdde28c4d3de3b0e77`.
Every selected f_t depends on finitely many
separable-algebraic coefficients, whose
Galois stabilizer intersection is open.
This elementary mathematical proof does
NOT substitute for its exact compatible
Lean integration, which remains OPEN.

**Topology hostile check:** A discrete continuous
Galois coefficient action does NOT make
arbitrary Galois-to-coefficient cochains
continuous. E.g. the Boolean-valued map
on Cantor profinite `(Z/2)^N` detecting
infinitely many nonzero coordinates is
discontinuous despite a trivial continuous
action. The selected function-field orbit
source fact cannot be erased.

**Still OPEN:** actual theta Brauer class
n-torsion, exact geometric theta commutator
equals source original Weil e_n with signs,
local abelian Tate separation, real p=2,
point-corrected local-cone nonzero
Weil–Châtelet `H²(U_v)`, global
restricted product/derived Rlim/Poitou–Tate,
Néron–Tate regulator and COMPLEX L-jet.
The group factor, H² continuity and
Weil–Châtelet cone H² are distinct objects.
No BSD or RH claim follows from these
pure algebra/topology connections.

Detailed mathematical source review:
`documentation/mathematics/_support/reviews/bsd-theta-finite-selected-lift-continuity-2026-11-02.md`.
SOURCE_PROOF_CANDIDATE; parsing NOT_RUN,
Lean compilation NOT_RUN, fresh kernel
replay NOT_RUN, full axiom audit NOT_RUN,
compatible Tau Ceti v4.36.0-rc1 import
NOT_RUN; no native Noe/CI dispatch,
toolchain change or new axiom/sorry/admit.


## Genuine elliptic function-field Galois finite descent closes the theta-scalar continuity premise (2026-11-02)

**Pinned original** TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors (Apache-2.0), Lean v4.36.0-rc1.
Maintained grwtsk/math Lean v4.34.1 root and its imports,
dependency pins and toolchain remain untouched. This is an
ISOLATED Tau Ceti source proof candidate, not a compiled root
theorem or authorization for a native Noe verification job.

NEW `TauCetiThetaFunctionFieldOrbitContinuous.lean`,
Git blob `6899d111f7bcb86ad2756b316d29214704fa230d`,
connects the ORIGINAL K(E) rational-function field over
K=SeparableClosure F to Krull-topology Galois continuity,
using only pinned original source mathematics:

1. `polynomialOrbit_isLocallyConstant`: each
   coefficient of p∈K[X] has locally constant
   Galois orbit by pinned
   `IsIntegral.isLocallyConstant_apply`;
   finite `Polynomial.support` gives a common
   neighborhood for every nonzero coefficient;
2. `ratFuncOrbit_isLocallyConstant`: ORIGINAL
   `RatFunc.num_mapRingHom`, `denom_mapRingHom`
   and `num_div_denom` identify the true
   Galois orbit from those two finite polynomials;
3. `originalFunctionFieldOrbit_isLocallyConstant`:
   the original `Affine.FunctionField.basis`
   `{1,y}` over `RatFunc K` has exactly TWO
   coordinates and the original
   `functionFieldGaloisAction_basis_repr`
   transports their genuine Galois actions;
   injectivity of `b.repr` reconstructs K(E);
4. `originalFunctionFieldUnitsOrbit_isLocallyConstant`:
   source `Units.map` and `Units.ext` lift
   that result to ACTUAL nonzero rational functions;
5. `originalSelectedThetaFunctionOrbitsContinuous`
   discharges the formerly unproved source
   `SelectedThetaFunctionOrbitsContinuous W n`
   for the ORIGINAL selected `W.TorsionCoeff n`
   and actual theta functions `geometricLift W n t`;
6. `originalThetaScalarContinuous` and
   `originalThetaBrauerH2` therefore return
   the ORIGINAL theta scalar continuous
   2-cocycle and genuine
   `continuousCohomology 2 (UnitsCoeff F)`
   class at each true E[n] cocycle WITHOUT
   an independently assumed scalar-continuity
   or 2-cocycle-law premise. The group-law
   identity came from the earlier genuine theta
   group and source Galois action;
7. `originalThetaNormalizedInvariant_of_nTorsion`
   returns to pinned `h2MuEquivZMod` via
   the true original mu_n-to-UnitsCoeff
   identification, under explicit n-torsion
   of the actual theta Brauer class.

**Mathematical subtlety:** K(E) is transcendental
over F. Do NOT assert that an arbitrary function
f∈K(E) is integral over F. ONLY its finitely
many normalized polynomial coefficients in K
are algebraic over F. The finite-intersection
argument proves open Galois stabilizers for
each original function. This proves a real
and noncircular topological statement without
assuming the desired Brauer H² continuity.

Exact pinned original source files:
`TauCeti/FieldTheory/KrullTopology.lean`,
blob `59ffeadd7b64177629d97dcdde28c4d3de3b0e77`;
`TauCeti/FieldTheory/RatFunc/NumDenom.lean`,
blob `54f63a529c2b72e0fb90c58f6dfdc3fc030d1aac`;
`TauCeti/FieldTheory/RatFunc/Galois.lean`,
blob `57f4515fca9fc79e977f188f21c0a3370ee0f816`;
`TauCeti/.../Affine/FunctionField/Basis.lean`,
blob `8b3b13b8dc9ed5cfa1bb065a41844cdb39339314`;
`TauCeti/.../Affine/FunctionField/Galois/FixedField.lean`,
blob `e355d98d7f0bf6b5adecefbc4b1b94398d362cae`.
All imports are the originals or earlier isolated adapters;
no incompatible native GRWTSK root source import is added.

**Still OPEN and not bypassed:** kernel checking of the
actual source proof (compilation currently NOT_RUN);
cohomological independence of the original theta
H² class under E[n] cocycle representative change;
n-torsion of the true theta Brauer class
(with even-n subtleties);
original rational-function theta commutator equals
Tau Ceti's genuine Weil pairing with exact sign;
local abelian Tate separation; full higher
Weil–Châtelet `H²(U_v)=H¹(F,E)` residue and good
truncation; real p=2 correction; genuine p-power
transition, outside-S reverse local condition,
restricted product, compact derived Rlim/Poitou–Tate,
Néron–Tate height regulator and COMPLEX central
Hasse–Weil L-jet. The theta Brauer H² is NOT
the local point-cone H².

Full 267-line review:
`documentation/mathematics/_support/reviews/bsd-theta-function-field-galois-orbits-2026-11-02.md`,
blob `3c071b7178f5db812a4cc7904d3aa90f88e6bbe9`.
SOURCE_PROOF_CANDIDATE; parsing NOT_RUN,
compatible Lean compilation NOT_RUN,
fresh kernel replay NOT_RUN, transitive
axiom audit NOT_RUN. Static source readback
is NOT mathematical kernel acceptance.
No new `sorry`, `admit`, `axiom`, native Noe/CI
dispatch, new toolchain or root import.


## Correction: discrete theta topology, reuse the existing finite-orbit theorem, common open stabilizer (2026-11-02)

A source audit found **five** mistaken topology declarations in the
two previously published finite-orbit adapters:
four `TopologicalSpace := ⊥` in
`TauCetiThetaSelectedLiftContinuity.lean` (historical
blob `660f1f8c0564b98ae4474c204f28ac64a1a4a9b2`),
and one `TopologicalSpace := ⊥` in the concurrent
`TauCetiThetaFunctionFieldOrbitContinuous.lean` (historical
blob `6899d111f7bcb86ad2756b316d29214704fa230d`).
**These were mathematically invalid discrete-topology
claims:** in Lean, `⊥` is the indiscrete topology and
`⊤` is discrete. This was not a verified compiler
result: all previous source files remained uncompiled.

The corrected source blobs are respectively
`34fb80d3c6efc400c5878a72620ffce138d1c965`
and `b4cea5bac589bd9a46d926515c0281779c896db0`.
All five formerly incorrect local topologies are
now `⊤`; the ORIGINAL Galois Krull topology
has NOT been changed.

The existing genuine finite-coefficient proof,
`TauCetiThetaFunctionFieldOrbitContinuous.lean`,
was reused and strengthened rather than publishing
a competing duplicate. Its original Tau Ceti
`IsIntegral.isLocallyConstant_apply`, original
polynomial finite-support/`RatFunc.num_mapRingHom`/
`denom_mapRingHom`, original elliptic
`W.functionFieldGaloisAction_basis_repr`
on `{1,y}`, and original units Galois action
are retained. The new
`originalSelectedThetaFunctions_commonOpenStabilizer`
intersects the genuine OPEN Krull stabilizers
of ALL original finite `W.TorsionCoeff n`
selected theta-function units. It is a
common-open-fixing-set theorem, not an
invented finite field, artificial theta
representation or chosen Brauer scalar.

The existing `TauCetiThetaFiniteOrbitTopology.lean`
is the isolated compatible pure-topology
consumer and does not change the math root.
The corrected selected-lift adapter continues
to use `originalThetaScalar_continuous_of_functionOrbits`
to construct the original `UnitsCoeff F`
continuous theta cocycle, with original
Brauer n-torsion, geometric theta-commutator
equals Weil pairing, Galois H¹ representative
independence and local abelian Tate
separation still distinct OPEN arithmetic
proof obligations.

Original upstream pin
`TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1, original contributors,
Apache-2.0) remains unchanged from the
native grwtsk/math Lean v4.34.1 root.
The updated historical reviews are
`bsd-theta-finite-selected-lift-continuity-2026-11-02.md`
and `bsd-theta-function-field-galois-orbits-2026-11-02.md`.
No duplicate orbit module is installed.

**Verification:** all source claims remain
SOURCE_PROOF_CANDIDATE. Parsing NOT_RUN;
compatible upstream Lean compilation NOT_RUN;
fresh kernel replay NOT_RUN; transitive
axiom audit NOT_RUN. No new `sorry/axiom/admit`,
no root imports/toolchain migration and no
native Noe/CI dispatch. The higher local
Weil–Châtelet H² residue, real p=2
and all derived Selmer/BSD gates are preserved.


## H¹ representative-independent theta obstruction and real μ_n commutator (2026-11-02)

Original immutable source TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(The Tau Ceti contributors, Apache-2.0,
Lean v4.36.0-rc1) remains isolated from
the native grwtsk/math Lean v4.34.1 root.

The NEW native `ThetaHOneGaugeBoundary.lean`
(blob `7927496abb8ec9e6364500dcf5c8abdd7814a36a`)
derives in ORIGINAL noncommutative group algebra the
exact 0-cochain gauge
`u'_σ=v^-1 u_σ σv`, boundary
`b_u'=v^-1 b_u v`, and the central
scalar change `b_u=δk b_b`.
The result does NOT assume theta H¹
representative invariance as a theorem field.

NEW isolated
`TauCetiThetaHOneRepresentativeGauge.lean`,
blob `faf11448966dcbe5e8c94faf78db4804f7c146fe`,
uses the original `H1pi_eq_iff` and
`B1=(d0).range` to construct a TRUE
`t:W.TorsionCoeff n` witnessing
`b=a+d0 t`. The original rational
theta lift of t gauges the selected
source lifts of a; their actual
point projections agree with those of
b, so the already-proved original
`ThetaLift.existsUnique_scalar_mul_eq_of_point_eq`
constructs a UNIQUE `k_σ∈(Fsep)ˣ`.
Its continuity is proved from the
previous selected original function-field
orbit continuity, faithful scalar
inclusion and true `⊤` discrete
coefficient topology, not assumed.

NEW isolated
`TauCetiThetaHOneClassInvariant.lean`,
blob `cb1aab31a9ee7c4912bc64bc42b2f4736402d7a1`,
derives the exact pointwise
`c_a(σ,τ)=kσ σ(kτ) kστ^-1 c_b(σ,τ)`,
consumes pinned `mem_B2_iff'` and
`H2pi_eq_iff`, and defines a
representative-independent SET MAP
`H¹(F,E[n])→H²(F,(Fsep)ˣ)`.
The period-index map is NOT
asserted additive: its polarization
is genuinely quadratic.

NEW native `CentralCommutatorNTorsion.lean`,
blob `7187ef959b18c596638dd235a814efa74e9a21e4`,
and isolated
`TauCetiThetaCommutatorRootsOfUnity.lean`,
blob `40afe0f0ecdc691db1bcc84280ad0306834498f7`,
show from the ACTUAL theta group and
pinned `Commute.commutatorElement_pow_left`
that every source commutator is killed
by n. The source
`thetaCommutatorScalar_spec`
makes its true rational-function
scalar an element of the ORIGINAL
`rootsOfUnity n F`, without
inventing a perfect symplectic
pairing or numerical rank.

NEW isolated `TauCetiThetaOriginalWeilSignReturn.lean`,
blob `2c288ca159bd56adf0af21690b654349b25fb0b4`,
connects the actual root-of-unity
theta commutator to the pinned
`Isogeny.algebraMap_weilPairing`.
It has TWO exact separate conditional
returns: the original rational
function equality `C(S,T)=tau_S(g_T)/g_T`
gives `e_n(S,T)`; its reciprocal
gives `e_n(S,T)^-1`.
The geometric source
`div(g_T)=[n]^*([T]-[O])`
is preserved. **The crucial divisor/
isogeny function-ratio identity itself
remains an OPEN source proof**, not
an axiom or a chosen sign.
The CREMONA/Fisher classical theta
pairing has source sign caveats;
no inverse can be suppressed.

Full reviewed source calculation, exact
signs, 240,000 gauge/section-change
finite group tests and 44,000
commutator n-th-root tests:
`documentation/mathematics/_support/reviews/bsd-theta-h1-representative-invariance-and-exact-weil-sign-2026-11-02.md`.

**Acceptance:** All new Lean sources are
SOURCE_PROOF_CANDIDATE. Parsing NOT_RUN,
compatible Tau Ceti compile NOT_RUN,
native root compile NOT_RUN, fresh
kernel replay NOT_RUN, transitive axiom
audit NOT_RUN. A Git blob and exact
synthetic algebra check do not verify
Lean. The original theta n-torsion
Brauer H², local abelian Tate separation,
corrected higher local point-cone
Weil–Châtelet residue, good truncation,
p-power/real p=2/restricted/global
Poitou–Tate, and COMPLEX BSD
central jet remain separate OPEN goals.
No new `sorry/axiom/admit`, root
toolchain or Mathlib migration,
native Noe/CI or scheduled job.


## Actual theta commutator is alternating biadditive: reduce original Weil comparison to ONE basis-function identity (2026-11-02)

Immutable original mathematics and source:
`TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b`,
The Tau Ceti contributors (Apache-2.0),
Lean v4.36.0-rc1. Independent grwtsk/math
root Lean v4.34.1 and original toolchain/
Mathlib pins are unchanged.

**NEW genuine original arithmetic connection.**
Isolated `TauCetiThetaCommutatorBilinear.lean`,
blob `95511d1268c69993d424b43ecfb9d3cd10e542fa`,
uses the ACTUAL rational-function
`ThetaLift` group and its faithfully
central original constant-field scalar
kernel. Central-group commutator algebra
gives multiplication in both variables,
trivial diagonal and independence under
real theta lift rescaling. Together with
the previously proved original
`thetaCommutatorInMuN`, this constructs
`thetaPairingAddHom`, an ALTERNATING
BIADDITIVE map on ORIGINAL elliptic
`E[n]` with values in the same genuine
`Additive (rootsOfUnity n F)` used
by pinned `TauCeti.Isogeny.weilPairing`.
No artificially chosen symplectic Gram
form or perfectness assumption is added.

**Rank-two source detector.** Native
`RankTwoAlternatingPairingDetector.lean`,
blob `1adc7527f48d2b3fb25a703adf6a1e8114dce3a3`,
proves two alternating biadditive maps
on an abelian group generated by u,v
are equal exactly when their values at
ONE ORDERED pair (u,v) agree. The
isolated compatible Tau Ceti source
`TauCetiThetaWeilRankTwoCriterion.lean`,
blob `dc924326cc165d4ddd7fb8e3ad5d6ec98e3e5dd3`,
instantiates this using the PINNED
`WeierstrassCurve.torsion_addEquiv_prod`
and `nonempty_basis_torsionBy`,
`Torsion/Structure.lean` blob
`843bb6ef86790be5c4728c71655897117ee6a72d`.
Thus `thetaPairingAddHom=Isogeny.weilPairing`
on ALL original E[n] is equivalent to a
single oriented genuine torsion basis
value comparison. Its reciprocal sign
branch corresponds to NEGATIVE source
Weil pairing and must not be suppressed.

**ONE original [n]-pullback function remains.**
`TauCetiThetaWeilOneFunctionGate.lean`,
blob `8e6ad4b2400e28aff21935467bac454b8901a4a1`,
uses pinned
`Isogeny.exists_principal_eq_weilPairingDivisor`
in `MulByInt/DivisorPullback.lean`,
blob `720ce51d8b39611ef3fece06386e95a6f2d3160f`,
to construct an ACTUAL original
`g_Q` with
`div(g_Q)=[n]^*((Q)-(O))`
at the chosen second basis point.
The ONLY remaining original
basis-evaluation geometric identity is

`f_P·tau_-P(f_Q)/(f_Q·tau_-Q(f_P))
    = tau_P(g_Q)/g_Q`.

The original theta functions f_P,f_Q
already satisfy
`div(f_T)=n((T)-(O))`.
A proof of this ONE genuine
rational-function equality would
imply theta commutator = ORIGINAL
Weil pairing on every torsion
point via the above SOURCE
bilinearity and rank-two theorem.
**This equality remains UNPROVED
in pinned Lean.** Existence of
g_Q is established upstream,
but the final theta/isogeny
divisor comparison and its
sign are not manufactured.

External primary math comparison:
Silverman, *The Arithmetic of Elliptic
Curves* III.8; Mumford (1966)
theta group; Cremona–Fisher–
O'Neil–Simon–Stoll's explicit
n-descent, Definition 1.25;
Antieau–Auel (2021),
Proposition 2.10/Example 2.11.
These do NOT establish the
exact pinned Lean implementation
or eliminate the remaining
orientation-sensitive source proof.

Source review:
`documentation/mathematics/_support/reviews/bsd-theta-weil-one-basis-geometric-certificate-2026-11-02.md`.
Independent exact integer group tests:
200,000 central commutator
multiplicativity/alternation/
lift invariance cases and
215,050 rank-two alternating
comparison cases. These are
NOT elliptic function-field,
Lean, or BSD proofs.

**Verification:** SOURCE_PROOF_CANDIDATE;
Lean parsing NOT_RUN, compatible
Tau Ceti compilation NOT_RUN,
native root compile NOT_RUN,
fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN.
No new sorry/admit/axiom,
root imports, toolchain changes,
native Noe/CI or scheduled
verification. Preserve original
H¹ representative invariance
candidate, Brauer n-torsion
frontier, real p=2, higher
local Weil–Châtelet point
cone H², good truncation,
p-power/adelic derived Selmer,
Poitou–Tate and COMPLEX BSD
central leading jet gates.
