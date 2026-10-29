# Complete source: GRWTSK.Logic.ProofChecking.Checks.AnalyticArithmeticKernel

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0447ad96d908b004b657d4c63df6ca20edee18c` · SHA-256 `74f4bcb562df868a0825d9c17fb180501d2f7e04853857ab5c3212b8213a3532`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Logic.ProofEvidence.DirichletResponseStatus
import GRWTSK.Logic.ProofEvidence.MoebiusResponseStatus
import GRWTSK.Analysis.CausalTranslation.ExponentialResponse
import GRWTSK.Analysis.AsymptoticAnalysis.MassWeightedRecurrence
import GRWTSK.Logic.ProofEvidence.MoebiusPrimeShellStatus
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=726aaaf1f55ce894a95e39c766c7fe15832fbf816bbedcf57acfcc1f744ff425 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofChecking/Checks/AnalyticArithmeticKernel__SourceOccurrencea4bfcd6aac690a882b0fe0a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
