# Time Public Edition2 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca353988a974db7f476285186933f5b2a44bd845` · SHA-256 `5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

prelude
public import Lean.Elab.Command

public section

/-!
# Defines `#time` command.

Time the elaboration of a command, and print the result (in milliseconds).
-/

namespace Lean.Elab.Time

open Command

@[builtin_command_elab Lean.Parser.timeCmd] def elabTimeCmd : CommandElab
  | `(#time%$tk $stx:command) => do
    let start ← IO.monoMsNow
    elabCommand stx
    logInfoAt tk m!"time: {(← IO.monoMsNow) - start}ms"
  | _ => throwUnsupportedSyntax

end Lean.Elab.Time
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e9bfea0ecd4cc25ab3123087fea210dd9c8a54ff5abec7a87b1260c9c3f90df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Time/Variant5445b1a7622f0daed7712a92f1ea3842fe80c1e1bbb0622e59574036637239df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
