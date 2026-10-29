# Verification target: Interactive Svg Public Action Kind

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46023e34705957753372aa9b00034b7a2ee6ebd3",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46023e34705957753372aa9b00034b7a2ee6ebd3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [_root_.Float.toInt](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/root-float-toint.md) | 10 | `declaration-track:b9780aab85e91f59f98d0519a055afd7dd40d0d5b3712fdda0a5441bd549a9a5` |
| 2 | `inductive` | [ActionKind](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/actionkind.md) | 18 | `declaration-track:573ff1ff98b3893315857f2a2b81cad4137fd0432c2adec1e2fc67b84caa5eb6` |
| 3 | `structure` | [Action](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/action.md) | 25 | `declaration-track:6e034c29b05023015657be3d36697e240e2736ce54c1297c418dcfbee978fe64` |
| 4 | `structure` | [SvgState](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/svgstate.md) | 34 | `declaration-track:edc4b9290c36e343600d0a3536c7f918b3548836545cb28e16cd441ad2b795a7` |
| 5 | `structure` | [UpdateParams](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/updateparams.md) | 42 | `declaration-track:77a7e24564996951d2e10a250a9f0e3923be909b46923c4837e434a82a9b5e14` |
| 6 | `structure` | [UpdateResult](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/updateresult.md) | 49 | `declaration-track:8bde6b090d860e95dc39604a613797f055e893733d1edeebe43d1af399fe9b6a` |
| 7 | `structure` | [InteractiveSvg](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/interactivesvg.md) | 57 | `declaration-track:d5dad22a5efca3ced630eaf2b20a3832ea49eced1844d74d232a86221482dca2` |
| 8 | `def` | [InteractiveSvg.serverRpcMethod](../../../../../ComputerScience/AlgorithmsInComputerScience/InteractiveSvgPublicActionKind.lean/declarations/interactivesvg-serverrpcmethod.md) | 67 | `declaration-track:eaf1cc26924eac8470adccfc1815278f575839e76e6c15d2ada97f65cb8d2db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ee2bcb0b162ef1d148f176c2087e396f1c4df72613494a6bc53872fe853de195 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InteractiveSvg/Variantc5982487ae9b52cfb9cadb1596dd5bc7b108a4129f512430bd6ace61033221be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
