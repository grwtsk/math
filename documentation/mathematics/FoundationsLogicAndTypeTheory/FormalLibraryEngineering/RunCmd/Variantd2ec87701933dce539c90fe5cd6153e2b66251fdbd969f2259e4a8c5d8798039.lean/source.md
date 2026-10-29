# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunCmd.Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeefab07d7cec77bef77584818a25228ee156dfc` · SHA-256 `d2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Elab.Tactic.ElabTerm
import Std.Tactic.RunCmd
import Std.Tactic.GuardMsgs

open Lean Elab Tactic

/-- info: hello world -/
#guard_msgs in
run_cmd logInfo m!"hello world"

example : True := by
  run_tac
    evalApplyLikeTactic MVarId.apply (← `(True.intro))

example : True := by_elab
  Term.elabTerm (← `(True.intro)) none
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e3d686a5ff742720b815e70e212686d23ff9c59c2c5f6c912c3c1dd2d6e7e30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunCmd/Variantd2ec87701933dce539c90fe5cd6153e2b66251fdbd969f2259e4a8c5d8798039.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
