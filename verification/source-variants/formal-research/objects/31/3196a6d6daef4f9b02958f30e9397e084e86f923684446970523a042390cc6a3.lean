import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PacketModel
import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Fixed-Hilbert operator pullback
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

universe uHilbert

noncomputable def operatorPullback
    {Hilbert : Type uHilbert}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (transport defect : HilbertEnd Hilbert) :
    HilbertEnd Hilbert :=
  transport.adjoint.comp
    (defect.comp transport)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
