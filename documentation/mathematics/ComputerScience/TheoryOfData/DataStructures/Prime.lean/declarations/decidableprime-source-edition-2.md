# decidablePrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b57d7fcf5c54937cce54be6563e64f2d9c7c3862bcd75ecc501d2829bba8b24b",
  "kind": "instance",
  "lexical_name": "decidablePrime",
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
  "slug": "decidableprime-source-edition-2",
  "source": {
    "blob": "d6eed9ee54abf02847cd4ce5c2948e616412cbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:baecb8e1187fff020a4715de53e46d56c5f6c831738f153b7c71f4c0f0e6d8e7",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/TheoryOfData/DataStructures/Prime.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b57d7fcf5c54937cce54be6563e64f2d9c7c3862bcd75ecc501d2829bba8b24b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidablePrime : DecidablePred PosNum.Prime
  | 1 => Decidable.isFalse Nat.not_prime_one
  | bit0 n =>
    decidable_of_iff' (n = 1)
      (by
        refine Nat.prime_def_minFac.trans ((and_iff_right ?_).trans <| eq_comm.trans ?_)
        · exact add_le_add (Nat.succ_le_of_lt (to_nat_pos _)) (Nat.succ_le_of_lt (to_nat_pos _))
        rw [← minFac_to_nat, to_nat_inj]
        exact ⟨bit0.inj, congr_arg _⟩)
  | bit1 n =>
    decidable_of_iff' (minFacAux (bit1 n) n 1 = bit1 n) <| by
        refine Nat.prime_def_minFac.trans ((and_iff_right ?_).trans ?_)
        · simp only [cast_bit1]
          have := to_nat_pos n
          omega
        rw [← minFac_to_nat, to_nat_inj]; rfl

end PosNum

namespace Num

/-- Returns the smallest prime factor of `n ≠ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/TheoryOfData/DataStructures/Prime.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6eed9ee54abf02847cd4ce5c2948e616412cbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d34f4c9eaf0daa8a5e5e9ae5dbb91c26a3e7111c2adda068485e17403a6f75a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Prime/Variant84d59bcc6af406f615e915892fe48616939655beb962f28cf915bffed66ec2ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
