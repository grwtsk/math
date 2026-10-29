# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UserInputEvent20250705182732.Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `277321c89420b209a916280370e676baed7bc7c1` · SHA-256 `a98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- lean/cognition/Core/UserInputEvent.lean

namespace Cognition.Core

open Std (Duration)

/--
`UserInputEvent` represents a raw user-originated interaction.

These events are captured by the frontend or runtime sensorium,
and timestamped internally as `PerceptionEvent`.
-/
inductive UserInputEvent
  /-- A user prompt (free-form text input). -/
  | prompt (text : String)

  /-- A pause was observed (e.g. idle period without input). -/
  | pause (duration : Duration)

  /-- The user made an error (e.g. backspace or correction). -/
  | errorDetected

  /-- The user explicitly asked the system to take over. -/
  | explicitDelegate
  deriving Repr, DecidableEq

end Cognition.Core
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=71bb49403d4d08b691723abc4c6ef3c0fbc1f0daf8364458e555f5e1cbc8475a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UserInputEvent20250705182732/Varianta98b61b9baa0091173ad816745772ff8068217e89ff4eff5aa8ed29be644277f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
