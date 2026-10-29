# Syntax Raw Code — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8d4f164e70e04930e8829f22b3550029739a67f` · SHA-256 `d4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Executable ordinal-tally syntax

`RawCode` is proposal notation: `tall` and `succ` are conveniences that must
be normalized before persistence.  `ExecutableOrdinalTally` is the canonical
runtime grammar.  It contains only zero and positive Cantor blocks.

Countable limits are deliberately absent from both grammars.  They are
registered as separate certificate-bearing objects.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

abbrev FundamentalSequenceId := String

inductive RawCode
  | zero
  | tall (count : Nat)
  | succ (value : RawCode)
  | block
      (exponent : RawCode)
      (coefficient : Nat)
      (remainder : RawCode)
  deriving DecidableEq, Repr

inductive ExecutableOrdinalTally
  | zero
  | block
      (exponent : ExecutableOrdinalTally)
      (coefficient : Nat)
      (coefficientPositive : 0 < coefficient)
      (remainder : ExecutableOrdinalTally)

namespace RawCode

def empty : RawCode :=
  .zero

def appendTall
    (left right : Nat) : RawCode :=
  .tall (left + right)

def derivedSuccessor
    (value : RawCode) : RawCode :=
  .succ value

def constructorName :
    RawCode → String
  | .zero => "zero"
  | .tall _ => "derived-tall"
  | .succ _ => "derived-successor"
  | .block _ _ _ => "block"

end RawCode

namespace ExecutableOrdinalTally

def tall : Nat → ExecutableOrdinalTally
  | 0 => .zero
  | count + 1 =>
      .block .zero (count + 1)
        (Nat.succ_pos count) .zero

def reify :
    ExecutableOrdinalTally → RawCode
  | .zero => .zero
  | .block exponent coefficient _ remainder =>
      .block (reify exponent) coefficient
        (reify remainder)

def constructorName :
    ExecutableOrdinalTally → String
  | .zero => "zero"
  | .block _ _ _ _ => "block"

end ExecutableOrdinalTally

@[simp] theorem RawCode.appendTall_eq
    (left right : Nat) :
    RawCode.appendTall left right =
      .tall (left + right) :=
  rfl

@[simp] theorem ExecutableOrdinalTally.reify_tall
    (count : Nat) :
    ExecutableOrdinalTally.reify
        (ExecutableOrdinalTally.tall count) =
      if count = 0 then .zero else .block .zero count .zero := by
  cases count <;> simp [ExecutableOrdinalTally.tall,
    ExecutableOrdinalTally.reify]

end Mathematics.StratifiedBoundary.OrdinalTally
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=31a6779488bf39b5f98d84bfd11affc18d3cba8e3b9928f27acfd4c2393e8d88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Syntax/Variantd4a1493369ff2f441ac6f82a4f98336598a4f0ff728a8e8c0f331bc68c299138.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
