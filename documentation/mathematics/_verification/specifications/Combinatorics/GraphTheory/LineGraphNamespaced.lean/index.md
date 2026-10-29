# Verification target: Line Graph Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "022015266e5f13800c86aeef8ddcb8f6b757c7fc",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/LineGraph/Variant5de806158240ba555f882f5c3f63100645b50e7b8bf4c559a49b9b20399d22d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/LineGraphNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/LineGraphNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `022015266e5f13800c86aeef8ddcb8f6b757c7fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/LineGraph/Variant5de806158240ba555f882f5c3f63100645b50e7b8bf4c559a49b9b20399d22d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/LineGraph/Variant5de806158240ba555f882f5c3f63100645b50e7b8bf4c559a49b9b20399d22d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lineGraph](../../../../../Combinatorics/GraphTheory/LineGraphNamespaced.lean/declarations/linegraph.md) | 37 | `declaration-track:33bbb8077e85750c011bb5ef5f29933c9a56c09c70cd06b6b74f058633cfdac7` |
| 2 | `lemma` | [lineGraph_adj_iff_exists](../../../../../Combinatorics/GraphTheory/LineGraphNamespaced.lean/declarations/linegraph-adj-iff-exists.md) | 41 | `result-track:05804d6aaa407a13dd0a70ebd6e2d86824844cb9393533278a671fc4dacc49e8` |
| 3 | `lemma` | [lineGraph_bot](../../../../../Combinatorics/GraphTheory/LineGraphNamespaced.lean/declarations/linegraph-bot.md) | 45 | `result-track:0f6f5005cc041d6dd2a95f2324940b0dc579bbb3058fdca45b71089575be65bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c18e12d0ccc7492743defb11afa92ffd0e5497869ce3fd47641b749dd640ff2c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/LineGraph/Variant5de806158240ba555f882f5c3f63100645b50e7b8bf4c559a49b9b20399d22d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/LineGraph/Variant5de806158240ba555f882f5c3f63100645b50e7b8bf4c559a49b9b20399d22d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
