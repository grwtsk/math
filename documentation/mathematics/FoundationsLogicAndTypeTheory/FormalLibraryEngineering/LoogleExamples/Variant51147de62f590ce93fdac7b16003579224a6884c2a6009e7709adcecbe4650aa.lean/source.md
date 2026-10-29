# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoogleExamples.Variant51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f7abfcc9e30feb6c90ec2c269f9325a3ec1fb4c` · SHA-256 `51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module

public meta import LeanSearchClient.LoogleSyntax

public meta section

/-!
# Loogle Examples

Examples of using the Loogle API. The search is triggered by the word at the end of the query.
-/

-- #loogle List ?a → ?a

-- example := #loogle List ?a → ?a


-- set_option loogle.queries 1

-- example : 3 ≤ 5 := by
--   #loogle Nat.succ_le_succ
--   sorry

example : 3 ≤ 5 := by
  #loogle
  decide

#loogle Dist.dist, edist
-- example : 3 ≤ 5 := by
--   #loogle
--   decide

-- /-!
-- More examples to test comments do not interfere with the search or caching.
-- -/

-- #loogle ?a * _ < ?a * _ ↔ _
-- #loogle ?a * _ < ?a * _ ↔ _ /- foo -/
-- #loogle ?a * _ < ?a * _ ↔ _


-- comment
#loogle ?a * _ < ?a * _ ↔ _

/--
info: Loogle Search Results
  • #check Option.get! --  {α : Type u} [Inhabited α] : Option α → α
    Extracts the value from an `Option`, panicking on `none`.
-/
#guard_msgs in
  #loogle Option ?a → ?a, "get!"

/- hello -/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2862d5823ea750738d75dba159430649cde8dfdcc00a2875dd2272e88c2be9a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LoogleExamples/Variant51147de62f590ce93fdac7b16003579224a6884c2a6009e7709adcecbe4650aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
