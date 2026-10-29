-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EuclidBook.Variant83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.EuclidBook.Variant83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959","mathematical_subject":"Logic.SetTheory","original_sha256":"83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Provenance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Historical provenance for Euclid's Elements

Book and item coordinates are detachable source provenance.  They do not
contain an `ElementId`, a theorem proof, or an authority constructor.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.EuclidBook.Variant83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959

namespace Mathematics.Geometry

inductive EuclidBook
  | one | two | three | four | five | six | seven
  | eight | nine | ten | eleven | twelve | thirteen
  deriving DecidableEq, Repr

inductive HistoricalPlace
  | commonPreamble
  | book (book : EuclidBook)
  deriving DecidableEq, Repr

inductive HistoricalItemKind
  | definition
  | postulate
  | commonNotion
  | proposition
  deriving DecidableEq, Repr

/-- One one-based coordinate in a historical presentation. -/
structure HistoricalCoordinate where
  place : HistoricalPlace
  kind : HistoricalItemKind
  ordinal : Nat
  ordinal_positive : 0 < ordinal

/-- Editorial information attached to, but erased from, semantic content. -/
structure HistoricalProvenance where
  coordinate : HistoricalCoordinate
  displayLabel : String
  note : String := ""

namespace HistoricalProvenance

def commonNotion
    (ordinal : Nat)
    (ordinal_positive : 0 < ordinal)
    (displayLabel : String) :
    HistoricalProvenance where
  coordinate := {
    place := .commonPreamble
    kind := .commonNotion
    ordinal
    ordinal_positive
  }
  displayLabel

def bookDefinition
    (book : EuclidBook)
    (ordinal : Nat)
    (ordinal_positive : 0 < ordinal)
    (displayLabel : String) :
    HistoricalProvenance where
  coordinate := {
    place := .book book
    kind := .definition
    ordinal
    ordinal_positive
  }
  displayLabel

def postulate
    (ordinal : Nat)
    (ordinal_positive : 0 < ordinal)
    (displayLabel : String) :
    HistoricalProvenance where
  coordinate := {
    place := .commonPreamble
    kind := .postulate
    ordinal
    ordinal_positive
  }
  displayLabel

def bookProposition
    (book : EuclidBook)
    (ordinal : Nat)
    (ordinal_positive : 0 < ordinal)
    (displayLabel : String)
    (note : String := "") :
    HistoricalProvenance where
  coordinate := {
    place := .book book
    kind := .proposition
    ordinal
    ordinal_positive
  }
  displayLabel
  note

end HistoricalProvenance

end Mathematics.Geometry
