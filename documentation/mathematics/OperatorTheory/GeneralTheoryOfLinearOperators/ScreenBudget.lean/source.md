# Complete source: GRWTSK.Analysis.Resolvent.ScreenBudget

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `975e0d4349f5603aea9dcc0d927bff9dd2cba70f` · SHA-256 `4faaec371e96f20591ae9031206685139567495786eba9a29e5f5ec7770348e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Research direction: grwtsk contributors. Formal-source assistance: ChatGPT.
Status: candidate proof source; not compiled or kernel checked.
These conditional scalar consumers do not supply an arithmetic source estimate.
-/
import Mathlib

set_option autoImplicit false
namespace GRWTSK.Analysis.Resolvent.ScreenBudget

theorem root_budget (a b c L : ℝ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c) (hL : 0 ≤ L)
    (ha2 : a^2 ≤ (119/40 : ℝ)*L) (hb1 : b ≤ 1) (hc2 : c^2 ≤ 17) :
    (a+b+c)^2 < 6*L+53 := by
  have hc33 : c ≤ (33/8 : ℝ) := by nlinarith
  have hs : (b+c)^2 ≤ (41/8 : ℝ)^2 := by nlinarith
  nlinarith [sq_nonneg (a-(b+c))]

theorem measured_three_term (a b c : ℝ) :
    (a+b+c)^2 ≤ 3*(a^2+b^2+c^2) := by
  nlinarith [sq_nonneg (a-b), sq_nonneg (a-c), sq_nonneg (b-c)]

theorem source_return (E EII low rem X L : ℝ)
    (hsource : E ≤ 2*EII+34/X)
    (hsplit : EII = low+rem)
    (hrem : rem ≤ (6*L+53)/X) :
    E ≤ 2*low+(12*L+140)/X := by
  rw [hsplit] at hsource
  have h : E ≤ 2*(low+(6*L+53)/X)+34/X := by linarith
  calc
    E ≤ 2*(low+(6*L+53)/X)+34/X := h
    _ = 2*low+(12*L+140)/X := by simp only [div_eq_mul_inv]; ring

/-- Stronger return: apply the source identity in the low seminorm first. -/
theorem low_first_return (E lowOriginal screenOriginal lowII lowI X L : ℝ)
    (hsplit : E = lowOriginal + screenOriginal)
    (hlow : lowOriginal ≤ 2*lowII + 2*lowI)
    (hI : lowI ≤ 17/X)
    (hQ : screenOriginal ≤ (6*L+2)/X) :
    E ≤ 2*lowII+(6*L+36)/X := by
  have h : E ≤ 2*lowII+2*(17/X)+(6*L+2)/X := by linarith
  calc
    E ≤ 2*lowII+2*(17/X)+(6*L+2)/X := h
    _ = 2*lowII+(6*L+36)/X := by simp only [div_eq_mul_inv]; ring

theorem reverse_return (E EII low rem X : ℝ)
    (hsplit : EII = low+rem) (hrem : 0 ≤ rem)
    (hsource : EII ≤ 2*E+34/X) : low ≤ 2*E+34/X := by linarith

theorem sharp_high_budget (high rem X L : ℝ)
    (hh : high ≤ 2*rem) (hr : rem ≤ (6*L+53)/X) :
    high ≤ (12*L+106)/X := by
  have h : high ≤ 2*((6*L+53)/X) := by linarith
  calc
    high ≤ 2*((6*L+53)/X) := h
    _ = (12*L+106)/X := by simp only [div_eq_mul_inv]; ring

end GRWTSK.Analysis.Resolvent.ScreenBudget
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=329133b629d8ac98ea28dfbc0e9fcc46b1a3a529799016bee8f6dac0f3b94301 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Resolvent/ScreenBudget.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
