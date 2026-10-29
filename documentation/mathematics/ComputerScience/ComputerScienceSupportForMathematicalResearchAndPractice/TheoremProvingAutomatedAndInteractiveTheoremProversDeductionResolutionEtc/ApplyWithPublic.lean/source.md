# Apply With Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `742d4a71ea3cb8896a7e1549282e1733ea8647aa` · SHA-256 `402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Init
public meta import Lean.Elab.Eval
public meta import Lean.Elab.Tactic.ElabTerm
public meta import Lean.Elab.ConfigEval
public import Lean.Elab.ConfigEval

/-!
# The `applyWith` tactic

The `applyWith` tactic is like `apply`, but allows passing a custom configuration to the underlying
`apply` operation.
-/

public meta section

namespace Mathlib.Tactic
open Lean Parser Meta Elab Tactic Term

/-- A configuration with at least one configuration option.

In comparison, `optConfig` allows zero or more options.
-/
syntax manyConfig := (colGt Tactic.configItem)+

/-- Elaborator for the configuration in `apply (config := cfg)` syntax. -/
declare_config_elab elabApplyConfig ApplyConfig

/--
* `apply (config := cfg) e` allows for additional configuration (see `Lean.Meta.ApplyConfig`):
  * `newGoals` controls which new goals are added by `apply`, in which order.
  * `-synthAssignedInstances` will not synthesize instance implicit arguments if they have been
    assigned by `isDefEq`.
  * `+allowSynthFailures` will create new goals when instance synthesis fails, rather than erroring.
  * `+approx` enables `isDefEq` approximations (see `Lean.Meta.approxDefEq`).
-/
tactic_extension Lean.Parser.Tactic.apply

@[tactic_alt Lean.Parser.Tactic.apply]
-- We have to use `manyConfig` instead of `optConfig` to avoid ambiguous parses.
elab (name := applyWith) "apply" cfg:manyConfig ppSpace e:term : tactic => do
  let cfg ← elabApplyConfig cfg
  evalApplyLikeTactic (·.apply · cfg) e

end Mathlib.Tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c00609f9658dd3338aeef40a1d8b1707a7659ac9de9572e831e489a8940f9f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ApplyWith/Variant402039ec7fda842774c4a5695311382ef53a9f3930e4ee796c89a6bff6315436.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
