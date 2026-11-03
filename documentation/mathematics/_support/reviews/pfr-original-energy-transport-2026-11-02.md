# PFR original-source energy transport — mathematical disposition

grwtsk contributors · 2026-11-02

## Abstract and mathematical problem

The existing source-candidate `DenseSubmoduleSlice.dense_submodule_slice_of_small_doubling` imports the *actual* upstream characteristic-two PFR theorem and selects a nonempty finite B in the same finite submodule H, satisfying B = {b in H | u + b in A}. It proves B.card ^ 4 ≤ H.ncard * Finset.addEnergy B B, with the strict `2*K^9` PFR density bound and all of its original hypotheses. The remaining local application to the original finite set A is a transport obligation, not an analogy.

## Exact result

For an arbitrary additive commutative group and finite sets B,A, suppose every b in B satisfies u+b in A. The map on original additive-energy quadruples

`((a,b),(c,d)) ↦ ((u+a,u+b),(u+c,u+d))`

is injective and preserves `a+c=b+d`. Thus E(B) ≤ E(A), where E(X) is Mathlib `Finset.addEnergy X X`, the count of actual filtered quadruples with their original multiplicities. The map need not be surjective.

Apply this result to the *specific* B constructed from the PFR source. With the unchanged selected H,u,B and its support, cardinal and density identities:

- B is nonempty and exactly {b∈H | u+b∈A};
- H is finite and |H|≤|A|;
- |A| < 2 K^9 |B|;
- B-B⊆H;
- **|B|^4 ≤ |H| E(A)**.

Only the energy target changes from B to the original A, by a proved one-sided comparison. No error allowance is discarded, no binary multiplicity is quotiented, and no global energy improvement beyond standard generic inequalities is claimed.

## Direct proof and actual consumer

The injection uses four instances of left-addition by the **same** u. The energy equality is preserved because each side acquires exactly 2u. Left additive cancellation gives injectivity, so `Finset.card_le_card_of_injOn` transfers the original cardinal. Multiplication by the natural number |H| is monotone; compose this with the existing PFR slice Cauchy–Schwarz bound. The exact upstream PFR theorem is used only through the already-published local `dense_submodule_slice_of_small_doubling` consumer.

Maintained candidate: `GRWTSK/Combinatorics/PfrOriginalEnergyTransport.lean` in the original Combinatorics subject. Declarations: `GRWTSK.Combinatorics.PfrOriginalEnergyTransport.addEnergy_le_of_translated_subset` and `GRWTSK.Combinatorics.PfrOriginalEnergyTransport.original_addEnergy_of_small_doubling`. This result supplies an actual original-source energy return to additive-combinatorics consumers; it is not a new instance of a generic theorem-retrieval score.

Hostile boundaries: if B is not translated into A, the inequality may fail (e.g. A={0} but B=F₂³); if A strictly contains the translated B, the reverse energy inequality fails. The original theorem requires nonempty A and a genuine small-doubling bound in a ZMod 2 module; do not generalize the PFR corollary to arbitrary groups or characteristics without a proved source theorem. Translation monotonicity itself requires only an additive commutative group.

## Source correspondence and evidence

Original provider: `teorth/pfr@7e7fadf0c4d000fdb21b68505f3fd0e29a6e4a2f`, `PFR/RhoFunctional.lean`, blob `af3f89faaf4f12edd2ec9796b93ae77474a99c70`, theorem `better_PFR_conjecture`, stated for nonempty finite A in an elementary two-torsion module. Provider paper attribution: Gowers–Green–Manners–Tao, *On a conjecture of Marton* (arXiv:2311.05762, 2023) and Jyun-Jie Liao's exponent-nine refinement (arXiv:2404.09639, 2024), as identified in the pinned PFR README; original upstream project contributors and Apache-2.0 notices remain applicable.

Existing local consumer: `GRWTSK/Combinatorics/DenseSubmoduleSlice.lean`, blob `83d53ed5afb4254d155a461eeb3bc989498ed554`. Mathlib exact finite-additive-energy definition and `Finset.card_le_card_of_injOn` checked against pinned `Mathlib/Combinatorics/Additive/Energy.lean` blob `cf6b974caa3ae8a5bf0ba857b59c00bcf6d66175`. Isolated provider Lean v4.36.0-rc2, Mathlib `8fe7ce475b056f0b266d7107893f2c4d772c712f`; root GRWTSK is a different environment and remains untouched.

Local pure-Python independent reference: five tests PASS. It exhausts all A,B with all translations in F₂, F₂², F₂³, Z/5; all subspaces H≤F₂³ and corresponding actual B slices for all A,u; 3,000 additional seeded F₂⁴ tests. It checks reversed-inequality and missing-translation counterexamples. This is *finite evidence*, not a mathematical/Lean compiler receipt. Formal compilation, #check literal types, trust-zero kernel replay, complete transitive #print axioms audit and independent mathematical review remain **NOT_RUN / PENDING**. Neither proof source nor publication authorizes remote execution.

## Next qualified action

Compile the two declarations in the isolated PFR adapter with the **native pinned provider** toolchain, preserve their exact expected types and the complete upstream axiom closure, reject `sorryAx` or mismatched source/Mathlib inputs, and independently review the original-A witness correspondence. Only after that consider a cross-version root proof port or a proof-capsule admission. No source-level theorem transfers verification evidence after a dependency edit.
