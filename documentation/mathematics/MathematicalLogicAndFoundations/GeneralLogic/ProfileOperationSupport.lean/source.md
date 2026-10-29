# Profile Operation Support — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a277723aee28ef51fcc680865e65b1562d107824` · SHA-256 `a673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Declared assurance operation profiles

Support is constructive: a supported operation carries the operation itself
and a closure proof for valid states.  `unsupported` carries neither, so
declaring an operation unsupported creates no artificial proof obligation.
-/

universe u

namespace Surface.ContinuousAssurance

/-- Optional support for one state operation, with validity closure. -/
inductive OperationSupport
    {State : Type u}
    (Valid : State → Prop) : Type u
  | unsupported
  | supported
      (operation : State → State)
      (closed : ∀ state, Valid state → Valid (operation state))

/-- The complete operation profile declared by an assurance implementation. -/
structure AssuranceProfile (State : Type u) where
  Valid : State → Prop
  identity : OperationSupport Valid
  composition : OperationSupport Valid
  transport : OperationSupport Valid
  evidenceCollection : OperationSupport Valid
  claimClassification : OperationSupport Valid
  gating : OperationSupport Valid
  attestation : OperationSupport Valid
  refinement : OperationSupport Valid
  adapterExecution : OperationSupport Valid
  reflexiveReview : OperationSupport Valid

namespace OperationSupport

/-- Every supported operation preserves the profile's validity predicate. -/
theorem preservesValidity
    {State : Type u}
    {Valid : State → Prop}
    (operation : State → State)
    (closed : ∀ state, Valid state → Valid (operation state))
    (state : State)
    (valid : Valid state) :
    Valid (operation state) :=
  closed state valid

end OperationSupport

/-- A profile can explicitly decline every optional operation. -/
def unsupportedProfile (State : Type u) : AssuranceProfile State where
  Valid := fun _ => True
  identity := .unsupported
  composition := .unsupported
  transport := .unsupported
  evidenceCollection := .unsupported
  claimClassification := .unsupported
  gating := .unsupported
  attestation := .unsupported
  refinement := .unsupported
  adapterExecution := .unsupported
  reflexiveReview := .unsupported

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=384e448b79542900aaec280d1aefdffd0ef525ba6d5bc7952b4d25301b5ad531 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Profile/Varianta673cc1d85b7809d2ab3d69b5e0fcb7335f8c073725c97cafaddf52ab4b185b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
