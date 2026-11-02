# Möbius-band packing: exact gauge holonomy, countability, and the RH boundary

Date: 2026-11-02.
Status: SOURCE_BOUND_REVIEW; LEAN_CANDIDATE_NOT_RUN; FROLKINA_MELIKHOV_CLOSURE_OPEN; RH_ESTIMATE_OPEN.

## The mathematical claim in the Quanta article

Evelyn Lamb, "Möbius Strips Defy a Link With Infinity" (Quanta, February 20, 2019), describes Olga Frolkina's 2018 theorem: an uncountable collection of pairwise disjoint **topologically embedded** Möbius bands cannot fit in three-dimensional Euclidean space, even allowing wild embeddings. The primary reference is Frolkina, "Pairwise disjoint Moebius bands in space," J. Knot Theory Ram. 27 (2018), 1842005, arXiv:2212.02983, Proposition 3.2.

Sergey A. Melikhov, "A note on O. Frolkina's paper," arXiv:1810.04089v2, Theorem 1, extends the obstruction to any nonorientable triangulable (n-1)-manifold (possibly with boundary) embedded pairwise disjointly into R^n. These are substantive existing topological theorems, not consequences of Kakeya or of the number-theoretic Möbius function.

Sources:
- https://www.quantamagazine.org/mobius-strips-defy-a-link-with-infinity-20190220/
- https://arxiv.org/html/2212.02983
- https://arxiv.org/html/1810.04089v2

## The source-bound finite gauge result

For a cyclic chain of triangulated face orientations, let the orientation transition on edge i be tau_i in Z/2. For a local choice of frame g_i in Z/2, the transported edge is tau_i^g = tau_i + g_i - g_(i+1). Telescoping gives

  H(tau^g) = H(tau) + g_0 - g_n,  where H(tau) = sum_(i=0)^(n-1) tau_i.

For a *closed* gauge g_n = g_0, H(tau^g)=H(tau). If the source orientation-reversing loop has H(tau)=1 then no closed gauge makes all its edge transitions zero. This is the finite parity model for nontrivial first Stiefel–Whitney class w_1(M).

The new Lean proof candidate at commit 7d72eb2d5455bceffd83503ac34212a19bcd13c7 is

https://github.com/grwtsk/math/blob/7d72eb2d5455bceffd83503ac34212a19bcd13c7/GRWTSK/AlgebraicTopology/MoebiusBandGaugePacking.lean

It defines parityHolonomy and transportEdge and provides theorems transport_holonomy_boundary, closed_holonomy_invariant, parity_one_cannot_be_gauged_away, canonical_half_twist_holonomy, canonical_half_twist_no_global_frame, and countable_of_countable_isolating_tests.

The last result is an explicit **conditional countability port**: a family of maps with an isolating test from a countable basis for each member has a natural injection of its index type into Nat. The test-isolation premise is NOT deduced from ordinary pairwise disjointness. It is exactly where nontrivial topological work is required.

## What the wild-embedding proof additionally needs

Melikhov's proof has distinct analytic/topological inputs that the new file does not supply:

1. The continuous-map space C(M,R^n) on compact metrizable M is separable. An uncountable disjoint family gives distinct embeddings converging uniformly to another member, leading to an embedding M x N^+ in R^n.
2. Melikhov Lemma 3 yields a Z/2-equivariant map from the deleted product of M x I to the antipodal sphere S^(n-1).
3. For a suitable nonorientable smooth n-manifold N=M x I, the tautological class c on the projectivized tangent bundle P(TN) satisfies the Stiefel–Whitney relation. Nonzero w_1(N) yields c^n != 0.
4. The equivariant sphere map would instead pull c back from the fundamental class d of real projective space RP^(n-1), where d^n = 0, forcing c^n = 0, a contradiction.

Required Lean work: an actual compact Möbius-band model and its orientation class; the second-countable continuous-map-space basis; deleted-product equivariant homotopy; projective tangent bundle, Stiefel–Whitney classes, and cup-power contradiction. No part of this bridge is added as an axiom or assumed as an unconditional Lean theorem.

## Connection to the existing Möbius/elliptic/RH programme

Three mathematical meanings must remain distinct:
- Topological Möbius band: nonorientable surface with nontrivial Z/2 holonomy.
- Fractional-linear Möbius transformation: an invertible conformal gauge, preserving topology and disjointness on a suitable chart.
- Arithmetic Möbius function mu(n): coefficients of the original signed energy.

An invertible ambient geometric gauge cannot change the Möbius band's nonorientability or its packing obstruction. The complex elliptic quotient U_g/(g Lambda g^-1) is an **orientable** complex torus with no boundary, so it cannot be homeomorphic to the Möbius band. A proposed bridge requires a distinct boundary or orientation-double-cover interface; the existing projective elliptic residue port preserves finite-field point counts, not the band's topological orientation parity.

The Frolkina–Melikhov theorem is qualitative, excluding **uncountably many** pairwise disjoint copies. It supplies no quantitative bound on arbitrary finite packings in unbounded R^3: arbitrarily many disjoint translates, and even a countable family, exist. A family of 2^j tubes for each natural j is consistent with the theorem.

Therefore this topological result does not yield the all-positive-rate signed endpoint estimate
  forall eps>0, exists C_eps, forall j, E(j log 2) <= C_eps 2^(eps j).
The missing ingredient remains the source-faithful numerical estimate for the full original signed arithmetic packet X(T)=X_ell(T)+R_signed(T). The topological parity class does not bound R_signed or produce any cancellation of mu(n). The standard Kakeya maximal operator also loses coefficient signs, so this source-preserving comparison must be an additional theorem, not a coordinate reindexing.

Repository sources inspected at grwtsk/math head bc3549da7ffadefcf7f71ce3b10c92b4accaf57e prior to the new Lean commit. Key residual source: MoebiusEllipticFiberKernelComparison.lean blob df9ded979964790b92f3053efc3aedeb6e2dfa78. Gauge recovery source: CMKaehlerZQGaugeFullReturn.lean blob 03b18190dba9e8f29c07ba26761178c9d6125df0. Current lean-toolchain: Lean v4.34.1.

Verification: new Lean source file committed and read back; contains no authored sorry, axiom, or unsafe declaration. Actual compiler elaboration, fresh kernel verification, and transitive axiom audit NOT_RUN. Full wild-embedding theorem in Lean NOT_PROVED. All-positive-rate signed RH estimate OPEN.
