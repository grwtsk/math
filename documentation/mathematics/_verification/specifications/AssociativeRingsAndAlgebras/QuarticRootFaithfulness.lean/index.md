# Verification target: GRWTSK.Algebra.QuarticRootFaithfulness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5549c19b8594463d9b4298cf5efc4701470ab15f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticRootFaithfulness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/QuarticRootFaithfulness.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/QuarticRootFaithfulness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5549c19b8594463d9b4298cf5efc4701470ab15f`.

Source path: `GRWTSK/Algebra/QuarticRootFaithfulness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticRootFaithfulness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticAdjacencyGaloisCorrespondence`](../../../../AssociativeRingsAndAlgebras/QuarticAdjacencyGaloisCorrespondence.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RootsGenerate](../../../../AssociativeRingsAndAlgebras/QuarticRootFaithfulness.lean/declarations/rootsgenerate.md) | 25 | `declaration-track:e0c49523fd8ca6638e365f2e8a22ac945513918aaf8a25fabb0180e6ffc158ea` |
| 2 | `theorem` | [fixes_adjoined_roots](../../../../AssociativeRingsAndAlgebras/QuarticRootFaithfulness.lean/declarations/fixes-adjoined-roots.md) | 30 | `result-track:56ede04b3fc71fd9869d75fda6d8db34a9cc8bd34c82e84b962f1cd60f298b03` |
| 3 | `theorem` | [actualRootPermutationHom_injective_of_generates](../../../../AssociativeRingsAndAlgebras/QuarticRootFaithfulness.lean/declarations/actualrootpermutationhom-injective-of-generates.md) | 49 | `result-track:73b3eee247ecfeb1076885f3e60b147ee2288471d92e0d5ce5a26473719b302d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6da0c4aaa19df1ab44bfb9433d37a77a3e7d573f2bf656168c864d4860baffcb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/QuarticRootFaithfulness.lean","GRWTSK/_verification/specifications/Algebra/QuarticRootFaithfulness.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
