# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Where.Variantae1b4fdaaf20dc29021257fbd6546a765c55dc5ad66e8e0b3f83055a1aa3b090

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ec9cc43009b645919b799168b895e82af8c25cd` · SHA-256 `ae1b4fdaaf20dc29021257fbd6546a765c55dc5ad66e8e0b3f83055a1aa3b090`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.Where
import Std.Tactic.GuardMsgs

-- Return to pristine state
set_option linter.missingDocs false

/-- info: -- In root namespace with initial scope -/
#guard_msgs in #where

noncomputable section
/-- info: noncomputable section -/
#guard_msgs in #where
end

namespace WhereTest
variable (x : Nat) (α : Type)
/--
info: namespace WhereTest

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

universe u v w

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)
-/
#guard_msgs in #where

set_option pp.piBinderTypes false

/--
info: namespace WhereTest

universe u v w

variable (x : Nat) (α : Type)

set_option pp.piBinderTypes false
-/
#guard_msgs in #where
end WhereTest

open Lean Meta

/--
info: open Lean Lean.Meta
-/
#guard_msgs in #where

open Elab hiding TermElabM

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
-/
#guard_msgs in #where

open Command Std
open Array renaming map -> listMap

/--
info: open Lean Lean.Meta
open Lean.Elab hiding TermElabM
open Lean.Elab.Command Std
open listMap → Array.map
-/
#guard_msgs in #where
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1906236671f2d3143f204e376d4c3d657350929567008e39b820c6daae11f884 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Where/Variantae1b4fdaaf20dc29021257fbd6546a765c55dc5ad66e8e0b3f83055a1aa3b090.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
