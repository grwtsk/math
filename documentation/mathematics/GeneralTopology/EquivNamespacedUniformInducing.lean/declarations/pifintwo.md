# piFinTwo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b8366a48ae271922e767bb359188cc3a1611bf3eddba84e280e27f8cb043f1e",
  "kind": "def",
  "lexical_name": "piFinTwo",
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
  "slug": "pifintwo",
  "source": {
    "blob": "6105cb6031db6737da70092e5a0e79d5204428a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 377,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec7e52762e87c941899db211bb4480a06019210a0c6970b2768b2aae257d8258",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/GeneralTopology/EquivNamespacedUniformInducing.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b8366a48ae271922e767bb359188cc3a1611bf3eddba84e280e27f8cb043f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 377–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def piFinTwo (α : Fin 2 → Type u) [∀ i, UniformSpace (α i)] : (∀ i, α i) ≃ᵤ α 0 × α 1
    where
  toEquiv := piFinTwoEquiv α
  uniformContinuous_toFun := (Pi.uniformContinuous_proj _ 0).prod_mk (Pi.uniformContinuous_proj _ 1)
  uniformContinuous_invFun :=
    uniformContinuous_pi.mpr <| Fin.forall_fin_two.2 ⟨uniformContinuous_fst, uniformContinuous_snd⟩
#align uniform_equiv.pi_fin_two UniformEquiv.piFinTwo

/-- Uniform isomorphism between `α² = Fin 2 → α` and `α × α`. -/
-- Porting note: made `α` explicit
@[simps! (config := { fullyApplied := false })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/GeneralTopology/EquivNamespacedUniformInducing.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean#L377).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6105cb6031db6737da70092e5a0e79d5204428a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cfd050f1be13647c5d9bdb86ce3c3dc0d3c404aee25d053f5ee1308821bb05a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant947f2adae9fb0541ef60ef5e413cf0a1214d54249381eb7ac4dddff052bc584e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
