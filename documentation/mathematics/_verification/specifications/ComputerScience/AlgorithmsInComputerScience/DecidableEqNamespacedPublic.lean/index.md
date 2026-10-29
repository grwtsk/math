# Verification target: Decidable Eq Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca73a2e1ea1033cdf7a8f6f30abbeb5b6e7e6424",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantc2d150f8698cd222709eaac337d335b23f94cd3fd5c9280ea4af2e9b8f541be2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca73a2e1ea1033cdf7a8f6f30abbeb5b6e7e6424`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantc2d150f8698cd222709eaac337d335b23f94cd3fd5c9280ea4af2e9b8f541be2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantc2d150f8698cd222709eaac337d335b23f94cd3fd5c9280ea4af2e9b8f541be2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Vector.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isEqv_iff_rel](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/iseqv-iff-rel.md) | 27 | `result-track:4c95729e15164756efc0b047f27deb4d93d0eae1b0a4421d222027d2113aea3e` |
| 2 | `theorem` | [isEqv_eq_decide](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/iseqv-eq-decide.md) | 33 | `result-track:ba0d6e4b0057dcf1dbb4b0d469b55e218cdd4475663854a79e51389c4e5b8812` |
| 3 | `theorem` | [isEqv_toArray](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/iseqv-toarray.md) | 39 | `result-track:caa244a35f615481d1b2078c717f6bc2dd97263f6ab010d80c0607062dcd08b8` |
| 4 | `theorem` | [eq_of_isEqv](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/eq-of-iseqv.md) | 42 | `result-track:52056494a2de29e232bf07343c18db1f5bf7bcd3f15ac1683efe09e2c90175a6` |
| 5 | `theorem` | [isEqv_self_beq](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/iseqv-self-beq.md) | 49 | `result-track:1a852ddae171f400034b8620c4f879e4aa1ab7d4ee349d4fa9d083f68d1cadfa` |
| 6 | `theorem` | [isEqv_self](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/iseqv-self.md) | 53 | `result-track:df98fb4b36a67e20d0089c5994c31d845a17bbefbd75d843d1283e1813bdd328` |
| 7 | `theorem` | [beq_eq_decide](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/beq-eq-decide.md) | 57 | `result-track:f77387c299d75a85ce0c10fc348ebf4fbe3dcbdfeb6ac72c2480afd48c37cc50` |
| 8 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/instance.md) | 61 | `declaration-track:3e0756d52850ae7dadd67989847610832f669a1a4fabc2866e86c1229ec54daf` |
| 9 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/DecidableEqNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:81101bcd3aeb22fe45d4e391fe06b55cc90c7641438e80fe292c5a2670de4ffe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edd0a75a5de75b45c7edc3c158e7577987b3a73b92ea90fbec67d3d9e5a10e30 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantc2d150f8698cd222709eaac337d335b23f94cd3fd5c9280ea4af2e9b8f541be2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecidableEq/Variantc2d150f8698cd222709eaac337d335b23f94cd3fd5c9280ea4af2e9b8f541be2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
