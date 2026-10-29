# Unsafe Queue Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7adb18d260593b4bd8ef758d94c9ea9505f50359` · SHA-256 `8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule
import Aesop.Constants

public section

open Lean

namespace Aesop

structure PostponedSafeRule where
  rule : SafeRule
  output : RuleTacOutput
  deriving Inhabited

namespace PostponedSafeRule

def toUnsafeRule (r : PostponedSafeRule) : UnsafeRule :=
  { r.rule with extra := ⟨postponedSafeRuleSuccessProbability⟩ }

end PostponedSafeRule


inductive UnsafeQueueEntry
  | unsafeRule (r : IndexMatchResult UnsafeRule)
  | postponedSafeRule (r : PostponedSafeRule)
  deriving Inhabited

namespace UnsafeQueueEntry

instance : ToString UnsafeQueueEntry where
  toString
    | unsafeRule        r => toString r.rule.name
    | postponedSafeRule r => toString r.rule.name

def successProbability : UnsafeQueueEntry → Percent
  | unsafeRule r => r.rule.extra.successProbability
  | postponedSafeRule .. => postponedSafeRuleSuccessProbability

def name : UnsafeQueueEntry → RuleName
  | unsafeRule r => r.rule.name
  | postponedSafeRule r => r.rule.name

instance : Ord UnsafeQueueEntry :=
  ⟨ compareLex
      (λ x y => compareOn successProbability x y |>.swap)
      (compareOn name) ⟩

end UnsafeQueueEntry


@[expose] def UnsafeQueue := Subarray UnsafeQueueEntry

namespace UnsafeQueue

instance : EmptyCollection UnsafeQueue :=
  inferInstanceAs $ EmptyCollection (Subarray _)

instance : Inhabited UnsafeQueue :=
  inferInstanceAs $ Inhabited (Subarray _)

-- Precondition: `unsafeRules` is ordered lexicographically by descending
-- success probability, then by rule name.
def initial (postponedSafeRules : Array PostponedSafeRule)
    (unsafeRules : Array (IndexMatchResult UnsafeRule)) : UnsafeQueue :=
  let unsafeRules := unsafeRules.map .unsafeRule
  let postponedSafeRules :=
    postponedSafeRules.map .postponedSafeRule
      |>.qsort (λ x y => compare x y |>.isLT)
  postponedSafeRules.mergeDedup unsafeRules |>.toSubarray

def entriesToMessageData (q : UnsafeQueue) : Array MessageData :=
  q.toArray.map toMessageData

end UnsafeQueue

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2bae62367e16f421397f8e4094ce2380f47251895ed264cfc059e8973d6655d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UnsafeQueue/Variant8e5b976a26d9817f19d45986b8ecf017c08d06f9516eba3193ada2bdfb2adacd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
