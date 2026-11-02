# Genuine elliptic E[n] as a finite Galois representation, with source Weil-to-Tate-dual map

Date: 2026-11-02 (America/Los_Angeles).
Local formalization attribution: grwtsk contributors.
All upstream mathematical sources and their original Lean proofs: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti revision
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b` (Lean v4.36.0-rc1).

**Acceptance:** SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
EXTERNAL_ADAPTER_NOT_COMPILED. These are mathematical source arguments with
unelaborated Lean scripts, NOT kernel acceptance. No external compilation or
CI/scheduler execution was requested or performed. No new axiom/sorry/admit
declaration and no general BSD or arithmetic rank claim.

## 1. Exact source and the reason no finite-dimensional proxy is needed

The immediately previous source in `grwtsk/math` is
`TauCetiTateCochainDifferentials.lean`, blob
`98c951d108507ffdf7e4e53ce547d41eff7353e7`, and
`TauCetiNormalizedLocalTatePerfect.lean`, blob
`c333e107fb8ca2103c1f12393ecd96ad6ccf65cf`.
They are isolated, uncompiled Tau Ceti-compatible candidates.

At the immutable upstream pin, the actual sources are:

- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean`,
  blob `d56decb915934d38ff4ed5271ed59c73953a89e1`.
  `W.TorsionCoeff n` is `AddSubgroup.torsionBy W.PointCoeff n`
  of the Galois-equivariant actual `W.PointCoeff=E(Fsep)`.
  Source `finite_torsionCoeff`, `natCard_torsionCoeff` and
  `TorsionCoeff.instContinuousSMul` establish real finiteness/counting
  and continuity, independent of BSD rank.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean`,
  blob `8ea0534b3bb664f9e7ad9e0966e06a637d6f418a`.
  `ofDiscreteModule`, `ofDiscreteModule_isSmoothDiscrete`,
  `IsSmoothDiscrete.res`, `ofDiscreteModule_ρ_apply_apply`
  produce smooth discrete topological representations from genuine
  coefficient actions.
- `TauCeti/NumberTheory/ClassFieldTheory/MuNRep.lean`,
  blob `2d14af1616e26ccee0e04b9897a467ab8bd994f8`.
  `GalRep n F` is the exact `TopRep (ZMod n) (Field.absoluteGaloisGroup F)`;
  `muNRep n F` is the source Kummer-root coefficient with the original
  absolute-Galois comparison, and `kummerCoeffEquivMuNRep_smul`
  preserves the action.
- `TauCeti/Algebra/Module/ZMod/SMulCommClass.lean`,
  blob (see pinned original repository): the source
  `TauCeti.ZMod.smulCommClass'` gives the necessary commutation
  between any additive Galois action and canonical ZMod scalars.
- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean`,
  blob `d54088b59839bf055f1670006127a4d854adaa50`.
  **Key previously underused actual source**:
  `W.torsionCoeffWeilPairing n hn` is already a biadditive map
  `W.TorsionCoeff n ->+ W.TorsionCoeff n ->+ KummerCoeff F n`.
  The ORIGINAL theorems `torsionCoeffWeilPairing_smul` and
  `torsionCoeffWeilPairing_nondegenerate` give true Galois
  equivariance and nondegeneracy, not merely a matrix model.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Graded/Basic.lean`,
  blob `b43da3c189b613a8e5a970918daeea6f1e0018b4`:
  `TopPairing` stores original bilinear coefficients, joint
  continuity, and source equivariance.
- `TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Basic.lean`,
  blob `f3fd4468aeca0e6f3001054fcfcedfef8f0fd6e4`:
  `pairingToTateDual` sends a `TopPairing A B μ_n` to the genuine
  `A -> tateDual B` representation morphism; theorem
  `tateDualEquiv_pairingToTateDual_apply` fixes exact evaluation.
- `TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean`,
  blob `f2a94093d03c3be0d1b2c048b4f516d773cbe6ba`:
  `tateDualityPairing_perfect_mixed`.
- `TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean`,
  blob `7d21171a7372904ae7c8a715aa74f389aebd7cae`:
  `h2MuEquivZMod` normalized by the ACTUAL Brauer invariant.

The new isolated external candidate is
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiEllipticTorsionGalRepWeil.lean`,
with blob identity assigned and read back on publication. It imports
only these original Tau Ceti modules and their upstream dependencies,
not the incompatible `grwtsk/math` root or a rewritten Tau Ceti copy.

## 2. Genuine elliptic GalRep n F

Fix an elliptic `W/F` over a field, an integer `n != 0`, and its
original Galois torsion `A=W.TorsionCoeff n`. Its ZMod n structure
is the original `AddSubgroup.torsionBy.zmodModule`. The old action of
`AbsoluteGaloisGroup F` is transported through
`absoluteGaloisGroupRestrictEquiv F` using
`TopRep.res` and `ofDiscreteModule`:

  ellipticTorsionGalRep W n :=
    TopRep.res (absoluteGaloisGroupRestrictEquiv F)
      (ofDiscreteModule (ZMod n) (AbsoluteGaloisGroup F)
        (W.TorsionCoeff n)).

The actual carrier remains definitionally E[n](Fsep), not an isomorphic
copy. Every `g : Field.absoluteGaloisGroup F` acts as the original
`absoluteGaloisGroupRestrictEquiv F g` on original E[n] points.

With W elliptic, `finite_torsionCoeff` provides finiteness; the
original locally continuous torsion action yields
`IsSmoothDiscrete (ZMod n)` and the exact `Fact` instance needed
by local duality. For n invertible in F, the actual source gives
`Nat.card E[n] = n^2`.

This construction does not assume or produce E(F) rank, Sha
finiteness, elliptic regulator, or complex analytic central zeros.

## 3. Weil -> Tate-dual comparison, with SIGNED orientation retained

Suppose n is invertible in F. Use the actual pairing
  e_n(a,b)=W.torsionCoeffWeilPairing n hn a b
on the SAME source A. The original `kummerCoeffEquivMuNRep`
transports it without choosing roots or changing any argument order:

  P_n(a,b)=kummerCoeffEquivMuNRep n F (e_n(a,b)).

Every additive map between n-torsion ZMod n modules is ZMod-linear.
Galois equivariance follows from the exact original
`torsionCoeffWeilPairing_smul` and
`kummerCoeffEquivMuNRep_smul`. The finite/discrete coefficient
topologies ensure joint continuity. Thus `P_n` is a true
`TopPairing (ellipticTorsionGalRep W n)
  (ellipticTorsionGalRep W n) (muNRep n F)`.

The original upstream `pairingToTateDual` then constructs
  φ_(E,n): E[n] -> tateDual(E[n]),
  φ_(E,n)(a)(b) = e_n(a,b).
The source candidate proves this evaluation identity and the
**injectivity** of φ_(E,n): if φ(a)=φ(b), then for all c,
e_n(a-b,c)=0, so the actual elliptic Weil nondegeneracy gives a=b.
The transpose/argument reversal would introduce a minus sign, so the
source never swaps the order in the dual character by convention.

**Surjectivity is a distinct next theorem**, not a field of this
record. Its classical mathematical proof is available from the
finite perfectness of the Weil pairing. For an appropriate original
Lean proof, Tau Ceti also has
`TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Torsion/Structure.lean`
blob `843bb6ef86790be5c4728c71655897117ee6a72d`,
with `WeierstrassCurve.nonempty_basis_torsionBy` over ZMod n
and `torsion_addEquiv_prod`. Transport its actual basis through
`W.pointCoeffEquiv` and prove
  |Hom_(ZMod n)(E[n],mu_n)| = n^2
without assigning an arbitrary norm or regulator. Then injection
plus equal finite cardinalities proves surjectivity (or construct the
inverse by coordinates). No such Lean bijectivity proof is claimed
in the new candidate.

## 4. Elliptic-specialized local perfectness is now an explicit consumer

For a nonarchimedean characteristic-zero local field F and n nonzero,
the same `ellipticTorsionGalRep W n` can be passed to the EXISTING
`tateDualityPairing_perfect_mixed F n` theorem, with its actual
finiteness and smoothness. The canonical trace is
  tr_F,n = h2MuEquivZMod F (n invertible in F)
sending Brauer invariant k/n to residue k.

This specializes the **GENERAL finite local perfect pairing** to the
authentic elliptic coefficient object and its actual Tate dual,
for complementary degrees i+j=2. It does not yet identify Tate dual
with a second copy of E[n] through an accepted isomorphism:
the new Weil map is injective only at its stated proved-in-source scope.

The next acceptance bridge must prove φ_(E,n) is a coefficient
isomorphism, identify the corresponding cohomology comparison, and
prove the genuine Kummer local-condition annihilator identity under
the resulting (1,1) cup pairing. Perfectness alone does not prove that
specific orthogonality.

## 5. Exact still-open arithmetic consumers

1. **Weil dual isomorphism and transition compatibility.** Prove
   surjectivity and the exact p-power tower self-duality, including
   finite Weil pairing compatibility and all Tate-twist/sign
   conventions. A finite index or dimension statement is insufficient
   without a real coefficient morphism.
2. **Local Kummer orthogonality.** For E/F and dual E^vee/F, prove
   `im δ_(E,n)` and `im δ_(E^vee,n)` are mutual exact
   annihilators for the normalized local cup pairing, with actual
   point-corrected good-truncated local conditions.
3. **Restricted product.** At every outside-S good prime, prove
   the reverse `H¹_ur <= im δ` direction in the source exact
   elliptic field/model, then compare full versus S-unramified
   cochain products with their topology.
4. **Archimedean.** Preserve H⁰, real C₂-Tate conventions and p=2
   corrections. Nonarchimedean local Tate duality does NOT address
   the real place.
5. **Derived inverse limit and global Poitou--Tate.** Prove the
   actual p-power cochain Rlim and Milnor lim¹ identities, compact/
   discrete duality, Selmer mapping-fiber quasi-isomorphism, and
   derived Bockstein compatibility without erasing
   `H²(U_v)=H¹(F,E)` of the untruncated local point cone.
6. **Regulator and analytic return.** The resulting p-adic Selmer
   complex would support a source-defined derived p-adic regulator.
   Noncircular comparison to the REAL Neron--Tate lattice and the
   COMPLEX Hasse--Weil central L-jet, with full Sha, Tamagawa,
   periods and torsion, remains separate and OPEN. No BSD-I/II
   proof follows here.

## 6. Reproduction/acceptance gates

No lean/lake executables were available in the current authoring
container. The previous math root remains Lean v4.34.1, pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612, incompatible with the
pinned Tau Ceti v4.36.0-rc1. Do not modify either root dependency to
paper over the mismatch. In a compatible, independently authorized
upstream environment, typecheck the isolated candidate with
`lake env lean --wfail`, freshly replay its full dependency
closure, audit `#print axioms` and transitive generated/private
dependencies, and validate equality of the actual coefficient and
Galois action before using these lemmas. No `sorry`, new `axiom`,
forced admission, root umbrella imports, CI dispatch, or verification
queue state is added.

Primary original mathematical sources: Silverman,
*The Arithmetic of Elliptic Curves*, 2nd edition, III.7-8,
X.4; Nekovar, *Selmer complexes*, Asterisque 310 (2006);
Neukirch--Schmidt--Wingberg, *Cohomology of Number Fields*,
2nd edition, local Tate duality. Retain all original authorship
and license distinctions above.


### Independent finite sign diagnostic (NOT Lean or elliptic cohomology)

An exact Python integer-arithmetic fixture on the standard symplectic
module `V=(Z/n)^2`, with `e((a,b),(c,d))=ad-bc mod n`, for
`n=1,2,3,4,5,7,8` checked 7,476 skew-orientation identities,
400,308 additive-first-variable identities, and 168 distinct
`a ↦ (b ↦ e(a,b))` characters. The reverse argument order
negates the character, except when the coefficient has order
dividing two. This tests the signs and finite algebra only;
`V` is a SYNTHETIC fixture, not the actual source elliptic
torsion `W.TorsionCoeff n`, and these counts do not establish
Lean elaboration, local Galois duality, Kummer orthogonality,
or Weil dual-map surjectivity for the real elliptic source.
