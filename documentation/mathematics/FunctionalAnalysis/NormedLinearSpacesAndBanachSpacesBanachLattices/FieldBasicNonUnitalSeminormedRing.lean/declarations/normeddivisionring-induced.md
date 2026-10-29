# NormedDivisionRing.induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a14c6ae7a1a22e632ad232288326f8d09ceae799c50d77f706e9350f0ea72a98",
  "kind": "def",
  "lexical_name": "NormedDivisionRing.induced",
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
  "slug": "normeddivisionring-induced",
  "source": {
    "blob": "780cf74be677a014d8dbc7367f0af74a25af3534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 986,
    "line": 974,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant297693d0295beb62c798f42be44b4dae9aa4507b04b0cbbff1133f10f4a467dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee08417676239a5fbba40e11d2c60b7a2ee8cf8dfc3e0b574a33fbb854b12dda",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNonUnitalSeminormedRing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a14c6ae7a1a22e632ad232288326f8d09ceae799c50d77f706e9350f0ea72a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 974–986.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def NormedDivisionRing.induced [DivisionRing R] [NormedDivisionRing S] [NonUnitalRingHomClass F R S]
    (f : F) (hf : Function.Injective f) : NormedDivisionRing R :=
  { NormedAddCommGroup.induced R S f hf, ‹DivisionRing R› with
    norm_mul' := fun x y => by
      show ‖f (x * y)‖ = ‖f x‖ * ‖f y‖
      exact (map_mul f x y).symm ▸ norm_mul (f x) (f y) }
#align normed_division_ring.induced NormedDivisionRing.induced

/-- An injective non-unital ring homomorphism from a `Field` to a `NormedRing` induces a
`NormedField` structure on the domain.

See note [reducible non-instances] -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FieldBasicNonUnitalSeminormedRing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant297693d0295beb62c798f42be44b4dae9aa4507b04b0cbbff1133f10f4a467dd.lean#L974).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `780cf74be677a014d8dbc7367f0af74a25af3534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=267380893ffa32d7e599794b3774ee37f747e877d280cdded6135fa70bd7047d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Basic/Variant297693d0295beb62c798f42be44b4dae9aa4507b04b0cbbff1133f10f4a467dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
