import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Logic.PTSModelTransport
open GRWTSK.Logic.PortPureTypeSystem
universe u v w
variable {S : Type u} (P : Specification S) (N : Model.{v,w})
-- Hostile mutation: the exact source record is not a theorem proof.
example : SourceBoundWeakToStrong N where
  source := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
  «theorem» := GRWTSK.Logic.PTSModelTransport.openAIWeakToStrongSource
