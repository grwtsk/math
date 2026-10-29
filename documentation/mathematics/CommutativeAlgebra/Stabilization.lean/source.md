# Stabilization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c25fa41ed8e09166fb93350cb462126e35d45a86` · SHA-256 `154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Percolation
import Mathlib.Data.Fintype.Basic

/-!
# Persistent local stabilization

Locality turns one vanished update quotient into permanent local stability.
The supplied terminal-time function then induces disjoint, exhaustive strata.
-/

namespace Mathematics.AbelReynolds

universe u v w

structure LocalityCertificate
    [PartialOrder Ideal]
    (profile : PercolationProfile Ideal)
    (Point : Type v)
    (LocalIdeal : Type w) where
  localize : Ideal → Point → LocalIdeal
  localStep : Point → LocalIdeal → LocalIdeal
  commutes :
    ∀ ideal point,
      localize (profile.step ideal) point =
        localStep point (localize ideal point)

structure PersistentTerminalProfile
    (Point : Type u)
    [Fintype Point]
    [DecidableEq Point] where
  terminalStage : Nat
  active : Nat → Finset Point
  activeNested :
    ∀ stage, active (stage + 1) ⊆ active stage
  terminalTime : Point → Nat
  terminalBound :
    ∀ point, terminalTime point ≤ terminalStage
  activeBeforeTerminal :
    ∀ stage point,
      point ∈ active stage ↔ stage < terminalTime point

def terminalStratum
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) : Finset Point :=
  Finset.univ.filter
    (fun point => profile.terminalTime point = stage)

theorem mem_terminalStratum_iff
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat)
    (point : Point) :
    point ∈ terminalStratum profile stage ↔
      profile.terminalTime point = stage := by
  simp [terminalStratum]

theorem terminalStrata_partition
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (point : Point) :
    ∃! stage, point ∈ terminalStratum profile stage := by
  refine ⟨profile.terminalTime point, ?_, ?_⟩
  · simp [terminalStratum]
  · intro stage member
    exact (mem_terminalStratum_iff profile stage point).mp member |>.symm

theorem active_support_nesting
    [Fintype Point]
    [DecidableEq Point]
    (profile : PersistentTerminalProfile Point)
    (stage : Nat) :
    profile.active (stage + 1) ⊆ profile.active stage :=
  profile.activeNested stage

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a652ed695a9964857381f4350c4c25565038c25bae9138c5cb0d1f5d89fb8865 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Stabilization/Variant154309d191abb305c98966702408589f32e946cddbb5f377c70376ee57a3a5c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
