# Complete source: GRWTSK.Order.WellFounded.AdditiveNaturalRank

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8505a8a981db30d00ce60239af8353b5e90b0f1` · SHA-256 `0873110ae840dfe0cac05a75915abc1f017ef5aed490298f593b9aeebe24126a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib

/-! A declared natural-valued rank for settlement recursion. A producer must
justify its source interpretation and every strict decrease. Rescaling a chart
alone does not prove a decrease. No arithmetic recursion is asserted here. -/

namespace HSSCP04

structure NarrowRank where
  scaleIndex : ℕ
  phaseUncertaintyIndex : ℕ
  unresolvedShellDepth : ℕ
  chartComplexity : ℕ
  deriving DecidableEq, Repr

def NarrowRank.cost (r : NarrowRank) : ℕ :=
  r.scaleIndex + r.phaseUncertaintyIndex + r.unresolvedShellDepth + r.chartComplexity

def LowerRank (child parent : NarrowRank) : Prop := child.cost < parent.cost

theorem lowerRank_wellFounded : WellFounded LowerRank :=
  InvImage.wf NarrowRank.cost Nat.lt_wfRel.wf

theorem unchanged_rank_rejected (r : NarrowRank) : ¬ LowerRank r r :=
  Nat.lt_irrefl _

theorem nondecreasing_rank_rejected (child parent : NarrowRank)
    (h : parent.cost ≤ child.cost) : ¬ LowerRank child parent :=
  not_lt.mpr h

theorem rank_zero_terminal (child parent : NarrowRank) (h : parent.cost = 0) :
    ¬ LowerRank child parent := by
  unfold LowerRank
  rw [h]
  exact Nat.not_lt_zero _

/-- An actual descent chain uses at most the initial natural rank in steps. -/
theorem descent_chain_length (r : ℕ → NarrowRank) (n : ℕ)
    (hsteps : ∀ k < n, LowerRank (r (k + 1)) (r k)) :
    n + (r n).cost ≤ (r 0).cost := by
  induction n with
  | zero => simp
  | succ n ih =>
    have hp := ih (fun k hk => hsteps k (Nat.lt_trans hk (Nat.lt_succ_self n)))
    have hs := hsteps n (Nat.lt_succ_self n)
    unfold LowerRank at hs
    omega

end HSSCP04

#print axioms HSSCP04.lowerRank_wellFounded
#print axioms HSSCP04.descent_chain_length
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=244a0064d344f96a52e043888c3c0721c489f9ffaded3455abcda25d7bcb35ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/WellFounded/AdditiveNaturalRank__SourceOccurrence449062218d13b36837d2ad3b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
