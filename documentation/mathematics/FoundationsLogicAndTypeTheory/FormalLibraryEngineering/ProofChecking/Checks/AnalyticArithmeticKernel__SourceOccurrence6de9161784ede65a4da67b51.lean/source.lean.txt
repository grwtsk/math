import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.DirichletResponseStatus
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusResponseStatus
import GRWTSK.Analysis.CausalTranslation.ExponentialResponse
import GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ProofEvidence.MoebiusPrimeShellStatus
import GRWTSK.Analysis.InnerProductSpace.SignedWindowPacketCertificates
import Lean.Util.CollectAxioms

/-! Audit public and private declarations in the mathematical namespaces.
This rejects any transitive axiom other than Lean's standard foundations.
It does not turn open obligations or conditional implications into proofs.
-/
open Lean Elab Command

def P04Audit.check : CommandElabM Unit := do
  let env ← getEnv
  let prefixes := #[`ASBNP04, `PPNC, `PPNCP04, `EulerP04RH, `HSSCP04]
  let permitted := #[`propext, `Classical.choice, `Quot.sound]
  let mut checked : ℕ := 0
  for (name, _) in env.constants.toList do
    if prefixes.any (fun nsRoot => nsRoot.isPrefixOf (privateToUserName name.eraseMacroScopes)) then
      let axioms ← collectAxioms name
      for axiomName in axioms do
        unless permitted.contains axiomName do
          throwError "Unapproved axiom {axiomName} in {name}"
      checked := checked+1
  logInfo m!"Kernel axiom audit passed for {checked} declarations."

run_cmd P04Audit.check
