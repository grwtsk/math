import GRWTSK.Spectral.GapTransport
open GRWTSK.Spectral.GapTransport

-- A zero-energy coding cannot supply the injectivity premise needed by transport.
example : Function.Injective (fun _ : Bool => (0 : ℝ)) := by
  intro a b _h
  exact rfl
