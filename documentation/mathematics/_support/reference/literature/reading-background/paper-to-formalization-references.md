# Paper-to-formalization references

Maintained reference index. Local attribution: grwtsk contributors.
Research comparison and formal verification are separate evidence categories.

## Pairwise disjoint Möbius bands (Frolkina)

- Primary author: Olga Frolkina.
- Source: "Pairwise disjoint Moebius bands in space", Journal of Knot Theory and Its Ramifications 27 (2018), 1842005; archived as https://arxiv.org/abs/2212.02983.
- Mathematical claim: no uncountable family of pairwise disjoint topologically embedded Möbius bands in Euclidean three-space, including wild embeddings; see the primary source's packing result and its hypotheses.
- Related popular exposition: Evelyn Lamb, "Möbius Strips Defy a Link With Infinity" (Quanta Magazine, 2019-02-20), https://www.quantamagazine.org/mobius-strips-defy-a-link-with-infinity-20190220/. The article is background, not a replacement for the primary proof.
- Finite source proof candidates: GRWTSK.Topology.AlgebraicTopology.MoebiusBandGaugePacking.parity_one_cannot_be_gauged_away; GRWTSK.Topology.AlgebraicTopology.MoebiusBandHolonomyClassification.closed_gauge_exists_iff_holonomy_eq; GRWTSK.Topology.AlgebraicTopology.MoebiusBandUnfoldedSeamGauge.unfolded_seam_eq_holonomy.
- Exact published source: grwtsk/math commit 478cc699d90c09c9a64ca779741c5a786a3949a3, unfolded-seam file blob 7462648d1e51dee506857a8aa0a33fdd3dacd88b, original finite holonomy file blob 4f03223417cc6f30ffafeae41b7e3c446da3582d.
- Actual proof scope: elementary finite ZMod 2 cyclic gauge holonomy, NOT a formal proof of the wild-embedding theorem. The countable-isolating-test lemma is conditional on isolating tests; pairwise disjointness alone does not establish them.
- Verification: source readback only; Lean build NOT_RUN, fresh kernel verification NOT_RUN, transitive axiom audit NOT_RUN.
- Missing: actual topological Möbius-band model, compact embedding-space isolation, deleted-product equivariant map, projectivized tangent bundle and Stiefel-Whitney top-power contradiction.

## Nonorientable hypersurface obstruction (Melikhov)

- Primary author: Sergey A. Melikhov.
- Source: "A note on O. Frolkina's paper", arXiv:1810.04089v2, https://arxiv.org/abs/1810.04089.
- Exact theorem: no uncountable collection of pairwise disjoint embedded copies of a nonorientable triangulable (n-1)-manifold (with boundary allowed) in Euclidean n-space; the argument uses deleted products and equivariant maps, with a Stiefel-Whitney obstruction.
- Related finite candidate: GRWTSK.Topology.AlgebraicTopology.MoebiusBandOrientationDoubleCover.loopMonodromy_twice and GRWTSK.Topology.AlgebraicTopology.MoebiusBandUnfoldedSeamGauge.odd_seam_two_lap_return, grwtsk/math commit 478cc699d90c09c9a64ca779741c5a786a3949a3, seam file blob 7462648d1e51dee506857a8aa0a33fdd3dacd88b.
- Proof classification: finite orientation-monodromy representation and a conditional countability interface. The actual deleted-product and cohomological theorem is NOT_FORMALIZED, and no result derived from it supplies an arithmetic Möbius cancellation bound.
- Verification: NOT_RUN compilation, NOT_RUN kernel checking, NOT_RUN axiom audit; full mathematical embedding-to-countability transfer remains UNPROVED in Lean.

## Kakeya maximal estimates (external provider source)

- Research source: openai/math, exact source revision 4eaee87548250b2682affda7d05d947c05554bae; files lean/OAI/MeasureTheory/Kakeya/Definitions.lean (maximal operator) and lean/OAI/MeasureTheory/Kakeya/Main.lean (all-positive-loss maximal theorem).
- Exact declared operator integrates the pointwise extended norm of f in direction-indexed tubes. It is insensitive to pointwise sign changes. The all-positive-loss maximal theorem is an external source result, not a proof of the original signed arithmetic endpoint estimate.
- Local formal structural counterexample: GRWTSK.Topology.AlgebraicTopology.MoebiusBandSignedMagnitudeNoGo.same_unsigned_observation_different_signed_gram, grwtsk/math commit 478cc699d90c09c9a64ca779741c5a786a3949a3, blob 85bb9d362161f2cc8f97d85590bd239159e800e3.
- Verification: local candidate NOT_RUN; upstream exact-source trust and build scope remain distinct from pinned Mathlib. Do not silently import upstream OAI declarations into the root GRWTSK build.
- Missing consumer: a quantitatively uniform, source-faithful sign-sensitive comparison bounding the COMPLETE original signed Möbius packet including all matched, mixed and unmatched residuals.

## Appell–Humbert semicharacters from the CM trace lattice

- Classical reference: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, 2nd edition, Springer, Grundlehren der mathematischen Wissenschaften 302 (2004), Chapter 2 §§1–2, DOI https://doi.org/10.1007/978-3-662-06307-1. The Appell–Humbert semicharacter on an integral alternating period lattice satisfies α(λ+μ)=α(λ)α(μ)exp(πi E(λ,μ)); a positive Hermitian realization and actual period torus are separate hypotheses.
- Exact upstream source comparator: openai/math@4eaee87548250b2682affda7d05d947c05554bae, lean/OAI/Geometry/ComplexTorus/RiemannProjectivity/ProjectivityCriterion.lean, blob 82187516feab68f8797114fa417e1194b74e3e82; declarations OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion.riemann_projectivity_criterion and Construction.doubledAutomorphy_add. Its doubled automorphy proof uses the original positive integral Hermitian form and does not require a separate semicharacter; the upstream Realization.lean comparator blob is f4289a32f7556a88ca34814c6a76098ba816490f.
- Local source: grwtsk/math GRWTSK/Geometry/CMRiemannResidueHolonomy.lean, blob 88c1a1a6c9107745b3f622f012e7c5bd7f0e012d, and CMLatticePolarization.lean. The integer alternating form is the original rational Galois CM trace form with its denominator-clearing scale and sign profile, not a freely substituted matrix.
- New source-proof candidates: GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannSemicharacter.sourceSemicharacter_add (source-specific ordered-basis quadratic refinement), GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannTriangleFluxArea.sourceTriangleHolonomy_eq_area (oriented relative lattice area, translation invariance and any-odd nonflat gauge obstruction), and GRWTSK.Geometry.AlgebraicGeometry.Hodge.CMRiemannToProjectivityConsumer.source_period_projective_torus (conditional source-period Hermitian comparison consumed by upstream projectivity criterion).
- New Git blobs, respectively: 7073576c99b09bf19bea342bf5882093d6123225; 102fdf343036c2209358a91c874de90ef2ec24a8; 5ec75422c394e97b22fccb7c59d89ce099f3ef4c. Branch/commit is supplied by the separate publication readback and passive target. Exact mathematical scope: integer semicharacter and finite CM trace-lattice holonomy, not a line bundle constructed on the particular original CM abelian variety.
- Verification: SOURCE_PROOF_CANDIDATE; Lean compilation, expected types, fresh kernel checking and transitive axiom audit NOT_RUN. Independent finite exact-arithmetic diagnostics: 15,556 assertions, not kernel proof or external experimental evidence.
- Missing bridge: actual source-period injective map to the original CM variety, a positive Hermitian form with imaginary period pairing the exact scaled CM trace, discrete/cocompact period image, compatible ample Appell–Humbert line bundle and Chern connection, canonical arithmetic residue-site assignment, and experimental measurement identification. No original signed Möbius all-rate energy or Schwartz-to-periodic Lp estimate follows.
