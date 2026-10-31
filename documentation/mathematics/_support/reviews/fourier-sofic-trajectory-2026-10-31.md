# Rotor DFT, cyclic-banded residue harmonics, three-dimensional path and sofic optimization

Local attribution: grwtsk contributors. 2026-10-31.

## Source relationship and constrained conclusion

The new source is a finite, inspectable, **bounded simulation interface** for the 2026-10-31 spinning toy. It reuses the two-inertia passive crank source in `GRWTSK/NumericalAnalysis/CorkscrewSpringEnergy.lean`, the earlier seven-mode surrogate in `GRWTSK/NumericalAnalysis/FiniteModeDrapeEnergy.lean`, the bounded ABC observation in `GRWTSK/Geometry/SphereFourThreeTorusDrape.lean`, and the exact-language/graph distinction in `GRWTSK/DynamicalSystemsAndErgodicTheory/ExactSoficLanguageCover.lean`. The latter explicitly warns that one trace running on a finite graph does not establish soficity of that trace's **whole factor language**. We define and present the entire graph language of the newly constructed even-shift residue graph; we make no claim that an arbitrary NS or zeta orbit language is sofic.

The user can now wind, flick and brake the toy using the 3em side rail (direct manipulation on the canvas remains possible), select a Fourier cutoff, cyclic residue coupling bandwidth, positive viscosity, neighbor coupling, input force ceiling, harmonic energy budget, 3D radius and velocity bounds, or provide a finite binary word for optimization. Three noninteractive markers show the object's crank/rim/bearing locations. The simulation begins paused; user control supplies input and motion. The geometric three-torus remains a fixed reference lattice while the toy travels through R³, leaving a residue-colored path.

## Actual physics and exact finite Fourier transform

Let theta_c, theta_r be crank and rotor angles, omega_c, omega_r their angular rates, I_c,I_r>0 inertias, k>0 torsional spring and g the gear ratio. The previously published source supplies the exact fully implicit spring step, including external work and passive dissipation. The browser records **64 fixed-step samples** of omega_r at 120 Hz. For j=0..63 and k=0..32 the nonnegative-frequency DFT is

    W_k = (1/64) sum_{j=0}^{63} omega_r[j] exp(-2*pi*i*k*j/64).

The equivalent real signal's complete spectrum includes the conjugate negative-frequency bins. To preserve the Parseval multiplicity, residual energy over discarded frequencies uses weight 2 for k=1..31 and 1 for the DC and Nyquist bins. No FFT convergence limit or numerical PDE claim is needed for this finite calculation.

At cutoff K<=22, each k maps to the residue r=k mod 7. The seven channels retain the complete complex sum b_r=sum_{0<=k<=K,k mod 7=r} W_k, including its signed/interfering cross terms. Discarded harmonics are accounted separately; taking |b_r|² is **not** the same as summing |W_k|² within r. The interface shows this distinction with a discarded-frequency energy diagnostic. All seven colors are fixed integer residue classes, not arbitrary continuous colors.

The seven complex harmonic channels z_r obey the source-defined forced, phase-rotated, implicit **cyclic banded** linear system

    (I + h D + h*kappa*L_b) z[n+1] = R(h*Omega[n]) z[n] + h*f[n],

where D is a real positive diagonal with d_r=.12+viscosity*(1+(r+1)²/16), R is a diagonal family of unit complex rotations, f_r=.28*b_r, and L_b is the graph Laplacian on the seven cyclic residues with edges iff 0<d_7(r,s)<=b. The configurable bandwidth is 0,1,2, **never 3** (which would make all seven residues coupled). The executable uses a real SPD Cholesky solve of size seven, applied independently to real and imaginary components. For h>=0, kappa>=0, d_min>0, the identity

    <z,(I+hD+h*kappa L_b)z> = ||z||²+h*sum_r d_r|z_r|²+h*kappa*sum_{unordered edges}|z_r-z_s|²

proves the operator is positive definite, with minimal eigenvalue at least 1+h*d_min. Consequently

    ||z[n+1]|| <= (||z[n]||+h||f[n]||)/(1+h*d_min).

This is a **bounded finite transfer with external forcing**, not a proof that the full Navier–Stokes Fourier nonlinearity becomes banded. The full triadic convolution would obey k=p+q, with all compatible arithmetic residues; the missing out-of-band terms would require a separate, source-preserving signed residual before any PDE return. Here the physically solved equations are the crank torsional dynamics and an **actuated finite spectral response**, with the already explicit smooth ABC torus solution sampled as an independent bounded field.

The browser clamps each frequency source to the observed finite speed, limits spectral energy by a radial projection to E<=Emax, and separately reports projection loss. Clipping modifies the unfiltered linear update and is deliberately not hidden as physical dissipation. The energetic spring source and the forced harmonic source have **separate budgets**; no undocumented conservation law between them is asserted.

## Spatial path, moving object, bounded filtration and signed work

A real 3-vector direction is synthesized from W_k and its phase by

    H(t) = sum_{k=0}^{K} w_k Re(W_k exp(2*pi*i*k*t/64)) d_{k mod 7},

where d_r are explicitly chosen unit 3-vectors, w_k are the recorded positive low-pass weights, and the harmonic channels supply additional bounded gains. This vector, the current word-optimal tangent, and a small sampled ABC term yield a **bounded external drive F**. A separate translational mass m=1, drag gamma=1.12, and tether stiffness K_space=.43 satisfy the fully implicit physical law

    m (v_next-v)/h + gamma v_next + K_space*x_next = F,
    x_next = x + h*v_next.

The browser uses the closed form

    v_next = [m*v + h*(F-K_space*x)] / [m+h*gamma+h²*K_space].

Before filtration, multiply by h*v_next and use the quadratic polarization identity to obtain

    Delta( m|v|²/2 + K_space|x|²/2 )
      + m|Delta v|²/2 + K_space|Delta x|²/2
      + h*gamma*|v_next|² = h*F dot v_next.

Thus unforced dynamics dissipate energy; supplied force contributes **signed external work**. User-configurable filters cap |F|, |v|, |x| and ||z||², with the radius and speed projections explicitly counted. The source Lean theorem `radialClip_bounded` is a candidate exact-real statement of the radius filter. The spatial radius projection and velocity clipping change the unconstrained numerical recurrence and therefore require their own residual accounting for any theorem transporting unfiltered physical laws to a constrained browser trace. Browser finite-precision validation is a different matter from exact-real proof.

A bounded world position actually translates the mesh; cubic Catmull–Rom interpolation of graph-selected directions supplies C¹ transitions between finite waypoints. The world position remains generated by the mass/drag/tether equations; it is not teleported along the spline. The 3D trail is colored by the attained residue class. The camera orbit is off and the simulation is paused on initial load.

## Exact sofic word and finite optimality scope

The constructed finite graph has state `(parity: Bool, residue: Fin 7)`, with 14 states. Input alphabet is `{0,1}`. A 0 toggles parity and changes residue by +1 or +2 (mod 7). A 1 is allowed only in even parity, retains even parity and changes residue by +2 or +5. Every word has finitely many state paths. This graph's **full finite-word language** has an explicit finite presentation, making the **newly defined** language sofic. In particular `1001` is admitted and `101` is forbidden. The runtime searches *all 14 possible starting states*, not only a predetermined trace, and returns either a witness path or a rejection.

For an accepted word w, the cost is additive across edges; each increment is a nonnegative sum of prescribed turning curvature `c*(1-d_r·d_s)`, cyclic hop-length squared, spectral preference, a bandwidth-crossing penalty, and a fixed per-edge cost. A standard layered Viterbi recurrence computes the **minimum among admitted finite graph paths under this precise cost**. This is discrete/path-optimal, not globally optimal Navier–Stokes control or a solution to an unspecified physical optimization problem. The Lean finite existence theorem is over all accepted routes; correspondence of the JavaScript dynamic program to the theorem is still a named implementation-refinement obligation.

## Hostile checks and independent computation

- 0 input: motor, Fourier history, harmonic response and world translation are zero; initial simulation stays paused.
- No external torque: passive mechanical-energy inequality survives the additional passive observation; the harmonic subsystem has its own forcing/energy accounting.
- Ring band b=0: no inter-residue edges; b=2: remains sparse on the 7-cycle; cyclic wraparound edges are included and symmetric.
- K=1 and K=22: both have finite DFT support and the upper cutoff residual remains defined.
- Invalid symbol or length outside [1,40]: word rejected, prior route retained. `101` is forbidden while `1001` is accepted.
- Any admissible word: Viterbi search has a finite carrier of at most 14*2^length paths, so a minimum is attained. Cost formula and tie-breaking remain fixed at evaluation time.
- No claim that `GraphLanguage G` equals factors of an arbitrary source trace; no exact NS Fourier-triad residual is dropped.
- R=0 and nu<0 are outside the user slider domain; R>0 and nu>0 are enforced in the implementation.
- The positivity identity is a mathematical argument independent of the browser Cholesky implementation; a full second independent formal certificate is not yet supplied.

Local diagnostics from `/mnt/data/test_fourier_sofic.py`: syntax `node --check` passed. Chromium fallback, desktop 1140x800 and mobile 390x700: starts paused, no errors, all interaction buttons on 3em rail, word panel accepts `1001`/rejects `101`, filter panel changes bandwidth and energy cap, winding moves x with |x|<=radius, |v|<=speed, modal E<=budget, trace length>1, zero energy-law numerical violations in the sampled run, pause and reset freeze the scene. Chromium could not create a WebGL context in the test environment. A separate independent exhaustive enumerator checked all 510 binary words of length 1..8 against the runtime's min-cost Viterbi outcomes, including rejection and optimal cost; this is finite diagnostic evidence only, not all-word proof.

## Source identity and verification gates

Intended source: `GRWTSK/NumericalAnalysis/ResidueBandedFourierSoficPath.lean`. The source is linked to the concrete predecessor `CorkscrewSpringEnergy.lean` and to the repo's typed `ExactSoficLanguageCover.lean`. The DFT, cutoff residual, residue counting, banded-graph dissipation, exact spatial clipping, full graph-language presentation, and finite minimum existence have source candidate declarations.

Pinned current toolchain: Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root dependency or namespace migration was performed. At source publication, Lean elaboration/compilation: **NOT_RUN**; fresh kernel replay **NOT_RUN**; transitive axiom audit **NOT_RUN**; Chromium WebGL execution **NOT_RUN**; floating-point refinement to exact-real results **NOT_PROVED**. Static diagnostics/finite tests are not an acceptance receipt. Nonlinear NS-Galerkin exact return, the full out-of-band triadic residual and external-source trace-language equality are **not claimed**.

A future exact acceptance should compile at the exact source commit, inspect all transitive axioms, check the source-to-browser bounds and DFT spectrum at fixed 120 Hz, and independently certify the full orbit language if a claim about any external source is proposed. Newly supplied Lean source may need elaboration repair against the pinned APIs, without weakening claims or silently assuming missing mathematical bridges.
