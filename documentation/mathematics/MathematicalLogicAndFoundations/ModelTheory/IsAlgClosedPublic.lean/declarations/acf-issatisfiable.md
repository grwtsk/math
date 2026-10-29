# ACF_isSatisfiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "215994fc8b6e61faa47032eee9a376d04f078667",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 130,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:795c2e73-86a1-b079-59c6-2f1c1758c8b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2aa5cfa9-b208-b820-91f5-df40b4bd1727",
  "kind": "theorem",
  "lexical_name": "ACF_isSatisfiable",
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
  "slug": "acf-issatisfiable",
  "source": {
    "blob": "215994fc8b6e61faa47032eee9a376d04f078667",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 130,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3f97888217455b94d2c0271809a233e84c31df89ac75ddbdba04586d5d2ab70",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/IsAlgClosedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2aa5cfa9-b208-b820-91f5-df40b4bd1727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ACF_isSatisfiable {p : ℕ} (hp : p.Prime ∨ p = 0) :
    (Theory.ACF p).IsSatisfiable := by
  cases hp with
  | inl hp =>
    have : Fact p.Prime := ⟨hp⟩
    let _ := compatibleRingOfRing (AlgebraicClosure (ZMod p))
    exact ⟨⟨AlgebraicClosure (ZMod p)⟩⟩
  | inr hp =>
    subst hp
    let _ := compatibleRingOfRing (AlgebraicClosure ℚ)
    exact ⟨⟨AlgebraicClosure ℚ⟩⟩

open Cardinal

/-- The Theory `Theory.ACF p` is `κ`-categorical whenever `κ` is an uncountable cardinal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/ModelTheory/IsAlgClosedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `215994fc8b6e61faa47032eee9a376d04f078667` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e9205924f9d5f15eb6459fcf4387a3ac33e5f1eae0e5675c8a2fd7d4dc0aa63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/IsAlgClosed/Variant7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.lean","GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ea096abdcad471d730f7d003380261568f340304eef381d8538f1bc82649ab6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
