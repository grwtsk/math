-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.X.Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Linter/DocString.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.AdaptationNote
import Mathlib.Tactic.Linter.DocString

/-! # Tests for the `docstring` linter -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.X.Variantf648c09f1fb732d6f7680f9dafa00dbd34d2d7286619696636fc7dad60f58bb2

set_option linter.style.docString true

#adaptation_note /--This comment is not inspected by the `docString` linter.-/

example : True := by
  #adaptation_note /--   This comment is not inspected by the `docString` linter.
  -/
  trivial

/--
warning: warning: this doc-string is empty

Note: This linter can be disabled with `set_option linter.style.docString.empty false`
-/
#guard_msgs in
/---/
example : Nat := 0

/--
warning: warning: this doc-string is empty

Note: This linter can be disabled with `set_option linter.style.docString.empty false`
-/
#guard_msgs in
/--
-/
example : Nat := 0

set_option linter.style.docString.empty false
/---/
example : Nat := 0

set_option linter.style.docString.empty true
set_option linter.style.docString false

#guard_msgs in
/--Missing space -/
example : Nat := 1

set_option linter.style.docString true

/--
warning: error: doc-strings should start with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--Missing space -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Missing ending space-/
example : Nat := 1

/--
warning: error: doc-strings should start with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--  Two starting spaces -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/--
Two ending spaces  -/
example : Nat := 1

/--
warning: error: doc-strings should end with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Let's give an example.
```lean4
def foo : Bool := by
  sorry
```

-/
example : Nat := 1

/--
warning: error: doc-strings should not end with a comma

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- Let's give an example ending in a comma, -/
example : Nat := 1

/--
warning: error: doc-strings should start with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
---
warning: error: doc-strings should start with a single space or newline

Note: This linter can be disabled with `set_option linter.style.docString false`
-/
#guard_msgs in
/-- The structure `X`. -/
structure X where
  /--  A field of `X`.
  -/
  x : Unit
  z : Unit
  /--
   A field of `X`
  spanning multiple lines.
  -/
  y : Unit

-- Syntax quotation patterns involving `declModifiers` should not trigger a false
-- "empty docstring" warning. This is a regression test for a false positive where
-- `getDeclModifiers` would recurse into definition bodies and find `declModifiers`
-- nodes from syntax quotation patterns, treating their empty docstring slots as
-- actual empty docstrings.
section
open Lean Elab Command Parser Term in
#guard_msgs in
/-- A function that pattern-matches on `declModifiers`. -/
def extractAttrs (stx : TSyntax ``Command.declModifiers) :
    CommandElabM (Array <| TSyntax ``attrInstance) := do
  match stx with
  | `(declModifiers| $(_)? @[$[$atts],*] $(_)? $(_)? $(_)? $(_)?) =>
    return atts
  | _ => return #[]
end


/-! ## Tests for Verso-compatible docstrings -/

set_option linter.style.docStringVerso true

-- Errors on mismatched brackets, but not on references:
/--
warning: expected ']'

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
-/
#guard_msgs in
/-- See [bourbaki1989) -/
example : Nat := 0

/-- See [bourbaki1989] -/
example : Nat := 0

-- Errors on underscores, but not when they appear in a URL:
/--
warning: expected '_' without preceding space

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
-/
#guard_msgs in
/-- See wikipedia page 0_(disambiguation) -/
example : Nat := 0

/-- See https://en.wikipedia.org/wiki/0_(disambiguation) -/
example : Nat := 0

-- Error on underscores or backslashes, but not inside a LaTeX block.
/--
warning: expected identifier

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
---
warning: unexpected end of input; expected '![', '$$', '$', '*', '[', '[^', '_', '`' or '{'

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
-/
#guard_msgs in
/-- 0^0 + 0 = 0_0 - \frac{0}{1} -/
example : Nat := 0

/-- $$0^0 + 0 = 0_0 - \frac{0}{1}$$ -/
example : Nat := 0

-- TODO (difficult because it requires nontrivial parsing): support inline LaTeX too.
/--
warning: expected identifier

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
---
warning: unexpected end of input; expected '![', '$$', '$', '*', '[', '[^', '_', '`' or '{'

Note: This linter can be disabled with `set_option linter.style.docStringVerso false`
-/
#guard_msgs in
/-- Inline $0^0 + 0 = 0_0 - \frac{0}{1}$ LaTeX text -/
example : Nat := 0

/-- The simple solution of skipping everything between `$`s does not work because it
will result in this current docstring breaking from mismatched quotes around
```
$
```
signs.
-/
example : Nat := 0
