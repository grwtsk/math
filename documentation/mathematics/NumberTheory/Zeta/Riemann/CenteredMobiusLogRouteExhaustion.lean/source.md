# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogRouteExhaustion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1761895495d059e958aed6787b791ba815b2df7c` · SHA-256 `103398c5ca840ccfcf1f59731a8ce0d95263302f6e37a5302d5ae07cb276df73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module records the exact exhaustion point of the Green/Mobius-log route.
It does not assert RH or a Chebyshev-error equivalence to RH.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogChebyshevEquivalence
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

open GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

/-- The classical global square-root-plus-epsilon Chebyshev envelope supplies
the exact restored historical dyadic energy premise. -/
theorem allDyadicEnergyBound_of_globalChebyshev
    (h : GlobalChebyshevSquareRootPlusEpsilonBound) :
    AllDyadicEnergyBound :=
  allDyadicEnergyBound_of_prefixMangoldt
    (prefixMangoldt_of_globalChebyshev h)

/-- The entire route factors through the dyadic-prefix formulation. -/
theorem globalChebyshev_to_energy_factorization
    (h : GlobalChebyshevSquareRootPlusEpsilonBound) :
    AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound ∧
      AllDyadicEnergyBound := by
  have hp := prefixMangoldt_of_globalChebyshev h
  exact ⟨hp, allDyadicEnergyBound_of_prefixMangoldt hp⟩

/-- Explicit epistemic endpoint: proving the global Chebyshev envelope is now
a sufficient arithmetic obligation for this route. No converse to RH is
encoded here. -/
def GreenMobiusLogRouteFinalArithmeticObligation : Prop :=
  GlobalChebyshevSquareRootPlusEpsilonBound

theorem greenMobiusLogRouteFinalObligation_suffices
    (h : GreenMobiusLogRouteFinalArithmeticObligation) :
    AllDyadicEnergyBound :=
  allDyadicEnergyBound_of_globalChebyshev h

end GRWTSK.RiemannHypothesis
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=542e5cbb8beace1e0fe635cfbd245b6cea3e3140de6f319264c0a9aa88026196 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogRouteExhaustion.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
