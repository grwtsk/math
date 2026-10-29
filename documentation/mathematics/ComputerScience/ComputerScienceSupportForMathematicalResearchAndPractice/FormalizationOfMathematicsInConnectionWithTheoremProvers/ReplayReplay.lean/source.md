# Replay Replay — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `569d367f96e36289e903ff7df2fe2f284ccd59e3` · SHA-256 `6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemanticTokenization.Resolver

/-! # Snapshot-bound deterministic replay -/

namespace Mathematics.SemanticTokenization

def replay
    (cut : CommittedSemanticCut) :
    SemanticTokenResolution cut :=
  resolveMetaOverlapSemantics cut

structure ReplayReceipt (cut : CommittedSemanticCut) where
  first :
    SemanticTokenResolution cut
  second :
    SemanticTokenResolution cut
  first_exact :
    first = resolveMetaOverlapSemantics cut
  second_exact :
    second = resolveMetaOverlapSemantics cut
  cutDigest : Digest
  cut_digest_exact :
    cutDigest = cut.cutDigest

theorem deterministic_replay
    (cut : CommittedSemanticCut) :
    replay cut = resolveMetaOverlapSemantics cut :=
  rfl

theorem ReplayReceipt.results_equal
    {cut : CommittedSemanticCut}
    (receipt : ReplayReceipt cut) :
    receipt.first = receipt.second :=
  receipt.first_exact.trans receipt.second_exact.symm

theorem ReplayReceipt.snapshot_digest_exact
    {cut : CommittedSemanticCut}
    (receipt : ReplayReceipt cut) :
    receipt.cutDigest = cut.cutDigest :=
  receipt.cut_digest_exact

end Mathematics.SemanticTokenization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5bac0e2727dd6b9103c94ae9c453212ff4d4773b8aff0e62c43530fc86aed88 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
