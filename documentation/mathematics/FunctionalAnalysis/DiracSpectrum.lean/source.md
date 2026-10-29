# Dirac Spectrum — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9db10066110e8b1589b1a8208d4f1a7e15217a51` · SHA-256 `e4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Spectral.Tensor

/-!
# Folder.Spectral.DiracSpectrum

Radiation role: spectral-heat
BinaryMatrix spine: This module packages spectral tensors with Dirac-spectrum contracts, not BinaryMatrix data.
Ontology: spectral.tensor_with_dirac_spectrum
Pivot role: spectral
Zero typology: spectral
Contract boundary: contract
Composite stack role: field
-/

namespace Folder
namespace Spectral

/--
A concrete spectral tensor together with a Dirac-spectrum contract.
-/
structure TensorWithDiracSpectrum
    (s : Carrier.GridShape)
    (k : Nat) where
  tensor : SpectralTensor s k
  spectrum : DiracSpectrum
  spectrumActsOnTensor : Prop
  spectrumActsOnTensor_certified : spectrumActsOnTensor

theorem tensor_dirac_spectrum_acts
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    T.spectrumActsOnTensor :=
  T.spectrumActsOnTensor_certified

def TensorWithDiracSpectrum.toObject
    {s : Carrier.GridShape}
    {k : Nat}
    (T : TensorWithDiracSpectrum s k) :
    DiracSpectrumObject where
  shape? := some s
  channels? := some k
  tensorCarrier? := some (SpectralTensor s k)
  spectrum := T.spectrum
  categoricalObject := True
  categoricalObject_certified := trivial
  sourceLabel := "TensorWithDiracSpectrum.toObject"

end Spectral
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c57a1fd8c4ac02566b449193b92495d5e6177ad8bd3e842ac575a27a3f85972 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/DiracSpectrum/Variante4bdd17ce5423052d8c9fd0b88c2183d850b778ac7b351ebdfefe9313e851183.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
