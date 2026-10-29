import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.NonBlowupObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes non-blowup obstruction contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure BlowupScenario where
  flowComplex : FlowComplex
  label : String

structure NonBlowupObstruction where
  scenario : BlowupScenario
  obstructionNonzeroIfBlowup : Prop
  obstructionNonzeroIfBlowup_certified : obstructionNonzeroIfBlowup
  sourceLabel : String

theorem ns_blowup_obstruction_if_supplied
    (O : NonBlowupObstruction) :
    O.obstructionNonzeroIfBlowup :=
  O.obstructionNonzeroIfBlowup_certified

end NavierStokes
end GrandChallenge
end Folder
