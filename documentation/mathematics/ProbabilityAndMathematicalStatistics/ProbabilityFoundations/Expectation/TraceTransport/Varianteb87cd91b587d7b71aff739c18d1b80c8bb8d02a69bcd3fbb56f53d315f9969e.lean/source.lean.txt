-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.PolarTraceSystem.Variant1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.PolarTraceSystem.Variant1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/TraceTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.PhaseRepresentation
import Mathematics.SemiLocalDefect.ResidueDeflection.PolarizedSheaf
import Mathematics.SemiLocalDefect.Trace.Packet

/-!
# Covariant transport of defect packets

Trace conservation is derived from an explicit `T* D T` covariance law.  The
phase representation, positive-amplitude channel, packet covariance, and total
transport coupling remain distinct certificate fields.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.PolarTraceSystem.Variant1ad5c2315c58b5283753d75f6cc47e1a3ab551c3a47f2bf6e07669f10147a29c

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uTest

def operatorConjugate
    {model : OperatorModel}
    (operations :
      Hardy.OperatorComposition model)
    (transport operator : model.Operator) :
    model.Operator :=
  operations.compose
    (operations.adjoint transport)
    (operations.compose operator transport)

structure PolarTraceSystem
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (model : OperatorModel)
    (Test : Type uTest) where
  polarized : PolarizedTransport cut
  phaseRepresentation :
    PhaseOperatorRepresentation model
  phaseOperator :
    Arc graph → model.Operator
  phase_realized :
    ∀ arc,
      phaseOperator arc =
        phaseRepresentation.operator
          (polarized.phase.phase arc)
  transportOperator :
    Arc graph → model.Operator
  transportCoupling : Prop
  transportCouplingProof :
    transportCoupling
  defect :
    graph.Node → model.Operator
  defect_selfAdjoint :
    ∀ node,
      model.SelfAdjoint (defect node)
  packet :
    graph.Node →
      Trace.DefectPacket model Test
  packetCovariance : Prop
  packetCovarianceProof :
    packetCovariance
  transportTraceLaw :
    ∀ arc test,
      (packet arc.head).energy test
          (defect arc.head) =
        (packet arc.tail).energy test
          (operatorConjugate
            phaseRepresentation.operations
            (transportOperator arc)
            (defect arc.head))

def polarPacketEnergy
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (node : graph.Node)
    (test : Test) : ℝ :=
  (system.packet node).energy test
    (system.defect node)

structure ExactTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test) where
  covariance :
    ∀ arc,
      operatorConjugate
          system.phaseRepresentation.operations
          (system.transportOperator arc)
          (system.defect arc.head) =
        system.defect arc.tail

theorem traceConserved_on_arc
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ExactTraceCompensation system)
    (arc : Arc graph)
    (test : Test) :
    polarPacketEnergy system arc.head test =
      polarPacketEnergy system arc.tail test := by
  unfold polarPacketEnergy
  rw [system.transportTraceLaw arc test,
    certificate.covariance arc]

theorem traceConserved_on_path
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
    (certificate :
      ExactTraceCompensation system)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test) :
    polarPacketEnergy system target test =
      polarPacketEnergy system source test := by
  induction path with
  | nil =>
      rfl
  | cons arc rest induction =>
      exact induction.trans
        (traceConserved_on_arc
          system certificate arc test)

end Mathematics.SemiLocalDefect.ResidueDeflection
