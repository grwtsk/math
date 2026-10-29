# Normal Form Is Canonical Executable — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d33cb82e2975b86c09a73793a0b72ec6768556b2` · SHA-256 `36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Certificate-gated executable normal form

Only zero and positive blocks can be canonical.  `tall` and `succ` belong to
the raw notation and are accepted only after a sound normalizer emits an
executable normal form.  No normalizer in this module accepts a limit node.
-/

namespace Mathematics.StratifiedBoundary.OrdinalTally

def IsCanonicalExecutable :
    ExecutableOrdinalTally → Prop
  | .zero => True
  | .block exponent _ _ remainder =>
      IsCanonicalExecutable exponent ∧
        IsCanonicalExecutable remainder ∧
        ExecutableRemainderBelow exponent remainder

structure ExecutableNormalForm where
  code : ExecutableOrdinalTally
  canonical : IsCanonicalExecutable code

namespace ExecutableNormalForm

def value
    (code : ExecutableNormalForm) : Ordinal :=
  evalExecutable code.code

def raw
    (code : ExecutableNormalForm) : RawCode :=
  code.code.reify

end ExecutableNormalForm

abbrev CanonicalCode
    (_limits : LimitSemantics) :=
  ExecutableNormalForm

namespace CanonicalCode

def zero
    (_limits : LimitSemantics) :
    CanonicalCode _limits :=
  ⟨.zero, trivial⟩

def tall
    (_limits : LimitSemantics)
    (count : Nat) :
    CanonicalCode _limits := by
  cases count with
  | zero =>
      exact zero _limits
  | succ count =>
      refine
        ⟨ExecutableOrdinalTally.tall (count + 1), ?_⟩
      simp [ExecutableOrdinalTally.tall,
        IsCanonicalExecutable,
        ExecutableRemainderBelow,
        evalExecutable]

end CanonicalCode

structure NormalizationCertificate
    (limits : LimitSemantics) where
  normalize :
    RawCode → CanonicalCode limits
  semanticSound :
    ∀ code,
      (normalize code).value =
        eval limits code
  canonicalFixed :
    ∀ code : CanonicalCode limits,
      (normalize code.raw).code =
        code.code

def NormalizationCertificate.notationallyEqual
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (left right : RawCode) : Prop :=
  (normalizer.normalize left).code =
    (normalizer.normalize right).code

theorem ordinalTally_normalization_sound
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (code : RawCode) :
    (normalizer.normalize code).value =
      eval limits code :=
  normalizer.semanticSound code

theorem ordinalTally_normalization_fixed
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    (code : CanonicalCode limits) :
    (normalizer.normalize code.raw).code =
      code.code :=
  normalizer.canonicalFixed code

theorem normalized_notation_equal_is_semantic
    {limits : LimitSemantics}
    (normalizer :
      NormalizationCertificate limits)
    {left right : RawCode}
    (equal :
      normalizer.notationallyEqual left right) :
    eval limits left = eval limits right := by
  rw [← normalizer.semanticSound left,
    ← normalizer.semanticSound right]
  exact congrArg evalExecutable equal

end Mathematics.StratifiedBoundary.OrdinalTally
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=39ebdfc9da95f3fca0c7da0009f40a99da16ddc0cad655cf794171593f4cec53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variant36e9529509aea3f054c7c77f408dffafd7dff659362fdc6a2431f22cdfd3531c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
