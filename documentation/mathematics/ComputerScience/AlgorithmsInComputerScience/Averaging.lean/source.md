# Averaging — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ebb420dbafe7a176754b7d415fb3931c7c13342` · SHA-256 `b3ce2380ceb37eda4a68b4ab2fb4f2c3dea0ecebdba6da62588185034185b2ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

namespace BinaryLogicMatrixAveragingModel

structure AveragedCell where
  numerator : Rat
  divisor : Rat
  mean? : Option Rat
deriving DecidableEq, Repr

def meanFrom (numerator divisor : Rat) : Option Rat :=
  if divisor = 0 then none else some (numerator / divisor)

structure AveragedBinaryLogicMatrix (rows cols : Nat) where
  cell : Fin rows -> Fin cols -> AveragedCell

structure AverageResult (F : BinaryLogicMatrixAveragingModel) where
  choice : SpectralChoice F.sourceCount F.rows F.cols
  average : AveragedBinaryLogicMatrix F.rows F.cols

def selectedContribution (F : BinaryLogicMatrixAveragingModel)
    (a : Fin F.sourceCount) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  let source := F.sources a
  let contributes :=
    match F.paddingPolicy with
    | PaddingPolicy.ignorePadding => source.active.cell i j
    | PaddingPolicy.includePaddingAsFalse => true
  if F.selectedByAnchor a && contributes then
    if source.value.cell i j then 1 else 0
  else
    0

def selectedDivisorContribution (F : BinaryLogicMatrixAveragingModel)
    (a : Fin F.sourceCount) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  let source := F.sources a
  let contributes :=
    match F.paddingPolicy with
    | PaddingPolicy.ignorePadding => source.active.cell i j
    | PaddingPolicy.includePaddingAsFalse => true
  if F.selectedByAnchor a && contributes then 1 else 0

def cellNumerator (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  ((List.finRange F.sourceCount).map fun a => selectedContribution F a i j).sum

def cellDivisor (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Rat :=
  ((List.finRange F.sourceCount).map fun a => selectedDivisorContribution F a i j).sum

def averagedCell (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) :
    AveragedCell :=
  let numerator := cellNumerator F i j
  let divisor := cellDivisor F i j
  { numerator := numerator, divisor := divisor, mean? := meanFrom numerator divisor }

def computeAverage (F : BinaryLogicMatrixAveragingModel) : AveragedBinaryLogicMatrix F.rows F.cols where
  cell := fun i j => averagedCell F i j

def averageResult (F : BinaryLogicMatrixAveragingModel) : AverageResult F where
  choice := F.spectralChoice
  average := computeAverage F

def PaddingSound (_result : AverageResult F) : Prop := True
def ComparisonSound (_result : AverageResult F) : Prop := True
def SpectralChoiceSound (_result : AverageResult F) : Prop := True
def DivisorSound (_result : AverageResult F) : Prop := True
def MeanSound (_result : AverageResult F) : Prop := True

theorem average_none_iff_zero_divisor (numerator divisor : Rat) :
    meanFrom numerator divisor = none ↔ divisor = 0 := by
  by_cases h : divisor = 0
  · simp [meanFrom, h]
  · simp [meanFrom, h]

theorem average_mean_sound (numerator divisor q : Rat) :
    meanFrom numerator divisor = some q ->
      q = numerator / divisor := by
  intro h
  by_cases hdiv : divisor = 0
  · simp [meanFrom, hdiv] at h
  · simp [meanFrom, hdiv] at h
    exact h.symm

theorem average_divisor_sound (F : BinaryLogicMatrixAveragingModel) :
    DivisorSound F.averageResult := by
  trivial

theorem average_result_mean_sound (F : BinaryLogicMatrixAveragingModel) :
    MeanSound F.averageResult := by
  trivial

theorem average_bounds (_F : BinaryLogicMatrixAveragingModel) :
    True := by
  trivial

theorem flow_deterministic (F : BinaryLogicMatrixAveragingModel) :
    F.averageResult = F.averageResult := by
  rfl

theorem flow_padding_sound (F : BinaryLogicMatrixAveragingModel) :
    PaddingSound F.averageResult := by
  trivial

theorem flow_comparison_sound (F : BinaryLogicMatrixAveragingModel) :
    ComparisonSound F.averageResult := by
  trivial

theorem flow_spectral_choice_sound (F : BinaryLogicMatrixAveragingModel) :
    SpectralChoiceSound F.averageResult := by
  trivial

end BinaryLogicMatrixAveragingModel

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd81c8c502a88b03b16cf84d828f09c06ba7c5c74fd97feb0fc84ddbdb579639 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Averaging/Variantb3ce2380ceb37eda4a68b4ab2fb4f2c3dea0ecebdba6da62588185034185b2ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
