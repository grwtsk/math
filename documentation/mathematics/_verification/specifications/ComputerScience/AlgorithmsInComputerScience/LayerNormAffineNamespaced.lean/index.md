# Verification target: Layer Norm Affine Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92de641acf54b65ae162706426e8eac74467b8ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92de641acf54b65ae162706426e8eac74467b8ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.ML.Transformer` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Affine.Vector` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [forwardAffine](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/forwardaffine.md) | 69 | `declaration-track:af4842c79617bace977d218ee046f25842e2831e5390f96602eb3a933e9e88a5` |
| 2 | `def` | [forwardIntervalTight](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/forwardintervaltight.md) | 81 | `declaration-track:4beb7def1233c76c4b2b719c7dfd01f9b90cd519abe0d46e0b30be58bd050d06` |
| 3 | `def` | [compareBounds](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/comparebounds.md) | 94 | `declaration-track:de7d43f8ff53b308cc586efa779d2d733c107d78aad0aecd8cb78340c69be6ea` |
| 4 | `def` | [tightnessRatio](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/tightnessratio.md) | 104 | `declaration-track:3a58c15c85d061ab26d656ff1994d67f00a0f646cc6cae815dc298678336d4c6` |
| 5 | `theorem` | [mem_forwardAffine](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/mem-forwardaffine.md) | 132 | `result-track:db1749bc2fd0b31f216b6ac85357b069161ba5418dfb04ca927c74b6f02e2a84` |
| 6 | `def` | [FFNBlock.forwardIntervalTight](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/ffnblock-forwardintervaltight.md) | 164 | `declaration-track:b3a1feb98693599b6786dd1a66708860c6671886d2a37ea8459d59facb43cacf` |
| 7 | `def` | [TransformerBlock.forwardIntervalTight](../../../../../ComputerScience/AlgorithmsInComputerScience/LayerNormAffineNamespaced.lean/declarations/transformerblock-forwardintervaltight.md) | 175 | `declaration-track:8b9811dff335cd9f6f2188f2164a0da4189859c078abd5775bc2b61481ad7c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e9703454c87a1684a30bf125aa827c0a265d9095a9a6dbed30b1f68de4f33f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/LayerNormAffine/Variant44a26f98dca2810f3a7561a4f792436f8e270ba074a332eefd3e274dd6f5474c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
