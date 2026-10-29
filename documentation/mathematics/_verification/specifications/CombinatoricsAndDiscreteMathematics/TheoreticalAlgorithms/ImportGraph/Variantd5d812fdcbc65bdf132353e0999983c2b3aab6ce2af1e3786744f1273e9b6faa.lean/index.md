# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportGraph.Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ea1560fcabb435fc89a935eabbddb43cbe434d1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ea1560fcabb435fc89a935eabbddb43cbe434d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Incremental.Core` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ImportEdge](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/declarations/importedge--d179ab96d6a4bb68d49972c7.md) | 16 | `declaration-track:d179ab96d6a4bb68d49972c767e45702c21ea6b82d668150c757f0ce066dcc2e` |
| 2 | `structure` | [ImportGraph](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/declarations/importgraph--c27d3652fa2fab9a95789d44.md) | 24 | `declaration-track:c27d3652fa2fab9a95789d44b8a869b542feb8476ce13627fee26f548d2eb5fc` |
| 3 | `def` | [imports](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/declarations/imports--7531a75d159146666dc01d19.md) | 31 | `declaration-track:7531a75d159146666dc01d1988eeda7c698e3b26e85768b10588a5036937ae2f` |
| 4 | `theorem` | [importEdge_boundary_visible](../../../../../../CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean/declarations/importedge-boundary-visible--5dcd326dc80fa4190da9e38b.md) | 36 | `result-track:5dcd326dc80fa4190da9e38b9aad27e3d948477f2beb2de63a1466289594d67c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a901d47be5b4cb2e55278047f0f6df5cb4f58152bf993a712746578136ecc4e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ImportGraph/Variantd5d812fdcbc65bdf132353e0999983c2b3aab6ce2af1e3786744f1273e9b6faa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
