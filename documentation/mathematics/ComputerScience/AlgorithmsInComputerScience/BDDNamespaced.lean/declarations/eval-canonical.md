# eval_canonical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78c018fc-fc05-f0b8-760f-93c53832d6f8",
  "kind": "theorem",
  "lexical_name": "eval_canonical",
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
  "slug": "eval-canonical",
  "source": {
    "blob": "03e3c5c10e83492b7984c8ed34c28a22658db796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 200,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant0a985a1ee50ccfca8b6ce7efab317e47f58ce0897f0a6759f6ba73842b4105e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a445ed6bc9ad2aa2e6acea6de37eecbe89601260f5e8b136d4c8b71a811aa16",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BDDNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78c018fc-fc05-f0b8-760f-93c53832d6f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_canonical [DecidableEq α]
    (vars : List α)
    (f : Valuation α → Bool)
    (h : Formula.DependsOn vars f)
    (ν : Valuation α) :
    BDD.eval ν (canonical vars f) = f ν := by
  induction vars generalizing f ν with
  | nil =>
      have hconst : f (fun _ => false) = f ν := by
        apply h
        intro a ha
        cases ha
      change f (fun _ => false) = f ν
      exact hconst
  | cons a vars ih =>
      let low :=
        canonical vars (fun μ => f (Valuation.set μ a false))
      let high :=
        canonical vars (fun μ => f (Valuation.set μ a true))
      have hlow :
          BDD.eval ν low = f (Valuation.set ν a false) := by
        simpa [low] using
          ih
            (fun μ => f (Valuation.set μ a false))
            (dependsOn_set_tail a false h)
            ν
      have hhigh :
          BDD.eval ν high = f (Valuation.set ν a true) := by
        simpa [high] using
          ih
            (fun μ => f (Valuation.set μ a true))
            (dependsOn_set_tail a true h)
            ν
      by_cases heq : low = high
      · have hcanon : canonical (a :: vars) f = low := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          rw [heq]
          exact hhigh.trans hset
      · have hcanon : canonical (a :: vars) f = .branch a low high := by
          simp [canonical, low, high, heq]
        rw [hcanon]
        cases hv : ν a
        · have hset := dependsOn_set_eq a false ν h hv
          simp [BDD.eval, hv]
          exact hlow.trans hset
        · have hset := dependsOn_set_eq a true ν h hv
          simp [BDD.eval, hv]
          exact hhigh.trans hset

/-- Extensional canonicity for fixed-order reduced ordered BDDs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/BDDNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant0a985a1ee50ccfca8b6ce7efab317e47f58ce0897f0a6759f6ba73842b4105e4.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e3c5c10e83492b7984c8ed34c28a22658db796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c2e3272ba11e5f60b2a85979b815e7e5ff068e5e06242e9d554475631bf5645d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant0a985a1ee50ccfca8b6ce7efab317e47f58ce0897f0a6759f6ba73842b4105e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
