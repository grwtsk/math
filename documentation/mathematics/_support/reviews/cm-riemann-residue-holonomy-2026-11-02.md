# Source CM trace polarization → complete U(1) residue-channel holonomy

**Attribution:** grwtsk contributors. Formalization assistance: OpenAI. **Status:** SOURCE_PROOF_CANDIDATE; Lean compilation, expected types, fresh kernel and transitive axiom audit NOT_RUN.

## Actual mathematical source chain

- `CMNumberFieldIndex.lean` (blob `962205afa84cdbdb100530d2ebd182ad25a4bda5`) gives the Galois CM field complex conjugation and its central involution.
- `CMTracePolarization.lean` (blob `9b0c79e93d6c704c61b2f09131eb2d87cb21f978`) gives the rational trace form Tr_(E/Q)(ξ x conj(y)), alternation, skewness and rational nondegeneracy for anti-invariant ξ.
- `CMRealRescaling.lean` (blob `868fea2067bfdb837732d762aa64048c7d64a0f3`) obtains a sign-controlled ξ through the maximal totally real subfield, for a chosen odd CM sign row.
- `CMLatticePolarization.lean` (blob `65ea0e820aea9117366af4f552b73255d19a19b2`) uses an actual rational field basis, its full integer-coordinate lattice, and ONE denominator-clearing scale to obtain an integer alternating pairing B.
- `CMRiemannForm.lean` (blob `34da1cb7da4aec22454575b834f1ff5126e58b17`) gives the real fixed locus, J-invariance, strict positivity E(Jz,z)>0 for nonzero real z, and integrality of the scaled lattice Riemann form. This is **pre-Riemann data, not a proof of a line bundle on the original CM variety**.
- `CMKaehlerZQResidueLinks.lean` (blob `a8a80c3ca5e6e9783c59066e00b7f964eab8f0cd`) supplies original parity/additive residue U(1) gauge transformations and triangle holonomy. `CMKaehlerZQGaugeFullReturn.lean` (blob `03b18190dba9e8f29c07ba26761178c9d6125df0`) returns exact original signed pickupEnergy with all mixed contributions. `CMKaehlerZQCompleteLedger.lean` retains FULL original integer labels before noninjective aggregation.

## Exact new construction and analytic argument

The new candidate `GRWTSK/Geometry/CMRiemannResidueHolonomy.lean` uses the genuine integer pairing B_X(a,b)=integralPairing E X a b and derives B_X(b,a)=-B_X(a,b) by returning to the original rational trace form, with its denominator-clearing scale. It also equates B_X, cast to R, to the correctly scaled source Riemann form on real CM lattice coordinates.

For every complete parity/additive sector i in Fin 2 × ZMod(d*d), an **externally specified** `sites i` records its original CM integer-lattice location. The existing sources do not provide a canonical map from Möbius residues or detector events to these geometric CM sites, so the assignment is not presented as a theorem. Define U_ij=(-1)^B_X(sites_i,sites_j). Then |U_ij|=1, U_ii=1, U_ij U_ji=1, and the EXACT oriented triangle holonomy is

`H_ijk=(-1)^[B_X(site_i,site_j)+B_X(site_j,site_k)+B_X(site_k,site_i)]`.

Every U(1) site gauge multiplies U_ij by g_i g_j⁻¹ and cancels around the triangle. If that displayed integer exponent is 1, H_ijk=-1, so no gauge transformation turns the configuration into the flat link field. Rational nondegeneracy does **not** automatically supply an odd exponent: a matrix 2B has the same rational nondegeneracy but only trivial mod-2 holonomy. The phase is a **constructed parity reduction of actual CM trace data**, not a geometric Chern connection, Appell–Humbert factor of automorphy, magnetic field strength, or physical gauge Hamiltonian.

The complete source and contragredient detector remain unchanged, including both parities, nonunit channels, winding, squareful zero symbols, and all mixed signed products before squaring. Nothing in the new link identity estimates the original signed Möbius all-positive-rate energy.

## Different meanings of Kähler

For a finite separable CM field extension E/ℚ, the **universal algebraic differential module** Ω_(E/ℚ) is zero by the pinned Mathlib `Algebra.FormallyUnramified.of_isSeparable` and `FormallyUnramified.subsingleton_kaehlerDifferential`. The earlier Z→Q algebraic differential graph remains independent; Kähler differentials of the field are not the nonzero geometric (1,1)-polarization on its complex torus. Equating these objects would incorrectly imply a physical bridge.

## Independent examples, hostile controls, and review

An exact-rational example uses E=ℚ(i), ξ=-i/2, lattice Z[i]. For x=(a,b), y=(c,d), B(x,y)=Tr(ξ x conj(y))=bc-ad, J(a,b)=(-b,a), and B(Jx,x)=a²+b²>0 for x≠0. The triangle of sites 0,1,i has exponent -1, hence holonomy -1. Under exact Gaussian U(1) phases {1,-1,i,-i}, triangle holonomy is invariant. The independent reference passed **27,810 exact finite assertions**, including all tested residue sectors d=1..6, and the even-form counterexample. These are not Lean compilation or an independent proof of the general source theorem.

The *primary analytic argument* is rational trace skewness + integer lattice denominator clearing + unit-complex phase algebra + sourced residue gauge cancellation. There is no genuinely separate general analytic proof; the ℚ(i) regression only cross-checks selected instances. The required **consumer** is a future actual-CM-variety Appell–Humbert/Chern line bundle with explicit path-ordered parallel transport and a theorem identifying the resulting curvature/holonomy with this selected mod-2 source. No such consumer is assumed to exist.

## Source pins and acceptance

Current publication source: grwtsk/math main, pinned parent to be recorded by GitHub readback; Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The main branch has concurrent updates, so all publication claims require source-blob readback and a leased fast-forward. No existing files, toolchains, root imports, runners, or provider source code should be modified.

Unresolved: actual CM abelian-variety realization; canonical line-bundle Chern class; physical source-to-residue site assignment; source derived gauge field/curvature; CERN observable and fit; all-rate Möbius cancellation; periodic Schwartz-to-Lp smoothing; Lean expected types and complete kernel/axiom audit. The new phase is nontrivial only with its displayed odd witness, not as a universal CM-field consequence.
