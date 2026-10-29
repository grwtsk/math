# Verification target: Without Aesop

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f26989f133f5aa3decbac9a298f19b4004d232d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant2bbabfa571854b1746afd1eb0fc7c45847a4afb7b82f979bd1bb725470d82436.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f26989f133f5aa3decbac9a298f19b4004d232d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant2bbabfa571854b1746afd1eb0fc7c45847a4afb7b82f979bd1bb725470d82436.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant2bbabfa571854b1746afd1eb0fc7c45847a4afb7b82f979bd1bb725470d82436.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Archive.Examples.IfNormalization.Statement` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.AList` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eval_ite_ite'](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/declarations/eval-ite-ite.md) | 23 | `result-track:961380f2fa8b6313c84eaf862c8edbe21e96a6812b5bf5e3ded939786bace29c` |
| 2 | `def` | [normSize'](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/declarations/normsize.md) | 28 | `declaration-track:6dcf52348a9df2f91e5017c407fbfd3f32e25dd8fd36127beff6ab12a8e9fa1a` |
| 3 | `def` | [normalize'](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/declarations/normalize.md) | 35 | `declaration-track:0f6bb036a2260545b9d6c8ebfd423401bf6f9c9c43567a4b9e5f6f2a782030a6` |
| 4 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/WithoutAesop.lean/declarations/example.md) | 118 | `declaration-track:afd387ad422d0b75b2cfaf008ab3e07b2701cf63745a41d2f4932f5d2d06363c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6258836a65295f952b8afb8ddb577effcf38c1882c98763c7d3ec43369e824ac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant2bbabfa571854b1746afd1eb0fc7c45847a4afb7b82f979bd1bb725470d82436.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/WithoutAesop/Variant2bbabfa571854b1746afd1eb0fc7c45847a4afb7b82f979bd1bb725470d82436.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
