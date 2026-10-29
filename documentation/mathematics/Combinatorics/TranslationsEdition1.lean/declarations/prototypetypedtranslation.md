# prototypeTypedTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:765e1bbee1ce33335242c363f47baf7da7bb053a43b0fe92f1f8629e12f75a59",
  "kind": "def",
  "lexical_name": "prototypeTypedTranslation",
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
  "slug": "prototypetypedtranslation",
  "source": {
    "blob": "e694157859c8d50b0872b592cdef8b5073ce066d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:257754b4aec122d0e6fd81578e12b89898e24f3ede3319bfb49d13a04d765dd8",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/Combinatorics/TranslationsEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:765e1bbee1ce33335242c363f47baf7da7bb053a43b0fe92f1f8629e12f75a59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeTypedTranslation
    (edge : PrototypeEdge)
    (Source : Type u) (Target : Type v)
    (map : Source → Target) :
    ModelTranslation Source Target :=
  let entry := prototypeTranslationEntry edge
  { identity := entry.identity
    sourceModel := entry.source
    targetModel := entry.target
    relation := entry.relation
    sourceContext := prototypeAssumptionContext
    targetContext := prototypeAssumptionContext
    objectMap := map
    sourceProposition := fun _ => True
    targetProposition := fun _ => True
    proofTransport := some ⟨fun _ _ => trivial⟩
    counterexampleTransport := none
    preservesTyping := True
    preservesDeclaredMeaning := True
    assumptionsMapped := True
    sourceAuthority := .certifiedSource
    targetAuthority := .certifiedSource
    authorityNonIncreasing := Nat.le_refl _
    provenance := [entry.source.sourceDigest, entry.target.sourceDigest]
    provenancePreserved := True
    versionCompatible := True
    unsupportedScope := entry.unsupportedScope }

/-- `τPB`: exact permutation/one-hot-matrix equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/Combinatorics/TranslationsEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e694157859c8d50b0872b592cdef8b5073ce066d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a074b579368e4f39087172c0c36ca2b36bb650284d3cc2a1b81525d366bad538 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Translations/Variant5b44ffa153d9b4905d7d403d382d66c7885d9505adf1ed528d56a5242e897546.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
