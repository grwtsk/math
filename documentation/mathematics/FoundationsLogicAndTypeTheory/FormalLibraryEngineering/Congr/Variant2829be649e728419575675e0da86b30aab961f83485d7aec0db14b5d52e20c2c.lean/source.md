# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Congr.Variant2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59e6e0fbc8bd8fb3bb3ef48855601f2bf5aedbd6` · SHA-256 `2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Congr
public import Lean.Elab.Tactic.Basic

public section

namespace Lean.Elab.Tactic

namespace Lean.Elab.Tactic
@[builtin_tactic Parser.Tactic.congr] def evalCongr : Tactic := fun stx =>
  match stx with
  | `(tactic| congr $[$n?]?) =>
    let hugeDepth := 1000000
    let depth := n?.map (·.getNat) |>.getD hugeDepth
    liftMetaTactic fun mvarId => mvarId.congrN depth
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic


```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3d46be623adb6dd828f60067b710f7e9b9e7de7ad94b245d51e5138f110b6fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congr/Variant2829be649e728419575675e0da86b30aab961f83485d7aec0db14b5d52e20c2c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
