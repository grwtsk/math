# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Query.Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14cdf348cd2e66cb7193b6cb7fee5c901d143427",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14cdf348cd2e66cb7193b6cb7fee5c901d143427`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.ContinuousAssurance.Index.Validation` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CanonicalIndexQueryResult](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean/declarations/canonicalindexqueryresult--097765397d533ccb530ac6d1.md) | 21 | `declaration-track:097765397d533ccb530ac6d19b223ffa265e753bd9115ff7fe8fa98bd21db654` |
| 2 | `def` | [CanonicalIndex.queryObject](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean/declarations/canonicalindex-queryobject--86b17602a11e1124e415a3f4.md) | 30 | `declaration-track:86b17602a11e1124e415a3f4c8ef2b6aba68a9da4e62d76ee168d231f7be06cb` |
| 3 | `theorem` | [CanonicalIndex.mem_queryObject_iff](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean/declarations/canonicalindex-mem-queryobject-iff--ab156656d9495eb8429c46ad.md) | 35 | `result-track:ab156656d9495eb8429c46ad8277c7441f0da3e2bac4512627509a87f3938baa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85d958b1e9f9ca5dbe1b2514e73b84c9f30bcf631ca851f26b2ceaf5f38001e4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variantb4c99e9e257208c6cc607c85f0a4cd4f4f81a5023874383b266cc8f0b28253fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
