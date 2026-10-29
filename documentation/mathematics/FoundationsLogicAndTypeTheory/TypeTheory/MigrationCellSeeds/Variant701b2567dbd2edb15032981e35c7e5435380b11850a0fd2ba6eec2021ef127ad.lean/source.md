# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.MigrationCellSeeds.Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf7a0b20060cd03a7c30e5bf3de55d0d8e55616e` · SHA-256 `701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import LeanCompiledTyping
/- Authored source-role scenarios only. Human direction: grwtsk contributors;
   implementation: OpenAI Codex. No historical authorship/fork/originality claim.
   Nat.add_zero remains upstream Lean authority; these fixtures establish no new mathematics. -/
namespace GRWTSK.MigrationCellSeeds
def localFamily : Nat → Nat
  | 0 => 0
  | n + 1 => localFamily n + 1
theorem localFamily_zero : localFamily 0 = 0 := rfl
theorem externalRamp (n : Nat) : n + 0 = n := Nat.add_zero n
-- An authored adaptation scenario for the user-fork policy controls.
def userForkAdaptation (n : Nat) : Nat := n + 0
theorem mixedAttribution (n : Nat) : n = n := rfl
theorem conditional (n : Nat) (h : n = 0) : n + 0 = 0 := by simpa using h
theorem negative : (0 : Nat) ≠ 1 := Nat.zero_ne_one
end GRWTSK.MigrationCellSeeds
open Lean Elab Command
elab "#audit_seed_cells" : command => liftTermElabM do
  let env ← getEnv
  for n in #[`GRWTSK.MigrationCellSeeds.localFamily, `GRWTSK.MigrationCellSeeds.localFamily_zero,
    `GRWTSK.MigrationCellSeeds.externalRamp, `GRWTSK.MigrationCellSeeds.userForkAdaptation,
    `GRWTSK.MigrationCellSeeds.mixedAttribution, `GRWTSK.MigrationCellSeeds.conditional,
    `GRWTSK.MigrationCellSeeds.negative] do
    let some info := env.find? n | throwError "missing seed declaration"
    let some body := info.value? true | throwError "missing seed body"
    Meta.checkWithKernel body
    unless (← Meta.isDefEq (← Meta.inferType body) info.type) do throwError "seed body/type drift"
    let axs ← collectAxioms n
    if axs.contains ``sorryAx then throwError "seed placeholder"
    logInfo m!"SEED::{n}"
    logInfo <| MessageData.ofFormat <| Format.text <| (Json.mkObj [
      ("name", toJson n.toString), ("type", LeanCompiledTyping.exprJson info.type),
      ("body", LeanCompiledTyping.exprJson body), ("axioms", toJson (axs.map toString))]).compress
  let some eqs ← Meta.getEqnsFor? `GRWTSK.MigrationCellSeeds.localFamily | throwError "missing recursive family"
  unless eqs.contains `GRWTSK.MigrationCellSeeds.localFamily.eq_1 && eqs.contains `GRWTSK.MigrationCellSeeds.localFamily.eq_2 do throwError "generated owner drift"
  logInfo m!"SEED_FAMILY::{eqs}"
#audit_seed_cells
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ea67197dfa1ad0405b4ce3be645546278896c316ad29af7490f1707134cc507 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/MigrationCellSeeds/Variant701b2567dbd2edb15032981e35c7e5435380b11850a0fd2ba6eec2021ef127ad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
