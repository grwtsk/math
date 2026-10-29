# Judgment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:093b95230e032a9cffe4d30780a24ce02aee553c6744f6d293f2b21820aad48b",
  "kind": "abbrev",
  "lexical_name": "Judgment",
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
  "slug": "judgment",
  "source": {
    "blob": "55515e1b50e184c2708e0856c427a067948841c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 208,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/AbstractScopeIndexedRulePresentations/Varianta885351781bedb02/CompleteInterfaceAndJudgmentViews.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d48852e55490c44b7b068f305cafe6be2695d9c5ba4aaf8cb0a0488c1f09f536",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/CompleteInterfaceAndJudgmentViews.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:093b95230e032a9cffe4d30780a24ce02aee553c6744f6d293f2b21820aad48b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev Judgment (K : KernelPresentation) :=
  ScopedJudgment K.UniverseContext K.LocalContext K.Expr

/--
**Type-enforced invariant:** `JudgmentAt K Γ` contains exactly a `K.Judgment`
whose stored local context is `Γ`.

**Used by:** The public context action and its algebra laws use this endpoint-
indexed view; raw derivation nodes continue to retain the full judgment index.

**Proof idea:** Endpoint membership is carried as a subtype equality witness;
the presentation's action laws then make identity and sequential transport
agree by propositional equality.

**Architectural problem:** A bare `Judgment` is insufficient when a morphism
must enforce its source or target context.

**Important data and indices:** `context` is a local-context index selected by
the same presentation `K`.

**Layer boundary:** This is an abstract endpoint view, not Lean context
transport.

**Worked example:** The toy identity action consumes a value at `[]`.

**Equality notion:** The subtype stores propositional context equality.

**Boundary cases:** The empty telescope still has an explicit endpoint index.

**Validation consequence:** Wrong-source abstract actions fail to elaborate;
concrete transport correctness remains external to M1a.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/CompleteInterfaceAndJudgmentViews.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/AbstractScopeIndexedRulePresentations/Varianta885351781bedb02/CompleteInterfaceAndJudgmentViews.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55515e1b50e184c2708e0856c427a067948841c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0443dbe526a5061c620e273b004e9e19de9cb1edf58294ac6a661c024bc79c9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/DependentFunctions/AbstractScopeIndexedRulePresentations/Varianta885351781bedb02/CompleteInterfaceAndJudgmentViews.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
