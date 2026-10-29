# LedgerVerificationInputs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e191022a5f15a56ca391e6159b923dfa12eb6b2242ea5777a4a7d522c1898e80",
  "kind": "structure",
  "lexical_name": "LedgerVerificationInputs",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "ledgerverificationinputs--6853f3f324fa3dc7263fbe4b",
  "source": {
    "blob": "a8c9b574ca0c4d7929527af5827f49d1fd2cc99a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 22,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6853f3f324fa3dc7263fbe4b504a146eef4dbb8f976ea60ec4f2dbdf80a02747",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e191022a5f15a56ca391e6159b923dfa12eb6b2242ea5777a4a7d522c1898e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LedgerVerificationInputs where
  extraction : EnvironmentExtraction
  payload : CanonicalPayloadReceipt
  merkle : MerkleReceipt

namespace LedgerVerificationInputs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8c9b574ca0c4d7929527af5827f49d1fd2cc99a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f6723781bf2525267d61ebf73fef446d2f9a1ff329ff258856514f28d6bbdbd8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verify/Variantb1c88cce34a9159dfb34c04799a96ce9a19b06f1fec1777888078cf917514525.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
