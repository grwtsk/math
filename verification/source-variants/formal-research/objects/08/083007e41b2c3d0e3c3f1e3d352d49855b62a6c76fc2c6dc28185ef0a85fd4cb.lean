import Mathlib.Data.Finset.Basic

namespace Noeoueue

/-- The formal epoch is prior to every snapshot it can certify. -/
structure FormalProfile where
  digest : String
  leanVersion : String
  mathlibRevision : String
  projectDigest : String
  exporterDigest : String
  normalizationVersion : Nat
  eligibleDeclarationKinds : List String
  foundationTypeExclusionPolicy : String
  axiomPolicy : String
  proofOpacityPolicy : String
  statementIncidencePolicy : String
  proofDependencyPolicy : String
  primeFrequencyCutoff : Nat
  coverSearchResourceContract : Nat
  canonicalEquivalencePolicy : String
  trustPolicy : String
  deriving DecidableEq, Repr

def pinnedProfile : FormalProfile :=
  { digest := "source-epoch-bound-at-export", leanVersion := "v4.19.0",
    mathlibRevision := "c44e0c8ee63ca166450922a373c7409c5d26b00b",
    projectDigest := "bound-at-gate", exporterDigest := "bound-at-gate",
    normalizationVersion := 1, eligibleDeclarationKinds := ["theorem", "definition", "opaque"],
    foundationTypeExclusionPolicy := "explicit-v1", axiomPolicy := "reject-unlisted-v1",
    proofOpacityPolicy := "opaque-and-transparent-recorded-v1",
    statementIncidencePolicy := "distinct-normalized-types-once-per-statement-v1",
    proofDependencyPolicy := "separate-nonranking-channel-v1", primeFrequencyCutoff := 4096,
    coverSearchResourceContract := 1000000, canonicalEquivalencePolicy := "checked-inverse-groupoid-v1",
    trustPolicy := "lean-kernel-plus-gate-no-browser-authority-v1" }

end Noeoueue
