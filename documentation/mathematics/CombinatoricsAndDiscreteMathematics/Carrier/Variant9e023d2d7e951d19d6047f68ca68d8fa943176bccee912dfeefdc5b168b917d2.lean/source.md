# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Carrier.Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d67e5aebb92f9943f04b091183c49b8d6489dfa` · SHA-256 `9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Integration.WorldModelPrototype.Models
import Surface.ContinuousAssurance.WorldModel.Carrier
import Mathlib.Data.Fintype.Sum
import Mathlib.Tactic.DeriveFintype

/-!
# The exact finite communication carrier

The prototype carrier has five vertices, six directed translation edges, and
two declared two-cells.  Incidence is only finite combinatorial metadata: it
does not manufacture a semantic translation or make adjacent models
compatible.
-/

namespace DAF.Integration.WorldModelPrototype

open Surface.ContinuousAssurance
open Surface.ContinuousAssurance.WorldModel

/-- Vertices of the exact five-model prototype. -/
inductive PrototypeVertex
  | P | B | G | S | H
  deriving DecidableEq, Repr, Fintype

/-- Six typed translation-edge names. -/
inductive PrototypeEdge
  | τPB | τGP | τGB | τBS | τSH | τPH
  deriving DecidableEq, Repr, Fintype

/-- The two declared finite coherence faces. -/
inductive PrototypeFace
  | ΔGPB | ΔPBSH
  deriving DecidableEq, Repr, Fintype

/-- Graded cells of the two-dimensional semi-simplicial carrier. -/
inductive PrototypeCell
  | vertex (value : PrototypeVertex)
  | edge (value : PrototypeEdge)
  | face (value : PrototypeFace)
  deriving DecidableEq, Repr, Fintype

/-- Source and target of each directed translation edge. -/
def prototypeEdgeEndpoints : PrototypeEdge → PrototypeVertex × PrototypeVertex
  | .τPB => (.P, .B)
  | .τGP => (.G, .P)
  | .τGB => (.G, .B)
  | .τBS => (.B, .S)
  | .τSH => (.S, .H)
  | .τPH => (.P, .H)

/-- Edge boundary of each declared two-cell. -/
def prototypeFaceEdges : PrototypeFace → Finset PrototypeEdge
  | .ΔGPB => {.τGP, .τPB, .τGB}
  | .ΔPBSH => {.τPB, .τBS, .τSH, .τPH}

/-- Exact vertex support of any carrier cell. -/
def prototypeCellVertices : PrototypeCell → Finset PrototypeVertex
  | .vertex vertex => {vertex}
  | .edge edge =>
      {prototypeEdgeEndpoints edge |>.1, prototypeEdgeEndpoints edge |>.2}
  | .face .ΔGPB => {.G, .P, .B}
  | .face .ΔPBSH => {.P, .B, .S, .H}

/-- Cell dimension. -/
def prototypeCellDimension : PrototypeCell → Nat
  | .vertex _ => 0
  | .edge _ => 1
  | .face _ => 2

/-- Incidence is exact support inclusion together with dimension order. -/
def PrototypeIncident (small large : PrototypeCell) : Prop :=
  prototypeCellVertices small ⊆ prototypeCellVertices large ∧
    prototypeCellDimension small ≤ prototypeCellDimension large

instance (small large : PrototypeCell) : Decidable (PrototypeIncident small large) := by
  unfold PrototypeIncident
  infer_instance

/-- The exact finite carrier used by the integrated prototype. -/
def prototypeCarrier : CommunicationCarrier where
  Cell := PrototypeCell
  cellFintype := inferInstance
  cellDecEq := inferInstance
  dimension := prototypeCellDimension
  incident := PrototypeIncident
  incidentDecidable := inferInstance
  incidenceFinite := fun _ => Set.toFinite _
  identity := ⟨"world-model-carrier:five-model-prototype-v1"⟩

/-- Three selected opens in the finite cover. -/
inductive PrototypeOpen
  | U0 | U1 | U2
  deriving DecidableEq, Repr, Fintype

/-- Vertex content of each selected open. -/
def prototypeOpenVertices : PrototypeOpen → Finset PrototypeVertex
  | .U0 => {.G, .P, .B}
  | .U1 => {.P, .B, .S}
  | .U2 => {.B, .S, .H}

/-- The chosen cover consists of exactly `U0`, `U1`, and `U2`. -/
def prototypeCover : Finset PrototypeOpen := Finset.univ

@[simp] theorem prototypeCover_card : prototypeCover.card = 3 := by decide

/-- Every prototype vertex is attended by at least one selected open. -/
theorem prototypeCover_covers_vertices (vertex : PrototypeVertex) :
    ∃ openRegion ∈ prototypeCover,
      vertex ∈ prototypeOpenVertices openRegion := by
  cases vertex
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U0, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U1, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩
  · exact ⟨.U2, by simp [prototypeCover], by simp [prototypeOpenVertices]⟩

/-- The carrier has exactly thirteen cells: five vertices, six edges, two faces. -/
theorem prototypeCarrier_card : Fintype.card prototypeCarrier.Cell = 13 := by
  decide

/-- Declared adjacency remains distinct from semantic compatibility. -/
theorem prototype_incidence_does_not_supply_translation :
    prototypeCarrier.incident (.vertex .P) (.edge .τPB) ∧
      composeRelation .illustrativeProjection .theoremTransport = none := by
  constructor
  · decide
  · rfl

end DAF.Integration.WorldModelPrototype
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=08b3943a9b658c872209b98fad1965ebd1976e2fcffa63f678689d0db5e41f10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Carrier/Variant9e023d2d7e951d19d6047f68ca68d8fa943176bccee912dfeefdc5b168b917d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
