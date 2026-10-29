# Audit Edition4 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81b689c5e39795ae83e0792fef5e786555d97aae` · SHA-256 `4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Presentation.Realization

/-!
What is formalized:
Small audit predicates for keeping raw Presentation records in interface or
certificate authority classes unless they are explicitly whitelisted.

What is certificate-gated:
Integration with generated AST export or broader CI audits remains an external
tooling step.

What is not claimed:
These Boolean audit predicates are not mathematical proofs and cannot establish
BSD, RH, analytic continuation, or spectral correspondence.

Primary mathematical source:
Claim-boundary and readiness-gate discipline.
-/

namespace Presentation.Audit

/-- Raw Presentation records are normally interface or certificate artifacts. -/
def authorityAllowedByDefault : AuthorityClass → Bool
  | .interface => true
  | .certificate => true
  | .implementationTheorem => false
  | .mathematicalTheorem => false

/-- A raw presentation is compliant only under the declared authority boundary. -/
def isCompliantPresentation {α : Type u} (pres : Presentation α) : Bool :=
  pres.boundary.legacyFree &&
    (authorityAllowedByDefault pres.boundary.authority ||
      pres.boundary.theoremFacingAllowed)

theorem compliantPresentation_legacyFree
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true) :
    pres.boundary.legacyFree = true := by
  simp [isCompliantPresentation] at h
  exact h.1

theorem compliantMathematicalPresentation_is_whitelisted
    {α : Type u}
    {pres : Presentation α}
    (h : isCompliantPresentation pres = true)
    (hmath : pres.boundary.authority = AuthorityClass.mathematicalTheorem) :
    pres.boundary.theoremFacingAllowed = true := by
  simp [isCompliantPresentation, authorityAllowedByDefault, hmath] at h
  exact h.2

end Presentation.Audit
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2879cabaae0985ca430327818ce1e2058707ac3647a52044527b2ba9f1d3e096 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Audit/Variant4b20696fb01bbd1f7d843994faefe12c59262a57503e1784b74491f3ed62a825.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
