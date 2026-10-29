# Identity Alternative — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de7997c95a7242ec87e7f23996eeda18e195403` · SHA-256 `557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

set_option aesop.check.all true

/--
error: no such rule set: 'Nonexistent'
  (Use 'declare_aesop_rule_set' to declare rule sets.
   Declared rule sets are not visible in the current file; they only become visible once you import the declaring file.)
-/
#guard_msgs in
example : True := by
  aesop (rule_sets := [Nonexistent])
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b43f205293c82a054651d83e5a4183ab84a5bc84c94df5547c2c58b753d148a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/41/Variant557abcdd296ac5666da466a1ac98fea0dbb03aba64a70424919495df92edf737.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
