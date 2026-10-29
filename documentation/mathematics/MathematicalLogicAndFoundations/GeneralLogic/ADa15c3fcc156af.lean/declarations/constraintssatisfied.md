# ConstraintsSatisfied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:075b954a1a4ec80bcab6a6d8a8bd0481bd013557b8b5e4494fc49ae2b7e1aa08",
  "kind": "def",
  "lexical_name": "ConstraintsSatisfied",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "constraintssatisfied",
  "source": {
    "blob": "9999dc226585dda34ceaa0c00b442952e90d9b47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 13,
    "line": 9,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/A67da15c3fcc156af/Variant9c4f24ea488349b747cec6674d49b1d0f04b8d76bae57fca4425508b63a4d7a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b2380fb5e428ecff5837b7dca9c3e94ef9df47a0a80b14d5b1b178f1ce7b978",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/ADa15c3fcc156af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:075b954a1a4ec80bcab6a6d8a8bd0481bd013557b8b5e4494fc49ae2b7e1aa08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–13.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ConstraintsSatisfied (partition : Partition) : Prop :=
  partition.constraints.all (·.satisfied) = true ∧
    partition.deterministic = true ∧ partition.acyclic = true

end MathDiscovery.Refactor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/ADa15c3fcc156af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/A67da15c3fcc156af/Variant9c4f24ea488349b747cec6674d49b1d0f04b8d76bae57fca4425508b63a4d7a3.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9999dc226585dda34ceaa0c00b442952e90d9b47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e91b5f7b384e7ac32a84777802eafb8f51e887aa732244bf940d95a95fcbfc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/A67da15c3fcc156af/Variant9c4f24ea488349b747cec6674d49b1d0f04b8d76bae57fca4425508b63a4d7a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
