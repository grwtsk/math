import Mathematics.AbelReynolds.Boundary
import Mathematics.AbelReynolds.Cost
import Mathematics.AbelReynolds.Template

/-!
# Independently checked SEA transcript

The transcript verifier is an explicit sound interface.  Runtime success does
not construct its soundness proof.
-/

namespace Mathematics.AbelReynolds

structure SEAInstance where
  curveId : String
  primeId : String
  fieldCardinality : Nat
  expectedPointCount : Nat
  boundary : BoundaryKey
  deriving DecidableEq, Repr

structure Congruence where
  modulus : Nat
  residue : Nat
  deriving DecidableEq, Repr

inductive SEAArithmeticStep
  | traceCongruence
      (modulus residue : Nat)
      (trace : Int)
  | crtReconstruction
      (congruences : List Congruence)
      (representative combinedModulus : Nat)
  | centeredLift
      (modulus residue : Nat)
      (lift : Int)
  | pointCount
      (fieldCardinality : Nat)
      (trace : Int)
      (pointCount : Nat)
  deriving DecidableEq, Repr

inductive SEAValueSort
  | traceResidue
  | crtRepresentative
  | trace
  | pointCount
  deriving DecidableEq, Repr

def SEAArithmeticStep.outputSort : SEAArithmeticStep → SEAValueSort
  | .traceCongruence .. => .traceResidue
  | .crtReconstruction .. => .crtRepresentative
  | .centeredLift .. => .trace
  | .pointCount .. => .pointCount

def SEAArithmeticStep.Valid : SEAArithmeticStep → Prop
  | .traceCongruence modulus residue trace =>
      2 ≤ modulus ∧
        residue < modulus ∧
        trace % (modulus : Int) = (residue : Int)
  | .crtReconstruction
      congruences representative combinedModulus =>
      congruences ≠ [] ∧
        congruences.Pairwise
          (fun left right =>
            Nat.Coprime left.modulus right.modulus) ∧
        combinedModulus =
          congruences.foldl
            (fun product congruence =>
              product * congruence.modulus) 1 ∧
        representative < combinedModulus ∧
        ∀ congruence ∈ congruences,
          2 ≤ congruence.modulus ∧
            congruence.residue < congruence.modulus ∧
            representative % congruence.modulus =
              congruence.residue
  | .centeredLift modulus residue lift =>
      2 ≤ modulus ∧
        residue < modulus ∧
        lift =
          if 2 * residue > modulus
          then (residue : Int) - (modulus : Int)
          else (residue : Int)
  | .pointCount fieldCardinality trace count =>
      2 ≤ fieldCardinality ∧
        (count : Int) =
          (fieldCardinality : Int) + 1 - trace ∧
        trace * trace ≤ 4 * (fieldCardinality : Int)

structure SEAOperation where
  operationId : String
  inputNodeIds : List String
  auxiliaryPrime : Option Nat
  arithmetic : SEAArithmeticStep
  outputSort : SEAValueSort
  dependencies : List Symbol
  symmetryProfile : String
  proofReferenceId : String
  costReceipt : ExactCostVector
  inputDigest : String
  outputDigest : String
  boundary : BoundaryKey
  deriving DecidableEq, Repr

def SEAOperation.MetadataValid (operation : SEAOperation) : Prop :=
  operation.operationId ≠ "" ∧
    operation.inputNodeIds ≠ [] ∧
    operation.outputSort = operation.arithmetic.outputSort ∧
    operation.symmetryProfile ≠ "" ∧
    operation.proofReferenceId ≠ ""

structure SEATranscript where
  operations : List SEAOperation
  trace : Int
  pointCount : Nat
  exactCost : ExactCostVector
  transcriptDigest : String
  deriving DecidableEq, Repr

def transcriptCost (transcript : SEATranscript) : ExactCostVector :=
  transcript.operations.foldl
    (fun total operation =>
      total.add operation.costReceipt)
    ExactCostVector.zero

def SEAOperationChain : List SEAOperation → Prop
  | []
  | [_] => True
  | left :: right :: remaining =>
      left.outputDigest = right.inputDigest ∧
        SEAOperationChain (right :: remaining)

structure SEATranscript.ArithmeticValid
    (seaInstance : SEAInstance)
    (transcript : SEATranscript) : Prop where
  operationsNonempty : transcript.operations ≠ []
  operationChain : SEAOperationChain transcript.operations
  everyOperationValid :
    ∀ operation ∈ transcript.operations,
      operation.arithmetic.Valid
  everyOperationMetadataValid :
    ∀ operation ∈ transcript.operations,
      operation.MetadataValid
  exactCostAdditive :
    transcript.exactCost = transcriptCost transcript
  pointCountFormula :
    (transcript.pointCount : Int) =
      (seaInstance.fieldCardinality : Int) + 1 -
        transcript.trace
  hasseBound :
    transcript.trace * transcript.trace ≤
      4 * (seaInstance.fieldCardinality : Int)
  expectedPointCount :
    transcript.pointCount = seaInstance.expectedPointCount

structure SEAVerifier where
  check : SEAInstance → SEATranscript → Bool
  sound :
    ∀ seaInstance transcript,
      check seaInstance transcript = true →
      transcript.ArithmeticValid seaInstance

structure VerifiedSEATranscript
    (verifier : SEAVerifier)
    (seaInstance : SEAInstance) where
  transcript : SEATranscript
  accepted : verifier.check seaInstance transcript = true

theorem verifiedTranscript_pointCount
    {verifier : SEAVerifier}
    {seaInstance : SEAInstance}
    (verified : VerifiedSEATranscript verifier seaInstance) :
    verified.transcript.pointCount =
      seaInstance.expectedPointCount :=
  (verifier.sound seaInstance verified.transcript
    verified.accepted).expectedPointCount

end Mathematics.AbelReynolds
