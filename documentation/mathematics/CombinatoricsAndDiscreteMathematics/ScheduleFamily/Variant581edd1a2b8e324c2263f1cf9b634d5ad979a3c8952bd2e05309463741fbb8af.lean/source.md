# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.ScheduleFamily.Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c853bdb901a4c2782cd45c4e1728608ee7d7c47` · SHA-256 `581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Registered finite schedule family
-/

namespace Mathematics.StratifiedBoundary

structure RegisteredScheduleFamily (Schedule : Type u)
    [DecidableEq Schedule] where
  familyId : String
  schedules : Finset Schedule
  nonempty : schedules.Nonempty
  authorityRef : String

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa3a16ab34bb577a2f69101b380488656349bb372cabfb1780cce667bc70ca9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ScheduleFamily/Variant581edd1a2b8e324c2263f1cf9b634d5ad979a3c8952bd2e05309463741fbb8af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
