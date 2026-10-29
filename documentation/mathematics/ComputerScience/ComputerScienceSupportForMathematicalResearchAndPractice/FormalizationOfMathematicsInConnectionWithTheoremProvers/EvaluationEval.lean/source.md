# Evaluation Eval — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55a8308e522737d3bb10c93f74c0367f29ab2cfc` · SHA-256 `a44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Boolean.Formula.Carrier

/-!
# Propositional evaluation

Evaluation is the unique structural fold from the free formula carrier into
`Bool` under a supplied valuation.
-/

namespace Mathematics.Boolean.Formula

universe u

variable {α : Type u}

/-- Evaluate a formula under a Boolean valuation. -/
def eval (ν : Valuation α) : Formula α → Bool
  | .var a => ν a
  | .falsum => false
  | .truth => true
  | .neg p => !(eval ν p)
  | .conj p q => eval ν p && eval ν q
  | .disj p q => eval ν p || eval ν q
  | .impl p q => !(eval ν p) || eval ν q
  | .eqv p q => eval ν p == eval ν q

@[simp] theorem eval_var (ν : Valuation α) (a : α) :
    eval ν (.var a) = ν a := rfl

@[simp] theorem eval_falsum (ν : Valuation α) :
    eval ν (Formula.falsum : Formula α) = false := rfl

@[simp] theorem eval_truth (ν : Valuation α) :
    eval ν (Formula.truth : Formula α) = true := rfl

@[simp] theorem eval_neg (ν : Valuation α) (p : Formula α) :
    eval ν (.neg p) = !(eval ν p) := rfl

@[simp] theorem eval_conj (ν : Valuation α) (p q : Formula α) :
    eval ν (.conj p q) = (eval ν p && eval ν q) := rfl

@[simp] theorem eval_disj (ν : Valuation α) (p q : Formula α) :
    eval ν (.disj p q) = (eval ν p || eval ν q) := rfl

@[simp] theorem eval_impl (ν : Valuation α) (p q : Formula α) :
    eval ν (.impl p q) = (!(eval ν p) || eval ν q) := rfl

@[simp] theorem eval_eqv (ν : Valuation α) (p q : Formula α) :
    eval ν (.eqv p q) = (eval ν p == eval ν q) := rfl

@[simp] theorem eval_const (ν : Valuation α) (b : Bool) :
    eval ν (const (α := α) b) = b := by
  cases b <;> rfl

/-- Formula evaluation is extensional in the valuation. -/
theorem eval_congr
    {ν μ : Valuation α}
    (h : ∀ a, ν a = μ a)
    (p : Formula α) :
    eval ν p = eval μ p := by
  induction p with
  | var a => exact h a
  | falsum => rfl
  | truth => rfl
  | neg p ih => simp [eval, ih]
  | conj p q ihp ihq => simp [eval, ihp, ihq]
  | disj p q ihp ihq => simp [eval, ihp, ihq]
  | impl p q ihp ihq => simp [eval, ihp, ihq]
  | eqv p q ihp ihq => simp [eval, ihp, ihq]

end Mathematics.Boolean.Formula
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6867fa136ff2dd1c29cdb2fb3028f08c8bb1379a26d0bb38b371bb07f474d78f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Varianta44c6a6ce135c78757353d0b21da8bc8b99bace8a525946d1e269703f188249b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
