-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PolarTraceSystem.Variant660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PolarTraceSystem.Variant660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/PolarTraceSystem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.OperatorPullback
import Mathematics.SemiLocalDefect.ResidueDeflection.Graph

/-!
# Fixed-Hilbert polar trace system

The graph cut supplies the safe-arc predicate.  Packet covariance and packet
norm transport are proof fields, not consequences of graph scheduling.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PolarTraceSystem.Variant660eb36c47f08a6477f5bab52be293dc784c5f3aca91a1319229e4cecab43b4e

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure PolarTraceSystem
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph)
    (Hilbert : Type uHilbert)
    (Test : Type uTest)
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert] where
  defect :
    graph.Node → HilbertEnd Hilbert
  defect_positive :
    ∀ node,
      (defect node).IsPositive
  transport :
    Arc graph → HilbertEnd Hilbert
  packet :
    PacketTraceModel graph Hilbert Test
  packetCovariant :
    ∀ arc operator test,
      cut.safeArc arc = true →
        packet.energy arc.head operator test =
          packet.energy arc.tail
            (operatorPullback
              (transport arc) operator)
            test
  packetNormTransport :
    ∀ arc test,
      cut.safeArc arc = true →
        packet.packetNormSq arc.head test ≤
          ‖transport arc‖ ^ 2 *
            packet.packetNormSq arc.tail test
  digest : CertificateDigest

def PolarTraceSystem.packetEnergy
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (node : graph.Node)
    (test : Test) : ℝ :=
  system.packet.energy node
    (system.defect node) test

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
