# Semantic Realization Adapter — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42e6d85ff43bfe5ea743e8a33f06a69c2e316ea9` · SHA-256 `417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a055dc531812782fb156c710db711680592e2d72469ffa9704d47fbc2b5289d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SemanticRealizationAdapter/Variant417cea18cd7dbbc2fbbcdd19181ccbd77a19e60b6428467f30e4e75bab714ade.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
