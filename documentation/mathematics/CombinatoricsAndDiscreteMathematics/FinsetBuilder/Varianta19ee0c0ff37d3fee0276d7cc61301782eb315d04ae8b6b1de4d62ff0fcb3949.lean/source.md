# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FinsetBuilder.Varianta19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `125a7a1801f104b282d7bf1f7f313086bcf07f41` · SHA-256 `a19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Fintype.Defs

variable {α : Type*} [Fintype α] {p : α → Prop} {s : Finset α} {a : α}
    [DecidablePred p] [DecidableEq α] [Singleton α (Finset α)] [HasCompl (Finset α)]

/-- info: {x | p x} : Finset α -/
#guard_msgs in
#check ({x | p x} : Finset α)

/-- info: {x ∈ s | p x} : Finset α -/
#guard_msgs in
#check ({x ∈ s | p x})

/-- info: {x ≠ a | p x} : Finset α -/
#guard_msgs in
#check ({x ≠ a | p x} : Finset α)

/-- info: {x ∉ s | p x} : Finset α -/
#guard_msgs in
#check ({x ∉ s | p x})

/-- info: {x : α | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x | p x} : Finset α)

/-- info: {x ∈ s | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ∈ s | p x})

/-- info: {x ≠ a | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ≠ a | p x} : Finset α)

/-- info: {x ∉ s | p x} : Finset α -/
#guard_msgs in
set_option pp.funBinderTypes true in
#check ({x ∉ s | p x})
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c2bb11a5314e67e3fb83df1c29b33c2fc3e07b89662fdb9d2b3e9ad53231a0e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinsetBuilder/Varianta19ee0c0ff37d3fee0276d7cc61301782eb315d04ae8b6b1de4d62ff0fcb3949.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
