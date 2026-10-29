# identityTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:371a107c34f3254f6b7b988868e356ac331a547dece66e5d866367f48aa2fa80",
  "kind": "def",
  "lexical_name": "identityTranslation",
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
  "slug": "identitytranslation",
  "source": {
    "blob": "94193bb545d1415ceae7f407879c9ad5cdad4794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 258,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebceefcc8d993b42785c88c13b4ddb43bf3bdbba4859a9964a46fd6beadd4f87",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/TranslationNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:371a107c34f3254f6b7b988868e356ac331a547dece66e5d866367f48aa2fa80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def identityTranslation
    (model : WorldModelVersionId)
    (context : AssumptionContext)
    (authority : AuthorityClass)
    (identity : TranslationId)
    (Object : Type u)
    (predicate : Object → Prop) :
    ModelTranslation Object Object where
  identity := identity
  sourceModel := model
  targetModel := model
  relation := .exactEquivalence
  sourceContext := context
  targetContext := context
  objectMap := id
  sourceProposition := predicate
  targetProposition := predicate
  proofTransport := some ⟨fun _ proof ↦ proof⟩
  counterexampleTransport := none
  preservesTyping := True
  preservesDeclaredMeaning := True
  assumptionsMapped := True
  sourceAuthority := authority
  targetAuthority := authority
  authorityNonIncreasing := Nat.le_refl _
  provenance := []
  provenancePreserved := True
  versionCompatible := True
  unsupportedScope := []

/-- TRN-01: identity translation is the identity function. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/MathematicalLogicAndFoundations/GeneralLogic/TranslationNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94193bb545d1415ceae7f407879c9ad5cdad4794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5e2843b57bcdbf9f539c67809ae729fc7be2b1ad09cd84cec1df233360be79a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Translation/Varianta8106742f694881000c24e345253ccb002afa70d6cd44c993073736f7c4b4d48.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
