import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Matched positive: both a theorem proof and exact model alignment are supplied.
example (B : SourceBoundWeakToStrong N) (E : ModelEquiv (portModel P) N) :
    ExternalAdmission P N where
  externalTheorem := B
  alignment := E
