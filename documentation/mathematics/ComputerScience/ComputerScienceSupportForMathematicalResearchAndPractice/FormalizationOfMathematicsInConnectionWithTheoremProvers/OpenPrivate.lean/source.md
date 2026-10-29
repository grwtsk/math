# Open Private — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dbb126cad8f2804b5365f61dff8b8b49bfb9d78` · SHA-256 `94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.OpenPrivate

import BatteriesTest.OpenPrivateDefs



/-- error: Unknown identifier `secretNumber` -/
#guard_msgs in
#eval secretNumber


-- It works with one space between the tokens
/-- info: 2 -/
#guard_msgs in
open private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber


-- It also works with other kinds of whitespace between the tokens

/-- info: 2 -/
#guard_msgs in
open      private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber


/-- info: 2 -/
#guard_msgs in
open
  private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber

/-- info: 2 -/
#guard_msgs in
open /- Being sneaky! -/ private secretNumber from BatteriesTest.OpenPrivateDefs in
#eval secretNumber

/--
info: @[backward_defeq] private theorem secretNumber.eq_def : secretNumber✝ = 2 :=
Eq.refl secretNumber✝
-/
#guard_msgs in
open private secretNumber.eq_def from BatteriesTest.OpenPrivateDefs in
#print secretNumber.eq_def
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d513f3f353266e8f0d7c47acd4daf4917a9ecd4a94d90b6e8eb94c03f49c50a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OpenPrivate/Variant94d6b77a6b757124ee0723e0186087c715a5d24487730f2553955f4799764fe1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
