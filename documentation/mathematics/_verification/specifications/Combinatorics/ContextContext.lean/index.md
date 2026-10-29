# Verification target: Context Context

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "579986cfb33eadc52b73f5fbb7a3b4a7ecf63829",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ContextContext.lean/index.md) · [Full source](../../../../Combinatorics/ContextContext.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `579986cfb33eadc52b73f5fbb7a3b4a7ecf63829`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Evidence` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Context](../../../../Combinatorics/ContextContext.lean/declarations/context.md) | 9 | `declaration-track:91a779d87907ca7d25896b40063ba377bb5fe58787ac0cf8eea772f77b94b36d` |
| 2 | `structure` | [ContextDependency](../../../../Combinatorics/ContextContext.lean/declarations/contextdependency.md) | 22 | `declaration-track:ccbd8fef2c01cc6d6e9eafa325aae37ab9219a3ab75685547e5f2eda18915ca7` |
| 3 | `def` | [ContextRefines](../../../../Combinatorics/ContextContext.lean/declarations/contextrefines.md) | 26 | `declaration-track:215383097bb1c7d0fab7ac55fd76a9d3c9223ae68fce2d2896b3178f111195e1` |
| 4 | `structure` | [ContextTransportCertificate](../../../../Combinatorics/ContextContext.lean/declarations/contexttransportcertificate.md) | 37 | `declaration-track:a3a825d2889bbacd69c8c1112432d4bc61bba802b331f20deb87149558ef1528` |
| 5 | `structure` | [ContextSufficiencyCertificate](../../../../Combinatorics/ContextContext.lean/declarations/contextsufficiencycertificate.md) | 47 | `declaration-track:62e4b9687f06805dc3636d3f3379a85760d3a126be86e276ae7a40cfd6c92791` |
| 6 | `structure` | [ContextSufficiencyRecord](../../../../Combinatorics/ContextContext.lean/declarations/contextsufficiencyrecord.md) | 67 | `declaration-track:44704b406067eb344d39a0dfb0f8b4f69575679088c0c848675d271ae728282d` |
| 7 | `theorem` | [contextRefines_refl](../../../../Combinatorics/ContextContext.lean/declarations/contextrefines-refl.md) | 75 | `result-track:30d08b5fd68eae27c1b1bf77507db250de77ce02add4d2d5526a384b6eb89a3c` |
| 8 | `theorem` | [contextRefines_trans](../../../../Combinatorics/ContextContext.lean/declarations/contextrefines-trans.md) | 80 | `result-track:60ee3b9aa5b79100d5dfefdef10358d8d1cd48e5eae3bc2533326ab2d86a4387` |
| 9 | `def` | [ContextTransportAuthorizes](../../../../Combinatorics/ContextContext.lean/declarations/contexttransportauthorizes.md) | 110 | `declaration-track:c099d84b53f72c93897a6a7135ab0725381f4c6c17b8f2c9c1e5f7141034df9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c07783f70a058182cc3d7ee5957a0861258ab570c32036899f323c001caecc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Context/Variant3e5638e3054b52d7a6ed2a86b0e6e9c19e8904c49bfc1ed2d06f94e1a170eae9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
