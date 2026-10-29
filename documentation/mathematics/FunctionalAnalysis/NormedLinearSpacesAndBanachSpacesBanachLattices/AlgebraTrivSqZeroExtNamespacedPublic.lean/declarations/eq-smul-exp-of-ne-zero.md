# eq_smul_exp_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:177e32f4-7b72-20ca-dc33-a1d4c02ab416",
  "kind": "theorem",
  "lexical_name": "eq_smul_exp_of_ne_zero",
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
  "slug": "eq-smul-exp-of-ne-zero",
  "source": {
    "blob": "a1895cd43a7674d15f896a8bbde20d286e041f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 190,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daf8bb4ab2714201f6c4bfbf69e381978cc2107b06f5a64f59954a61de69af59",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraTrivSqZeroExtNamespacedPublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177e32f4-7b72-20ca-dc33-a1d4c02ab416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_smul_exp_of_ne_zero (x : tsze R M) (hx : x.fst ≠ 0) :
    x = x.fst • exp (x.fst⁻¹ • inr x.snd) :=
  letI : Invertible x.fst := invertibleOfNonzero hx
  eq_smul_exp_of_invertible _

end Field

end Topology

/-!
### The $ℓ^1$ norm on the trivial square zero extension
-/

noncomputable section Seminormed

section Ring
variable [SeminormedCommRing S] [SeminormedRing R] [SeminormedAddCommGroup M]
variable [Algebra S R] [Module S M]
variable [IsBoundedSMul S R] [IsBoundedSMul S M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/AlgebraTrivSqZeroExtNamespacedPublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1895cd43a7674d15f896a8bbde20d286e041f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=904cd68bfc922fcb939c7c00ed1e45104f1907b1bb5828f38c820c39bfccc193 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/TrivSqZeroExt/Variantd434d3dc847922d9b919afacfb1436ba3f9e6e12a4c39fe59d1bdba671307cd1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
