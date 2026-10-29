# Resolver Graph Access Resolution — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3165c6f7ca85c812596f61d5ecca34da6ad269b` · SHA-256 `51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Core.Request
import Mathematics.GraphAccess.Core.Receipt

/-!
# Total conservative access resolution over typed finite evidence

Totality means a typed outcome for every typed resolver evidence value.  It
does not decide graph finiteness, reachability, completion semantics, or any
other open project fact.
-/

namespace Mathematics.GraphAccess

inductive GraphAccessResolution
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

inductive GraphAccessEvidence
    (Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u)
  | path (value : Path)
  | frontier (value : Frontier)
  | coverage (value : Coverage)
  | sample (value : Sample)
  | proposal (value : Proposal)
  | obstruction (value : Obstruction)
  | unknown (kinds : List GraphAccessUnknownKind)
  | rejected (reason : Rejection)

def resolveAccess
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u} :
    GraphAccessEvidence
      Path Frontier Coverage Sample Proposal Obstruction Rejection →
    GraphAccessResolution
      Path Frontier Coverage Sample Proposal Obstruction Rejection
  | .path value => .path value
  | .frontier value => .frontier value
  | .coverage value => .coverage value
  | .sample value => .sample value
  | .proposal value => .proposal value
  | .obstruction value => .obstruction value
  | .unknown kinds => .unknown kinds
  | .rejected reason => .rejected reason

theorem access_resolver_total
    {Path Frontier Coverage Sample Proposal Obstruction Rejection : Type u}
    (evidence :
      GraphAccessEvidence
        Path Frontier Coverage Sample Proposal Obstruction Rejection) :
    ∃ result, resolveAccess evidence = result :=
  ⟨resolveAccess evidence, rfl⟩

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd53c4a99e8913368eda2ef1be53877eed8ffacca4822ee2e3a573721fe6c082 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variant51e6f2be724fb5088eb4bb0297fd0bb90919abc956f68f9dd64ef0fd6b5555d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
