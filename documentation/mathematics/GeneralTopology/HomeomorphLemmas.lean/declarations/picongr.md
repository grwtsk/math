# piCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a98b574aa8dcad5eab0b68492a76ddf02f4c55f383eaa8367bc858fb5b454ac9",
  "kind": "def",
  "lexical_name": "piCongr",
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
  "slug": "picongr",
  "source": {
    "blob": "8312e3a7de75ec11437146ca69bfed92b08cafe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b63840e5f9a270f5d53997850aeb58151ce3e40443796e7ffd5f55c76ff5283",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/HomeomorphLemmas.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a98b574aa8dcad5eab0b68492a76ddf02f4c55f383eaa8367bc858fb5b454ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piCongr {ι₁ ι₂ : Type*} {Y₁ : ι₁ → Type*} {Y₂ : ι₂ → Type*}
    [∀ i₁, TopologicalSpace (Y₁ i₁)] [∀ i₂, TopologicalSpace (Y₂ i₂)]
    (e : ι₁ ≃ ι₂) (F : ∀ i₁, Y₁ i₁ ≃ₜ Y₂ (e i₁)) : (∀ i₁, Y₁ i₁) ≃ₜ ∀ i₂, Y₂ i₂ :=
  (Homeomorph.piCongrRight F).trans (Homeomorph.piCongrLeft e)

/-- `ULift X` is homeomorphic to `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/HomeomorphLemmas.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8312e3a7de75ec11437146ca69bfed92b08cafe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91924fd944e2dc79a4413daa1d1e3086bd14b2589d775e7619704cd63a2cd683 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
