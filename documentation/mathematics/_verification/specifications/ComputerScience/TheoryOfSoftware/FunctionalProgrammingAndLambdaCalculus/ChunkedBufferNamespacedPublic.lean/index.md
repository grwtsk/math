# Verification target: Chunked Buffer Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ce30bac8d036a9c2281d6fe16f615abfa7dc562",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChunkedBuffer/Variantac8485a61bf3be60502db676e03d0a14c8c27e3d3e8d2d3521517c877038c496.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ce30bac8d036a9c2281d6fe16f615abfa7dc562`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChunkedBuffer/Variantac8485a61bf3be60502db676e03d0a14c8c27e3d3e8d2d3521517c877038c496.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChunkedBuffer/Variantac8485a61bf3be60502db676e03d0a14c8c27e3d3e8d2d3521517c877038c496.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.ToString` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Array.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ChunkedBuffer](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/chunkedbuffer.md) | 40 | `declaration-track:df7c22ebad2a0dfd95d6d476710821f5a5db94d8e06d0da15bc739364cdcd07b` |
| 2 | `def` | [empty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/empty.md) | 57 | `declaration-track:2d5ed76ca7ceecb839e1dcca3c574f7b3436bed4027cd595a2be293dfd1bde83` |
| 3 | `def` | [push](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/push.md) | 64 | `declaration-track:1c4e66916777f806c85d376cc9cc2328052bea75380790c5f2e0dd40a7c647fb` |
| 4 | `def` | [write](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/write.md) | 71 | `declaration-track:508d3895c724b0af2d15ccd1d42879db9d96cdab0d4f894a16b066c4b84e59cf` |
| 5 | `def` | [append](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/append.md) | 78 | `declaration-track:4d3be75b7522bd6792e27ecb6cb8056c723aed7bc438e996a5c1303452af5a6a` |
| 6 | `def` | [writeChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/writechar.md) | 86 | `declaration-track:5e2c1553a37e1699c4f90d0837ff5329876e3db6512dba6805a7f457ea45e4b0` |
| 7 | `def` | [writeString](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/writestring.md) | 93 | `declaration-track:f5fab7af5f17429de7007d434d3f50c1cf8b7d259a293407aafc6d2654b4690f` |
| 8 | `def` | [toByteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/tobytearray.md) | 100 | `declaration-track:581cfd31f67795aff8b9c37040d7840f4ebe7088e9419763f4142636bf7ebcdd` |
| 9 | `def` | [ofByteArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/ofbytearray.md) | 110 | `declaration-track:528ef2edc02d75477f103a442fd22e968f134701689d5bf340ee8c09787a1b4e` |
| 10 | `def` | [ofArray](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/ofarray.md) | 117 | `declaration-track:674a7c5080ff3a4f9de6bca35899d4f2f1b4cf4fabeb40bb83b338e658e9692a` |
| 11 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/isempty.md) | 124 | `declaration-track:9727ba1c93bf10988d1e71b1b79f1104964700b0174af6a458d0b268a7a4d2e2` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 127 | `declaration-track:a81ef13059e34b730263832445f02c96a4f1ca96f53de407923bba418041081f` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 129 | `declaration-track:06420c96ee8d08c986b9653a02251c24e0e3fa797ba4a1990f6c01fb4dbdeb69` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/instance.md) | 132 | `declaration-track:05fa5d440f9873ca37dc17897eaa9a864daa721db942b9c1b2d28236a64acd4a` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/ChunkedBufferNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 135 | `declaration-track:7e03b32e9b9200480a708616f75d12a51f1266035f158bc00a9e40c42f95ff15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3aedaacee19e85eba4d2686dabb899939e4c5c465f734e03d359233095888030 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChunkedBuffer/Variantac8485a61bf3be60502db676e03d0a14c8c27e3d3e8d2d3521517c877038c496.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChunkedBuffer/Variantac8485a61bf3be60502db676e03d0a14c8c27e3d3e8d2d3521517c877038c496.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
