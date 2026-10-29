# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ContextConservative.Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9496b24a7fa1f805d84767dc0fa8889ccf007647` · SHA-256 `db1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.ContextResolver
import Mathematics.Resolution.Projection
import Mathematics.Resolution.Conservative

/-!
# Context-bound conservative laws
-/

namespace Mathematics.Resolution

theorem context_solution_sound
    [DecidableEq Obligation]
    [DecidableEq Proof]
    {obligations : Finset Obligation}
    {checker : TrustedChecker Obligation Proof}
    {registry : Obligation → Finset Proof}
    (certificate :
      FixedCertificate obligations checker registry) :
    ∀ obligation ∈ obligations,
      checker.proposition obligation :=
  fixed_solution_sound certificate

theorem context_authority_view_noninterference
    (authority : AuthorityDecision Solution Obligation)
    (left right : ScheduleView Packet) :
    (present authority left).1 =
      (present authority right).1 :=
  authority_schedule_noninterference authority left right

theorem context_certificate_extension_monotone
    [DecidableEq Obligation]
    [DecidableEq Proof]
    (obligations : Finset Obligation)
    (checker : TrustedChecker Obligation Proof)
    {left right : Obligation → Finset Proof}
    (extension : ∀ obligation, left obligation ⊆ right obligation) :
    unresolved obligations checker right ⊆
      unresolved obligations checker left :=
  certificate_extension_monotone
    obligations checker extension

theorem resolveCut_rejected_exactly_when_context_invalid
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    (resolveCut validator profile cut).IsRejected ↔
      ¬ validator.Valid cut := by
  by_cases valid : validator.Valid cut
  · by_cases closed :
      unresolved cut.core.obligations checker
        cut.core.proofRegistry = ∅
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
    · simp [resolveCut, valid, closed,
        ContextResolution.IsRejected]
  · simp [resolveCut, valid, ContextResolution.IsRejected]

theorem resolveCut_total
    [DecidableEq Obligation]
    [LinearOrder Proof]
    [DecidableEq Event]
    {checker : TrustedChecker Obligation Proof}
    (validator : ContextCutValidator Obligation Proof Event)
    (profile : ContextResolverProfile Obligation Proof Event checker)
    (cut : ContextBoundCut Obligation Proof Event) :
    ∃ result, result = resolveCut validator profile cut :=
  ⟨resolveCut validator profile cut, rfl⟩

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8a6463ceb8530f424f271cfac567ea8c685dae046a7e54cd883ebf87f11ed959 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/ContextConservative/Variantdb1491fda7ff899831b3ff982cb48105dfff249febdf50bd8d3020b5eb0a0cd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
