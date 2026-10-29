# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lintunused.Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1bb05ef2c48e1ca98f0cb538e7c5340674c91e1f` · SHA-256 `d6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

import Batteries.Tactic.Lint
import Batteries.Util.ProofWanted

public section

-- should be ignored as the proof contains sorry
/-- warning: declaration uses `sorry` -/
#guard_msgs in
def foo (h : 1 = 1) : Bool := sorry

-- should be ignored since it uses `_h`
def foo' (_h : 1 = 1) : Bool := true

-- should not be ignored
set_option linter.unusedVariables false in
def fooBad (h : 1 = 1) : Bool := true

theorem foo1_ok (_h : 1 = 2) : True := trivial

set_option linter.unusedVariables false in
theorem foo2_bad (h : 1 = 1) : True := trivial

theorem foo3_bad [Mul Nat] : True := trivial

set_option linter.unusedVariables false in
theorem foo4_bad [h : Mul Nat] : True := trivial

theorem foo5_ok [_h : Mul Nat] : True := trivial

theorem foo6_ok (_ : Nat) : True := trivial

set_option linter.unusedVariables false in
theorem foo7_bad [Mul Nat] [inst : Add Nat] {h : 1 = 1} ⦃h' : 0 = 0⦄ : True := trivial

-- deprecated names are ignored
set_option linter.unusedVariables false in
@[deprecated foo6_ok (since := "today")] theorem foo6_ok' (h : Nat) : True := trivial

-- private theorems are still linted
private theorem foo8_bad [Mul Nat] : True := trivial

-- `proof_wanted`/`def_wanted` is ignored
proof_wanted wanted (h : Bool) : True
def_wanted wanted' (h : Bool) : Bool

/--
error: /- The `unusedArguments` linter reports:
UNUSED ARGUMENTS.
This linter can be disabled with `@[nolint unusedArguments]`. -/
#check fooBad /- 1 unused argument:
  argument 1: (h : 1 = 1) -/
#check foo2_bad /- 1 unused argument:
  argument 1: (h : 1 = 1) -/
#check @foo3_bad /- 1 unused argument:
  argument 1: [Mul Nat] -/
#check @foo4_bad /- 1 unused argument:
  argument 1: [h : Mul Nat] -/
#check @foo7_bad /- 4 unused arguments:
  argument 1: [Mul Nat]
  argument 2: [inst : Add Nat]
  argument 3: {h : 1 = 1}
  argument 4: ⦃h' : 0 = 0⦄ -/
#check @foo8_bad /- 1 unused argument:
  argument 1: [Mul Nat] -/
-/
#guard_msgs in
#lint- only unusedArguments
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d3bfa6142861846c07d1cf29d95c48c867f2b754843cbf23d11c2b0975e4dbb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lintunused/Variantd6df80a54f0e255933f390e1a3a170f4ea367352269ff9da89c542fb1cd96c48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
