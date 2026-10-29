# Verification target: Traversal Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "113b30d9c83e981333b240be48bd7a8befb0a675",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant0a8fa938e9e3c7179009473eb069ce31f27d3d7cacad965d928a89da32c7b4f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `113b30d9c83e981333b240be48bd7a8befb0a675`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant0a8fa938e9e3c7179009473eb069ce31f27d3d7cacad965d928a89da32c7b4f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant0a8fa938e9e3c7179009473eb069ce31f27d3d7cacad965d928a89da32c7b4f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/mapatoms.md) | 20 | `declaration-track:507d2f2b21d806be4eed4984968f6e4c795e43a69654cfa45f5e373bf5468c36` |
| 2 | `theorem` | [mapAtoms_const](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/mapatoms-const.md) | 30 | `result-track:976b4ff972aecb1b339e7dbff834e2b1af9cff6e86aee2af94de99c8c6a29b02` |
| 3 | `theorem` | [mapAtoms_id](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/mapatoms-id.md) | 34 | `result-track:331b924db4556bb14995490d2eb76dfdbaeea932b28770a90f6ba68a1ed05512` |
| 4 | `theorem` | [mapAtoms_comp](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/mapatoms-comp.md) | 46 | `result-track:6330e0c49f4193111baebc164c3aa30b3e0ec541a3deb3a5f2b27d0955d6840a` |
| 5 | `theorem` | [eval_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/eval-mapatoms.md) | 58 | `result-track:1783b7ac45c32cd119bbded0079732742783cdf28c240c7c81ebd865cc9368a2` |
| 6 | `def` | [atoms](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/atoms.md) | 71 | `declaration-track:d1921bd3f2bead2f716216016ea4f2627c15e95ae35d150c78f8a72d36e9509f` |
| 7 | `def` | [size](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/size.md) | 82 | `declaration-track:913ffb9b0347c106c514f6c4779ac427045e7211300fe13016bb8ca279952a8b` |
| 8 | `def` | [depth](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/depth.md) | 93 | `declaration-track:16fb183d08ee16992065ab9f5a4dfcc9503e30817f5c3d18af39fb2ebc166396` |
| 9 | `theorem` | [size_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/size-mapatoms.md) | 103 | `result-track:cdc637f2abeb5350e1aaa84ab6ca244428199b27e6318b91f3d76d14cdb554aa` |
| 10 | `theorem` | [depth_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/TraversalNamespaced.lean/declarations/depth-mapatoms.md) | 115 | `result-track:dd7fe03d63ab12974a76c8bd5e5ce7ff764236b1ea968f9115885f2c4c9902fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=07bfd3fe4228761133686521f2d1a8f22fdefe4785a82a8983482a364d7505c4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant0a8fa938e9e3c7179009473eb069ce31f27d3d7cacad965d928a89da32c7b4f1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Traversal/Variant0a8fa938e9e3c7179009473eb069ce31f27d3d7cacad965d928a89da32c7b4f1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
