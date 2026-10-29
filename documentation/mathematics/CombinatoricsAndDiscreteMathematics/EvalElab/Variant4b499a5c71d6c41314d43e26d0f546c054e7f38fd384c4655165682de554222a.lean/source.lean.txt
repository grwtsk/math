-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.HasInstance.Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.HasInstance.Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/eval_elab.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Eval
import Mathlib.Data.Finset.Powerset
import Mathlib.Data.Finset.Sort
import Mathlib.Util.Qq


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.HasInstance.Variante3270982d766535e7bcab7e5b1c42469ff5029ef3ed904b3455c8574fc26f408

#guard_expr eval% 2^10 =ₛ 1024

#guard_expr (eval% 2^10 : Int) =ₛ (1024 : Int)

#guard_expr
  (eval% Multiset.powerset ({1, 2, 3} : Multiset ℕ)) =
    {0, {1}, {2}, {1, 2}, {3}, {1, 3}, {2, 3}, {1, 2, 3}}

-- https://leanprover.zulipchat.com/#narrow/stream/217875-Is-there-code-for-X.3F/topic/How.20to.20simplify.20this.20proof.20without.20using.20a.20have.20statement.3F/near/422294189
section from_zulip

/--
error: failed to synthesize
  Lean.ToExpr (Finset (Finset ℕ))

Additional diagnostic information may be available using the `set_option diagnostics true` command.
-/
#guard_msgs in
#check eval% Finset.powerset ({1, 2, 3} : Finset ℕ)

open Lean Qq

/-- `HasInstance (Foo X)` means than an `inst : Foo X` exists. -/
class HasInstance (α : Type u) where
  /-- The reflected version of `inst`. -/
  expr : Expr

-- this obviously doesn't scale, which is why this is only in the test file
instance : HasInstance (DecidableEq ℕ) :=
  ⟨q(inferInstanceAs <| DecidableEq ℕ)⟩
instance : HasInstance (DecidableEq (Finset ℕ)) :=
  ⟨q(inferInstanceAs <| DecidableEq (Finset ℕ))⟩
instance : HasInstance (DecidableEq (Finset (Finset ℕ))) :=
  ⟨q(inferInstanceAs <| DecidableEq (Finset (Finset ℕ)))⟩

open Qq Lean
/-- `Finset α` can be converted to an expr only if there is some way to find `DecidableEq α`. -/
unsafe nonrec instance Finset.toExpr
    {α : Type u} [ToLevel.{u}] [ToExpr α] [HasInstance (DecidableEq α)] : ToExpr (Finset α) :=
  haveI u' : Level := Lean.toLevel.{u}
  haveI α' : Q(Type u') := Lean.toTypeExpr α
  letI : Q(DecidableEq $α') := HasInstance.expr (DecidableEq α)
  { toTypeExpr := q(Finset $α')
    toExpr x := show Q(Finset $α') from mkSetLiteralQ q(Finset $α') (x.val.unquot.map toExpr) }

#guard_expr
  (eval% Finset.powerset ({1, 2, 3} : Finset ℕ)) =
    {∅, {1}, {2}, {1, 2}, {3}, {1, 3}, {2, 3}, {1, 2, 3}}

end from_zulip
