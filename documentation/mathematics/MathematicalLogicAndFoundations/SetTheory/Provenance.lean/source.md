# Provenance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82ec9c1a62d28d1600b0f425f3a671a840fa0400` · SHA-256 `83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Core.Id

/-!
# Historical provenance for Euclid's Elements

Book and item coordinates are detachable source provenance.  They do not
contain an `ElementId`, a theorem proof, or an authority constructor.
-/

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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e2c6ee208418d6661abed1e40c8b5834a0f034bb04ce44f9b93140d029f20eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Provenance/Variant83d442723354e6a80c259536f73335b32d220c1dc4011ebca79b46b7d7cfe959.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
