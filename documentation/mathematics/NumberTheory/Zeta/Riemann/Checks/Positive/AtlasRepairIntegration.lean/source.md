# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.AtlasRepairIntegration

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5651df5f43dd8ed0cc79bb7106055aadd92b0c37` · SHA-256 `0c56d09c8705130ada5403dadea7ef4966f9b601fc3fcb194177ebb1484c7dc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. Source-only regression statements. -/
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.PowerTaylor
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRootFixture
import GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.Checks.AtlasRepairIntegration

open ZetaCommutatorRootFixture

/-- Both halves remain data; their existence composes in Prop. -/
example : Nonempty (VerticalPath atlas .root .root) :=
  VerticalPath.nonempty_trans ⟨rootPath⟩ ⟨rootPath⟩

/-- A coverage structure is never used directly as the argument to Not. -/
example : ¬ Nonempty (CompleteVerticalCoverage report) := no_completeVerticalCoverage

example : (atlas.comparison .root).status = .necessary := atlas_root_status
example : (atlas.comparison .root).HasReverse := hasReverse
example : ¬ (atlas.comparison .root).HasForward := not_hasForward
example : HasOpenGap gaps .missingForwardImplication := hasOpenForwardGap
example : ¬ HasOpenGap gaps .missingReverseImplication := hasNoOpenReverseGap

/-- The data-only correction does not weaken the required logical implication. -/
example (path : VerticalPath boundaryAtlas .root .target) : _root_.RiemannHypothesis :=
  path.transports ZetaCommutatorRoot.rootStatement

/-- Directional logical evidence suffices only for the independent coordinate tag. -/
example : HasExactCoordinateEvidence (some rootToTargetOutcome) :=
  ⟨rootToTargetOutcome, rfl, trivial⟩

example : ¬ rootToTargetOutcome.IsExact := by
  simp [rootToTargetOutcome, OverlapAuditOutcome.IsExact]

example : rootToTargetOutcome.admittedTransition = none := rootToTarget_logical_not_admitted
example : ¬ boundaryAtlas.GapFree := boundaryAtlas_not_gapFree

/-- A deliberately neutral generic profile remains distinct from the concrete root. -/
example (P : Prop) : ¬ (LocalRHProfile.neutral P).HasReverse := by
  intro h
  change (LocalRHStatus.neutral = .equivalent ∨ LocalRHStatus.neutral = .necessary) at h
  rcases h with h | h <;> cases h

/-- The integrated Weil endpoint still requires BOTH independent proof records. -/
example {T : Type*} [AddCommGroup T] [Module ℂ T]
    {space : WeilTestSpace T} {form : WeilHermitianForm space} {H : ℕ → Type*}
    [∀ n, NormedAddCommGroup (H n)] [∀ n, InnerProductSpace ℂ (H n)]
    (limit : DiagonalPositiveGramLimit form H) (criterion : WeilPositivityImpliesRH form) :
    _root_.RiemannHypothesis := limit.riemannHypothesis criterion

end GRWTSK.RiemannHypothesis.Checks.AtlasRepairIntegration
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0201ff337047e9c9e8f9614a0cb0272940d6ff91460323f280d996dd26dfa336 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/AtlasRepairIntegration.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
