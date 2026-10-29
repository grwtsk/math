# Hodge — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33f4924b2b64417270e74a751cdbc9227f34fda9` · SHA-256 `b5da005236be27ded3108c79477c28e890c6551f373f1757916c0fcb0c94628a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Hodge.GeneralizationAtlas
import Folder.GrandChallenge.Hodge.CycleRealizationObstruction

/-!
# Folder.Theorem.GrandChallenge.Hodge

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Hodge branch contract facts.
Ontology: proof.grand_challenge_hodge
Pivot role: attachment
Zero typology: cycle-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem hodge_atlas_covers_if_supplied
    (A : Folder.GrandChallenge.Hodge.HodgeGeneralizationAtlas) :
    A.coversGeneralizationPath :=
  Folder.GrandChallenge.Hodge.hodge_atlas_covers_if_supplied A

theorem hodge_cycle_obstruction_if_supplied
    (O : Folder.GrandChallenge.Hodge.CycleRealizationObstruction) :
    O.obstructionNonzeroIfNoCycle :=
  Folder.GrandChallenge.Hodge.hodge_cycle_obstruction_if_supplied O

end GrandChallenge
end Theorem
end Folder

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=25ed886071e565658c246c74adf2b8771900bdc7afffea23232fdd6aa1a77b42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hodge/Variantb5da005236be27ded3108c79477c28e890c6551f373f1757916c0fcb0c94628a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
