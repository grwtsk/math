import Mathematics.Hilbert.SemanticRealization
import Mathematics.NeuralDiffusion.SpectralOrbit

/-!
# Coercive semantic-realization adapter

The older diffuser interface requires an injective real-linear encoder and a
partial decoder.  The canonical semantic realization can satisfy that
interface only through a coercive lower bound; positive semidefiniteness plus
an upper bound is insufficient.
-/

noncomputable section

namespace Mathematics.NeuralDiffusion

open Mathematics.Hilbert

universe u

/--
Coercivity supplies the injective real-linear encoder and its exact inverse on
the encoded range.
-/
def CertifiedPartialRealization.ofCoerciveSemanticRealization
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility :
      CoerciveKernelCompatibility data kernel)
    (certificateAddress : ObjectAddress) :
    CertifiedPartialRealization
      (Concept.BanachCarrier data)
      (KernelSpace kernel) where
  encode :=
    (banachToHilbert compatibility.toKernelCompatibility).restrictScalars ℝ
  encode_injective := compatibility.injective
  decodeDomain :=
    Set.range
      ((banachToHilbert
        compatibility.toKernelCompatibility).restrictScalars ℝ)
  encoded_mem := fun value ↦ ⟨value, rfl⟩
  decode := fun encoded ↦
    Classical.choose encoded.property
  decode_encode := by
    intro value
    have chosenEquation :=
      Classical.choose_spec
        (show
          (banachToHilbert
              compatibility.toKernelCompatibility).restrictScalars ℝ
              value ∈
            Set.range
              ((banachToHilbert
                compatibility.toKernelCompatibility).restrictScalars ℝ)
          from ⟨value, rfl⟩)
    change
      banachToHilbert compatibility.toKernelCompatibility
          (Classical.choose _) =
        banachToHilbert compatibility.toKernelCompatibility value
      at chosenEquation
    exact compatibility.injective chosenEquation
  realizationCertificate := certificateAddress

end Mathematics.NeuralDiffusion
