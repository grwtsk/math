# applyValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6217c2cce28cb1780e0cf16148cbef2ef9e7a6ad209b4c06fe98f5549b20fc14",
  "kind": "def",
  "lexical_name": "applyValue",
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
  "slug": "applyvalue",
  "source": {
    "blob": "9128ac91aec75d8a870df7d5b5ee7829a4d9e323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 488,
    "line": 453,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:014ef2dfad1eb9710ec8ed34304c310707641e7acf7801b9d1a1c1f2665355c8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvaluationNamespacedEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6217c2cce28cb1780e0cf16148cbef2ef9e7a6ad209b4c06fe98f5549b20fc14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–488.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def applyValue (T : ActiveType Ω C) (v : Value (hw := hw) Ω C hno T.type)
    (a : FrameKey Ω C T) (p : Option (RawValue (hw := hw) Ω C hno))
    (hp : PayloadFits Ω C hno a.domain p) : Value (hw := hw) Ω C hno (a.target hw).type := by
  by_cases hT : PlainLayer P C (Ω.profile T.type)
  · exact plainApply Ω C hno T hT v a p hp
  · by_cases hF : FreeLayer P C (Ω.profile T.type) false
    · let f := Value.asPlus hF v
      let key : PlusFrame (hw := hw) Ω C hno := (a.argument, a.plusParameter hF p hp)
      by_cases hA : PlainLayer P C (Ω.profile (a.target hw).type)
      · exact exitValue Ω C hno (a.target hw) (f.exiting ([],key))
      · exact ⟨.plus (f.slice key), a.free_target hF hA⟩
    · have hM : FreeLayer P C (Ω.profile T.type) true := by
        rcases T.active.classify with h | h | h
        · exact False.elim (hT h)
        · exact False.elim (hF h)
        · exact h
      let f := Value.asMinus hM v
      let key : MinusFrame (hw := hw) Ω C hno := (a.argument, a.minusParameter hM p hp)
      by_cases hA : PlainLayer P C (Ω.profile (a.target hw).type)
      · exact exitValue Ω C hno (a.target hw) ((FreeObservations.behavior _ _ _ _ f).exiting
        ([],key))
      · exact ⟨.minus (FreeObservations.minusSlice f key), a.free_target hM hA⟩
end PureTypeSystem.ObservationValues


namespace PureTypeSystem
universe u

namespace ObservationValues
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) [Fintype S]
variable (C : Set (Set S)) {hw : SystemWeaklyNormalizing P} (hno : ¬ ForbiddenConfiguration P C)

namespace Environment
variable {Ω C hno} {Γ : List (Expr S)} (e : Environment (hw := hw) Ω C hno Γ)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/EvaluationNamespacedEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9128ac91aec75d8a870df7d5b5ee7829a4d9e323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5c0d8cda4cc624c048bd6ba9140295b869c13150b1377eccb61b87039750af87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Evaluation/Variant5a351531e97ddb2232b9b3b8b13be2663f7778284d2d34137971dfc61c4eea7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
