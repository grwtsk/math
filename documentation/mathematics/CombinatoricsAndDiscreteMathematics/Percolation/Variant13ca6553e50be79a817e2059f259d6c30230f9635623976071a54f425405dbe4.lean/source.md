# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Percolation.Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1182bcc3f4abdc453fb8b89ff42dd1eee70abb8` · SHA-256 `13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Certified Abel--Reynolds percolation

Noetherianity is used only after a total, stage-independent transformer has
been supplied.  An arithmetically undetermined next step remains a typed
unknown instead of being searched for indefinitely.
-/

namespace Mathematics.AbelReynolds

universe u v

structure PercolationProfile (Ideal : Type u) [PartialOrder Ideal] where
  step : Ideal → Ideal
  finitePresentation : Ideal → Finset String
  inflationary : ∀ ideal, ideal ≤ step ideal
  monotone : Monotone step
  radicalStable : Ideal → Prop
  orbitStable : Ideal → Prop
  symmetryStable : Ideal → Prop
  stepPreservesRadical :
    ∀ ideal, radicalStable (step ideal)
  stepPreservesOrbit :
    ∀ ideal, orbitStable (step ideal)
  stepPreservesSymmetry :
    ∀ ideal, symmetryStable (step ideal)

def percolate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) : Nat → Ideal
  | 0 => initial
  | stage + 1 => profile.step (percolate profile initial stage)

theorem percolate_inflationary
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal)
    (stage : Nat) :
    percolate profile initial stage ≤
      percolate profile initial (stage + 1) :=
  profile.inflationary _

inductive EffectiveStep (Ideal : Type u) (Obligation : Type v)
  | determined (next : Ideal)
  | undetermined (obligation : Obligation)
  deriving DecidableEq, Repr

structure StabilizationCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (initial : Ideal) where
  terminalStage : Nat
  stable :
    percolate profile initial (terminalStage + 1) =
      percolate profile initial terminalStage
  aboveInitial :
    initial ≤ percolate profile initial terminalStage
  leastClosed :
    ∀ candidate,
      initial ≤ candidate →
      profile.step candidate ≤ candidate →
      percolate profile initial terminalStage ≤ candidate

def terminalIdeal
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) : Ideal :=
  percolate profile initial certificate.terminalStage

theorem terminalIdeal_closed
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial) :
    profile.step (terminalIdeal certificate) =
      terminalIdeal certificate := by
  simpa [terminalIdeal, percolate] using certificate.stable

theorem terminalIdeal_least
    [PartialOrder Ideal]
    {profile : PercolationProfile Ideal}
    {initial : Ideal}
    (certificate : StabilizationCertificate profile initial)
    {candidate : Ideal}
    (above : initial ≤ candidate)
    (closed : profile.step candidate ≤ candidate) :
    terminalIdeal certificate ≤ candidate :=
  certificate.leastClosed candidate above closed

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25e6da6bbe1d137addc1c18caf1755d4b5457b39191d74a130066a01c7b41ccb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Percolation/Variant13ca6553e50be79a817e2059f259d6c30230f9635623976071a54f425405dbe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
