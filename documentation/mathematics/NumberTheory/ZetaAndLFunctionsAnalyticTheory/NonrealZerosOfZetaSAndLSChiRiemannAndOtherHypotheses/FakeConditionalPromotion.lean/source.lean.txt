import Folder.RH.ConditionalCriteria

/-!
Negative fixture for RH conditional-discharge discipline.

This file may typecheck because all hard inputs are explicit parameters. It
must not be accepted by proof-safety or final-cone audits as an unconditional
RH proof.
-/

namespace Folder
namespace RH

theorem fake_riemann_hypothesis
    (O : RHOperatorData)
    (hsa : IsSelfAdjoint O.D)
    (hcompact : HasCompactResolvent O.D)
    (hzero :
      ∀ z : ℂ,
        H0Zero z ↔
          ∃ mu ∈ RHSpectrum O.D, spectralParameter mu = z)
    (hreal :
      ∀ mu ∈ RHSpectrum O.D, H0ZeroIsReal (spectralParameter mu))
    (htranslate : RiemannHypothesis ↔ H0RealZeros) :
    RiemannHypothesis := by
  exact rh_of_h0_selfadjoint_realization
    O hsa hcompact hzero hreal htranslate

end RH
end Folder
