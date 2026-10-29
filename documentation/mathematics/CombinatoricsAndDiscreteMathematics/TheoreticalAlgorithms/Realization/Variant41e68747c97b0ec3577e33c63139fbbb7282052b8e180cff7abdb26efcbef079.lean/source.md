# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Realization.Variant41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dbfc6c5b519eff99874fcd76766ce0fb9113f68` · SHA-256 `41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Presentation.Semantics

/-!
What is formalized:
Polymorphic Presentation records and specialized complex-like realization
certificates.

What is certificate-gated:
The target-specific realization relation must be provided separately.  The
Presentation tree is syntax, not the mathematical object itself.

What is not claimed:
Presentations are not theorem authority and do not establish analytic,
arithmetic, spectral, or prismatic claims.

Primary mathematical source:
Surface proof-boundary discipline for descriptor syntax versus checked theorem
objects.
-/

namespace Surface.Presentation

/-- Authority class attached to a Presentation boundary. -/
inductive AuthorityClass where
  | interface
  | certificate
  | implementationTheorem
  | mathematicalTheorem
deriving Repr, DecidableEq

/-- Mode by which a presentation is intended to be realized. -/
inductive RealizationMode where
  | finite
  | quotient
  | completion
  | measurableLimit
  | operatorLimit
  | sheafified
  | oracle
deriving Repr, DecidableEq

/-- Claim-boundary metadata for Presentation artifacts. -/
structure ClaimBoundary where
  authority : AuthorityClass
  mode : RealizationMode
  legacyFree : Bool
  theoremFacingAllowed : Bool
  claimBoundary : List String
deriving Repr

/-- A Presentation is syntax plus a target value, not a theorem. -/
structure Presentation (α : Type u) where
  boundary : ClaimBoundary
  expr : Expr
  target : α

/--
A generic realization certificate shell.

The field `realizes` is intentionally explicit: downstream domains must state
the actual realization predicate they prove.
-/
structure RealizationCertificate {α : Type u} (pres : Presentation α) where
  realizes : Prop
  proof : realizes
  boundary : ClaimBoundary

/-- Specialized equality-based realization for complex-like Presentation evaluation. -/
structure ComplexRealizes
    (S : ComplexLikeSemantics)
    (pres : Presentation S.carrier) where
  env : Nat → S.carrier
  sound : evaluate S env pres.expr = pres.target

theorem complexRealizes_sound
    {S : ComplexLikeSemantics}
    {pres : Presentation S.carrier}
    (cert : ComplexRealizes S pres) :
    evaluate S cert.env pres.expr = pres.target :=
  cert.sound

end Surface.Presentation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2a01e40dbcdee4e6ae61e41d89786505cd171f1d5334a1e7522ad5656158968d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Realization/Variant41e68747c97b0ec3577e33c63139fbbb7282052b8e180cff7abdb26efcbef079.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
