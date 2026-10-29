# Rhetorical Role — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e79ac25ed8ffbbd22443cadbfbc50533e9e1079` · SHA-256 `8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Universe.Id
import Mathlib.Data.Fintype.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Transport-level rhetorical role vocabulary

The closed seven-role vocabulary is owned by the lower-level universe layer
because theorem-cell and external-response locators use it without importing
the rhetorical Hilbert implementation.
-/

namespace DAF.Universe

/-- Canonical closed rhetorical-role vocabulary. -/
inductive RhetoricalRole where
  | base
  | premise
  | conclusion
  | positive
  | negative
  | source
  | target
  deriving DecidableEq, Repr, Fintype

/-- Canonical transport tag.  Downstream runtimes may mirror this only as a
checked adapter to a Lean-generated manifest. -/
def RhetoricalRole.tag : RhetoricalRole → Nat
  | .base => 0
  | .premise => 1
  | .conclusion => 2
  | .positive => 3
  | .negative => 4
  | .source => 5
  | .target => 6

/-- Canonical lower-case transport spelling. -/
def RhetoricalRole.name : RhetoricalRole → String
  | .base => "base"
  | .premise => "premise"
  | .conclusion => "conclusion"
  | .positive => "positive"
  | .negative => "negative"
  | .source => "source"
  | .target => "target"

theorem RhetoricalRole.tag_injective : Function.Injective RhetoricalRole.tag := by
  intro left right equality
  cases left <;> cases right <;> simp_all [RhetoricalRole.tag]

end DAF.Universe
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1ae4e22fed0395a6f4e5eaf757e196d173f139d8dd2e9186052ae5ddd3fd86a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/RhetoricalRole/Variant8493189828b9d54013d113a7ccf2a50829453d95ec720aedca867bbcd3b5c4e2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
