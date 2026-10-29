# mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:900a371c91e1a2b12de29fd37822d2903a6ebf632a6ceea09bfa7acc15413b50",
  "kind": "def",
  "lexical_name": "mk'",
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
  "slug": "mk",
  "source": {
    "blob": "437ba45e315feb4edf5bbadc7364895c06a58523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 72,
    "path": "GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79ef4d83d4337cceb665290747e7133b3f2aa9803a9d9057094363bfe59e62d1",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/AlgebraicTopology/BrownLemmaPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:900a371c91e1a2b12de29fd37822d2903a6ebf632a6ceea09bfa7acc15413b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mk' [IsCofibrant X] [IsCofibrant Y]
    (h : MapFactorizationData (cofibrations C) (trivialFibrations C) (coprod.desc f (𝟙 Y))) :
    CofibrantBrownFactorization f where
  Z := h.Z
  i := coprod.inl ≫ h.i
  p := h.p
  s := coprod.inr ≫ h.i
  hi := by rw [← cofibration_iff]; infer_instance
  hp := by rw [mem_trivialFibrations_iff]; constructor <;> infer_instance

variable (h : MapFactorizationData (cofibrations C) (trivialFibrations C) (coprod.desc f (𝟙 Y)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/AlgebraicTopology/BrownLemmaPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `437ba45e315feb4edf5bbadc7364895c06a58523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f088ae4bd8af3686189bec03ae0af325a5de7f67469d53aa53776a70da13fa8d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/BrownLemma/Variantd3d9f0d6372087ecfa6a704a6dd258516465cf5b73e572becb7b4f74c547bc5f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
