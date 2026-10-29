# splitApply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d2021532ae80e38d4787eef7d55aab64fcd4f0447da16b49b9e02e150a10887",
  "kind": "def",
  "lexical_name": "splitApply",
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
  "slug": "splitapply",
  "source": {
    "blob": "1df57ee8aca3403ebe07cdd32bea7113830bb7b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 442,
    "line": 414,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b41959cdf6017259832fecaad5ee69a717d89222d10794c8c6a6aed3ab2b485c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d2021532ae80e38d4787eef7d55aab64fcd4f0447da16b49b9e02e150a10887`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 414–442.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitApply (mvs static : List MVarId) : MetaM ((List MVarId) × (List MVarId)) := do
  let (can_progress, curr_static) ← mvs.partitionM fun mv => do
    return dispatchLemma (twoHeadsArgs (← mv.getType'')) != ``id
  let progress ← can_progress.mapM fun mv => do
    let lem := dispatchLemma <| twoHeadsArgs (← mv.getType'')
    mv.applyConst <| lem
  return (progress.flatten, static ++ curr_static)

/-- `miscomputedDegree? deg false_goals` takes as input
* an `Expr`ession `deg`, representing the degree of a polynomial
  (i.e. an `Expr`ession of inferred type either `ℕ` or `WithBot ℕ`);
* a list of `MVarId`s `false_goals`.

Although inconsequential for this function, the list of goals `false_goals` reduces to `False`
if `norm_num`med.
`miscomputedDegree?` extracts error information from goals of the form
* `a ≠ b`, assuming it comes from `⊢ coeff_of_given_degree ≠ 0` —
  reducing to `False` means that the coefficient that was supposed to vanish, does not;
* `a ≤ b`, assuming it comes from `⊢ degree_of_subterm ≤ degree_of_polynomial` —
  reducing to `False` means that there is a term of degree that is apparently too large;
* `a = b`, assuming it comes from `⊢ computed_degree ≤ given_degree` —
  reducing to `False` means that there is a term of degree that is apparently too large.

The cases `a ≠ b` and `a = b` are not a perfect match with the top coefficient:
reducing to `False` is not exactly correlated with a coefficient being non-zero.
It does mean that `compute_degree` reduced the initial goal to an unprovable state
(unless there was already a contradiction in the initial hypotheses!), but it is indicative that
there may be some problem.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TacticComputeDegreePublic.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean#L414).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1df57ee8aca3403ebe07cdd32bea7113830bb7b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b56682584a5fc3678933ff804328c1315c7fbebe408b5ff8df603a91c0353641 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ComputeDegree/Variantd43f519b7895d696b6c6aab2ad2f45f5193be79ff5c15c3814bc70bb1676e6eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
