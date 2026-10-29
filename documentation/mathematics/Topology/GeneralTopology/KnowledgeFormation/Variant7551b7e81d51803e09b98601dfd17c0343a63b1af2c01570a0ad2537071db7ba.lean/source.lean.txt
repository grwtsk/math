-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.KnowledgeDisposition.Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.KnowledgeDisposition.Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/System/KnowledgeFormation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.NeuralDiffusion.NamingResidue
import Mathematics.Projection.AbsoluteCompactification

/-!
# Certified knowledge formation

This module states the architecture as mathematics.

* a certified incidence singleton is a resolved routing anchor;
* a non-singleton routing fiber or persistent naming disagreement activates;
* external heat remains proposal-only;
* exact midpoint codes become elements only through certified realization;
* incidence anchors form a certified Hamming network;
* realized incidence codes sit in their absolute compactification.

No similarity threshold, retry count, embedding distance, or model vote
creates identity, a folder, or a theorem.
-/


namespace GRWTSK.Topology.GeneralTopology.KnowledgeDisposition.Variant5f5e300426e67287b511486783af21befb890188d6e888d7a25b8f96c837849b

namespace Mathematics.System

open Mathematics.Projection
open Mathematics.NeuralDiffusion

universe u v

/-- The three exact states visible to the knowledge-formation router. -/
inductive KnowledgeDisposition
    (Object : Type u) [DecidableEq Object]
    (width : Nat)
    (encode : Object → FiniteIncidenceCode width)
  | anchor (point : CertifiedIncidenceSingleton encode)
  | routingResidue (work : ResidueWorkItem Object (Fin width))
  | namingResidue (work : PersistentNamingResidue Object)

namespace KnowledgeDisposition

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/--
The activator is determined by the exact disposition, never by a scalar
similarity threshold or a finite disagreement count.
-/
def activationRequired :
    KnowledgeDisposition Object width encode → Bool
  | .anchor _ => false
  | .routingResidue _ => true
  | .namingResidue _ => true

@[simp] theorem incidence_anchor_activation_not_required
    (point : CertifiedIncidenceSingleton encode) :
    activationRequired (KnowledgeDisposition.anchor point) = false :=
  rfl

@[simp] theorem routing_residue_activates
    (work : ResidueWorkItem Object (Fin width)) :
    activationRequired
      (KnowledgeDisposition.routingResidue
        (encode := encode) work) = true :=
  rfl

@[simp] theorem naming_residue_activates
    (work : PersistentNamingResidue Object) :
    activationRequired
      (KnowledgeDisposition.namingResidue
        (width := width) (encode := encode) work) = true :=
  rfl

end KnowledgeDisposition

/--
The certified completion package.  It requires both exact graph connectivity
and certified realization of every recursively generated midpoint.  Compactness
of the associated Boolean closure is then supplied by
`absoluteKnowledgeCompactification_isCompact`.
-/
structure CertifiedKnowledgeFormation
    (Object : Type u) [DecidableEq Object]
    (width : Nat)
    (encode : Object → FiniteIncidenceCode width) where
  seed : Set (FiniteIncidenceCode width)
  network : IncidenceAnchorNetwork.{u, v} encode
  midpointTower : CertifiedMidpointRealizationTower encode seed
  asIncidence :
    FiniteIncidenceCode width → IncidenceCode (Fin width)

namespace CertifiedKnowledgeFormation

variable
    {Object : Type u} [DecidableEq Object]
    {width : Nat}
    {encode : Object → FiniteIncidenceCode width}

/-- The realized knowledge carrier has an actual compact closure. -/
theorem compact
    (formation : CertifiedKnowledgeFormation Object width encode) :
    IsCompact
      (AbsoluteKnowledgeCompactification
        (formation.asIncidence ∘ encode)) :=
  absoluteKnowledgeCompactification_isCompact
    (formation.asIncidence ∘ encode)

end CertifiedKnowledgeFormation

end Mathematics.System
