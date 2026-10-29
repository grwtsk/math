# Proofs — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d81f9be077d86c958118fcebab64a9e696cb7e1b` · SHA-256 `940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrixFlow.Averaging

namespace Surface
namespace Legacy

namespace BinaryLogicMatrixAveragingModel

theorem spectralAverage_correct (F : BinaryLogicMatrixAveragingModel) :
    F.WellFormed ->
      PaddingSound F.averageResult ∧
      ComparisonSound F.averageResult ∧
      SpectralChoiceSound F.averageResult ∧
      DivisorSound F.averageResult ∧
      MeanSound F.averageResult := by
  intro _
  exact ⟨flow_padding_sound F, flow_comparison_sound F, flow_spectral_choice_sound F,
    average_divisor_sound F, average_result_mean_sound F⟩

end BinaryLogicMatrixAveragingModel

theorem spectralAverage_correct (F : BinaryLogicMatrixSpectralAverage) :
    F.WellFormed ->
      BinaryLogicMatrixAveragingModel.PaddingSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.ComparisonSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.SpectralChoiceSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.DivisorSound F.averageResult ∧
      BinaryLogicMatrixAveragingModel.MeanSound F.averageResult :=
  BinaryLogicMatrixAveragingModel.spectralAverage_correct F

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=571e95850915ef2a44ebf5390a21870d62c4beb0673b5023f78275994870b818 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Proofs/Variant940c7c3dd22f94b71ab404b33838a4d1bf24efa93d255935f2f72502d2ca3256.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
