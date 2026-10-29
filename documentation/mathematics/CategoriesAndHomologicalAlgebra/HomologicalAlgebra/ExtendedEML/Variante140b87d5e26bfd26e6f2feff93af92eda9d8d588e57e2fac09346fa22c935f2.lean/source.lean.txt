import Surface.Legacy.BinaryLogicMatrix.DeclaredSurfaceFunction
import Surface.Legacy.BinaryLogicMatrix.EncodingProofs

namespace Surface.Legacy


inductive CoverageWitnessKind where
  | finiteEMLTree
  | binaryMatrix
  | bijectiveFlow
  | extendedClosure
  | measurableAtom
  | simpleApproximation
  | measurableLimit
  | certifiedFractal
  | zetaMobiusFractal
  | oracle
  | heatFlow
  | heatAveraging
  | frameCommutingHeatFlow
  | chainComplex
  | homologyStability
  | ricciFlow
  | ricciSurgery
  | extinctionTopology
  | infiniteTime
  | choice
  | certifiedLimit
  | certifiedPowerSeries
  | certifiedIntegral
deriving DecidableEq, Repr

inductive BijectivityStatus where
  | provedBijective
  | notBijective
  | notClaimed
  | requiresCertificate
deriving DecidableEq, Repr

inductive ExtendedEML where
  | finite : {k : Nat} -> EMLTree k -> ExtendedEML
  | binaryMatrixWitness :
      {rows cols : Nat} -> BinaryLogicMatrix rows cols -> ExtendedEML
  | bijectiveFlowWitness :
      {rows cols : Nat} -> BinaryLogicMatrixFlow rows cols -> ExtendedEML
  | constPi : ExtendedEML
  | constE : ExtendedEML
  | constI : ExtendedEML
  | neg : ExtendedEML -> ExtendedEML
  | inv : ExtendedEML -> ExtendedEML
  | add : ExtendedEML -> ExtendedEML -> ExtendedEML
  | sub : ExtendedEML -> ExtendedEML -> ExtendedEML
  | mul : ExtendedEML -> ExtendedEML -> ExtendedEML
  | div : ExtendedEML -> ExtendedEML -> ExtendedEML
  | pow : ExtendedEML -> ExtendedEML -> ExtendedEML
  | sqrt : ExtendedEML -> ExtendedEML
  | sin : ExtendedEML -> ExtendedEML
  | cos : ExtendedEML -> ExtendedEML
  | tan : ExtendedEML -> ExtendedEML
  | compose : ExtendedEML -> ExtendedEML -> ExtendedEML
  | finiteSum : List ExtendedEML -> ExtendedEML
  | finiteProduct : List ExtendedEML -> ExtendedEML
  | measurableAtom : CertifiedMeasurableFunction -> ExtendedEML
  | simpleApproximation : CertifiedSimpleApproximationRef -> ExtendedEML
  | measurableLimit : CertifiedMeasurableLimitRef -> ExtendedEML
  | fractalWitness : CertifiedNowhereDifferentiableFractalFunction -> ExtendedEML
  | zetaMobiusFractalWitness : ZetaMobiusFractalFunction -> ExtendedEML
  | oracleWitness : OracleRepresentableFunction -> ExtendedEML
  | heatFlowWitness : HeatFlowRepresentableObject -> ExtendedEML
  | heatAveragingWitness : HeatAveragingRepresentableObject -> ExtendedEML
  | chainComplexWitness : ChainComplexRepresentableObject -> ExtendedEML
  | homologyStabilityWitness : HomologyStableFlowObject -> ExtendedEML
  | ricciFlowWitness : RicciFlowRepresentableObject -> ExtendedEML
  | ricciSurgeryWitness : RicciSurgeryRepresentableObject -> ExtendedEML
  | extinctionTopologyWitness : ExtinctionTopologyObject -> ExtendedEML
  | infiniteTimeWitness : InfiniteTimeRepresentableFunction -> ExtendedEML
  | choiceWitness : ChoiceDependentObject -> ExtendedEML

namespace ExtendedEML

def size : ExtendedEML -> Nat
  | finite _ => 1
  | binaryMatrixWitness _ => 1
  | bijectiveFlowWitness _ => 1
  | constPi => 1
  | constE => 1
  | constI => 1
  | neg _ => 1
  | inv _ => 1
  | add _ _ => 1
  | sub _ _ => 1
  | mul _ _ => 1
  | div _ _ => 1
  | pow _ _ => 1
  | sqrt _ => 1
  | sin _ => 1
  | cos _ => 1
  | tan _ => 1
  | compose _ _ => 1
  | finiteSum _ => 1
  | finiteProduct _ => 1
  | measurableAtom _ => 1
  | simpleApproximation _ => 1
  | measurableLimit _ => 1
  | fractalWitness _ => 1
  | zetaMobiusFractalWitness _ => 1
  | oracleWitness _ => 1
  | heatFlowWitness _ => 1
  | heatAveragingWitness _ => 1
  | chainComplexWitness _ => 1
  | homologyStabilityWitness _ => 1
  | ricciFlowWitness _ => 1
  | ricciSurgeryWitness _ => 1
  | extinctionTopologyWitness _ => 1
  | infiniteTimeWitness _ => 1
  | choiceWitness _ => 1

def depth (w : ExtendedEML) : Nat :=
  size w

def witnessKind : ExtendedEML -> CoverageWitnessKind
  | finite _ => CoverageWitnessKind.finiteEMLTree
  | binaryMatrixWitness _ => CoverageWitnessKind.binaryMatrix
  | bijectiveFlowWitness _ => CoverageWitnessKind.bijectiveFlow
  | constPi => CoverageWitnessKind.extendedClosure
  | constE => CoverageWitnessKind.extendedClosure
  | constI => CoverageWitnessKind.extendedClosure
  | neg _ => CoverageWitnessKind.extendedClosure
  | inv _ => CoverageWitnessKind.extendedClosure
  | add _ _ => CoverageWitnessKind.extendedClosure
  | sub _ _ => CoverageWitnessKind.extendedClosure
  | mul _ _ => CoverageWitnessKind.extendedClosure
  | div _ _ => CoverageWitnessKind.extendedClosure
  | pow _ _ => CoverageWitnessKind.extendedClosure
  | sqrt _ => CoverageWitnessKind.extendedClosure
  | sin _ => CoverageWitnessKind.extendedClosure
  | cos _ => CoverageWitnessKind.extendedClosure
  | tan _ => CoverageWitnessKind.extendedClosure
  | compose _ _ => CoverageWitnessKind.extendedClosure
  | finiteSum _ => CoverageWitnessKind.extendedClosure
  | finiteProduct _ => CoverageWitnessKind.extendedClosure
  | measurableAtom _ => CoverageWitnessKind.measurableAtom
  | simpleApproximation _ => CoverageWitnessKind.simpleApproximation
  | measurableLimit _ => CoverageWitnessKind.measurableLimit
  | fractalWitness _ => CoverageWitnessKind.certifiedFractal
  | zetaMobiusFractalWitness _ => CoverageWitnessKind.zetaMobiusFractal
  | oracleWitness _ => CoverageWitnessKind.oracle
  | heatFlowWitness _ => CoverageWitnessKind.heatFlow
  | heatAveragingWitness _ => CoverageWitnessKind.heatAveraging
  | chainComplexWitness _ => CoverageWitnessKind.chainComplex
  | homologyStabilityWitness _ => CoverageWitnessKind.homologyStability
  | ricciFlowWitness _ => CoverageWitnessKind.ricciFlow
  | ricciSurgeryWitness _ => CoverageWitnessKind.ricciSurgery
  | extinctionTopologyWitness _ => CoverageWitnessKind.extinctionTopology
  | infiniteTimeWitness _ => CoverageWitnessKind.infiniteTime
  | choiceWitness _ => CoverageWitnessKind.choice

def requiredFoundation : ExtendedEML -> LogicalFoundation
  | finite _ => LogicalFoundation.classical
  | binaryMatrixWitness _ => LogicalFoundation.constructive
  | bijectiveFlowWitness _ => LogicalFoundation.bijectiveFiniteFlow
  | constPi => LogicalFoundation.classical
  | constE => LogicalFoundation.classical
  | constI => LogicalFoundation.classical
  | neg _ => LogicalFoundation.classical
  | inv _ => LogicalFoundation.classical
  | add _ _ =>
      LogicalFoundation.classical
  | sub _ _ =>
      LogicalFoundation.classical
  | mul _ _ =>
      LogicalFoundation.classical
  | div _ _ =>
      LogicalFoundation.classical
  | pow _ _ =>
      LogicalFoundation.classical
  | sqrt _ => LogicalFoundation.classical
  | sin _ => LogicalFoundation.classical
  | cos _ => LogicalFoundation.classical
  | tan _ => LogicalFoundation.classical
  | compose _ _ =>
      LogicalFoundation.classical
  | finiteSum _ => LogicalFoundation.classical
  | finiteProduct _ => LogicalFoundation.classical
  | measurableAtom _ => LogicalFoundation.measurable
  | simpleApproximation _ => LogicalFoundation.measurable
  | measurableLimit _ => LogicalFoundation.measurable
  | fractalWitness _ => LogicalFoundation.fractal
  | zetaMobiusFractalWitness _ => LogicalFoundation.fractal
  | oracleWitness _ => LogicalFoundation.oracle
  | heatFlowWitness _ => LogicalFoundation.heatFlow
  | heatAveragingWitness _ => LogicalFoundation.heatAveraging
  | chainComplexWitness _ => LogicalFoundation.chainComplex
  | homologyStabilityWitness _ => LogicalFoundation.homologyStability
  | ricciFlowWitness _ => LogicalFoundation.ricciFlow
  | ricciSurgeryWitness _ => LogicalFoundation.ricciSurgery
  | extinctionTopologyWitness _ => LogicalFoundation.extinctionTopology
  | infiniteTimeWitness _ => LogicalFoundation.infiniteTime
  | choiceWitness _ => LogicalFoundation.choice

def bijectivityStatus : ExtendedEML -> BijectivityStatus
  | bijectiveFlowWitness _ => BijectivityStatus.provedBijective
  | heatAveragingWitness A =>
      if A.bijective then BijectivityStatus.requiresCertificate
      else BijectivityStatus.notClaimed
  | _ => BijectivityStatus.notClaimed

theorem extended_size_pos (w : ExtendedEML) :
    0 < size w := by
  cases w <;> simp [size]

theorem extended_depth_le_size (w : ExtendedEML) :
    depth w ≤ size w := by
  simp [depth]

theorem bijectiveFlowWitness_is_bijective
    (F : BinaryLogicMatrixFlow rows cols) :
    (ExtendedEML.bijectiveFlowWitness F).bijectivityStatus =
      BijectivityStatus.provedBijective := by
  rfl

theorem heatAveragingWitness_not_bijective_without_certificate
    (A : HeatAveragingRepresentableObject) :
    A.bijective = false ->
      (ExtendedEML.heatAveragingWitness A).bijectivityStatus ≠
        BijectivityStatus.provedBijective := by
  intro h hstatus
  simp [bijectivityStatus, h] at hstatus

end ExtendedEML

theorem extended_size_pos (w : ExtendedEML) :
    0 < ExtendedEML.size w :=
  ExtendedEML.extended_size_pos w

theorem extended_depth_le_size (w : ExtendedEML) :
    ExtendedEML.depth w ≤ ExtendedEML.size w :=
  ExtendedEML.extended_depth_le_size w

end Surface.Legacy
