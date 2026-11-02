# CM trace lattice to Appell–Humbert semicharacter and projectivity consumer

Local mathematical attribution: **grwtsk contributors**; formalization assistance: OpenAI. Date: 2026-11-02. All new Lean declarations are `SOURCE_PROOF_CANDIDATE`: no compilation, expected-type check, fresh kernel or transitive axiom audit has run.

## Original source and mathematical target

The existing `grwtsk/math@281b132ad2fffcbd28117660b3ebf8421274223e` `GRWTSK/Geometry/CMRiemannResidueHolonomy.lean` (blob `88c1a1a6c9107745b3f622f012e7c5bd7f0e012d`) constructs integer U(1) phases from the genuine CM trace-pairing with all real sign-controlled and denominator-clearing hypotheses explicit. Its inputs are the actual `CMTracePolarization`, `CMArchimedeanPositivity`, `CMRealRescaling`, `CMLatticePolarization`, and `CMRiemannForm` modules; it DOES NOT establish that the lattice is the `H₁` period lattice of the specified original complex abelian variety.

The upstream `openai/math@4eaee87548250b2682affda7d05d947c05554bae` file `lean/OAI/Geometry/ComplexTorus/RiemannProjectivity/ProjectivityCriterion.lean` (blob `82187516feab68f8797114fa417e1194b74e3e82`) contains the source theorem `OAI.Geometry.ComplexTorus.RiemannProjectivity.ProjectivityCriterion.riemann_projectivity_criterion`: for a finite-dimensional complex normed vector space V and discrete, cocompact additive period subgroup Λ, `V/Λ` is holomorphically projective iff there exists a positive Hermitian H whose imaginary form is integral on Λ. The same source provides `Construction.doubledAutomorphy`, a factor of automorphy that requires no separate semicharacter. The upstream source `Realization.lean` (blob `f4289a32f7556a88ca34814c6a76098ba816490f`) then supplies the exact sign-type realization theorem; transferring a specific GRWTSK CM field model into that sign-type setup is another substantive task, NOT already established here.

Classical mathematical reference: Christina Birkenhake and Herbert Lange, *Complex Abelian Varieties*, second edition (2004), Grundlehren der mathematischen Wissenschaften 302, Springer, DOI `10.1007/978-3-662-06307-1`, Chapter 2 §2 (Appell–Humbert): a holomorphic line bundle on a complex torus corresponds to a Hermitian form with integer imaginary periods and a semicharacter α satisfying `α(a+b)=α(a)α(b) exp(πi E(a,b))`. This is prior mathematics; the present files formalize the finite source-specific lattice consequences, not the complete theorem.

## Complete primary source calculation

Let E be the original Galois CM number field and X a `SignControlledXi E v`. The existing `integralPairingMatrix E X` provides the integer matrix M of the rational CM trace form, multiplied by precisely the original nonzero denominator-clearing factor. On the original finite ordered integer-coordinate basis, skewness and alternation are derived from `integralTracePairing_skew` and `integralPairing_self`. Put

`B(a,b)=∑_i∑_j a_i M_ij b_j` and `U(a,b)=∑_(i<j) a_i M_ij b_j`.

Skewness of M gives `B(a,b)=U(a,b)-U(b,a)`. Define `q(a)=U(a,a)`. Expanding `q(a+b)` and retaining both cross terms yields

`q(a+b)=q(a)+q(b)+B(a,b)+2 U(b,a)`.

Since `(-1)^(2m)=1` for every integer m, the SOURCE-DEFINED phase `α(a)=(-1)^q(a)` obeys

`α(a+b)=α(a)α(b)(-1)^B(a,b)` and `|α(a)|=1`.

Thus the actual original integral trace matrix supplies a semicharacter without an arbitrary phase or mod-2 parity premise. The construction depends on the ordered rational basis; changing it can change α by a character. It therefore does not claim a canonical semicharacter of an unspecified original CM variety.

For the existing source residue links `U_ij=(-1)^B(s_i,s_j)`, bilinearity and skewness prove the full *oriented* triangle identity:

`B(s_i,s_j)+B(s_j,s_k)+B(s_k,s_i)=B(s_j-s_i,s_k-s_i)`.

This proves common-translation invariance of the holonomy and strengthens the previous exact-one oddness witness: **any odd** relative area has holonomy -1 and is not gauge-equivalent to flat links. Even nondegenerate source matrices may have only even entries, so oddness remains a real extra premise for nontrivial mod-2 holonomy. A semicharacter group coboundary must not be confused with the vertex-gauge holonomy of the arbitrary-site triangle.

## Source-specific projectivity consumer and remaining premises

The new `SourcePeriodComparison E X V` exposes an **injective original integer-coordinate period map** `p : (Fin n → ℤ) →+ V`, a positive Hermitian form H on V, and the exact identity

`(H (p a) (p b)).im = (integralPairing E X a b : ℝ)`.

When the image of p is also a discrete cocompact additive lattice, its periods are integral **because of the original source matrix**, not because of a newly added `∃m` assumption. The existing upstream projectivity theorem then gives `IsProjectiveComplexTorus V p.range` as a conditional theorem. No direct equivalence with a particular original CM abelian variety, a globally identified ample line bundle, or its Chern connection has yet been proved. The positive H and actual period comparison still require geometric construction. The separate semicharacter is useful for the undoubled Appell–Humbert factor, but the upstream doubled factor does not consume it.

## Independent check, counterexamples and trust

The stand-alone **exact** reference checked 15,556 assertions across alternating integer matrices of dimensions 1–7, full Gaussian rational CM trace examples `E=ℚ(i), ξ=-i/2` with coordinates -3,…,3, and translation/triangular holonomy identities. The selected matrix for this example has `B((a,b),(c,d))=bc-ad`; `α(a,b)=(-1)^(-ab)` is a valid semicharacter. Doubling B leaves it rationally nondegenerate but makes its mod-2 phases flat. These checks are neither Lean acceptance nor experimental measurements. No independent second analytic proof is claimed: the calculations are the same finite bilinear algebra independently evaluated.

The original integer Möbius labels, parity/nonunit `ZMod(d²)` channels, complete signed coherent readout, all cross terms, and original `pickupEnergy` remain unchanged in their existing modules. The present source works on the CM *geometric* period lattice and does not transfer a cancellation estimate to arithmetic Möbius energies. There is no new RH/GRH conclusion, periodic Schwartz-to-Lp transfer, physical detector mapping, or CERN event fit.

All three new Lean files are additive under `GRWTSK/Geometry/`; there are no intentional `sorry`/new axiom declarations. `lean` and `lake` are unavailable in this environment. The fresh expected-type, syntax, transitive axiom and kernel verification facets are `NOT_RUN`. Earlier modules imported by the new files also have independent acceptance states. No verifier, scheduler or CI was invoked.
