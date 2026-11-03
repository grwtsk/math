# Source-derived CM–Möbius interaction: two genuine compressed Hilbert defects

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI.

Status: `SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Mathematical source-only argument and local diagnostics are not Lean acceptance or an RH theorem.

## Exact imported mathematical sources

- `grwtsk/math` existing research branch `research/residue-circle-wave-hilbert-20261101-350ff25d` at parent `2d3a5312155280cad478dd1e33dca1da6cb4b43c`. The branch is NOT merged to `main`; relevant prior files do not exist on the checked `main` snapshot `a5b1b89dbba875d6a1cf88b7b55e7f24698702a5`.
- `CMScaleResidueHilbertAttachment.lean` provides `originalCycleToSelectedHilbert X p (squareProfile d)` from the actual rational Thom/Betti cycle class in the chosen finite Betti basis and all-scale complex `lp` carrier. It explicitly assumes `[FiniteDimensional ℚ (OriginalBetti X p)]` and a selected basis-coordinate metric; this is **not** a canonical CM Hodge polarization.
- `CMLabelledJointIsometry.lean` and `CMLabelledCausalDefectComparison.lean` provide the complete joint positive Hilbert space `ActualJoint d j`, the genuine geometric projector `jointP` on actual geometric cycle-class images, and `jointQ` retaining both CM residual and complete integer-labelled source.
- `FiniteLabelledPickupCocycle.lean` provides the **actual** finite arithmetic state `originalLabelledState j u`, including latent `moebiusReal (i+1)` and observed signed `pickupResponse (i+1) u`, at every original integer label. The latent n=1 coefficient equals 1 for every j and time, so this source state is never zero. The same file proves the exact scalar `originalFixedWave` readout and its return to `wholePickup` inside the dyadic window.
- `CMLabelledCocycleIntertwiner.lean` supplies the exact decoupled two-time `exactLabelledJointEvolution`, which commutes with the genuine `jointP`/`jointQ` projection; it is not the nontrivial coupling constructed here.
- Upstream geometric and wave sources: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, especially `OAI.AlgebraicGeometry.ComplexMultiplication.Reference.GeometricAlgebraicity` and `OAI.AlgebraicGeometry.CycleClass.Geometric.Span`. Pinned Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean toolchain `leanprover/lean4:v4.34.1`.

## Primary mathematics and exact scope

Let `H = CommonHilbert d`, `C = LabelledState j`, and `J=WithLp 2 (H × C)`. For a **specified genuine rational algebraic cycle** `z : ActualRationalCycle X p`, put

`v := originalCycleToSelectedHilbert X p (squareProfile d) z : H`.

Let `w := originalLabelledState j u : C`. The source gives `w ≠ 0` without a cancellation hypothesis because its first latent coordinate at integer n=1 is exactly `μ(1)=1`. The geometric nonvanishing premise `v ≠ 0` is explicit and is **not** inferred merely from z being an algebraic cycle: the zero cycle and homologically trivial cycles are counterexamples. A concrete nonzero degree-p cycle class or a proof linking an actual nonzero Betti class to this chosen coordinate placement remains an external instance obligation.

Normalize each source vector by its positive Hilbert norm, `v₀=(‖v‖⁻¹:ℂ) • v` and `w₀=(‖w‖⁻¹:ℂ) • w`. When `v ≠ 0`, `‖v₀‖=‖w₀‖=1`; for `v=0`, all geometric interaction terms vanish. This normalization is used **only** in the interaction and never rewrites the unnormalized signed waveform.

Define the **two separately source-derived rank-one bounded linear operators** on `J`:

`F = |i_C w₀⟩⟨i_H v₀|` (CM to causal),

`G = |i_H v₀⟩⟨i_C w₀|` (causal to CM),

where `i_H` and `i_C` are the existing actual **isometric** inclusions into `J`. With the Mathlib convention that `⟪a,b⟫_ℂ` is linear in its second argument,

`K = F+G`, `K(x,y) = (⟪w₀,y⟫v₀, ⟪v₀,x⟫w₀)`.

The two operators are literal adjoints (`F†=G`, `G†=F`), hence `K†=K`. By Mathlib's exact rank-one operator norm and the isometric inclusions,

`‖F‖=‖G‖=‖v₀‖‖w₀‖=1` under the nonzero cycle witness; without that witness their exact common norm is `‖v₀‖‖w₀‖`. The conservative total bound `‖K‖≤‖F‖+‖G‖≤2` follows. This bound is uniform in finite inventory j and u **because the interaction itself is normalized**, not because the raw Möbius energy is bounded uniformly in j.

The actual geometric cycle image `v` belongs to the true complex closed cycle span. Thus `P_H v₀=v₀` and its orthogonal complement kills v₀. With the existing exact joint projector `(P,Q)` and its decoupled evolution `E_j(s,t)`, define a deliberately named **interacting comparison operator** `V_j(s,t;u)=E_j(s,t)+K_{z,j,u}`. It is a bounded nontrivial interaction, not claimed to be a two-time cocycle (at s=t it is generally `I+K`, not I). The **genuine compressed defects** satisfy the full operator identities:

`Q V_j P = F` and `P V_j Q = G`.

Their exact operator norms are each 1 under `v ≠ 0`, and both are genuinely nonzero. Proof: E commutes with P and Q, so its cross terms vanish; `F` has only causal output and actual geometric input, while `G` has only geometric output and causal input; the cycle membership ensures `P_H v₀=v₀` and inner-product self-adjointness of P transfers `⟪v₀,P_H x⟫` to `⟪v₀,x⟫`. There are no cancelled or omitted off-diagonal signs.

The corresponding **pointwise** exact formulas on arbitrary `x=(h,c)` are

`Q V_j P(x) = i_C (⟪v₀,P_H h⟫w₀)`;

`P V_j Q(x) = i_H (⟪w₀,c⟫v₀)`.

Thus the directional inequalities are `‖Q V_j P x‖≤‖x‖` and `‖P V_j Q x‖≤‖x‖` under the nonzero witness, and their operator norm 1 is attained in the corresponding source unit direction. This is *stronger* than merely bounding a generic off-diagonal component of an arbitrary wave operator, but it is a theorem about the explicitly constructed interaction.

## Complete signed-source return and hostile checks

The original unnormalized arithmetic state retains every integer label, Möbius sign, squareful zero, and causal birth. The original coherent sum is still `originalReadout j (actualLabelResponse j u) = (originalFixedWave j u:ℂ)`, hence the original `pickupEnergy (dyadicTime j)` is still the integral of the **square of the original real signed coherent readout**, not of the positive Hilbert norm of the packet or of K.

After applying the new operator, the observed channel *changes*, and its coherent readout must account for the exact added linear term. We do **not** claim the original signed energy stays equal to a post-coupling energy without a full cross term and normalization payment. In particular, this construction supplies a nonzero interaction but **does not** force a physical geometric–arithmetic dynamical equivalence, unitarity, a self-adjoint Hamiltonian generator, or the RH all-positive-rate energy premise.

Hostile controls:

- `z=0` or a homologically trivial cycle: `v=0`, the geometric unit is zero, both cross maps vanish. The nonzero-cycle witness is indispensable.
- `u=0`: every observed pickup response is zero, but the n=1 latent arithmetic coordinate is 1. The normalized *augmented* state is still nonzero, so the interaction is not singular at causal birth.
- Geometry and causal *unmixed* positive Hilbert components are orthogonal, but their new rank-one interaction is not zero. This illustrates why the old decoupled comparison is insufficient.
- The constructed interaction is **not** an arithmetic cocycle: `E(s,s)+K` is not the identity in the nonzero case; no time-composition theorem is asserted or borrowed.
- `q=d²` remains the original selected positive square-modulus profile, but the labelled causal source never passes through the lossy residue quotient.
- No equivalence is inferred between an arbitrary rational CM Hodge class and an arithmetic Möbius state. The selected cycle is a genuine geometric source, while the interaction is an explicit operator built from both source vectors.

## Independent diagnostics and formal-assurance boundary

Local reproducible numerical checks were executed for inventories `j=0,…,7` and five observation times including `u=0` and `u=2 log 2`: **1,400 PASS** assertions, maximum observed absolute error `7.11×10⁻¹⁵`. Tested adjoint symmetry, the two exact compressed source blocks, norm-one bounds, source readout, retained n=1 coefficient, and zero-cycle control. These are finite floating-point diagnostics, not a formal proof, exhaustive arithmetic computation, or a fresh Lean kernel receipt.

The static Lean source scan found balanced delimiters and no `sorry`, `admit`, `axiom` or `unsafe def`; **Lean and Lake were not available in this container**. Thus `COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN` remain unchanged. Neither source-only notation, numerical diagnostics, nor a Git blob readback claims kernel checking.

The mathematical connection is a constructed conditional cycle-to-arithmetic rank-two operator, not a previously supplied physical coupling. Novelty relative to the full mathematical literature is **NOT_ASSESSED**; Mathlib supplies the underlying Hilbert rank-one identities, while the source-specific instantiation and operator comparison are the contribution of this formalization increment.

### Unresolved obligations

1. Supply a particular actual CM algebraic cycle `z` with a proved nonzero original Betti realization, or prove the required basis-coordinate nonvanishing transfer for the selected `OriginalBetti` embedding. The current sharp norm-one **nonzero** theorem is conditional precisely on that witness.
2. Lean elaborate, inspect exact theorem signatures, run fresh kernel and transitive axiom audits against the pinned source tree and imported upstream package.
3. Derive a *physical* coupled generator or a true new time-composing coupled cocycle if desired, with its own source-domain and signed-observable returns. The present `E+K` is a genuine bounded coupling but not that generator.
4. Prove any required uniform infinite-inventory *unnormalized* arithmetic bound and independent Schwartz-to-periodic Lp transference. Neither is implied by this interaction.

No change to public root imports, toolchain, dependency pins, prior files, or formal trust settings is part of this increment.
