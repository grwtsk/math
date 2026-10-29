# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofDocstring.Variantaec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61c7898ffe2842eb9f298c369b58200fcd6c2207` · SHA-256 `aec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Architect
import ArchitectTest.MyNat

-- Test regular proof docstring

@[blueprint] theorem test : True := by
  /-- my test -/
  trivial

/-- info: my test -/
#guard_msgs in
open Lean Architect in
run_meta do
  let doc := getProofDocString (← getEnv) ``test
  logInfo doc

-- Test imported proof docstring (the presistence of proofDocStringExt)

/-- info: The base case follows from \cref{MyNat.zero_add}.

The inductive case follows from \cref{MyNat.succ_add}. -/
#guard_msgs in
open Lean Architect in
run_meta do
  let doc := getProofDocString (← getEnv) ``MyNat.add_comm
  logInfo doc
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=348a76293681c5b07dba5c52d8ff638a219948456fe498b121a8b535b200cfd3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProofDocstring/Variantaec29bc57e5d7f2d6ccf73a6265c6e887c960313766cf2c406810a1fab179cb0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
