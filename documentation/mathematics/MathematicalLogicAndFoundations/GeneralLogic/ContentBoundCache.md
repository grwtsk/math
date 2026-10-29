# Content-bound observation reuse and completion claims

[Lean source](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/ContentBoundCache.lean)

`GRWTSK.MathematicalLogic.FiniteSequences.ContentBoundCache.observation_reuse`
states that equal source bytes and equal observer profiles have equal
observations. `unchanged_preserved` and `changed_refreshed` prove the two branches
of a selectively updated cache.

`CompletionAllowed current submitted now expiry` requires token equality and
`now ≤ expiry`. `stale_token_rejected` and `expired_rejected` prove that failure
of either condition forbids completion. Runtime clock monotonicity, transaction
isolation, digest collision resistance and database implementation refinement
are separate implementation obligations; they are not assumed as Lean axioms.

`BoundCompletionAllowed` additionally requires equality of the current task
binding and the submitted binding. `changed_binding_rejected` rules out a changed
binding even when a valid token is supplied. `bound_completion_conditions`
extracts binding equality, token equality and the expiry bound. Noeaaeue checks
the stored claim before native execution and compares the serialized binding
again in its atomic completion update. Canonical JSON distinguishes booleans
from integers; this serialization behavior is tested separately.

[Workflow contracts](../../_support/reference/deterministic-formalization.md)

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d394cdb2e56e99122091d0fed03d063ac875bedb47d1aff9ea29b694645db73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/ContentBoundCache.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
