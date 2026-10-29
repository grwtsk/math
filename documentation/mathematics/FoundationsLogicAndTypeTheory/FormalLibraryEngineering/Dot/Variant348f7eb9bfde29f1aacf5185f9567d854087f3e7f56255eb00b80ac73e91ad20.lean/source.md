# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dot.Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86b25e5a0e4cfac3fed74884420feda190f7b6d8` · SHA-256 `348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ImportGraph

-- The `lake exe graph ...` command below expects ToTarget.lean to have already
-- been built, so we need some explicit ordering between this file and
-- ToTarget.lean. The easiest way to do this is just to import that file from
-- this one.
import ImportGraphTest.ToTarget

def readFile (path : System.FilePath) : IO String :=
  IO.FS.readFile path

def runGraphCommand : IO Unit := do
  let _ ← IO.Process.output {
    cmd := "lake"
    args := #["exe", "graph", "--to", "ImportGraphTest.ToTarget", "--mark-sorry", "ImportGraphTest/produced.dot"]
  }

def compareOutputs (expected : String) (actual : String) : IO Bool := do
  let expectedLines := expected.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  let actualLines := actual.splitOn "\n" |>.filter (·.trimAscii.toString.length > 0) |>.map (·.trimAscii.toString)
  pure (expectedLines == actualLines)

/-- info: Test passed: The graph command output matches the expected.dot file. -/
#guard_msgs in
#eval show IO Unit from do
  runGraphCommand
  let expectedOutput ← readFile "ImportGraphTest/expected.dot"
  let actualOutput ← readFile "ImportGraphTest/produced.dot"
  let isEqual ← compareOutputs expectedOutput actualOutput
  if isEqual then
    IO.println "Test passed: The graph command output matches the expected.dot file."
  else
    IO.println "Test failed: The graph command output does not match the expected.dot file."
    IO.println s!"Expected:\n{expectedOutput}"
    IO.println s!"Actual:\n{actualOutput}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=907a7f272fbb23e97ed23071acefabb86c32c9edd9c9ad07fcce3e9cc8060e4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Dot/Variant348f7eb9bfde29f1aacf5185f9567d854087f3e7f56255eb00b80ac73e91ad20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
