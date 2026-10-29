import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Hostile mutation: a source-bound theorem alone cannot fill the alignment field.
example (B : SourceBoundWeakToStrong N) : ExternalAdmission P N where
  externalTheorem := B
