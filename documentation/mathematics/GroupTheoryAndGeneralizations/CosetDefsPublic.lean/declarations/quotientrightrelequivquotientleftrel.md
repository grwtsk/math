# quotientRightRelEquivQuotientLeftRel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:500593eddf8edc331de456e18be5b8ba7282fd3ee0148e5bcdebb85c55800d16",
  "kind": "def",
  "lexical_name": "quotientRightRelEquivQuotientLeftRel",
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
  "slug": "quotientrightrelequivquotientleftrel",
  "source": {
    "blob": "08d06c5e363c72fc675c9127cff07851199ae84e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 130,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62a7ad5b9b1fb7be2bc78c0c8b825a6e5967a2f25dbb2b2a042a39277c74f1ff",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GroupTheoryAndGeneralizations/CosetDefsPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:500593eddf8edc331de456e18be5b8ba7282fd3ee0148e5bcdebb85c55800d16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def quotientRightRelEquivQuotientLeftRel : Quotient (QuotientGroup.rightRel s) ≃ α ⧸ s where
  toFun :=
    Quotient.map' (fun g => g⁻¹) fun a b => by
      rw [leftRel_apply, rightRel_apply]
      exact fun h => (congr_arg (· ∈ s) (by simp)).mp (s.inv_mem h)
  invFun :=
    Quotient.map' (fun g => g⁻¹) fun a b => by
      rw [leftRel_apply, rightRel_apply]
      exact fun h => (congr_arg (· ∈ s) (by simp)).mp (s.inv_mem h)
  left_inv g :=
    Quotient.inductionOn' g fun g =>
      Quotient.sound'
        (by
          simp only [inv_inv]
          exact Quotient.exact' rfl)
  right_inv g :=
    Quotient.inductionOn' g fun g =>
      Quotient.sound'
        (by
          simp only [inv_inv]
          exact Quotient.exact' rfl)

end QuotientGroup

namespace QuotientGroup

variable [Group α] {s : Subgroup α}

/-- The canonical map from a group `α` to the quotient `α ⧸ s`. -/
@[to_additive (attr := coe)
/-- The canonical map from an `AddGroup` `α` to the quotient `α ⧸ s`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GroupTheoryAndGeneralizations/CosetDefsPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08d06c5e363c72fc675c9127cff07851199ae84e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b10f7ac9829d4ef6778bfd3a2dbd773aa8d2d17c5a8e272f0b1bd0cf94ff1b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant54d12da7845705c511a89b705f4cb5ea55cb8017df66737af77d8319e229713c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
