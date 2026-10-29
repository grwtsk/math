# Norm Num Flt — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0995a6a930cc6f7ad451627ec6e7d39b1d27068f` · SHA-256 `6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.NormNum

-- From https://leanprover.zulipchat.com/#narrow/channel/113488-general/topic/Proving.20FLT.20with.20norm_num/near/429746342

variable (ignore_me_please : ∀ a b c n : ℕ, a ^ n + b ^ n ≠ c ^ n)

-- previously this proof would work!
/--
error: unsolved goals
n : ℕ
hn : n > 2
a b c : ℕ
⊢ ¬a ^ n + b ^ n = c ^ n
-/
#guard_msgs in
example (n) (hn : n > 2) (a b c : ℕ) : a ^ n + b ^ n ≠ c ^ n := by
  clear ignore_me_please -- I promise not to use this, it would be cheating
  norm_num [*]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6581c630ca6d7a77db69ecc7efe79b0b2429f2e624a42c6a75b4be96a4c731d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NormNumFlt/Variant6e6fdc73d80c02b4e6227e606d0007fd40fa3daee33142ecbf805ff7495906cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
