# Gödel–Einstein observer metric, vorticity and exact per-family transport

Local attribution: grwtsk contributors. Research date: 2026-10-31.

## Primary sources, provenance and convention

Gödel, Kurt (1949), *An Example of a New Type of Cosmological Solutions of
Einstein's Field Equations of Gravitation*, Reviews of Modern Physics **21**,
447–450. DOI: https://doi.org/10.1103/RevModPhys.21.447 .
A direct normal-form comparison of the negative-time metric is available from
Oregon State University's *The Gödel Geometry*:
https://sites.science.oregonstate.edu/physics/coursewikis/DFGGR/bookinfo/updates/godel.html .
The paper is the physical source; the modern coordinate page is a sign/order
cross-check. The matrix and vorticity computations below were derived
independently from the stated metric, not copied from a theorem provider.

Gödel, Kurt (1949), *A remark about the relationship between relativity theory
and idealistic philosophy*, in Schilpp (ed.), *Albert Einstein:
Philosopher–Scientist*, pp. 555–562, reprinted in *Collected Works*, vol. II,
pp. 202–207. DOI: https://doi.org/10.1093/oso/9780195147216.003.0015 .
The book chapter concerns interpretations of time; it does not supply
a Lean proof of a Lorentzian theorem.

The normal form uses signature (-,+,+,+), coordinate order (t,x,y,z),
spacetime `R^4`, and a constant scale `a>0`:

 g = a²[-(dt+e^x dy)² + dx² + 1/2 e^(2x) dy² + dz²].
 θ0=a(dt+e^xdy), θ1=a dx, θ2=(a/sqrt2)e^x dy, θ3=a dz.
 g= -(θ0)²+(θ1)²+(θ2)²+(θ3)².

One must not change the source `a`, signature, observer normalization
or the factor `1/2` in the spatial y-axis when transporting this result.

## Exact coordinate and curvature calculation

The matrix of the metric is

  g_ab = a² *
      [[-1, 0, -E, 0],
       [ 0, 1,  0, 0],
       [-E, 0, -E²/2, 0],
       [ 0, 0, 0, 1]],  E=e^x,

and det(g)=-a^8*E²/2<0. The exact inverse is
  g^(ab)=a^(-2)*
      [[1,0,-2/E,0],
       [0,1,0,0],
       [-2/E,0,2/E²,0],
       [0,0,0,1]].

Direct symbolic Christoffel construction from
  Γ^a_bc=(1/2)g^(ad)(∂_b g_dc+∂_c g_db-∂_d g_bc)
finds the nonzero entries, up to symmetry in (b,c),
  Γ^t_tx=1, Γ^t_xy=E/2,
  Γ^x_ty=E/2, Γ^x_yy=E²/2,
  Γ^y_tx=-1/E.
Using curvature convention R^a_{bcd} =
  ∂_c Γ^a_bd-∂_d Γ^a_bc+Γ^a_ec Γ^e_bd-Γ^a_ed Γ^e_bc
gives:
  Ric_ab = [[1,0,E,0],[0,0,0,0],[E,0,E²,0],[0,0,0,0]],
  scalar curvature R=-1/a².
For dust-comoving u0=a^(-1)∂_t,
  u0_flat=-a(dt+Edy), g(u0,u0)=-1,
  Ric_ab=a^(-2)(u0_flat)_a (u0_flat)_b,
  Lambda=-1/(2a²), 8*pi*G*rho=1/a²,
  Ric_ab-(R/2)g_ab+Lambda*g_ab =
    a^(-2)(u0_flat)_a(u0_flat)_b.
This is a direct exact symbolic check of the Einstein field equation at
the stated conventions, NOT yet a fresh Lean curvature proof.

## Actual observer family and spatial tensor

For any fixed beta with |beta|<1 set
  gamma=(1-beta²)^(-1/2),
  u_beta=(gamma/a)(∂_t+beta∂_z).
These are unit future timelike observers with
  u_beta_flat=-gamma*a(dt+Edy)+gamma*beta*a dz.

The actual observer spatial tensor, NOT a positive-definite 4D metric, is
 h_beta=g+u_beta_flat tensor u_beta_flat.
Its exact positive coframe expression is

 h_beta=a²[dx² + E²/2 dy²
        + gamma²(dz-beta(dt+Edy))²].

For v tangent:
  h_beta(v,v)=a²[v_x²+E²/2 v_y²+
                     gamma²(v_z-beta(v_t+E v_y))²]>=0.
The zero locus is exactly
  v_x=0, v_y=0, v_z=beta*v_t.
Thus the kernel on the 4D tangent is the span of u_beta,
and h_beta is strictly positive on the 3D observer-rest quotient.
The word "root" refers to this *observer-specific kernel*, not the
coordinate origin and not the vanishing of rotational vorticity.

The model includes a genuine one-parameter isometry:
 F_s(t,x,y,z)=(t,x+s,e^(-s)y,z).
Its tangent map scales v_y by e^(-s). The identity
 e^(x+s)e^(-s)=e^x
preserves all four coframe response coordinates, both g and h_beta.

## Vorticity derived from the actual Levi-Civita connection

The y component of u_beta_flat is -gamma*a*e^x, hence
  d u_beta_flat=-gamma*a*e^x dx∧dy.
The observer is geodesic and the exterior two-form is horizontal:
  i_(u_beta) d u_beta_flat=0.

The standard projected vorticity is
  omega_ab=h_a^c h_b^d ∇_[c (u_beta)_d].
Because the connection is torsion-free,
  ∇_[c(u_beta)_d]=∂_[c(u_beta)_d].
Projection does not modify dx∧dy here, giving

  omega_beta=-(gamma*a*e^x/2) dx∧dy;
  omega_xy=-gamma*a*E/2, omega_yx=gamma*a*E/2.

The source's actual scalar contraction is

  (1/2)omega_ab omega^ab=gamma²/(2a²)>0.

In the dust-comoving case beta=0:
  omega_xy=-a*E/2,
  omega²=1/(2a²).
For every fixed allowed beta, the scalar is chart-independent, but
it is observer-dependent through gamma. There is NO vorticity-zero
member of this constant-z-boosted family for finite a>0. In particular
"positive except at the root" applies to the observer-SPATIAL quadratic
and to source-specific normed measurements, NOT to a conjectured
vanishing of this Gödel vorticity.

The actual spacetime Levi-Civita torsion tensor is identically zero,
T(X,Y)=∇_X Y-∇_Y X-[X,Y]=0, while omega_beta is nonzero.
This is not a contradiction: torsion and vorticity are distinct tensors.
The vorticity norm is positive because omega is spatial, not because
an arbitrary Lorentzian two-tensor contraction is positive.

## Proof-carrying root and exact transport gates

A new pure Lean RootFamily requires, **for each index i**:
  Carrier i, Root i, energy i, energy_nonneg,
  energy_eq_zero_iff_root.
An ExactTransport i j must provide a genuine source map and a signed
energy change with the actual equation:
  E_j(f(x))=E_i(x)+delta(x).
The defect is proved to equal E_j(f(x))-E_i(x). Composition preserves
both terms, including evaluation at the intermediate state. A zero defect
is an additional theorem, not a default.

Concrete consumers:
* The Gödel family indexes chart x for fixed (a,beta), with full 4D
  tangent states, Root=observer-spatial null, energy=h_beta(v,v).
  The nontrivial F_s isometry supplies a **proved zero-change** transport
  and preserves the separate Lorentz and vorticity tensors.
* The mechanical family uses the exact preexisting spring twist and
  potential energy. Simultaneous phase shift
  θ_c -> θ_c+inverseGear*delta, θ_r->θ_r+delta
  preserves twist, both speeds, mechanical energy and potential.
  Zero potential does NOT imply zero total mechanical energy or rest.
* The prime arithmetic family uses the repository's ACTUAL
  PrimeIndex and dependent Sigma Fiber with an auxiliary ZMod p phase.
  Its root is phase=0 and energy is the existing positive 0/1 finite
  phase cost. flic reflection is zero-energy-change and preserves the
  original integer source index and fully signed Möbius causal Gram.
  This does not bound A_j or any nonunit/Dirichlet character sector.
* Algebraic torsion, homological Smith/Bockstein torsion, elliptic
  translation torsion and Navier--Stokes modes have **no automatically
  instantiated RootFamily** from this increment. Each needs a genuinely
  selected norm, zero locus, source map and typed energy identity.
  Finite-stage positivity does not give a uniform family gap.

The Gödel metric is an independent physical target; no source-preserving
correspondence to the RH causal Gram or to NS regularity is asserted.

## Independent checks and hostile cases

A local SymPy script, `godel_observer_symbolic_check.py`, directly
constructs g, its inverse, Christoffel and Ricci tensors, u_beta,
h_beta, projected covariant omega, positive contraction and F_s.
All exact symbolic assertions PASS (no floating tolerance). Independent
random-number testing over 100 allowed scales/boosts/chart points finds
the same identities to floating roundoff (largest error <3e-13).

Hostile and limiting cases:
* beta approaches ±1: gamma and omega² diverge; no uniform bound on the
  entire noncompact observer family.
* a approaches 0+: curvature and vorticity diverge; a=0 is forbidden.
* v proportional to u_beta: spatial energy is zero even if v !=0.
* arbitrary vorticity or connection torsion contractions with Lorentz
  signature are not positive merely because this special 2-form is.
* Gödel chronology has global closed timelike curves in the known
  geometry, but neither their explicit smooth embeddings nor the
  Lorentzian geodesic/counterexample proof is included in these Lean
  declarations. The earlier finite graph no-clock theorem remains a
  separate, more limited source.

## Formal verification and remaining precise bridges

Published as new candidate files:
- GRWTSK/DifferentialGeometry/GodelObserverMetricVorticity.lean
- GRWTSK/FunctionalAnalysis/ExactRootAndTransportContract.lean
- GRWTSK/DifferentialGeometry/GodelObserverRootTransport.lean
- GRWTSK/NumericalAnalysis/SpringExactRootTransport.lean
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/
  AutomircronExactRootTransport.lean

Root project observed Lean v4.34.1 and Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PUBLICATION is not Lean acceptance.
Lean compilation, expected types, fresh kernel checking and transitive
axiom audit: NOT_RUN. Symbolic curvature is separately verified by
SymPy, not by Lean or an external theorem admission.

Remaining:
1. Compile all five files and transitive imports on exact pinned source;
   correct actual elaboration defects preserving theorem meaning.
2. Construct genuine chart tangent/cotangent bundles and an explicit
   Levi-Civita connection; prove the coordinate Christoffel coefficients
   and the equality of the coordinate vorticity with
   h_a^c h_b^d ∇_[c u_d] as a Lean tensor identity.
3. Formalize Ricci from this connection and Einstein's actual dust plus
   negative cosmological constant equation; retain exact sign.
4. If promoting Gödel chronology, construct an explicit CTC in the
   actual Lorentz geometry (not only a graph with a directed loop).
5. For every further arithmetic/physical family, require a real
   root/metric and a source-bound transport map with signed defect;
   do not turn generic records into free proofs of source-specific
   positivity or cancellation.

No native/remote execution, scheduled check, or unapproved external
proof import is authorized by publishing these source candidates.
