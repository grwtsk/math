import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Hardy compression defect realization

Compact positive Hardy defects are not identified with the monotone abstract
capacity until an equality or packet-trace realization is certified.
-/

namespace Mathematics.SemiLocalDefect.Hardy

universe uPrime uTest

structure HardyDefectFamily
    (model : OperatorModel)
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  defect : Finset Prime → model.Operator
  selfAdjoint :
    ∀ cut,
      model.SelfAdjoint (defect cut)
  nonnegative :
    ∀ cut,
      model.Nonnegative (defect cut)
  compact : Finset Prime → Prop
  compactProof :
    ∀ cut, compact cut
  digest : RealizationDigest

inductive HardyRealizationLevel
  | operatorEquality
  | packetTraceEquality
  | boundedPacketTraceDefect
deriving DecidableEq, Repr

structure HardyDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (hardy :
      HardyDefectFamily model Prime)
    (Test : Type uTest) where
  level : HardyRealizationLevel
  packetTrace :
    Test → model.Operator → ℝ
  remainder :
    Finset Prime → Test → ℝ
  operatorEquality :
    level = .operatorEquality →
      ∀ cut,
        capacity.defect cut =
          hardy.defect cut
  packetTraceEquality :
    level = .packetTraceEquality →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut)
  boundedPacketTraceDefect :
    level = .boundedPacketTraceDefect →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut) +
            remainder cut test

end Mathematics.SemiLocalDefect.Hardy
