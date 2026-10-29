-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphRealization.Varianted7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GraphRealization.Varianted7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67","mathematical_subject":"Foundations.Unclassified","original_sha256":"ed7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/GraphRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GraphRealization.Varianted7c41482868bc533da613f93a92c289049b97c46825c4c87e86ce8464451c67

universe uVertex uEdge uPoint uMorph uFactor

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An abstract carrier realizing a supplied graph.  `edgeSupport` is incidence
data only; `Point` is not asserted to be a topological realization.
-/
structure GraphRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge) where
  Point : Type uPoint
  vertexPoint : Vertex → Point
  edgeSupport : Edge → Point → Prop

/-- An edge has at least one point in the declared realization support. -/
def RealizesEdge
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G) (e : Edge) : Prop :=
  ∃ p, R.edgeSupport e p

/--
Exactly the sieve-admitted edges are represented by the supplied graph
realization.  Both directions are explicit research obligations.
-/
structure SieveRealizationCompatible
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {Morph : Type uMorph} {Factorization : Type uFactor}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization G)
    (sieve : FactoringSieve Morph Factorization)
    (occurs : Edge → Factorization → Prop) : Prop where
  admittedEdgeRealized :
    ∀ e, AdmissibleEdge sieve occurs e → RealizesEdge R e
  realizedEdgeAdmitted :
    ∀ e, RealizesEdge R e → AdmissibleEdge sieve occurs e

end FCRS.ControlledSpherical
