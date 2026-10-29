# Basic Basic — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cdc92b4cf3f0b4a9e286542ccb77817e55c89bf` · SHA-256 `a0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Complex.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Set.Basic

set_option autoImplicit false

namespace Think.Analysis.Decoupling

/--
Authority states for the arXiv:1812.04760 decoupling formalization surface.

The current repository artifact records theorem statements and analytic
interfaces. It does not prove the analytic decoupling theorem.
-/
inductive DecouplingAuthority where
  | openResidue
  | checkedProof
  | trustedImport
  | refusedOverclaim
deriving DecidableEq, Repr

def DecouplingAuthority.isProofPositive : DecouplingAuthority → Bool
  | .checkedProof => true
  | .trustedImport => true
  | _ => false

/-- A light finite point model for the plane. -/
abbrev PlanePoint := Fin 2 → ℝ

/-- Source metadata for the paper being routed as an external theorem surface. -/
structure ArxivDecouplingPaper where
  arxivId : String
  title : String
  theoremAuthority : DecouplingAuthority
  checkedProofReady : Bool
  trustedImportReady : Bool
deriving DecidableEq, Repr

def arxiv181204760Paper : ArxivDecouplingPaper :=
  { arxivId := "1812.04760"
    title := "l2 Decoupling in R2 for curves with Vanishing Curvature"
    theoremAuthority := .openResidue
    checkedProofReady := false
    trustedImportReady := false }

/-- A named theorem surface, not a theorem proof. -/
structure DecouplingTheoremSurface where
  arxivId : String
  externalLabel : String
  leanNamespace : String
  leanName : String
  theoremStatementRecorded : Bool
  proofComplete : Bool
  authority : DecouplingAuthority
  unresolvedResidue : String
deriving DecidableEq, Repr

/--
A receipt for the intended checked-proof target. `promotableToCheckedProof`
remains false until the analytic proof and all trusted dependencies are
actually supplied.
-/
structure CheckedProofReceipt where
  arxivId : String
  theoremMapId : String
  leanModule : String
  lakeBuildRequired : Bool
  noSorryRequired : Bool
  trustedImportRequiredForBourgainDemeter : Bool
  promotableToCheckedProof : Bool
  unresolvedResidueCount : Nat
deriving DecidableEq, Repr

theorem arxiv181204760_metadata_is_open_residue :
    arxiv181204760Paper.theoremAuthority = .openResidue := rfl

theorem arxiv181204760_metadata_is_not_checked_proof :
    arxiv181204760Paper.theoremAuthority ≠ .checkedProof := by
  intro h
  cases h

theorem arxiv181204760_metadata_is_not_trusted_import :
    arxiv181204760Paper.theoremAuthority ≠ .trustedImport := by
  intro h
  cases h

end Think.Analysis.Decoupling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1739a136fef098fa05b624d428eec1001951507480526cda0b35d0a45163a12a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Basic/Varianta0753d2a8074933f303e58917dd26eb60a0dbb4318beacb3011ed8481c31247f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
