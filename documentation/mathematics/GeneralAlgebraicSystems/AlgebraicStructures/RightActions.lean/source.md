# Right Actions — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `516513e804b1211c4d7c304444cd39feb0966e2a` · SHA-256 `bf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.GroupWithZero.Action.Opposite

open MulOpposite renaming op → mop
open AddOpposite renaming op → aop

variable {α β : Type*} [SMul α β] [SMul αᵐᵒᵖ β] [VAdd α β] [VAdd αᵃᵒᵖ β] {a a₁ a₂ a₃ a₄ : α} {b : β}

section delaborators

section without_scope

/-- info: a • b : β -/
#guard_msgs in
#check a • b

/-- info: MulOpposite.op a • b : β -/
#guard_msgs in
#check mop a • b

/-- info: a +ᵥ b : β -/
#guard_msgs in
#check a +ᵥ b

/-- info: AddOpposite.op a +ᵥ b : β -/
#guard_msgs in
#check aop a +ᵥ b

end without_scope

section with_scope
open scoped RightActions

/-- info: a •> b : β -/
#guard_msgs in
#check a • b

/-- info: b <• a : β -/
#guard_msgs in
#check mop a • b

/-- info: a +ᵥ> b : β -/
#guard_msgs in
#check a +ᵥ b

/-- info: b <+ᵥ a : β -/
#guard_msgs in
#check aop a +ᵥ b

end with_scope

end delaborators

open scoped RightActions

example : a •> b = a • b := rfl
example : b <• a = mop a • b := rfl

example : a +ᵥ> b = a +ᵥ b := rfl
example : b <+ᵥ a = aop a +ᵥ b := rfl

-- Left actions right-associate, right actions left-associate
example : a₁ •> a₂ •> b = a₁ •> (a₂ •> b) := rfl
example : b <• a₂ <• a₁ = (b <• a₂) <• a₁ := rfl

example : a₁ +ᵥ> a₂ +ᵥ> b = a₁ +ᵥ> (a₂ +ᵥ> b) := rfl
example : b <+ᵥ a₂ <+ᵥ a₁ = (b <+ᵥ a₂) <+ᵥ a₁ := rfl

-- When left and right actions coexist, they associate to the left
example : a₁ •> b <• a₂ = (a₁ •> b) <• a₂ := rfl
example : a₁ •> a₂ •> b <• a₃ <• a₄ = ((a₁ •> (a₂ •> b)) <• a₃) <• a₄ := rfl

example : a₁ +ᵥ> b <+ᵥ a₂ = (a₁ +ᵥ> b) <+ᵥ a₂ := rfl
example : a₁ +ᵥ> a₂ +ᵥ> b <+ᵥ a₃ <+ᵥ a₄ = ((a₁ +ᵥ> (a₂ +ᵥ> b)) <+ᵥ a₃) <+ᵥ a₄ := rfl

-- association is chosen to match multiplication and addition
example {M} [Mul M] {x y z : M} : x •> y <• z = x * y * z := rfl
example {A} [Add A] {x y z : A} : x +ᵥ> y <+ᵥ z = x + y + z := rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a236b77ca0012aa2868739a13c9e9470953452c50d1f6a17716ffbb89a46a2fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/RightActions/Variantbf89cf35e7767b9212845ef86222bd96a2276a508e6bfe7c4198f4e68f3f7196.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
