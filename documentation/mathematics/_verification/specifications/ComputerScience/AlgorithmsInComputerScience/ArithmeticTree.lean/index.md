# Verification target: Arithmetic Tree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adb23aed4004b17573afd2b32eafe96708232050",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adb23aed4004b17573afd2b32eafe96708232050`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PrimePower` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CellularArithmeticTree](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/cellulararithmetictree.md) | 18 | `declaration-track:a3506c5774110bb2bfde342019fb2a542adfc9f7ddc6c2ec98a28abfec6fabad` |
| 2 | `def` | [decode](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/decode.md) | 23 | `declaration-track:cfb4406ec0483c723df764dec76a9b6afb9e1485cecff212467db05176b2098a` |
| 3 | `def` | [PrimeStrictlyIncreasing](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/primestrictlyincreasing.md) | 26 | `declaration-track:c78895058679fcef41abe726b30aceae97939064ec2927be3984aac08850001a` |
| 4 | `def` | [Canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/canonical.md) | 30 | `declaration-track:cc1651f0d962fd6e7d1a782783dfd5e9eaedf3e7e99ececb4993c4bcdadb23b2` |
| 5 | `theorem` | [decode_empty](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/decode-empty.md) | 35 | `result-track:b43e254d1ec239d2f4055723e70d69199a02d204cf8ca30410b7827721e07083` |
| 6 | `theorem` | [decode_cons](../../../../../ComputerScience/AlgorithmsInComputerScience/ArithmeticTree.lean/declarations/decode-cons.md) | 39 | `result-track:249d4d1a3b77dee8a6dc27368b2528163dae9c470d095aa67547f616b45c8579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7bcd1157a5f442c33da1bb13e65e322f49582e2149e399ef360c1cd27be3d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ArithmeticTree/Variantfddb7254af4db2e0f33b06b6838470675eb77ec424931947f998d68673b6fb32.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
