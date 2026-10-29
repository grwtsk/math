-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedSection.Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PolarizedSection.Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3","mathematical_subject":"Foundations.Unclassified","original_sha256":"90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/PolarizedSheaf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Cocycle

/-!
# Discrete polarized sheaf transport

Amplitude and residue phase remain separate coordinates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PolarizedSection.Variant90834d92c9106dd2fc159beedc722247b814156425146908fa48d20e79ca82e3

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

structure PolarizedSection where
  amplitude : PositiveAmplitude
  phaseResidue : Residue3
  phaseSafe : phaseResidue.Safe

structure PolarizedTransport
    {graph : GraphCut}
    (cut : ResidueDeflectionCut graph) where
  amplitude :
    PositiveAmplitudeTransport graph
  phase : PhaseTransport cut
  transportDigest : CertificateDigest

def PolarizedSection.transport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PolarizedTransport cut)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    PolarizedSection where
  amplitude :=
    polarizedSection.amplitude.transport
      transport.amplitude path
  phaseResidue :=
    path.transportResidue
      transport.phase.phase
      polarizedSection.phaseResidue
  phaseSafe :=
    path.transportResidue_safe
      transport.phase.phase
      polarizedSection.phaseSafe

theorem PolarizedSection.transport_amplitude_positive
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    (transport : PolarizedTransport cut)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    0 <
      (polarizedSection.transport
        transport path).amplitude.value :=
  (polarizedSection.transport
    transport path).amplitude.positive

end Mathematics.SemiLocalDefect.ResidueDeflection
